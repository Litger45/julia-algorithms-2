function quicsearch(A, b)
    first_index = firstindex(A)
    last_index = lastindex(A)
    current_index = -1
    flag = false
    while (first_index + 1 < last_index) &&(current_index == -1)
        mid = div((first_index + last_index), 2)
        if A[mid] == b
            current_index = mid
            flag = true
        else
            if b < A[mid]
                last_index = mid -1
            else
                first_index = mid +1
            end
        end
    end
    if A[first_index] > b
        current_index = first_index
        flag = false
    elseif A[last_index] > b
        current_index = last_index
        flag = false
    elseif A[last_index] < b
        current_index = last_index + 1
        flag = false
    end
    return flag, current_index
end

function insertsort!(A)
    for i in 2:length(A)
        key = A[i]
        j = i
        c,d = quicsearch(A[1:i-1],key)
        while d != j 
            A[j],A[j-1] = A[j-1],A[j]
            j -= 1
        end
    end
    return A
end