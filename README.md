# Awesome Prolog for Logic Puzzles

Logic puzzles can get messy. In Prolog, they don’t.

This is where clarity wins and puzzles solve themselves, once you state the rules right. Turns out, when the logic is right, the code is short.

Logic programming flips the usual mindset: you don’t tell the computer how to solve the puzzle, you tell it what must be true. The rest is just inference and backtracking.

This is a collection of logic puzzles solved in Prolog, demonstrating the power of logic programming for solving complex reasoning problems. Each puzzle includes a markdown description and a fully working prolog solution (`.pl`).

## Puzzles Collection

### 1. **The Hidden Number**

> A classic deduction puzzle involving color-coded numbers and a layered conversation of knowledge.
> Can you determine which number A picked based only on what B and C know, and don’t know?

[Puzzle Description](01_the_hidden_number.md) | [Prolog Solution](01_the_hidden_number.pl)

---

### 2. **Circle of Unrequited Love 💔 **

> Eight people, all loving someone else. And no one’s love is returned.
> The clues are relational, recursive, and tricky. Can you reconstruct the entire circle of unrequited affection?

[Puzzle Description](02_circle_of_unrequited_love.md) | [Prolog Solution](02_circle_of_unrequited_love.pl)

---

### 3. **Murder and Lies**

> Four suspects. All statements are lies.
> A murder mystery that requires you to invert every clue and uncover who murdered the tycoon.

[Puzzle Description](03_murder_and_lies.md) | [Prolog Solution](03_murder_and_lies.pl)

---

### 4. **The Sleeping Prince**

> The sleeping prince and the seven dwarfs, and some deadly/delicious Apples.
> With contradictory statements and only logic to go on, can you awaken the prince without poisoning him?

[Puzzle Description](04_sleeping_prince.md) | [Prolog Solution](04_sleeping_prince.pl) | [Python Solution](04_sleeping_prince.py)

---

## About This Project

* All puzzles are solved declaratively in pure Prolog, showcasing logical inference over procedural instruction.
* Translations and encodings were carefully crafted to preserve the nuances of the original puzzles.
* This is just the start. More puzzles coming soon.
* Possibly will add Python and Haskell solutions, for those who like their logic with loops or lambdas. [1]

[1] Because Python, when written declaratively, can mimic logic programming, and functional programming (Lambda calculus) and logic programming (Predicate logic) are just two sides of the same coin.

**If you enjoy logic, language, and symbolic reasoning, this is for you.**
