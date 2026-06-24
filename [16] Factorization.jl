using LinearAlgebra
using Printf

A = [4.0 2.0 0.0;
     2.0 5.0 1.0;
     0.0 1.0 3.0]
b = [2.0, 4.0, 6.0]

println("A =")
println(A)

# LU factorization
# A = L * U
# where L is lower triangular and U is upper triangular
println("\nLU factorization:")
F = lu(A)
println(F)

x = F \ b
println("x = ", x)
println("residual norm = ", norm(A * x - b))

# QR factorization
# A = Q * R
# where Q is orthogonal and R is upper triangular
println("\nQR factorization:")
Q = qr(A)
x_qr = Q \ b
println("x_qr = ", x_qr)
println("residual norm = ", norm(A * x_qr - b))

# Cholesky factorization
# A = L * L^T
# where L is lower triangular
println("\nCholesky factorization:")
ch = cholesky(A)
y = ch \ b
println("y = ", y)