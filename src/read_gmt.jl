function read_gmt(p::String)::Dict{String, Vector{String}}

    d = Dict{String, Vector{String}}()

    for l in readlines(p)

        s_ = split(l, '\t')

        d[s_[1]] = s_[3:end]

    end

    return d

end

function read_gmt(p_::Vector{String})::Dict{String, Vector{String}}

    d = Dict{String, Vector{String}}()

    for p in p_

        merge!(d, read_gmt(p))

    end

    return d

end

export read_gmt
