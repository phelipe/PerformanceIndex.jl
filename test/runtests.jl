using PerformanceIndex
using Test

error = [1., -2., 3]
data = [1., 1., 1.]
time = [1., 2., 3.]
function desired(t)
    t     
end 

@test iae(error) == 6.
@test prod(iae([error, error]) .== [6., 6.])
@test iae(data, time, desired) == 3.

@test ise(error) == 14.
@test prod(ise([error, error]) .== [14., 14.])
@test ise(data, time, desired) == 5.

@test itae(error, time) == 14.
@test prod(itae([error, error], time) .== [14., 14.])
@test itae(data, time, desired) == 8.

@test itse(error, time) == 36.
@test prod(itse([error, error], time) .== [36., 36.])
@test itse(data, time, desired) == 14.
