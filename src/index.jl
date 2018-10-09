export iae, ise


"""
    ```julia
    iae(error)
    ```
    IAE (Integral Absolute Error) fromm error vector.
    Inputs:
    error -> error vector.
"""
function iae(error::Vector{T}) where T
    sum(abs.(error))
end    


""" 
    ```julia
    iae(x, t, desired)
    ```
    IAE (Integral Absolute Error) from error betwwen desired value and controler output.
    Inputs:
    x -> controler output vector; 
    t -> time vector;
    desired -> desired value function
   .
"""
function iae(x::Vector{T}, t::Vector{T}, desired::Function) where T
    x = x .- map(desired, t)
    sum(abs.(x))
end    


"""
    ```julia
    ise(error)
    ```
    Integral Squared Error (ISE) fromm error vector.
    Inputs:
    error -> error vector.
"""
function ise(x::Vector{T}) where T<: AbstractFloat
    sum((x.^2))
end    


"""
    ```julia
    ise(x, t, desired)
    ```
    Integral Squared Error (ISE) from error betwwen desired value and controler output.
    Inputs:
    x -> controler output vector;
    t -> time vector;
    desired -> desired value function.
"""
function ise(x::Vector{T}, t::Vector{T}, desired::Function) where T
    x = x .- map(desired, t)
    sum((x.^2))
end    
