function sort(M::AbstractMatrix{Int}) 
    X = deepcopy(M) 
    for i in 1:size(M, 2) 
        for k in 1:size(M, 1) 
            for j in 1:(size(M, 1)-1) 
                if(X[j, i] > X[j+1, i]) 
                    X[j, i],X[j+1, i] = X[j+1, i],X[j, i] 
                end 
            end 
        end 
    end 
    return X 
end

function sort!(M::AbstractMatrix{Int})
    for i in 1:size(M, 2)
        for j in 1:size(M[i], 1)
            for k in 1:size(M[i], 1)
            
            end 
        end
    end
end

print(sort([[6, 3, 0] [7, 4, 1] [8, 5, 2]]))