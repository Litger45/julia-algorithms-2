function evaldiffdpoly_2(x,A)
    Q2 = 0
    Q′ = 0
    Q  = 0
    for a in @view A[1:end]
        Q2 = Q2*x+2Q′
        Q′= Q′*x+Q
        Q = Q*x+a
    end
    return Q2
end

function evaldiffdpoly_3(x,A)
    Q3 = 0 
    Q2 = 0
    Q′ = 0
    Q  = 0
    for a in @view A[1:end]
        Q3 = Q3*x+3Q2
        Q2 = Q2*x+2Q′
        Q′= Q′*x+Q
        Q = Q*x+a
    end
    return Q3
end

function evaldiffpoly_k(x,A,k)
    q = zeros(Int64,k-1)
    Q = 0
    for a in A
        i = k-1
        while i>1
            q[i]=q[i]*x+q[i-1]
            i = i-1
        end
        q[1] = q[1]*x+Q
        Q = Q*x+a
    end
    n = 1
    for i in 1:k-1
        q[i] = q[i]*n
        n = n*(n+1)
    end
    return Q,q
end