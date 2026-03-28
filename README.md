# Modern Fortran for Scientific Software Engineering  
## 12-Week Learning Program

This repository follows a 12-week learning plan for studying **modern Fortran** in the context of **scientific software engineering**. The goal is not only to learn Fortran syntax, but to build good habits for writing maintainable, testable, and high-performance scientific code.

The program emphasizes:
- the history and evolution of Fortran
- modern language features and best practices
- scientific software project structure
- testing, reproducibility, and maintainability
- interoperability with other languages
- performance and parallel programming concepts

Each week focuses on **one main topic** and ends with a **small deliverable code example** that demonstrates the concepts from that lesson.

---

## Learning Goals

By the end of this program, you should be able to:

- understand how Fortran evolved from legacy scientific programming into a modern language
- write modular Fortran using `modules`, `allocatable` arrays, derived types, and explicit interfaces
- use modern tools such as `fpm` for builds and testing
- structure scientific software in a maintainable way
- evaluate when Fortran is a good choice and when another language may be better
- write small numerical programs with testing, documentation, and reproducible workflows
- understand the basics of interoperability, performance tuning, and parallel programming in Fortran

---

## Weekly Outline

### Week 1 — History of Fortran and the Modern Landscape
Learn the major Fortran standards and how the language evolved from fixed-form scientific programming into a modern language with modules, array syntax, interoperability, and parallel features.

**Deliverable:**  
A small program that prints a timeline of major Fortran standards and their important features.

---

### Week 2 — Toolchain Setup and First Modern Project
Set up a modern Fortran development environment and learn how to build projects using `fpm`.

**Deliverable:**  
A simple `fpm` project with a main program, one module, and one test.

---

### Week 3 — Core Language Fundamentals
Review the essential syntax of modern Fortran, including variables, procedures, `implicit none`, argument `intent`, and modular organization.

**Deliverable:**  
A small kinematics library with functions and tests.

---

### Week 4 — Arrays and Numerical Programming
Focus on Fortran’s strongest area: array-based numerical work. Learn array syntax, slicing, intrinsic functions, and array-oriented thinking.

**Deliverable:**  
A 1D diffusion or heat-equation stepping example using both loops and array syntax.

---

### Week 5 — Memory Management and Data Modeling
Learn how to use `allocatable` arrays, derived types, and modules to model scientific data safely and clearly.

**Deliverable:**  
A small mesh or field-state type with initialization, resize, and norm routines.

---

### Week 6 — File I/O, Configuration, and Reproducibility
Learn how scientific programs read inputs, write outputs, and record metadata needed for reproducible runs.

**Deliverable:**  
A program that reads a simple config file, runs a toy calculation, and writes results plus run metadata.

---

### Week 7 — Testing Scientific Code
Treat Fortran as a software engineering language by learning unit testing, regression testing, and floating-point comparisons.

**Deliverable:**  
A test suite for previous weeks’ examples, including at least one regression-style test.

---

### Week 8 — Scientific Software Design in Fortran
Study how to organize larger Fortran codes using encapsulation, layered design, derived types, and selective object-oriented techniques.

**Deliverable:**  
A refactored solver example with separate model, solver, config, and driver components.

---

### Week 9 — Interoperability with Other Languages
Learn how modern Fortran fits into mixed-language scientific software stacks through `ISO_C_BINDING` and simple C or Python interfaces.

**Deliverable:**  
A small Fortran numerical routine exported to C, with an optional Python wrapper.

---

### Week 10 — Performance Engineering
Learn how to reason about performance using profiling, compiler optimizations, loop order, memory locality, and array temporaries.

**Deliverable:**  
A benchmark comparing multiple implementations of the same numerical kernel.

---

### Week 11 — Parallel Fortran
Get an introduction to shared-memory and distributed-memory ideas in Fortran, including OpenMP, MPI awareness, and coarrays.

**Deliverable:**  
A small parallel example using OpenMP or coarrays.

---

### Week 12 — Capstone Project
Bring the full workflow together in a small scientific software package.

**Deliverable:**  
A complete mini-project with:
- `fpm` build structure
- modular design
- tests
- input handling
- documentation
- one performance, interoperability, or parallel feature

---

## Recommended Development Practices

Throughout the program, the following practices are emphasized:

- always use `implicit none`
- organize code with modules
- prefer `allocatable` over `pointer` unless pointer semantics are required
- write procedures with explicit interfaces and `intent`
- separate numerical kernels from I/O and orchestration
- test small units of scientific logic early
- keep projects reproducible with documented inputs and run metadata
- use Fortran where it is strong, and combine it with other languages when useful

---

## Suggested Repository Structure

A typical weekly project may use a structure like:

```text
weekXX_topic/
├── README.md
├── fpm.toml
├── app/
│   └── main.f90
├── src/
│   └── module_name.f90
├── test/
│   └── test_module_name.f90
├── input/
│   └── example.in
└── output/
    └── example.out