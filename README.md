# Awesome Prolog for Logic Puzzles

This is a collection of logic puzzles solved in Prolog, demonstrating the power of logic programming for solving complex reasoning problems. Each puzzle includes a markdown description and a fully working prolog solution (`.pl`).

## Why Prolog

Logic puzzles can get messy. In Prolog, they don’t.

This is where clarity wins and puzzles solve themselves, once you state the rules right. Turns out, when the logic is right, the code is short.

Logic programming flips the usual mindset: you don’t tell the computer how to solve the puzzle by giving procedural instructions, you tell it what must be true. The rest is inference and backtracking.


## Puzzles Collection

### 1. **The Hidden Number**

Difficulty: **5/5**

*A classic deduction puzzle involving color-coded numbers and a layered conversation of knowledge. Can you determine which number A picked based only on what B and C know, and don’t know?*

[Puzzle Description](01_the_hidden_number.md) | [Prolog Solution](01_the_hidden_number.pl)


### 2. **Circle of Unrequited Love** 💔 

Difficulty: **4.5/5**

*Eight people, all loving someone else. And no one’s love is returned.
The clues are relational, recursive, and tricky. Can you reconstruct the entire circle of unrequited affection?*

[Puzzle Description](02_circle_of_unrequited_love.md) | [Prolog Solution](02_circle_of_unrequited_love.pl)


### 3. **Murder and Lies**

Difficulty: **2.5/5**

*Four suspects. All statements are lies. A murder mystery that requires you to invert every clue and uncover who murdered the tycoon.*

[Puzzle Description](03_murder_and_lies.md) | [Prolog Solution](03_murder_and_lies.pl)


### 4. **The Sleeping Prince and the Seven Dwarfs**

Difficulty: **3/5**

*The sleeping prince and the seven dwarfs, and some deadly/delicious Apples. With contradictory statements and only logic to go on, can you awaken the prince without poisoning him?*

[Puzzle Description](04_sleeping_prince.md) | [Prolog Solution](04_sleeping_prince.pl) | [Python Solution](04_sleeping_prince.py)

## Getting Started

To run the Prolog files in this repository, you’ll need:

- **[SWI-Prolog](https://www.swi-prolog.org/)** — a popular open-source Prolog implementation.

### Install SWI-Prolog

**macOS (with Homebrew):**
```bash
brew install swi-prolog
```
**Linux**

```bash
sudo apt-get install swi-prolog  # Ubuntu or Debian
sudo pacman -S swi-prolog        # Arch-based
sudo dnf install pl              # Fedora
```
**Windows**

Download the installer from the [official site](https://www.swi-prolog.org/).

### Basic Prolog Environment

- Once installed, to start a prolog REPL, use `swipl`.
- To load a prolog file in a REPL, use e.g.
  ```
  ?- ['01_the_hidden_number'].
  ```
- Then inside prolog REPL:
  ```
  ?- solve.
  ```

----- 
## About This Project

* All puzzles are solved declaratively in pure Prolog, showcasing logical inference over procedural instruction.
* Translations and encodings were carefully crafted to preserve the nuances of the original puzzles.
* **This is just the start. More puzzles coming soon.**
* Possibly will add Python and Haskell solutions. Because Python, when written declaratively, can mimic logic programming, and functional programming (Lambda calculus) and logic programming (Predicate logic) are just two sides of the same coin.

**If you enjoy logic, language, and symbolic reasoning, this is for you.**
