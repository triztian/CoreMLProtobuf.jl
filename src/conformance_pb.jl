# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

const WireFormat = (;[
    Symbol("UNSPECIFIED") => Int32(0),
    Symbol("PROTOBUF") => Int32(1),
    Symbol("JSON") => Int32(2),
]...)

mutable struct ConformanceRequest <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ConformanceRequest(; kwargs...)
        obj = new(meta(ConformanceRequest), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ConformanceRequest
const __meta_ConformanceRequest = Ref{ProtoMeta}()
function meta(::Type{ConformanceRequest})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ConformanceRequest)
            __meta_ConformanceRequest[] = target = ProtoMeta(ConformanceRequest)
            allflds = Pair{Symbol,Union{Type,String}}[:protobuf_payload => Vector{UInt8}, :json_payload => AbstractString, :requested_output_format => Int32]
            oneofs = Int[1,1,0]
            oneof_names = Symbol[Symbol("payload")]
            meta(target, ConformanceRequest, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_ConformanceRequest[]
    end
end
function Base.getproperty(obj::ConformanceRequest, name::Symbol)
    if name === :protobuf_payload
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :json_payload
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :requested_output_format
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct ConformanceResponse <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ConformanceResponse(; kwargs...)
        obj = new(meta(ConformanceResponse), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ConformanceResponse
const __meta_ConformanceResponse = Ref{ProtoMeta}()
function meta(::Type{ConformanceResponse})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ConformanceResponse)
            __meta_ConformanceResponse[] = target = ProtoMeta(ConformanceResponse)
            fnum = Int[1,6,2,3,4,5]
            allflds = Pair{Symbol,Union{Type,String}}[:parse_error => AbstractString, :serialize_error => AbstractString, :runtime_error => AbstractString, :protobuf_payload => Vector{UInt8}, :json_payload => AbstractString, :skipped => AbstractString]
            oneofs = Int[1,1,1,1,1,1]
            oneof_names = Symbol[Symbol("result")]
            meta(target, ConformanceResponse, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_ConformanceResponse[]
    end
end
function Base.getproperty(obj::ConformanceResponse, name::Symbol)
    if name === :parse_error
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :serialize_error
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :runtime_error
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :protobuf_payload
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :json_payload
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :skipped
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

export WireFormat, ConformanceRequest, ConformanceResponse
