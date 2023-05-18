---
title: >-
  Introducing Backgammon Position Notation (BPN): A Standard for Representing Game State
date: 2023-05-16 02:33:09
tags: backgammon
---

In my work developing a couple of chess engines, I've greatly appreciated the existence of standard protocols like the [Universal Chess Interface (UCI)](https://www.chessprogramming.org/UCI) and notations like [Forsyth-Edwards Notation (FEN)](https://www.chessprogramming.org/Forsyth-Edwards_Notation). These standards aren't just conceptual tools, but they form a practical foundation that has enabled chess programming to flourish. They serve to separate the concerns of the engine, which focuses on game analysis, and the graphical user interface (GUI), which deals with user interaction.

When I began exploring backgammon from a developer's perspective, I realized that such standardization is not widespread. This lack of universal standards in backgammon programming is a significant barrier to the growth of the community. For the backgammon programming community to blossom, adopting such standards would be beneficial, allowing developers to create engines independently of GUIs, and enabling users to mix and match their preferred engine and interface.

In this spirit, I'm proposing a Backgammon Position Notation (BPN) – a system inspired by FEN but designed to represent any backgammon game state. This post focuses on BPN as a counterpart to chess's FEN, acknowledging the role that such a standard could play in paving the way for the growth of backgammon programming.

The BPN consists of five fields separated by hyphens:

1. **Piece placement**: This field shows the number and color of pieces on each point, from point 1 to 26 (from the white player's perspective). Each point is denoted by a letter-number combination: lowercase for white, uppercase for black, with the number indicating the number of pieces of that color on the point. Consecutive empty points are represented by their count.

2. **Bar**: Represents the number of white and black checkers on the bar. The letter 'w' or 'b' denotes the color, followed by the number of checkers of that color on the bar.

3. **Active color and dice roll**: Begins with 'w' or 'b' to denote the active player, followed by the dice roll (or '00' if no dice have been rolled yet).

4. **Cube value and ownership**: The cube value is represented as 'n' followed by the current value of the doubling cube, and the ownership is represented by '1' if owned by the white player, '2' if owned by the black player, and '0' if the cube is in the middle.

5. **Match information**: Depicts the current score for both players (separated by a colon), followed by the total points needed to win the match.

Here's a sample BPN for a starting position where white has won the opening roll of 3-1:

`b4E1C3eE3c1e4B-w0b0-w31-n1-0:0:7`

![Starting position](https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Bg-start.svg/1920px-Bg-start.svg.png)

The BPN string given above corelates to the picture. Here's how you interpret it:
- `b`. We start by looking at the 1st point (square), `b` is the second letter in the alphabet, and it's lowercase. This translates to "There's 2 white checkers on the 1st point".
- `4`. Four empty squares, in other words the squares 2, 3, 4 and 5 are empty.
- `E`. Five black checkers at the 6th point.
    * It's black since it's uppercase.
    * I's 5 since `E` is the 5th letter in the alphabet.
    * We know it's on the 6th point due to the previous step.

And so forth.


BPN serves as a clear, unambiguous representation of the game state. It's a stepping stone towards creating a standard protocol for backgammon engines, which is a prerequisite for a vibrant and accessible backgammon programming community. This is just the beginning, and I look forward to the journey of making backgammon programming as robust and standardized as its chess counterpart!

