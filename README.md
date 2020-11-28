## Module for accessing .GCT and .GMT

No one should be writing .gct or .gmt anymore.

Write .gct as .tsv.

Write .gmt as .json:

```json
{
  "Gene Set 1": ["Gene 1", "Gene 2"],
  "Gene Set 2": ["Gene A", "Gene B", "Gene C"]
}
```

## Install

```julia
using Pkg: add

add(url="https://github.com/kwatme/GCTGMT.jl")
```

## Use

See [notebook](notenook/).
