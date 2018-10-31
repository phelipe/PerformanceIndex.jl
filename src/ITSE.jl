module ITSE

export itse

"""
    ```julia
    itse(error, time)
    ```
    Integral of Time-Weighted Squared Error (ITSE) fromm error vector.
    Inputs:
    error -> error vector.
    time  -> time vector.
"""
function itse(error::Vector{T}, time::Vector{T}) where T
    sum(time .* (error.^2))
end    

"""
    ```julia
    itse(error, time)
    ```
    Integral of Time-Weighted Squared Error (ITSE) from vector of error vector.
    Inputs:
    error -> vector of error vector.
    time  -> time vector.
"""
function itse(error::Vector{Vector{T}}, time::Vector{T}) where T
    map(x->sum(time .* (x.^2)), error)
end    



"""
    ```julia
    itse(x, t, desired)
    ```
    Integral of Time-Weighted Squared Error (ITSE) from error betwwen desired value and controler output.
    Inputs:
    x -> controler output vector;
    t -> time vector;
    desired -> desired value function.
"""
function itse(x::Vector{T}, t::Vector{T}, desired::Function) where T
    x = x .- map(desired, t)
    sum( t .* (x.^2))
end  

end