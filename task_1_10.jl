function nummax(A)
    max = A[firstindex(A)]
    count = 1
    for i in (firstindex(A):lastindex(A))
        if A[i] > max
            max = A[i]
            count = 0
        end
        if A[i] == max
            count += 1
        end
    end
    return count
end

print(nummax([3,4,1,2,7,0,1,9,2,3,3,4,5,6]))