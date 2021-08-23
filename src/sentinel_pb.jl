# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct Sentinel <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Sentinel(; kwargs...)
        obj = new(meta(Sentinel), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Sentinel
const __meta_Sentinel = Ref{ProtoMeta}()
function meta(::Type{Sentinel})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Sentinel)
            __meta_Sentinel[] = target = ProtoMeta(Sentinel)
            allflds = Pair{Symbol,Union{Type,String}}[:default_int32 => Int32, :default_int64 => Int64, :default_unit32 => UInt32, :default_uint64 => UInt64, :default_string => AbstractString, :default_bool => Bool, :default_float => Float32, :default_double => Float64, :default_bytes => Vector{UInt8}]
            meta(target, Sentinel, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Sentinel[]
    end
end
function Base.getproperty(obj::Sentinel, name::Symbol)
    if name === :default_int32
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :default_int64
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :default_unit32
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :default_uint64
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :default_string
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :default_bool
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :default_float
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :default_double
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :default_bytes
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    else
        getfield(obj, name)
    end
end

export Sentinel
