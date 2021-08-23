# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct BenchmarkDataset <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BenchmarkDataset(; kwargs...)
        obj = new(meta(BenchmarkDataset), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct BenchmarkDataset
const __meta_BenchmarkDataset = Ref{ProtoMeta}()
function meta(::Type{BenchmarkDataset})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BenchmarkDataset)
            __meta_BenchmarkDataset[] = target = ProtoMeta(BenchmarkDataset)
            allflds = Pair{Symbol,Union{Type,String}}[:name => AbstractString, :message_name => AbstractString, :payload => Base.Vector{Vector{UInt8}}]
            meta(target, BenchmarkDataset, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BenchmarkDataset[]
    end
end
function Base.getproperty(obj::BenchmarkDataset, name::Symbol)
    if name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :message_name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :payload
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Vector{UInt8}}
    else
        getfield(obj, name)
    end
end

export BenchmarkDataset
