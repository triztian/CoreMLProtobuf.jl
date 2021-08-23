# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct FeatureVectorizer_InputColumn <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function FeatureVectorizer_InputColumn(; kwargs...)
        obj = new(meta(FeatureVectorizer_InputColumn), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct FeatureVectorizer_InputColumn
const __meta_FeatureVectorizer_InputColumn = Ref{ProtoMeta}()
function meta(::Type{FeatureVectorizer_InputColumn})
    ProtoBuf.metalock() do
        if !isassigned(__meta_FeatureVectorizer_InputColumn)
            __meta_FeatureVectorizer_InputColumn[] = target = ProtoMeta(FeatureVectorizer_InputColumn)
            allflds = Pair{Symbol,Union{Type,String}}[:inputColumn => AbstractString, :inputDimensions => UInt64]
            meta(target, FeatureVectorizer_InputColumn, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_FeatureVectorizer_InputColumn[]
    end
end
function Base.getproperty(obj::FeatureVectorizer_InputColumn, name::Symbol)
    if name === :inputColumn
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :inputDimensions
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct FeatureVectorizer <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function FeatureVectorizer(; kwargs...)
        obj = new(meta(FeatureVectorizer), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct FeatureVectorizer
const __meta_FeatureVectorizer = Ref{ProtoMeta}()
function meta(::Type{FeatureVectorizer})
    ProtoBuf.metalock() do
        if !isassigned(__meta_FeatureVectorizer)
            __meta_FeatureVectorizer[] = target = ProtoMeta(FeatureVectorizer)
            allflds = Pair{Symbol,Union{Type,String}}[:inputList => Base.Vector{FeatureVectorizer_InputColumn}]
            meta(target, FeatureVectorizer, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_FeatureVectorizer[]
    end
end
function Base.getproperty(obj::FeatureVectorizer, name::Symbol)
    if name === :inputList
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{FeatureVectorizer_InputColumn}
    else
        getfield(obj, name)
    end
end

export FeatureVectorizer_InputColumn, FeatureVectorizer
