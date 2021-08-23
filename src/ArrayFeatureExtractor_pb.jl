# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct ArrayFeatureExtractor <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ArrayFeatureExtractor(; kwargs...)
        obj = new(meta(ArrayFeatureExtractor), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ArrayFeatureExtractor
const __meta_ArrayFeatureExtractor = Ref{ProtoMeta}()
function meta(::Type{ArrayFeatureExtractor})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ArrayFeatureExtractor)
            __meta_ArrayFeatureExtractor[] = target = ProtoMeta(ArrayFeatureExtractor)
            pack = Symbol[:extractIndex]
            allflds = Pair{Symbol,Union{Type,String}}[:extractIndex => Base.Vector{UInt64}]
            meta(target, ArrayFeatureExtractor, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ArrayFeatureExtractor[]
    end
end
function Base.getproperty(obj::ArrayFeatureExtractor, name::Symbol)
    if name === :extractIndex
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    else
        getfield(obj, name)
    end
end

export ArrayFeatureExtractor
