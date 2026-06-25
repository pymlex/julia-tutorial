# Julia Tutorial From Scratch

## Overview

Julia is a general-purpose language aimed at numerical and scientific computing. Programs compile to efficient native code via LLVM. Multiple dispatch lets one function name dispatch on argument types without manual overload boilerplate. Arrays are first-class and operations are often expressed in a vectorised style close to mathematical notation.

```julia
using Printf

f(x) = x^2

x = 10
@printf("%d squared is %d\n", x, f(x))

a = [1, 2, 3, 4, 5]
b = a .^ 2
println(b)
```

Here we present examples of the core syntax of the language. Lessons 1–12 follow Derek Banas's one-hour Julia tutorial as a code-along, with some additional snippets. Lessons 13–17 extend the track with linear algebra in `LinearAlgebra` and `SparseArrays`.

## Lesson map

**Core syntax** — from Derek Banas

1. Variables — dynamic typing, type assertions, numeric types, casting
2. Strings — indexing, concatenation, interpolation, multiline strings
3. Conditions — `if` / `elseif` / `else`, logical operators, ternary form
4. Loops — `while`, `for`, ranges, `break`, `continue`, `global`
5. Array creation — constructors, comprehensions, multidimensional arrays
6. Array processing — indexing, `map`, `filter`, reductions, broadcasting
7. Containers — tuples, dictionaries, sets
8. Functions — definitions, defaults, varargs, overloading, nesting
9. Functional programming — anonymous functions, `map`, `reduce`
10. Structures — `@enum`, `struct`, abstract types and subtyping
11. Error handling — `try` / `catch`, custom exceptions
12. File IO — `open`, `read`, `readlines`, `write`

**Linear algebra**

13. Linear algebra basics — vectors, matrices, `dot`, `norm`, transpose, inverse, matrix–vector products
14. Reshaping and views — `reshape`, `vec`, `@view`
15. Linear systems — `A \ b`, `b / A`, tridiagonal systems
16. Factorization — LU, QR, Cholesky
17. Sparse matrices — `Tridiagonal`, `spdiagm`, sparse storage

## Usage

Run any lesson from the project root:

```bash
julia "[01] Variables.jl"
```

Automated commits and pushes are handled by `git_auto.jl`, which derives the commit message from changed filenames.

## References

The scripts in lessons 1–12 are substantially a structured summary of the following video tutorial. Topic order and many examples in that block trace back to that source. Lessons 13–17 are original linear algebra material and do not follow the video.

```bibtex
@misc{banas2018julia,
  author       = {Banas, Derek},
  title        = {Julia Tutorial},
  year         = {2018},
  howpublished = {\url{https://www.youtube.com/watch?v=sE67bP2PnOo}},
  note         = {YouTube video, 57:54}
}
```

## Citation

If you found this project useful, please cite it as:

```bibtex
@misc{zyukov2026juliatutorial,
  author       = {Zyukov, Alex},
  title        = {Julia Tutorial — Structured Notes on Core Syntax},
  year         = {2026},
  publisher    = {pymlex},
  howpublished = {\url{https://github.com/pymlex/julia-tutorial}}
}
```

The project is under GPL-3.0 license.
