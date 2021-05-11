function findallmax(A)
    max = A[firstindex(A)]
    max_num = []
    for i in (firstindex(A):lastindex(A))
        if A[i] > max
            max = A[i]
            max_num = []
        end
        if A[i] == max
            append!(max_num, i)
        end
    end
    return max_num
end

print(findallmax([3,4,9,2,7,0,1,9,2,3,9,4,5,6]))