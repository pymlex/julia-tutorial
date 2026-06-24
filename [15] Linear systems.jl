using LinearAlgebra
using Printf

# Solving x * A = b
println("\nSolving x * A = b")

A = [3.0 1.0;
     1.0 2.0]
b = [9.0 8.0]

x = b / A
println("x = ", x)
println("x * A = ", x * A)
println("residual norm = ", norm(x * A - b))

# Solving A * x = b
println("\nSolving A * x = b")

A = [3.0 1.0;
     1.0 2.0]
b = [9.0, 8.0]

x = A \ b
println("x = ", x)
println("A * x = ", A * x)
println("residual norm = ", norm(A * x - b))

# Tridiagonal system
# Puasson equation in 1D
# -u'' = f
println("\nTridiagonal system:")

n = 5
T = Tridiagonal(fill(-1.0, n - 1), fill(2.0, n), fill(-1.0, n - 1))
f = ones(n)

u = T \ f
println("T = ", T)
println("u = ", u)
println("residual norm = ", norm(T * u - f))
