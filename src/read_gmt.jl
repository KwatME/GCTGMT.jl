function read_gmt(path::String)::Dict{String, Vector{String}}

    gene_set_to_gene_ = Dict{String, Vector{String}}()

    for line in readlines(path)

        split_ = split(line, '\t')

        gene_set = split_[1]

        gene_ = split_[3:end]

        gene_set_to_gene_[gene_set] = gene_

    end

    return gene_set_to_gene_

end

function read_gmt(path_::Vector{String})::Dict{String, Vector{String}}

    gene_set_to_gene_ = Dict{String, Vector{String}}()

    for path in path_

        merge!(gene_set_to_gene_, read_gmt(path))

    end

    return gene_set_to_gene_

end

export read_gmt
