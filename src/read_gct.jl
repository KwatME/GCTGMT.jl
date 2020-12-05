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


export read_gct