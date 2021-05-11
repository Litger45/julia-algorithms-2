function sortkey(key_values, a)
    indperm=sortperm(key_values)
    return a[indperm]
end

function sortkey(f::Function, a)
    sortkey(f(a), a)
end