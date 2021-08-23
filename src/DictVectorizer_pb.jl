# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct DictVectorizer <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DictVectorizer(; kwargs...)
        obj = new(meta(DictVectorizer), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct DictVectorizer
const __meta_DictVectorizer = Ref{ProtoMeta}()
function meta(::Type{DictVectorizer})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DictVectorizer)
            __meta_DictVectorizer[] = target = ProtoMeta(DictVectorizer)
            allflds = Pair{Symbol,Union{Type,String}}[:stringToIndex => StringVector, :int64ToIndex => Int64Vector]
            oneofs = Int[1,1]
            oneof_names = Symbol[Symbol("Map")]
            meta(target, DictVectorizer, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_DictVectorizer[]
    end
end
function Base.getproperty(obj::DictVectorizer, name::Symbol)
    if name === :stringToIndex
        return (obj.__protobuf_jl_internal_values[name])::StringVector
    elseif name === :int64ToIndex
        return (obj.__protobuf_jl_internal_values[name])::Int64Vector
    else
        getfield(obj, name)
    end
end

export DictVectorizer
