module IAE

export iae

"""
```julia
iae(error)
```
IAE (Integral Absolute Error) from error vector.
Inputs:
error -> error vector.
"""
function iae(error::Vector{T}) where T
    sum(abs.(error))
end    

"""
```julia
iae(error)
```
IAE (Integral Absolute Error) from vector of error vector.
Inputs:
error -> vector of error vector.
"""
function iae(error::Vector{Vector{T}}) where T
    map(x->sum(abs.(x)), error)
end    


""" 
```julia
iae(x, t, desired)
```
IAE (Integral Absolute Error) from error betwwen desired value and controler output.
Inputs:
x -> controler output vector; 
t -> time vector;
desired -> desired value function.
"""
function iae(x::Vector{T}, t::Vector{T}, desired::Function) where T
    x = x .- map(desired, t)
    sum(abs.(x))
end    

end