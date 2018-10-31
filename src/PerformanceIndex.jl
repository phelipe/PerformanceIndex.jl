module PerformanceIndex

using LinearAlgebra
using Reexport

include("IAE.jl") 
include("ISE.jl") 
include("ITAE.jl") 
include("ITSE.jl") 


@reexport using .IAE
@reexport using .ISE
@reexport using .ITAE
@reexport using .ITSE

end # module
