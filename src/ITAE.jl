module ITAE

export itae

"""
    ```julia
    itae(error, time)
    ```
    ITAE (Integral of Time-Weighted Absolute Error) from error vector.
    Inputs:
    error -> error vector.
    time  -> time vector.
"""
function itae(error::Vector{T}, time::Vector{T}) where T
    sum(time .* abs.(error))
end    

"""
    ```julia
    itae(error, time)
    ``` 
    ITAE (Integral of Time-Weighted Absolute Error) from vector of error vector.
    Inputs:
    error -> vector of error vector.
    time  -> time vector.
"""
function itae(error::Vector{Vector{T}}, time::Vector{T}) where T
    map(x->sum(time .* abs.(x)), error)
end    


""" 
    ```julia
    itae(x, t, desired)
    ```
    ITAE (Integral of Time-Weighted Absolute Error) from error betwwen desired value and controler output.
    Inputs:
    x -> controler output vector.
    t -> time vector.
    desired -> desired value function.
"""
function itae(x::Vector{T}, t::Vector{T}, desired::Function) where T
    x = x .- map(desired, t)
    sum(t .* abs.(x))
end    

end