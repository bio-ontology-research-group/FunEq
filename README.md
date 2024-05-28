# FunEq

FunEq is a benchmark dataset for evaluating automated theorem proving (ATP) systems, specifically targeting the domain of functional equations. It provides a curated collection of problems formalized in the Lean 3 theorem prover, including problems from the International Mathematical Olympiad (IMO).

## Dataset Structure

* **Simple (18 problems):** Fundamental functional equation problems requiring basic algebraic manipulation, substitution, and simple induction.

* **Intermediate (15 problems):** Problems focusing on proving intermediate lemmas often needed for more complex functional equations (e.g., injectivity, surjectivity).

* **Hard (varies):** The most challenging shortlisted IMO functional equation problems since 2002.

## Problem Formulation

The problems in FunEq are presented in a format suitable for the Lean theorem prover. They typically consist of:

* **Hypothesis:** A set of conditions or properties that a function must satisfy.
* **Goal:** The statement to be proven about the function, given the hypotheses.

**Note:** In contrast to their original formulation in math competitions, where the task is to find all functions satisfying the hypothesis, the problems in FunEq explicitly state the solution as the goal to align with the Lean framework.

## Setup

Run the following commands:

```bash
leanpkg configure
leanproject get-mathlib-cache
leanproject build
