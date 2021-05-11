function copy_user(X::Array{Int})
    x = Array{Int}(1:(size(X, 1)*size(X, 2)))
    for i in 1:(size(X, 1)*size(X, 2))
        x[i] = X[i];
    end
    return reshape(x, (size(X, 2), size(X, 1)))
end

print(copy_user(Vector(2:5)))

print(copy_user([[2, 7, 8] [6, 3, 4] [9, 1, 0]]))