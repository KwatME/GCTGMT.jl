using OrderedCollections: OrderedDict

function read_gmt(p::String)::OrderedDict{String, Vector{String}}

    d = OrderedDict{String, Vector{String}}()

    for l in readlines(p)

        s_ = split(l, '\t')

        g_ = s_[3:end]

        if unique(g_) != [""]

            d[s_[1]] = g_

        end

    end

    return sort(d)

end

function read_gmt(p_::Vector{String})::OrderedDict{String, Vector{String}}

    d = OrderedDict{String, Vector{String}}()

    for p in p_

        merge!(d, read_gmt(p))

    end

    return sort(d)

end

export read_gmt
