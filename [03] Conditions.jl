using Printf
using Statistics

# If statements
len = 10
if !(len >= 100) && (len > 9) || (len == 7)
    println("Guau!")
elseif len == 1
    println("That's one!")
else
    println("Sorry, I don't know that number")
end

# Ternary operator
println(len > 10 ? "Greater than 10" : "Less than 10")

# String formatting
comp = 5
@printf("Is it longer than %d? %s", comp, (len > comp) ? "Yes" : "No")

