using Documenter, PerformanceIndex

makedocs(
    modules = [PerformanceIndex],
    format = :html,
    sitename = "PerformanceIndex.jl",
    pages = Any["index.md"]
)

deploydocs(
    repo = "github.com/phelipe/PerformanceIndex.jl.git",
    target = "build",
    julia = "1.0",
    deps = nothing,
    make = nothing,
)
