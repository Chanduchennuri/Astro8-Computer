# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sam/Astro8-Computer/Astro8-Emulator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sam/Astro8-Computer/Astro8-Emulator/linux-build

# Include any dependencies generated for this target.
include CMakeFiles/Astro8-Emulator.exe.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Astro8-Emulator.exe.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Astro8-Emulator.exe.dir/flags.make

CMakeFiles/Astro8-Emulator.exe.dir/main.cpp.o: CMakeFiles/Astro8-Emulator.exe.dir/flags.make
CMakeFiles/Astro8-Emulator.exe.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sam/Astro8-Computer/Astro8-Emulator/linux-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Astro8-Emulator.exe.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Astro8-Emulator.exe.dir/main.cpp.o -c /home/sam/Astro8-Computer/Astro8-Emulator/main.cpp

CMakeFiles/Astro8-Emulator.exe.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Astro8-Emulator.exe.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sam/Astro8-Computer/Astro8-Emulator/main.cpp > CMakeFiles/Astro8-Emulator.exe.dir/main.cpp.i

CMakeFiles/Astro8-Emulator.exe.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Astro8-Emulator.exe.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sam/Astro8-Computer/Astro8-Emulator/main.cpp -o CMakeFiles/Astro8-Emulator.exe.dir/main.cpp.s

# Object files for target Astro8-Emulator.exe
Astro8__Emulator_exe_OBJECTS = \
"CMakeFiles/Astro8-Emulator.exe.dir/main.cpp.o"

# External object files for target Astro8-Emulator.exe
Astro8__Emulator_exe_EXTERNAL_OBJECTS =

Astro8-Emulator.exe: CMakeFiles/Astro8-Emulator.exe.dir/main.cpp.o
Astro8-Emulator.exe: CMakeFiles/Astro8-Emulator.exe.dir/build.make
Astro8-Emulator.exe: CMakeFiles/Astro8-Emulator.exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sam/Astro8-Computer/Astro8-Emulator/linux-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Astro8-Emulator.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Astro8-Emulator.exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Astro8-Emulator.exe.dir/build: Astro8-Emulator.exe

.PHONY : CMakeFiles/Astro8-Emulator.exe.dir/build

CMakeFiles/Astro8-Emulator.exe.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Astro8-Emulator.exe.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Astro8-Emulator.exe.dir/clean

CMakeFiles/Astro8-Emulator.exe.dir/depend:
	cd /home/sam/Astro8-Computer/Astro8-Emulator/linux-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sam/Astro8-Computer/Astro8-Emulator /home/sam/Astro8-Computer/Astro8-Emulator /home/sam/Astro8-Computer/Astro8-Emulator/linux-build /home/sam/Astro8-Computer/Astro8-Emulator/linux-build /home/sam/Astro8-Computer/Astro8-Emulator/linux-build/CMakeFiles/Astro8-Emulator.exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Astro8-Emulator.exe.dir/depend
