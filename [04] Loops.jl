using Printf
using Statistics

# While loop
i = 1
while (i <= 10)
    if (i % 2) == 0
        println("$i is odd")
        global i += 1
        continue
    end
    global i += 1
    if i >= 5
        break
    end
end

# For loop
for i in 1:5
    println(i)
end

for i in 1:2:10, j in 2:2:8
    println((i, j))
end