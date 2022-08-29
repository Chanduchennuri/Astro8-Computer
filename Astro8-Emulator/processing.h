#pragma once


#include <string> 
#include <vector>
#include <stdio.h>
#include <iostream>
#include <sstream>

using namespace std;

static inline void ltrim(std::string& s);
static inline void rtrim(std::string& s);
static inline std::string trim(std::string s);
static vector<std::string> PreProcess(std::string unProcessed);
static vector<std::string> split(std::string str, std::string token);
static std::string IndentText(std::string text);
static std::string JoinRange(vector<std::string> strs, int start, int max);
static vector<std::string> splitByComparator(std::string str);
static std::string InvertExpression(const std::string& expression);


vector<std::string> PreProcess(std::string unProcessed) {
	// Pre-process lines of code

	cout << "Preprocessing...";
	vector<std::string> codelines = split(unProcessed, "\n");
	codelines.erase(codelines.begin() + 0); // Remove the first line (the one containing the '#AS' indicator)

	// Remove line if it is blank or is just a comment
	auto isEmptyOrBlank = [](const std::string& s) {
		return s.find_first_not_of(" \t/") == std::string::npos;
	};
	auto isComment = [](const std::string& s) {
		if (trim(s).size() >= 2)
			return trim(s)[0] == '/' && trim(s)[1] == '/';
		return false;
	};
	codelines.erase(std::remove_if(codelines.begin(), codelines.end(), isEmptyOrBlank), codelines.end());
	codelines.erase(std::remove_if(codelines.begin(), codelines.end(), isComment), codelines.end());

	return codelines;
}


// trim from start (in place)
static inline void ltrim(std::string& s) {
	s.erase(s.begin(), std::find_if(s.begin(), s.end(), [](unsigned char ch) {
		return !std::isspace(ch);
		}));
}

// trim from end (in place)
static inline void rtrim(std::string& s) {
	s.erase(std::find_if(s.rbegin(), s.rend(), [](unsigned char ch) {
		return !std::isspace(ch);
		}).base(), s.end());
}

// trim from both ends (in place)
static inline std::string trim(std::string s) {
	std::string ss = s;
	ltrim(ss);
	rtrim(ss);
	return ss;
}

vector<std::string> split(std::string str, std::string token) {
	vector<std::string>result;
	while (str.size()) {
		int index = str.find(token);
		if (index != std::string::npos) {
			result.push_back(str.substr(0, index));
			str = str.substr(index + token.size());
			if (str.size() == 0)result.push_back(str);
		}
		else {
			result.push_back(str);
			str = "";
		}
	}
	return result;
}

std::string IndentText(std::string text) {
	vector<std::string> nstr = split(text, "\n");
	std::string outStr = "";
	for (size_t i = 0; i < nstr.size(); i++)
	{
		outStr += "	" + nstr[i] + "\n";
	}

	return outStr;
}

std::string JoinRange(vector<std::string> strs, int start, int max) {
	std::string outStr = "";
	for (size_t i = start; i < strs.size() && i <= max; i++)
	{
		outStr += strs[i] + " ";
	}

	return outStr;
}

std::string InvertExpression(const std::string& expression) {
	std::string valAPre = trim(splitByComparator(expression)[0]);
	std::string valBPre = trim(split(splitByComparator(expression)[1], ",")[0]);
	std::string comparer = trim(split(split(expression, valAPre)[1], valBPre)[0]);
	std::string newComparer = "";

	if (comparer == "<")
		newComparer = ">=";
	else if (comparer == "<=")
		newComparer = ">";
	else if (comparer == ">")
		newComparer = "<=";
	else if (comparer == ">=")
		newComparer = "<";
	else if (comparer == "==")
		newComparer = "!=";
	else if (comparer == "!=")
		newComparer = "==";

	return valAPre + newComparer + valBPre;
}


static vector<std::string> splitByComparator(std::string str) {
	vector<std::string>result;
	while (str.size()) {
		int charSizes[] = { 2, 2, 2, 2, 1, 1 };
		int indexes[6];
		indexes[0] = str.find(">=");
		indexes[1] = str.find("==");
		indexes[2] = str.find("<=");
		indexes[3] = str.find("!=");
		indexes[4] = str.find("<");
		indexes[5] = str.find(">");
		bool found = false;
		for (int i = 0; i < 6; i++)
		{
			if (indexes[i] != std::string::npos) {
				result.push_back(str.substr(0, indexes[i]));
				str = str.substr(indexes[i] + charSizes[i]);
				if (str.size() == 0)result.push_back(str);
				found = true;
				break;
			}
		}

		if (found == false) {
			result.push_back(str);
			str = "";
		}
	}
	return result;
}
