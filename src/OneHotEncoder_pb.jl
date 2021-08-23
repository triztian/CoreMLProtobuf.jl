# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

const OneHotEncoder_HandleUnknown = (;[
    Symbol("ErrorOnUnknown") => Int32(0),
    Symbol("IgnoreUnknown") => Int32(1),
]...)

mutable struct OneHotEncoder <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function OneHotEncoder(; kwargs...)
        obj = new(meta(OneHotEncoder), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct OneHotEncoder
const __meta_OneHotEncoder = Ref{ProtoMeta}()
function meta(::Type{OneHotEncoder})
    ProtoBuf.metalock() do
        if !isassigned(__meta_OneHotEncoder)
            __meta_OneHotEncoder[] = target = ProtoMeta(OneHotEncoder)
            fnum = Int[1,2,10,11]
            allflds = Pair{Symbol,Union{Type,String}}[:stringCategories => StringVector, :int64Categories => Int64Vector, :outputSparse => Bool, :handleUnknown => Int32]
            oneofs = Int[1,1,0,0]
            oneof_names = Symbol[Symbol("CategoryType")]
            meta(target, OneHotEncoder, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_OneHotEncoder[]
    end
end
function Base.getproperty(obj::OneHotEncoder, name::Symbol)
    if name === :stringCategories
        return (obj.__protobuf_jl_internal_values[name])::StringVector
    elseif name === :int64Categories
        return (obj.__protobuf_jl_internal_values[name])::Int64Vector
    elseif name === :outputSparse
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :handleUnknown
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

export OneHotEncoder_HandleUnknown, OneHotEncoder
