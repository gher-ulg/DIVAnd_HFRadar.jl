# velocity constrains

module DIVAnd_HFRadar

import DIVAnd
using Distributed
using Statistics
using SparseArrays
using Dates
using LinearAlgebra
using Glob
using DelimitedFiles
using NCDatasets

spdiagm(v::AbstractVector) = sparse(Diagonal(v))

include("stagger_mask.jl")
include("stagger_r2u.jl")
include("stagger_r2v.jl")

include("stagger_u2r.jl")
include("stagger_v2r.jl")

include("inertial_oscillations.jl")
include("inertial_oscillations_geo.jl")

include("DIVAndrun_HFRadar.jl")

include("DIVAnd_HFRadar_save.jl")

include("DIVAnd_HFRadar_load_optim.jl")

end
