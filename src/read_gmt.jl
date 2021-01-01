String_ = Vector{String}

Gmt = Dict{String, String_}

function read_gmt(file_path::String)

    gene_set_to_gene_ = Gmt()

    for line in readlines(file_path)

        split_ = split(line, '\t')

        gene_set = split_[1]

        gene_ = split_[3:end]

        gene_set_to_gene_[gene_set] = gene_

    end

    return gene_set_to_gene_

end

function read_gmt(file_path_::String_)

    gene_set_to_gene_all = Gmt()

    for file_path in file_path_

        merge!(gene_set_to_gene_all, read_gmt(file_path))

    end

    return gene_set_to_gene_all

end

export read_gmt
