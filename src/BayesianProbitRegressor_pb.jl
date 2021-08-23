# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct BayesianProbitRegressor_Gaussian <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BayesianProbitRegressor_Gaussian(; kwargs...)
        obj = new(meta(BayesianProbitRegressor_Gaussian), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct BayesianProbitRegressor_Gaussian
const __meta_BayesianProbitRegressor_Gaussian = Ref{ProtoMeta}()
function meta(::Type{BayesianProbitRegressor_Gaussian})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BayesianProbitRegressor_Gaussian)
            __meta_BayesianProbitRegressor_Gaussian[] = target = ProtoMeta(BayesianProbitRegressor_Gaussian)
            allflds = Pair{Symbol,Union{Type,String}}[:mean => Float64, :precision => Float64]
            meta(target, BayesianProbitRegressor_Gaussian, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BayesianProbitRegressor_Gaussian[]
    end
end
function Base.getproperty(obj::BayesianProbitRegressor_Gaussian, name::Symbol)
    if name === :mean
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :precision
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct BayesianProbitRegressor_FeatureValueWeight <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BayesianProbitRegressor_FeatureValueWeight(; kwargs...)
        obj = new(meta(BayesianProbitRegressor_FeatureValueWeight), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct BayesianProbitRegressor_FeatureValueWeight
const __meta_BayesianProbitRegressor_FeatureValueWeight = Ref{ProtoMeta}()
function meta(::Type{BayesianProbitRegressor_FeatureValueWeight})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BayesianProbitRegressor_FeatureValueWeight)
            __meta_BayesianProbitRegressor_FeatureValueWeight[] = target = ProtoMeta(BayesianProbitRegressor_FeatureValueWeight)
            allflds = Pair{Symbol,Union{Type,String}}[:featureValue => UInt32, :featureWeight => BayesianProbitRegressor_Gaussian]
            meta(target, BayesianProbitRegressor_FeatureValueWeight, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BayesianProbitRegressor_FeatureValueWeight[]
    end
end
function Base.getproperty(obj::BayesianProbitRegressor_FeatureValueWeight, name::Symbol)
    if name === :featureValue
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :featureWeight
        return (obj.__protobuf_jl_internal_values[name])::BayesianProbitRegressor_Gaussian
    else
        getfield(obj, name)
    end
end

mutable struct BayesianProbitRegressor_FeatureWeight <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BayesianProbitRegressor_FeatureWeight(; kwargs...)
        obj = new(meta(BayesianProbitRegressor_FeatureWeight), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct BayesianProbitRegressor_FeatureWeight
const __meta_BayesianProbitRegressor_FeatureWeight = Ref{ProtoMeta}()
function meta(::Type{BayesianProbitRegressor_FeatureWeight})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BayesianProbitRegressor_FeatureWeight)
            __meta_BayesianProbitRegressor_FeatureWeight[] = target = ProtoMeta(BayesianProbitRegressor_FeatureWeight)
            allflds = Pair{Symbol,Union{Type,String}}[:featureId => UInt32, :weights => Base.Vector{BayesianProbitRegressor_FeatureValueWeight}]
            meta(target, BayesianProbitRegressor_FeatureWeight, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BayesianProbitRegressor_FeatureWeight[]
    end
end
function Base.getproperty(obj::BayesianProbitRegressor_FeatureWeight, name::Symbol)
    if name === :featureId
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :weights
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{BayesianProbitRegressor_FeatureValueWeight}
    else
        getfield(obj, name)
    end
end

mutable struct BayesianProbitRegressor <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BayesianProbitRegressor(; kwargs...)
        obj = new(meta(BayesianProbitRegressor), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct BayesianProbitRegressor
const __meta_BayesianProbitRegressor = Ref{ProtoMeta}()
function meta(::Type{BayesianProbitRegressor})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BayesianProbitRegressor)
            __meta_BayesianProbitRegressor[] = target = ProtoMeta(BayesianProbitRegressor)
            fnum = Int[1,2,3,10,11,12,13,20,21,22,23]
            allflds = Pair{Symbol,Union{Type,String}}[:numberOfFeatures => UInt32, :bias => BayesianProbitRegressor_Gaussian, :features => Base.Vector{BayesianProbitRegressor_FeatureWeight}, :regressionInputFeatureName => AbstractString, :optimismInputFeatureName => AbstractString, :samplingScaleInputFeatureName => AbstractString, :samplingTruncationInputFeatureName => AbstractString, :meanOutputFeatureName => AbstractString, :varianceOutputFeatureName => AbstractString, :pessimisticProbabilityOutputFeatureName => AbstractString, :sampledProbabilityOutputFeatureName => AbstractString]
            meta(target, BayesianProbitRegressor, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BayesianProbitRegressor[]
    end
end
function Base.getproperty(obj::BayesianProbitRegressor, name::Symbol)
    if name === :numberOfFeatures
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :bias
        return (obj.__protobuf_jl_internal_values[name])::BayesianProbitRegressor_Gaussian
    elseif name === :features
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{BayesianProbitRegressor_FeatureWeight}
    elseif name === :regressionInputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :optimismInputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :samplingScaleInputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :samplingTruncationInputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :meanOutputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :varianceOutputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :pessimisticProbabilityOutputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :sampledProbabilityOutputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

export BayesianProbitRegressor_Gaussian, BayesianProbitRegressor_FeatureValueWeight, BayesianProbitRegressor_FeatureWeight, BayesianProbitRegressor
