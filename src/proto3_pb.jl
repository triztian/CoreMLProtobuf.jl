# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

const Proto3Message_NestedEnum = (;[
    Symbol("FOO") => Int32(0),
    Symbol("BAR") => Int32(1),
    Symbol("BAZ") => Int32(2),
]...)

mutable struct Proto3Message <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Proto3Message(; kwargs...)
        obj = new(meta(Proto3Message), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Proto3Message
const __meta_Proto3Message = Ref{ProtoMeta}()
function meta(::Type{Proto3Message})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Proto3Message)
            __meta_Proto3Message[] = target = ProtoMeta(Proto3Message)
            allflds = Pair{Symbol,Union{Type,String}}[:enum_value => Int32]
            meta(target, Proto3Message, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Proto3Message[]
    end
end
function Base.getproperty(obj::Proto3Message, name::Symbol)
    if name === :enum_value
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

export Proto3Message_NestedEnum, Proto3Message
