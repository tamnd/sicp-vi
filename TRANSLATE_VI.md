# Vietnamese Translation Checklist

Translate all source files from `books/en_US/` to `books/vi/`, preserving Texinfo
structure and formatting. Translate prose only — keep all `@`-commands, Scheme code
blocks, math expressions, and cross-reference labels untouched.

Progress: 0 / 131 files

---

## Root

- [ ] `sicp.texi` — Main entry point (title page, menus, @include directives)

---

## Front Matter

- [ ] `front/utf.texi` — Unofficial Texinfo Format notice
- [ ] `front/dedication.texi` — Dedication
- [ ] `front/foreword.texi` — Foreword (Alan J. Perlis)
- [ ] `front/preface.texi` — Preface to the Second Edition
- [ ] `front/preface-1e.texi` — Preface to the First Edition
- [ ] `front/acknowledgments.texi` — Acknowledgments

---

## Chapter 1 — Building Abstractions with Procedures

- [ ] `ch01/index.texi` — Chapter 1 introduction (Programming in Lisp)
- [ ] `ch01/s01/index.texi` — §1.1 The Elements of Programming
- [ ] `ch01/s01/ss01.texi` — §1.1.1 Expressions
- [ ] `ch01/s01/ss02.texi` — §1.1.2 Naming and the Environment
- [ ] `ch01/s01/ss03.texi` — §1.1.3 Evaluating Combinations
- [ ] `ch01/s01/ss04.texi` — §1.1.4 Compound Procedures
- [ ] `ch01/s01/ss05.texi` — §1.1.5 The Substitution Model for Procedure Application
- [ ] `ch01/s01/ss06.texi` — §1.1.6 Conditional Expressions and Predicates
- [ ] `ch01/s01/ss07.texi` — §1.1.7 Example: Square Roots by Newton's Method
- [ ] `ch01/s01/ss08.texi` — §1.1.8 Procedures as Black-Box Abstractions
- [ ] `ch01/s02/index.texi` — §1.2 Procedures and the Processes They Generate
- [ ] `ch01/s02/ss01.texi` — §1.2.1 Linear Recursion and Iteration
- [ ] `ch01/s02/ss02.texi` — §1.2.2 Tree Recursion
- [ ] `ch01/s02/ss03.texi` — §1.2.3 Orders of Growth
- [ ] `ch01/s02/ss04.texi` — §1.2.4 Exponentiation
- [ ] `ch01/s02/ss05.texi` — §1.2.5 Greatest Common Divisors
- [ ] `ch01/s02/ss06.texi` — §1.2.6 Example: Testing for Primality
- [ ] `ch01/s03/index.texi` — §1.3 Formulating Abstractions with Higher-Order Procedures
- [ ] `ch01/s03/ss01.texi` — §1.3.1 Procedures as Arguments
- [ ] `ch01/s03/ss02.texi` — §1.3.2 Constructing Procedures Using Lambda
- [ ] `ch01/s03/ss03.texi` — §1.3.3 Procedures as General Methods
- [ ] `ch01/s03/ss04.texi` — §1.3.4 Procedures as Returned Values

---

## Chapter 2 — Building Abstractions with Data

- [ ] `ch02/index.texi` — Chapter 2 introduction
- [ ] `ch02/s01/index.texi` — §2.1 Introduction to Data Abstraction
- [ ] `ch02/s01/ss01.texi` — §2.1.1 Example: Arithmetic Operations for Rational Numbers
- [ ] `ch02/s01/ss02.texi` — §2.1.2 Abstraction Barriers
- [ ] `ch02/s01/ss03.texi` — §2.1.3 What Is Meant by Data?
- [ ] `ch02/s01/ss04.texi` — §2.1.4 Extended Exercise: Interval Arithmetic
- [ ] `ch02/s02/index.texi` — §2.2 Hierarchical Data and the Closure Property
- [ ] `ch02/s02/ss01.texi` — §2.2.1 Representing Sequences
- [ ] `ch02/s02/ss02.texi` — §2.2.2 Hierarchical Structures
- [ ] `ch02/s02/ss03.texi` — §2.2.3 Sequences as Conventional Interfaces
- [ ] `ch02/s02/ss04.texi` — §2.2.4 Example: A Picture Language
- [ ] `ch02/s03/index.texi` — §2.3 Symbolic Data
- [ ] `ch02/s03/ss01.texi` — §2.3.1 Quotation
- [ ] `ch02/s03/ss02.texi` — §2.3.2 Example: Symbolic Differentiation
- [ ] `ch02/s03/ss03.texi` — §2.3.3 Example: Representing Sets
- [ ] `ch02/s03/ss04.texi` — §2.3.4 Example: Huffman Encoding Trees
- [ ] `ch02/s04/index.texi` — §2.4 Multiple Representations for Abstract Data
- [ ] `ch02/s04/ss01.texi` — §2.4.1 Representations for Complex Numbers
- [ ] `ch02/s04/ss02.texi` — §2.4.2 Tagged Data
- [ ] `ch02/s04/ss03.texi` — §2.4.3 Data-Directed Programming and Additivity
- [ ] `ch02/s05/index.texi` — §2.5 Systems with Generic Operations
- [ ] `ch02/s05/ss01.texi` — §2.5.1 Generic Arithmetic Operations
- [ ] `ch02/s05/ss02.texi` — §2.5.2 Combining Data of Different Types
- [ ] `ch02/s05/ss03.texi` — §2.5.3 Example: Symbolic Algebra

---

## Chapter 3 — Modularity, Objects, and State

- [ ] `ch03/index.texi` — Chapter 3 introduction
- [ ] `ch03/s01/index.texi` — §3.1 Assignment and Local State
- [ ] `ch03/s01/ss01.texi` — §3.1.1 Local State Variables
- [ ] `ch03/s01/ss02.texi` — §3.1.2 The Benefits of Introducing Assignment
- [ ] `ch03/s01/ss03.texi` — §3.1.3 The Costs of Introducing Assignment
- [ ] `ch03/s02/index.texi` — §3.2 The Environment Model of Evaluation
- [ ] `ch03/s02/ss01.texi` — §3.2.1 The Rules for Evaluation
- [ ] `ch03/s02/ss02.texi` — §3.2.2 Applying Simple Procedures
- [ ] `ch03/s02/ss03.texi` — §3.2.3 Frames as the Repository of Local State
- [ ] `ch03/s02/ss04.texi` — §3.2.4 Internal Definitions
- [ ] `ch03/s03/index.texi` — §3.3 Modeling with Mutable Data
- [ ] `ch03/s03/ss01.texi` — §3.3.1 Mutable List Structure
- [ ] `ch03/s03/ss02.texi` — §3.3.2 Representing Queues
- [ ] `ch03/s03/ss03.texi` — §3.3.3 Representing Tables
- [ ] `ch03/s03/ss04.texi` — §3.3.4 A Simulator for Digital Circuits
- [ ] `ch03/s03/ss05.texi` — §3.3.5 Propagation of Constraints
- [ ] `ch03/s04/index.texi` — §3.4 Concurrency: Time Is of the Essence
- [ ] `ch03/s04/ss01.texi` — §3.4.1 The Nature of Time in Concurrent Systems
- [ ] `ch03/s04/ss02.texi` — §3.4.2 Mechanisms for Controlling Concurrency
- [ ] `ch03/s05/index.texi` — §3.5 Streams
- [ ] `ch03/s05/ss01.texi` — §3.5.1 Streams Are Delayed Lists
- [ ] `ch03/s05/ss02.texi` — §3.5.2 Infinite Streams
- [ ] `ch03/s05/ss03.texi` — §3.5.3 Exploiting the Stream Paradigm
- [ ] `ch03/s05/ss04.texi` — §3.5.4 Streams and Delayed Evaluation
- [ ] `ch03/s05/ss05.texi` — §3.5.5 Modularity of Functional Programs and Modularity of Objects

---

## Chapter 4 — Metalinguistic Abstraction

- [ ] `ch04/index.texi` — Chapter 4 introduction
- [ ] `ch04/s01/index.texi` — §4.1 The Metacircular Evaluator
- [ ] `ch04/s01/ss01.texi` — §4.1.1 The Core of the Evaluator
- [ ] `ch04/s01/ss02.texi` — §4.1.2 Representing Expressions
- [ ] `ch04/s01/ss03.texi` — §4.1.3 Evaluator Data Structures
- [ ] `ch04/s01/ss04.texi` — §4.1.4 Running the Evaluator as a Program
- [ ] `ch04/s01/ss05.texi` — §4.1.5 Data as Programs
- [ ] `ch04/s01/ss06.texi` — §4.1.6 Internal Definitions
- [ ] `ch04/s01/ss07.texi` — §4.1.7 Separating Syntactic Analysis from Execution
- [ ] `ch04/s02/index.texi` — §4.2 Variations on a Scheme — Lazy Evaluation
- [ ] `ch04/s02/ss01.texi` — §4.2.1 Normal Order and Applicative Order
- [ ] `ch04/s02/ss02.texi` — §4.2.2 An Interpreter with Lazy Evaluation
- [ ] `ch04/s02/ss03.texi` — §4.2.3 Streams as Lazy Lists
- [ ] `ch04/s03/index.texi` — §4.3 Variations on a Scheme — Nondeterministic Computing
- [ ] `ch04/s03/ss01.texi` — §4.3.1 Amb and Search
- [ ] `ch04/s03/ss02.texi` — §4.3.2 Examples of Nondeterministic Programs
- [ ] `ch04/s03/ss03.texi` — §4.3.3 Implementing the Amb Evaluator
- [ ] `ch04/s04/index.texi` — §4.4 Logic Programming
- [ ] `ch04/s04/ss01.texi` — §4.4.1 Deductive Information Retrieval
- [ ] `ch04/s04/ss02.texi` — §4.4.2 How the Query System Works
- [ ] `ch04/s04/ss03.texi` — §4.4.3 Is Logic Programming Mathematical Logic?
- [ ] `ch04/s04/ss04/index.texi` — §4.4.4 Implementing the Query System
- [ ] `ch04/s04/ss04/sss01.texi` — §4.4.4.1 The Driver Loop and Instantiation
- [ ] `ch04/s04/ss04/sss02.texi` — §4.4.4.2 The Evaluator
- [ ] `ch04/s04/ss04/sss03.texi` — §4.4.4.3 Finding Assertions by Pattern Matching
- [ ] `ch04/s04/ss04/sss04.texi` — §4.4.4.4 Rules and Unification
- [ ] `ch04/s04/ss04/sss05.texi` — §4.4.4.5 Maintaining the Data Base
- [ ] `ch04/s04/ss04/sss06.texi` — §4.4.4.6 Stream Operations
- [ ] `ch04/s04/ss04/sss07.texi` — §4.4.4.7 Query Syntax Procedures
- [ ] `ch04/s04/ss04/sss08.texi` — §4.4.4.8 Frames and Bindings

---

## Chapter 5 — Computing with Register Machines

- [ ] `ch05/index.texi` — Chapter 5 introduction
- [ ] `ch05/s01/index.texi` — §5.1 Designing Register Machines
- [ ] `ch05/s01/ss01.texi` — §5.1.1 A Language for Describing Register Machines
- [ ] `ch05/s01/ss02.texi` — §5.1.2 Abstraction in Machine Design
- [ ] `ch05/s01/ss03.texi` — §5.1.3 Subroutines
- [ ] `ch05/s01/ss04.texi` — §5.1.4 Using a Stack to Implement Recursion
- [ ] `ch05/s01/ss05.texi` — §5.1.5 Instruction Summary
- [ ] `ch05/s02/index.texi` — §5.2 A Register-Machine Simulator
- [ ] `ch05/s02/ss01.texi` — §5.2.1 The Machine Model
- [ ] `ch05/s02/ss02.texi` — §5.2.2 The Assembler
- [ ] `ch05/s02/ss03.texi` — §5.2.3 Generating Execution Procedures for Instructions
- [ ] `ch05/s02/ss04.texi` — §5.2.4 Monitoring Machine Performance
- [ ] `ch05/s03/index.texi` — §5.3 Storage Allocation and Garbage Collection
- [ ] `ch05/s03/ss01.texi` — §5.3.1 Memory as Vectors
- [ ] `ch05/s03/ss02.texi` — §5.3.2 Maintaining the Illusion of Infinite Memory
- [ ] `ch05/s04/index.texi` — §5.4 The Explicit-Control Evaluator
- [ ] `ch05/s04/ss01.texi` — §5.4.1 The Core of the Explicit-Control Evaluator
- [ ] `ch05/s04/ss02.texi` — §5.4.2 Sequence Evaluation and Tail Recursion
- [ ] `ch05/s04/ss03.texi` — §5.4.3 Conditionals, Assignments, and Definitions
- [ ] `ch05/s04/ss04.texi` — §5.4.4 Running the Evaluator
- [ ] `ch05/s05/index.texi` — §5.5 Compilation
- [ ] `ch05/s05/ss01.texi` — §5.5.1 Structure of the Compiler
- [ ] `ch05/s05/ss02.texi` — §5.5.2 Compiling Expressions
- [ ] `ch05/s05/ss03.texi` — §5.5.3 Compiling Combinations
- [ ] `ch05/s05/ss04.texi` — §5.5.4 Combining Instruction Sequences
- [ ] `ch05/s05/ss05.texi` — §5.5.5 An Example of Compiled Code
- [ ] `ch05/s05/ss06.texi` — §5.5.6 Lexical Addressing
- [ ] `ch05/s05/ss07.texi` — §5.5.7 Interfacing Compiled Code to the Evaluator

---

## Back Matter

- [ ] `back/references.texi` — References
- [ ] `back/exercises.texi` — List of Exercises
- [ ] `back/figures.texi` — List of Figures
- [ ] `back/term-index.texi` — Term Index
- [ ] `back/colophon.texi` — Colophon
