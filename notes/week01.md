# Fortran I / II/ IV
The earliest Fortran systems in the 1950s and 1960s were compiler technology breakthroughs as much as languages. The goal was to translate mathematical formulas into efficient machine code, which was a big shift from hand-written assembly. Syntax was rigid and hardware-shaped: fixed-form source, statement labels, DO loops, arithmetic IF, and very limited abstraction. Compilers in this era were heavily machine-specific, and portability across vendors was poor. The eventual push for standardization came largely because people wanted code to survive compiler and hardware changes. 

# Fortran 66
Fortran 66 was the first formal standard. It standardized much of the earlier Fortran style rather than redesigning it. Syntactically, this was still classic old-school Fortran: fixed-form columns, heavy use of labels, COMMON, EQUIVALENCE, GOTO, arithmetic IF, and statement functions. There was no modern module system, dynamic memory, or user-defined data abstraction. Functionality-wise, it mainly gave programmers a portable baseline for numeric code. Compiler-wise, the big change was not fancy new optimization features but the fact that vendors now had a common target to implement.

# Fortran 77
Fortran 77 was the first really dominant “classic Fortran” standard. The syntax still used fixed-form source, but the language became much more disciplined for large scientific programs. 

Major additions included:

* block IF ... THEN ... ELSE ... END IF
* CHARACTER type
* better control flow than earlier arithmetic-IF-heavy styles
* more standardized I/O behavior

This mattered because it moved Fortran toward more readable structured programming, even though it still lacked modules and dynamic memory. Compiler support for Fortran 77 became extremely mature, and that maturity is one reason so much scientific legacy code still looks like Fortran 77 today. GNU Fortran still notes full support for Fortran 77 as part of its standards lineage.

# Fortran 90
Fortran 90 was the biggest redesign in the language’s history. It is where “modern Fortran” really begins.

Syntax changes

This standard introduced:

* free-form source as an alternative to fixed-form
* :: declaration style
* ! comments
* MODULE, USE, and explicit interfaces
* array syntax and slicing
* derived type definitions
* kind-based typing
* recursive procedures and many new intrinsics

## Compiler implications

Compilers now had to understand far richer semantics: whole-array expressions, assumed-shape arrays, modules, interface checking, and stronger type checking. That greatly improved diagnostics compared with old external-procedure-heavy Fortran.

## Functionality changes

This was the point where Fortran became a much better language for high-level numerical expression. Array operations and intrinsic functions let code look more like mathematics. ALLOCATABLE and modules made code safer and more maintainable than COMMON-block-era designs.

In practice, Fortran 90 turned Fortran from “structured legacy numeric language” into a true modern scientific language. GNU Fortran treats Fortran 90 as one of the fully implemented core standards.

# Fortran 95
Fortran 95 was more of a consolidation release than a revolution. It cleaned up Fortran 90, regularized some features, and pushed programmers away from some older constructs.

Emphasis

* refinement of array and procedure features
* FORALL
* PURE and ELEMENTAL procedures gaining importance
* continued move away from obsolescent older features

## Compiler impact

This is where compilers started leaning more on semantic checking for side effects, array semantics, and optimization opportunities around pure procedures.

## Practical meaning

Fortran 95 is often the baseline people mean when they say “not legacy Fortran, but not the newest stuff either.” Many production codes modernized only this far. GNU Fortran explicitly supports strict conformance modes for Fortran 95 and later standards.

# Fortran 2003
Fortran 2003 was another major milestone because it expanded the language from “excellent numerical language” into “serious software engineering language.”

Syntax and language-model changes

Key additions included:
* object-oriented programming support for derived types
* type-bound procedures
* inheritance and polymorphism
* better ALLOCATABLE behavior
* ISO_C_BINDING for standardized C interoperability

## Compiler impact

Compilers had to handle more complicated symbol resolution, dispatch behavior, and cross-language ABI details. This was a substantial jump in implementation complexity compared with Fortran 95.

## Functionality impact

This standard made it practical to build cleaner software architectures in Fortran and to integrate Fortran kernels into mixed-language systems. ISO_C_BINDING was especially important because it gave a standardized path for C/Fortran interoperability, which in turn helped Fortran live inside broader ecosystems.

GNU Fortran documents support for most of Fortran 2003, and C interop remains one of the most important features from this era.

