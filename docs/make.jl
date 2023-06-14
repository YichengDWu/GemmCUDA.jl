using GemmCUDA
using Documenter

DocMeta.setdocmeta!(GemmCUDA, :DocTestSetup, :(using GemmCUDA); recursive=true)

makedocs(;
    modules=[GemmCUDA],
    authors="MilkshakeForReal <yicheng.wu@ucalgary.ca> and contributors",
    repo="https://github.com/YichengDWu/GemmCUDA.jl/blob/{commit}{path}#{line}",
    sitename="GemmCUDA.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://YichengDWu.github.io/GemmCUDA.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/YichengDWu/GemmCUDA.jl",
    devbranch="main",
)
