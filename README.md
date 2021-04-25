## Install

```sh
julia
```

```julia
using Pkg: add

add(; url="https://github.com/KwatME/GCTGMT.jl")
```

## Use

See [examples](notebook/example.ipynb).

## Note

No one should be writing .gct or .gmt anymore.

Write .gct as .tsv.

Write .gmt as .json:

```json
{
  "Gene Set 1": ["Gene 1", "Gene 2"],
  "Gene Set 2": ["Gene A", "Gene B", "Gene C"]
}
```

---

Check out the [python version](https://github.com/KwatME/GCTGMT.py).
