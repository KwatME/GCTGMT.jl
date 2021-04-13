using CSV: File


using DataFrames: DataFrame, Not, rename!, select!


function read_gct(path::String; axis_0_name::String = "Axis 0 Name")::DataFrame


    gene_x_sample = DataFrame(File(path; header = 3, delim = '\t'))


    select!(gene_x_sample, Not(Symbol("Description")))


    rename!(gene_x_sample, Symbol("Name") => Symbol(axis_0_name))


    return gene_x_sample


end


export read_gct
