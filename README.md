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

Here we present examples of the core syntax of the language. This is a code-along of Derek Banas's one-hour Julia tutorial, with some additional snippets.

## Lesson map

| File | Topics |
|------|--------|
| `[01] Variables.jl` | Dynamic typing, type assertions, numeric types, casting |
| `[02] Strings.jl` | Indexing, concatenation, interpolation, multiline strings |
| `[03] Conditions.jl` | `if` / `elseif` / `else`, logical operators, ternary form |
| `[04] Loops.jl` | `while`, `for`, ranges, `break`, `continue`, `global` |
| `[05] Array creation.jl` | Constructors, comprehensions, multidimensional arrays |
| `[06] Array processing.jl` | Indexing, `map`, `filter`, reductions, broadcasting |
| `[07] Containers.jl` | Tuples, dictionaries, sets |
| `[08] Functions.jl` | Definitions, defaults, varargs, overloading, nesting |
| `[09] Functional programming.jl` | Anonymous functions, `map`, `reduce` |
| `[10] Structures.jl` | `@enum`, `struct`, abstract types and subtyping |
| `[11] Error handling.jl` | `try` / `catch`, custom exceptions |
| `[12] File IO.jl` | `open`, `read`, `readlines`, `write` |

## Usage

Run any lesson from the project root:

```bash
julia "[01] Variables.jl"
```

Automated commits and pushes are handled by `git_auto.jl`, which derives the commit message from changed filenames.

## References

The scripts in this repository are substantially a structured summary of the following video tutorial. Topic order and many examples trace back to that source.

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
