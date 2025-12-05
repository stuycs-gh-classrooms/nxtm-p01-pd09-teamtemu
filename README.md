[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/QTULg0OX)
# NeXtCS Project 01
### thinker0: Nathaniel Moy
### thinker1: Connor Meyer
---

### Overview
Your mission is create either:
- Life-like cellular automata [life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life), [life-like](https://en.wikipedia.org/wiki/Life-like_cellular_automaton), [demo](https://www.netlogoweb.org/launch#https://www.netlogoweb.org/assets/modelslib/Sample%20Models/Computer%20Science/Cellular%20Automata/Life.nlogo).
- **Breakout/Arkanoid [demo 0](https://elgoog.im/breakout/)  [demo 1](https://www.crazygames.com/game/atari-breakout)**
- Space Invaders/Galaga

This project will be completed in phases.  
The first phase will be to work on this document. 
* Use markdown formatting.
* For more markdown help
  - [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or
  - [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)


---

## Phase 0: Selection, Analysis & Plan

#### Selected Project: CHOOSE WISELY

### Necessary Features
What are the core features that your program should have? These should be things that __must__ be implemented in order to make the program useable/playable, not extra features that could be added to make the program more interesting/fun.

- Paddle at bottom with movement system (mouse and key)
- Moving ball
- Collision detection (paddle and blocks)
- Blocks (spawn)
- Loss system/out of bound
- Game start (ball spawn, block spawn, paddle spawn)
- Lives system (default 3)
- Ability to pause/unpause
- Restart game with "r"
- Continuation of game after completing all blocks (ball gets faster/more balls)

### Extra Features
What are some features that are not essential to the program, but you would like to see (provided you have time after completing the necessary features. Theses can be customizations that are not part of the core requirements.

- Multiple balls (with collision detection)
- Different types of blocks
- Chance for paddle to "break" = instant lose

### Array Usage
How will you be using arrays in this project?

1D Array:
- Balls (PVector)

2D Array:
- Block Grid (PVector)


### Controls
How will your program be controlled? List all keyboard commands and mouse interactions.

Keyboard Commands:
- Arrow keys (paddle movement, cannot move up or down)
- R for reset
- Space for pause/unpause/start

Mouse Control:
- Mouse movement: Paddle movement (cannot move up or down)
- Mouse pressed: Pause/unpause/start


### Classes
What classes will you be creating for this project? Include the instance variables and methods that you believe you will need. You will be required to create at least 2 different classes. If you are going to use classes similar to those we've made for previous assignments, you will have to add new features to them.

CLASS ball
- Instance variables:
  - PVector(x,y)
  - Speed
  - Size
- METHODS
  - move()
  - collisionDetect()
  - display()

CLASS block
- Instance variables:
  - PVector(x,y)
  - Size
- METHODS
  - collisionDetect()
  - display()
