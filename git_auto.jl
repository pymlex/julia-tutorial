run(`git add .`)

git_status = readchomp(`git status --porcelain`)

if isempty(git_status)
    println("The project is up to date.")
    exit(0)
end

lines = split(git_status, '\n')
commit_names = String[]

for line in lines
    if length(line) < 4 
        continue 
    end
    file_path = strip(line[4:end])
    file_name = basename(file_path)
    
    if isempty(file_name)
        continue
    end

    if endswith(file_name, ".jl") && occursin(r"^\[\d+\]", file_name)
        m = match(r"^\[\d+\]\s*(.*?)\.jl$", file_name)
        if m !== nothing
            push!(commit_names, m.captures[1])
        end
    else
        push!(commit_names, file_name)
    end
end

if !isempty(commit_names)
    full_commit_message = join(commit_names, ", ")
    println("Committing: \"$full_commit_message\"")
    run(`git commit -m $full_commit_message`)
    run(`git push`)
else
    println("No files found for staging.")
end
