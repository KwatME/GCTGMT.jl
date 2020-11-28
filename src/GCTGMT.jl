module GCTGMT

using CSV: File
using DataFrames: DataFrame, Not, rename!, select!

function read_gct(file_path::String; axis_0_name::String="Axis 0 Name")

    csv_file = File(file_path; header=3, delim='\t')

    df = DataFrame(csv_file)

    description_symbol = Symbol("Description")

    column_label_ = Not(description_symbol)

    select!(df, column_label_)

    rename!(df, :Name => Symbol(axis_0_name))

    return df

end

function read_gmt(file_path::String)

    gene_set_to_gene_ = Dict{String,Vector{String}}()

    for line in readlines(file_path)

        split_ = split(line, '\t')

        gene_set = split_[1]

        gene_ = split_[3:end]

        gene_set_to_gene_[gene_set] = gene_

    end

    return gene_set_to_gene_

end

function read_gmt(file_path_::Vector{String})

    gene_set_to_gene_all = Dict{String,Vector{String}}()

    for file_path in file_path_

        gene_set_to_gene_ = read_gmt(file_path)

        merge!(gene_set_to_gene_all, gene_set_to_gene_)

    end

    return gene_set_to_gene_all

end

export read_gct, read_gmt

end
