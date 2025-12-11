## Project 01: GridRock
### due `2025-12-12f 08:00` (final; multiple preliminary deadlines)

#### GOAL / Overview:
The purpose of this project is to demonstrate your ability to use the concepts we've covered so far to create a large program. Each project will need to showcase the following:
  - Custom classes.
  - Well organized multi-file design (classes and a driver).
  - 1D arrays.
  - 2D arrays.
  - Event-driven components.

This is a project; as such, it will be graded for correctness. You may work either alone _OR_ in groups of 2 (you can partner with anyone in the class). There will be multiple stages to the project. 

#### TASK: 
Team up with a partner ***with whom you have not worked on a project before***, then proceed.

### Deadlines
  * Design: `2025-12-08m 08:00`
  * Feedback: `2025-12-09t 08:00`
  * v0: `2025-12-10w 08:00`

#### Skill List

| Skill | Minimal Competency | Developing Competency | Competency | Mastery
| --- | --- | --- | --- | --- |
| 1. Basic Drawing Functions (line, circle, square, rect, ellipse) |  Can use one basic 2D drawing function. | Can use two basic drawing functions. | Can use all the basic drawing functions. | Can use multiple basic drawing functions to draw a complex shape. |
| 2. Controlling Color State |  Can set the fill or stroke color of a 2D shape. | Can set the fill and stroke color of a 2D shape. | Can set the fill and stroke color and the stroke weight of a 2D shape. | Can control the fill and stroke colors and the stroke weights of multiple 2D shapes. |
| 3. Using Colors |  Can set colors using separate Red, Green, and Blue values. | Can set colors using RGB values or hexcode values. | Can create and work with `color` variable types. | Can explain how the `color` data type represents color values. |
| 4. Primitive Variables and Types |  Can declare, initialize, and use `int` variables. | Can declare, initialize, and use `int` and `float` variables. | Can explain the differences and use the different integer and floating point variable types. | Can explain the differences between, use, and explain how the different primitive variables types represent data. |
| 5. Working with Boolean Values |  Understands the purpose of boolean values. | Demonstrates the appropriate use of comparison operators. | Demonstrates the appropriate use of comparison and boolean operators. | Writes functions that take in boolean values and/or return boolean values. |
| 6. Working with `setup` and `draw` |  Can write a valid `setup` function that sets initial conditions for a processing program. | Can write a valid `setup` function, and can write a valid `draw` function that generates different program output each frame. | Can create global variables that are initialized in `setup` and modified in `draw`. | Can use global variables, custom functions, and `setup` and `draw` to produce a full processing program. |
| 7. Controlling Program Speed |  Can set the frame rate for a processing program. | Can set the frame rate based on a specified speed. | Can control program output based on the current frame number. | Can start and stop the action of a processing program. |
| 8. Custom Functions |  Can identify the return type, name, parameter list, and body of a function. | Can write a function given a header and description. | Can write a function, including selecting appropriate return and parameter types. | Can write multiple functions and use variable scope accurately. |
| 9. Writing Readable Code |  Uses descriptive identifiers. | Uses indentation and newlines to create more readable code, and descriptive identifiers. | Uses inline and block comments when appropriate. Uses indentation and newlines, and descriptive identifiers. | Can take a large programming task and break it up into smaller functions. |
| 10. Debugging Practices |  Can use `println` statements to help debug code. | Consistently uses `println` statements while debugging. | Consistently uses `println` statements and commenting while debugging. | Creates visual output in the program window while debugging. |
| 11. Conditional Statements |  Can use a single `if` statement correctly. | Can use combined `if` and `else` statements correctly. | Can use `if`, `else if`, and `else` correctly multiples times in a program. | Can use multiple styles of combinations of conditional statements (i.e. nested, sequential) in a single program. |
| 12. Loops |  Can use a basic `while` loop. | Can use a basic `for` loop with a variable modified by an increment (`++`) or decrement (`--`) operator. | Can use `for` loops with a variable controlled by `--`, `++`, and other arithmetic operations as appropriate. | Can use both `for` and `while` loops when appropriate, and explain why one is a better choice over another in a given situation. |
| 13. Handling Events |  Can modify the state of a running program using the `keyPressed()` method. | Can modify the sate of a running program using multiple keys via the `keyPressed()` method. | Can modify the state of a running program using `mouePressed()`, using the mouse's coordinates in some way, as well as using `keyPressed()` | Can work with all the keyboard and mouse event handling Processing functions. |
| 14. Using Objects |  Can declare and Object variable and instantiate an Object using a constructor. | Can use multiple Objects in a program by calling methods on appropriately declared and instantiated Object variables. | Can use Objects in a program, describe how reference variables work, and how they are different from primitive variables. | Can use Objects and accurately make heap diagrams of Object variables and data. |
| 15. Writing Classes |  Can design a class by grouping together ideas that should be encapsulated into a single class. | Can separate out the fields from the methods while designing a class. | Can write a class with fields, a single constructor and methods. | Can write classes with fields, and overloaded methods and constructors. |
| 16. 1D Arrays |  Can declare and instantiate a primitive 1D array. | Can declare, instantiate, and use primitive 1D arrays, including iterating though them with loops. | Can declare, instantiate, and use primitive and object 1D arrays. | Can work with 1D arrays in non-sequential ways. Understands the concepts of deep and shallow copies of arrays. |
| 17. 2D Arrays  | Can declare and instantiate primitive and object 2D arrays. | Can declare, instantiate, and use primitive and object 2D arrays, including iterating though them with loops. | Can work with both square and rectangular 2D arrays. | Can use 2D arrays to model grid-based structures (i.e. game boards, images, cellular automata) |
| 21. Utilzing Nomenclature and Adhering to Specification |  Minimal Competency: Can demonstrate only minimal understanding of required terminology. | Developing Competency: Can produce work that requires moderate revision to meet expectations. | Competency: Can show solid understanding of required terminology and apply it in most contexts correctly. | Mastery: Can consistently use precise, discipline-appropriate nomenclature without error. |


### Choices, Choices!
For this project, you have two options, with more details below:
- A Cellular automata (like Conway's Game of Life) simulation.
- A Breakout/Arkanoid style game.
- Space Invaders/Galaga style game

### Life-Like Cellular Automata
You may recall [Conway's Game of Life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life) from NetLogo. To refresh your memory, either open up NetLogo and find _Life_ in the Models library, or use the simulation available on [NetLogo Web](https://www.netlogoweb.org/launch#https://www.netlogoweb.org/assets/modelslib/Sample%20Models/Computer%20Science/Cellular%20Automata/Life.nlogo) (note the web version may run slowly). Life is one particular Cellular Automaton, but in general all Life-Like CA have the following:
- A world made of distinct "cells".
- "Time" that passes is discrete steps.
- Discrete states for each cell, such that a cell can be in one state at any given time (in Life, there are only 2 states, alive and dead).
- A set of rules for how cells can change state that are based on the sate of the cell and the state(s) of it "neighbors" (some set of cells nearby, in Life, the neighbors are the 8 cells that surround a cell).

If you choose Cellular Automata, your program must have the following elements:
- Successful simulation of Conway's Game of Life, as well as two other [Life-like](https://en.wikipedia.org/wiki/Life-like_cellular_automaton) cellular automata.
- Initial setups for each (either random or specific).
- The ability to start with a blank world and turn cells on/off with the mouse.
- Keyboard controls to switch between simulations, start/stop, and preset/drawing modes.

### Breakout/Arkanoid
A classic game, you can check out [demo 0](https://elgoog.im/breakout/) and [demo 1](https://www.crazygames.com/game/atari-breakout) if you need clarification. A breakout style game should have:
- A user controlled paddle.
- A grid of bricks.
- A ball that bounces off the paddle, bricks, and side walls.
- Bricks that disappear or are damaged when hit by the ball.
- Loss of "life" if the ball gets past the paddle.

In addition to basic gameplay, if you choose breakout your program must have the following:
- A set number (more than one) of "lives".
- The ability to play/pause the game.
- The ability to reset the game.
- Some continuation of the game if all the bricks have been destroyed.

### Space Invaders/Galaga
A classic game that we have made pieces of in class. This style game should have:
- A grid of "enemies" that move across and down, and also shoot the player.
- A user controlled "spaceship" for shooting projectiles.
- Projectiles that collide and destroy enemies.

In addition to basic gameplay, if you choose space invaders your program must have the following:
- A set number (more than one) of "lives".
- The ability to play/pause the game.
- The ability to reset the game.
- Some continuation of the game if all the enemies have been destroyed.
- Different kinds of enemies (possible differences are movement, health, speed, etc)

### Read Everything? Ready to Begin?
Use the appropriate link to create a new github classroom repository for your project:
* pd09: https://classroom.github.com/a/QTULg0OX
* pd10: https://classroom.github.com/a/Mfyqb_T6

---

### Phase 1 - Feedback
- For each project you are reviewing:
  - Read the README.md document that has been created.
  - Make note of anything that stands out to you. You will be specifically required to provide __2__ of each of the following for each repo you review:
    - Things from the design that you really like. _Explain why._
    - Clarifying questions, either something that does not quite make sense to you, or something that you think needs further explanation.
    - Suggestions: components to add or tooling to tweak, etc. Any formatting suggestions that improve clarity are also welcome...
  - You will provide this feedback using the  "Issues" section of the project GitHub repository.
    - issue title: `Feedback from YOUR NAME HERE` _followed by your name(s)_.
    - Use the following markdown template to fill in your responses:

    ```
    Cool things:
    -
    -

    Clarifying Qs:
    -
    -

    Suggestions:
    -
    -
    ```

- Next (once you have provided all requisite feedback), look over the issues on your own repository. **Create a new document** in your project repository called __`changes.md`__:
  - The purpose of this file is to track **any** changes between your design document and your finished project.
  - If you decide to modify any aspect of your design based on your feedback received (or from looking at the designs of others), add them to __`changes.md`__.
  - It should be a markdown file.
- ***NOTA BENE***: Leave your issues open until further notice to facilitate easier instructor review.

---


#### REPOS:

##### pd09:
* [acai](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd09-acai)
* [a-cool-team](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd09-a-cool-team)
* [balls](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd09-balls)
* [crashouts](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd09-crashouts)
* [definitely-a-team](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd09-definitely-a-team)
* [elf-council](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd09-elf-council)
* [hiiiiiiiiii](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd09-hiiiiiiiiii)
* [lebronjames10pointstreakbroke](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd09-lebronjames10pointstreakbroke)
* [lobby](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd09-lobby)
* [shinobi](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd09-shinobi)
* [solo-team](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd09-solo-team)
* [teamtemu](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd09-teamtemu)
* [the-autobots](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd09-the-autobots)
* [ultimate-silliness](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd09-ultimate-silliness)
* [wow](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd09-wow)
  
##### pd10:
* [aj](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd10-aj)
* [awesome-coders-club](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd10-awesome-coders-club)
* [best-team-ever](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd10-best-team-ever)
* [blebhblehblbhe-dont-jon](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd10-blebhblehblbhe-dont-jon)
* [calvin-coolidge](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd10-calvin-coolidge)
* [mmmash](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd10-mmmash)
* [mmmm](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd10-mmmm)
* [not-solo-team](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd10-not-solo-team)
* [shahnaj](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd10-shahnaj)
* [skib](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd10-skib)
* [strawberry-shortcake](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd10-strawberry-shortcake)
* [tahsans-team](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd10-tahsans-team)
* [teamteamteam](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd10-teamteamteam)
* [the-chainsaw-man-church](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd10-the-chainsaw-man-church)
* [tokyo-public-safety-special-division-4](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd10-tokyo-public-safety-special-division-4)
* [wooper](https://github.com/stuycs-gh-classrooms/nxtm-p01-pd10-wooper)
  
##### dummy:
* [stofruy of si_bam](https://github.com/stuycs-gh-classrooms/09-nextcs-p01-si_bam)
* [stofruy of woo_ha](https://github.com/stuycs-gh-classrooms/10-nextcs-p01-si_bam)
