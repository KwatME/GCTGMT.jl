using CSV: File
using DataFrames: DataFrame, Not, rename!, select!

function read_gct(path::String; axis_0_name::String = "Axis 0 Name")::DataFrame

    df = DataFrame(File(path; header = 3, delim = '\t'))

    select!(df, Not(Symbol("Description")))

    rename!(df, Symbol("Name") => Symbol(axis_0_name))

    return df

end

export read_gct
