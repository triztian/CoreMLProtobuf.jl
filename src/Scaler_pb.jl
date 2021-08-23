# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct Scaler <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Scaler(; kwargs...)
        obj = new(meta(Scaler), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Scaler
const __meta_Scaler = Ref{ProtoMeta}()
function meta(::Type{Scaler})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Scaler)
            __meta_Scaler[] = target = ProtoMeta(Scaler)
            pack = Symbol[:shiftValue,:scaleValue]
            allflds = Pair{Symbol,Union{Type,String}}[:shiftValue => Base.Vector{Float64}, :scaleValue => Base.Vector{Float64}]
            meta(target, Scaler, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Scaler[]
    end
end
function Base.getproperty(obj::Scaler, name::Symbol)
    if name === :shiftValue
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
    elseif name === :scaleValue
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
    else
        getfield(obj, name)
    end
end

export Scaler
