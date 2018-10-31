using Documenter, PerformanceIndex

makedocs(
    modules = [PerformanceIndex],
    format = :html,
    sitename = "PerformanceIndex.jl",
    linkcheck = true,
    authors = "Phelipe Wesley and contributors.",
    pages = [
        "Home" => "index.md",
        "Details" => "details.md"
    ]
)

deploydocs(
    repo = "github.com/phelipe/PerformanceIndex.jl.git",
    target = "build",
    julia = "1.0",
    deps = nothing,
    make = nothing,
)
