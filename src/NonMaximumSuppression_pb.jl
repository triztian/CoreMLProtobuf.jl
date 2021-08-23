# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct NonMaximumSuppression_PickTop <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function NonMaximumSuppression_PickTop(; kwargs...)
        obj = new(meta(NonMaximumSuppression_PickTop), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct NonMaximumSuppression_PickTop
const __meta_NonMaximumSuppression_PickTop = Ref{ProtoMeta}()
function meta(::Type{NonMaximumSuppression_PickTop})
    ProtoBuf.metalock() do
        if !isassigned(__meta_NonMaximumSuppression_PickTop)
            __meta_NonMaximumSuppression_PickTop[] = target = ProtoMeta(NonMaximumSuppression_PickTop)
            allflds = Pair{Symbol,Union{Type,String}}[:perClass => Bool]
            meta(target, NonMaximumSuppression_PickTop, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_NonMaximumSuppression_PickTop[]
    end
end
function Base.getproperty(obj::NonMaximumSuppression_PickTop, name::Symbol)
    if name === :perClass
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct NonMaximumSuppression <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function NonMaximumSuppression(; kwargs...)
        obj = new(meta(NonMaximumSuppression), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct NonMaximumSuppression
const __meta_NonMaximumSuppression = Ref{ProtoMeta}()
function meta(::Type{NonMaximumSuppression})
    ProtoBuf.metalock() do
        if !isassigned(__meta_NonMaximumSuppression)
            __meta_NonMaximumSuppression[] = target = ProtoMeta(NonMaximumSuppression)
            fnum = Int[1,100,101,110,111,200,201,202,203,210,211]
            allflds = Pair{Symbol,Union{Type,String}}[:pickTop => NonMaximumSuppression_PickTop, :stringClassLabels => StringVector, :int64ClassLabels => Int64Vector, :iouThreshold => Float64, :confidenceThreshold => Float64, :confidenceInputFeatureName => AbstractString, :coordinatesInputFeatureName => AbstractString, :iouThresholdInputFeatureName => AbstractString, :confidenceThresholdInputFeatureName => AbstractString, :confidenceOutputFeatureName => AbstractString, :coordinatesOutputFeatureName => AbstractString]
            oneofs = Int[1,2,2,0,0,0,0,0,0,0,0]
            oneof_names = Symbol[Symbol("SuppressionMethod"),Symbol("ClassLabels")]
            meta(target, NonMaximumSuppression, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_NonMaximumSuppression[]
    end
end
function Base.getproperty(obj::NonMaximumSuppression, name::Symbol)
    if name === :pickTop
        return (obj.__protobuf_jl_internal_values[name])::NonMaximumSuppression_PickTop
    elseif name === :stringClassLabels
        return (obj.__protobuf_jl_internal_values[name])::StringVector
    elseif name === :int64ClassLabels
        return (obj.__protobuf_jl_internal_values[name])::Int64Vector
    elseif name === :iouThreshold
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :confidenceThreshold
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :confidenceInputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :coordinatesInputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :iouThresholdInputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :confidenceThresholdInputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :confidenceOutputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :coordinatesOutputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

export NonMaximumSuppression_PickTop, NonMaximumSuppression
