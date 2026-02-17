module ToyProject

# Write your package code here.
using LinearAlgebra

import Base: angle

# export angle

# """
#     angle(u, v)

# Return the angle between vectors `u` and `v` in radians.
# """
# function angle(u::AbstractVector, v::AbstractVector)
#     cosθ = dot(u, v) / (norm(u) * norm(v))
#     cosθ = clamp(cosθ, -1.0, 1.0)
#     return acos(cosθ)
# end


# import Base: angle    # <--- WICHTIG

"""
    angle(u, v)

Return the angle between vectors `u` and `v` in radians.

Throws an error if either vector is zero.
"""
function angle(u::AbstractVector{T}, v::AbstractVector{T}) where {T<:Real}
    nu = norm(u)
    nv = norm(v)

    if iszero(nu) || iszero(nv)
        error("Angle undefined for zero vector.")
    end

    cosθ = dot(u, v) / (nu * nv)
    cosθ = clamp(cosθ, -one(T), one(T))

    return acos(cosθ)
end



end
