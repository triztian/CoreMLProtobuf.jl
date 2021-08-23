# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

const Normalizer_NormType = (;[
    Symbol("LMax") => Int32(0),
    Symbol("L1") => Int32(1),
    Symbol("L2") => Int32(2),
]...)

mutable struct Normalizer <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Normalizer(; kwargs...)
        obj = new(meta(Normalizer), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Normalizer
const __meta_Normalizer = Ref{ProtoMeta}()
function meta(::Type{Normalizer})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Normalizer)
            __meta_Normalizer[] = target = ProtoMeta(Normalizer)
            allflds = Pair{Symbol,Union{Type,String}}[:normType => Int32]
            meta(target, Normalizer, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Normalizer[]
    end
end
function Base.getproperty(obj::Normalizer, name::Symbol)
    if name === :normType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

export Normalizer_NormType, Normalizer
