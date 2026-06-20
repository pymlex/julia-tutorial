run(`git add .`)

status = readchomp(`git status --porcelain`)

if isempty(status)
    println("The project is up to date.")
    exit(0)
end

names = String[]

for line in split(status, '\n')
    length(line) < 4 && continue

    path = strip(line[4:end])
    file = basename(path)

    m = match(r"^\[[^\]]+\]\s*(.+)\.jl$", file)

    if m !== nothing
        push!(names, strip(m.captures[1]))
    else
        push!(names, file)
    end
end

message = join(unique(names), ", ")

println("Committing: \"$message\"")

run(`git commit -m $message`)
run(`git push`)