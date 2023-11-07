---
layout : default
parent : Architecture
title : Memory Layout
nav_order : 1
---

> The memory layout was changed as of version **v2.0.0-alpha**. If you have an earlier version less than **v2.0.0-alpha**, [click here](https://sam-astro.github.io/Astro8-Computer/docs/Architecture/Memory%20Layout.html#memory-layout-v100-alpha-to-v101-alpha) to view the old memory layout.

# Memory Layout v2.0.0-alpha +

> This new memory layout came with the introduction of multiple banks, [see docs](https://sam-astro.github.io/Astro8-Computer/docs/Architecture/Instruction%20Set.html#bnk), and moved all graphics related memory (character and video) to the second bank. It also had a resolution increase, meaning the previous addresses for characters and pixels no longer apply. *This change only affected Character Memory **and** Video Memory addressing.*

<br>

```
          |                   |                                                          |
Bank 0    | ░░░░░░░░░░░░░░░░░ | ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ | word 65535
          | Program mem.      |      General mem.                                        |
          
          
          |                                                          |    |              |
Bank 1    | ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓| ▒▒ | ░░░░░░░░░░░░ | word 65535
          | General mem.                                        Char mem.   Video memory |
        
        
```

<br>

## Program Memory

Bank: `0`<br>
Percent: `0 - 25%` <br>
Range: `0 - 16381` <br>
Words: `16382`

Area reserved for program instructions (can be used like general purpose, though).

<br>

## Variable and General Purpose Memory 0

Bank: `0`<br>
Percent: `25-100%` <br>
Range: `16382 - 65535` <br>
Words: `49153`

Memory that the compiler automatically <br>
allocates as needed for variables, or you <br>
can use for other general purposes.

<br>

## General Purpose Memory 1

Bank: `1`<br>
Percent: `0-81%` <br>
Range: `0 - 53500` <br>
Words: `53500`

Memory that the compiler automatically <br>
allocates as needed for variables, or you <br>
can use for other general purposes.

<br>

## Expansion Ports

Bank: `1`<br>
Percent: `81-81%` <br>
Range: `53500 - 53546` <br>
Words: `46`

Dedicated memory locations mapped to the<br>
expansion ports

<br>

## Character Memory

Bank: `1`<br>
Percent: `81-82%` <br>
Range: `53546 - 53871` <br>
Words: `325`

Contains the character codes to be<br>
displayed at the corresponding location.

<br>

## Video Memory

Bank: `1`<br>
Percent: `82-100%` <br>
Range: `53871 - 65535` <br>
Words: `11664`

Contains the pixel's color data to be <br>
displayed at the corresponding location.

<br>
<br>


# Memory Layout v1.0.0-alpha to v1.0.1-alpha

> This memory layout moved the Character Memory section next to the Video Memory, and shifted the General Memory to be next to Program Memory. *This change only affected General Memory **and** Character Memory addressing.*

<br>

```
        |                   |                                          |   |           |
word 0  | ░░░░░░░░░░░░░░░░░ | ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓| ▒ | ░░░░░░░░░ | word 65535
        | Program mem.             General mem.               Char mem.   Video memory |
```

<br>

## Program Memory

Percent: `0 - 25%` <br>
Range: `0 - 16381` <br>
Words: `16382`

Contains the program instructions.

<br>

## Variable and General Purpose Memory

Percent: `25-93%` <br>
Range: `16382 - 61293` <br>
Words: `44911`

Memory that the compiler automatically <br>
allocates as needed for variables, or you <br>
can use for other general purposes.

<br>

## Character Memory

Percent: `25-25%` <br>
Range: `61294 - 61438` <br>
Words: `144`

Contains the indexes of the characters to <br>
be displayed at the corresponding location.

<br>

## Video Memory

Percent: `93-100%` <br>
Range: `61439 - 65535` <br>
Words: `4096`

Contains the pixel's color data to be <br>
displayed at the corresponding location.

<br>
<br>


# Memory Layout v0.0.0-alpha to v0.3.2-alpha

<br>

```
        |                   |   |                                           |           |
word 0  | ░░░░░░░░░░░░░░░░░ | ▒ | ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓ | ░░░░░░░░░ | word 65535
        | Program mem.     Char mem.        General mem.                   Video memory |
```

<br>

## Program Memory

Percent: `0 - 25%` <br>
Range: `0 - 16381` <br>
Words: `16381`

Contains the program instructions.

<br>

## Character Memory

Percent: `25-25%` <br>
Range: `16382 - 16527` <br>
Words: `145`

Contains the indexes of the characters to <br>
be displayed at the corresponding location.

<br>

## Variable and General Purpose Memory

Percent: `25-93%` <br>
Range: `16528 - 61438` <br>
Words: `44910`

Memory that the compiler automatically <br>
allocates as needed for variables, or you <br>
can use for other general purposes.

<br>

## Video Memory

Percent: `93-100%` <br>
Range: `61439 - 65535` <br>
Words: `4096`

Contains the pixel's color data to be <br>
displayed at the corresponding location.

<br>