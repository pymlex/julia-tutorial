using LinearAlgebra
using SparseArrays
using Printf

n = 6
dl = fill(-1.0, n - 1)
d = fill(2.0, n)
du = fill(-1.0, n - 1)

T = Tridiagonal(dl, d, du)
println("Tridiagonal T =")
println(T)

b = ones(n)
x = T \ b
println("x = ", x)
println("residual norm = ", norm(T * x - b))

S = spdiagm(-1 => dl, 0 => d, 1 => du) # Sparse matrix from diagonals
println("\nSparse matrix nnz = ", nnz(S)) # Number of non-zero elements
println("Matrix type = ", typeof(S))
println("Dense and sparse agree = ", norm(Matrix(S) * x - b))