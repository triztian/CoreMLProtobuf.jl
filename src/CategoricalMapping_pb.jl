# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct CategoricalMapping <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CategoricalMapping(; kwargs...)
        obj = new(meta(CategoricalMapping), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CategoricalMapping
const __meta_CategoricalMapping = Ref{ProtoMeta}()
function meta(::Type{CategoricalMapping})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CategoricalMapping)
            __meta_CategoricalMapping[] = target = ProtoMeta(CategoricalMapping)
            fnum = Int[1,2,101,102]
            allflds = Pair{Symbol,Union{Type,String}}[:stringToInt64Map => StringToInt64Map, :int64ToStringMap => Int64ToStringMap, :strValue => AbstractString, :int64Value => Int64]
            oneofs = Int[1,1,2,2]
            oneof_names = Symbol[Symbol("MappingType"),Symbol("ValueOnUnknown")]
            meta(target, CategoricalMapping, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_CategoricalMapping[]
    end
end
function Base.getproperty(obj::CategoricalMapping, name::Symbol)
    if name === :stringToInt64Map
        return (obj.__protobuf_jl_internal_values[name])::StringToInt64Map
    elseif name === :int64ToStringMap
        return (obj.__protobuf_jl_internal_values[name])::Int64ToStringMap
    elseif name === :strValue
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :int64Value
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

export CategoricalMapping
