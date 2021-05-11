function reverse_user!(V::AbstractVector{Int})
    for i in 1:(length(V) - 2)
        V[i], V[length(V) - i + 1] = V[length(V) - i + 1], V[i]
    end
    return V
end

function reverse_user!(M::AbstractMatrix{Int}, dim::Int)
    for i in 1:dim
        M[i,:] = reverse!(M[i,:])
    end
    return M
end

print(reverse_user!(Vector(1:4)))

print(reverse_user!([1 2 3; 4 5 6], 2))