---
title: >-
  Introducing Backgammon Position Notation (BPN): A Standard for Representing Game State
date: 2023-05-16 02:33:09
tags: backgammon
---

As a software developer who has written chess engines, I've always appreciated the structural clarity in the world of chess programming. Chess has a rich history of computer analysis and play, with standards like the [Forsyth-Edwards Notation (FEN)](https://en.wikipedia.org/wiki/Forsyth%E2%80%93Edwards_Notation) and the [Universal Chess Interface (UCI)](https://en.wikipedia.org/wiki/Universal_Chess_Interface) that provide a solid foundation. This foundation allows us to record games, share positions, and communicate with chess engines in a unified manner.

Recently, I've turned my attention to backgammon, a game of equally fascinating complexity and an intriguing blend of strategy and probability. However, I was surprised to find that backgammon lacks the standard notations and protocols that have been so instrumental in the chess world.

For a backgammon programming community to flourish like its chess counterpart, I believe we need these standard protocols. They're not just about convenience. Standards like FEN and UCI have catalyzed progress in chess, enabling a global community of developers to collaborate, share insights, and build on each other's work. They have streamlined the training of AI models, pushing the boundaries of what's achievable in computer chess. One of the many benefits of these standards is the ability to create an engine and hook it up to a GUI that speaks the protocol. This is not only beneficial from a developer's point of view but also for end users, who can choose their favorite GUI and pair it with their engine of choice.

With this in mind, I'm excited to introduce the Backgammon Position Notation (BPN). It's a compact and human-readable notation I've developed to represent all possible game states in backgammon:

`b4E1C3eE3c1e4B-1:n-w-0:0:7`

This notation consists of four fields, separated by hyphens:

1. **Piece placement**: This represents the setup of checkers on the board from point 1 to point 26. Each character in the string represents the contents of a single point.
2. **Cube value and ownership**: This indicates the value of the doubling cube and the owner of the cube.
3. **Active color**: This designates the player on roll.
4. **Match information**: This provides the current match score and the match length.

Let's delve into an example to clarify the BPN:

Consider the BPN `b4E1C3eE3c1e4B-1:n-w-0:0:7`

- The first part `b4E1C3eE3c1e4B` represents the piece placement. Here, `b` means that there are 2 white checkers on the 1st point. Then, there are 4 empty points, followed by 5 black checkers on the 6th point, and so on.
- The second part `1:n` represents the cube value (1) and the owner (none, other possible owner values are `w` for white and `b` for black).
- The third part `w` indicates that it is White's turn.
- The last part `0:0:7` represents the current match score (0-0) and the length of the match (7 points).

So in human words this would be the starting position, where white has won the dice starting roll and the score is 0-0 in a match to 7 points.

![Starting position](https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Bg-start.svg/1920px-Bg-start.svg.png)


The BPN provides a clear and consistent way to describe any game state in backgammon. It's designed to be intuitive and easy to use, much like the FEN in chess. With this notation, we can share and discuss backgammon positions just as easily as we do with chess positions. 

I'm thrilled to offer this contribution to the backgammon community, and I look forward to your thoughts and feedback.
