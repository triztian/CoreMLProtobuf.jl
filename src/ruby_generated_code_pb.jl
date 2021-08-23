# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

const TestEnum = (;[
    Symbol("Default") => Int32(0),
    Symbol("A") => Int32(1),
    Symbol("B") => Int32(2),
    Symbol("C") => Int32(3),
]...)

mutable struct TestMessage_MapStringMsgEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TestMessage_MapStringMsgEntry(; kwargs...)
        obj = new(meta(TestMessage_MapStringMsgEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TestMessage_MapStringMsgEntry (mapentry) (has cyclic type dependency)
const __meta_TestMessage_MapStringMsgEntry = Ref{ProtoMeta}()
function meta(::Type{TestMessage_MapStringMsgEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TestMessage_MapStringMsgEntry)
            __meta_TestMessage_MapStringMsgEntry[] = target = ProtoMeta(TestMessage_MapStringMsgEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => "TestMessage"]
            meta(target, TestMessage_MapStringMsgEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_TestMessage_MapStringMsgEntry[]
    end
end
function Base.getproperty(obj::TestMessage_MapStringMsgEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::Any
    else
        getfield(obj, name)
    end
end

mutable struct TestMessage <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TestMessage(; kwargs...)
        obj = new(meta(TestMessage), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TestMessage (has cyclic type dependency)
const __meta_TestMessage = Ref{ProtoMeta}()
function meta(::Type{TestMessage})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TestMessage)
            __meta_TestMessage[] = target = ProtoMeta(TestMessage)
            fnum = Int[1,2,3,4,5,6,7,8,9,10,11,21,22,23,24,25,26,27,28,29,30,31,41,42,43,44,45,46,47,48,49,50,51,61,62,63,64,65,66,67,68,69,70,80]
            pack = Symbol[:repeated_int32,:repeated_int64,:repeated_uint32,:repeated_uint64,:repeated_bool,:repeated_double,:repeated_float,:repeated_enum]
            allflds = Pair{Symbol,Union{Type,String}}[:optional_int32 => Int32, :optional_int64 => Int64, :optional_uint32 => UInt32, :optional_uint64 => UInt64, :optional_bool => Bool, :optional_double => Float64, :optional_float => Float32, :optional_string => AbstractString, :optional_bytes => Vector{UInt8}, :optional_enum => Int32, :optional_msg => TestMessage, :repeated_int32 => Base.Vector{Int32}, :repeated_int64 => Base.Vector{Int64}, :repeated_uint32 => Base.Vector{UInt32}, :repeated_uint64 => Base.Vector{UInt64}, :repeated_bool => Base.Vector{Bool}, :repeated_double => Base.Vector{Float64}, :repeated_float => Base.Vector{Float32}, :repeated_string => Base.Vector{AbstractString}, :repeated_bytes => Base.Vector{Vector{UInt8}}, :repeated_enum => Base.Vector{Int32}, :repeated_msg => Base.Vector{TestMessage}, :oneof_int32 => Int32, :oneof_int64 => Int64, :oneof_uint32 => UInt32, :oneof_uint64 => UInt64, :oneof_bool => Bool, :oneof_double => Float64, :oneof_float => Float32, :oneof_string => AbstractString, :oneof_bytes => Vector{UInt8}, :oneof_enum => Int32, :oneof_msg => TestMessage, :map_int32_string => "Base.Dict{Int32,AbstractString}", :map_int64_string => "Base.Dict{Int64,AbstractString}", :map_uint32_string => "Base.Dict{UInt32,AbstractString}", :map_uint64_string => "Base.Dict{UInt64,AbstractString}", :map_bool_string => "Base.Dict{Bool,AbstractString}", :map_string_string => "Base.Dict{AbstractString,AbstractString}", :map_string_msg => "Base.Dict{AbstractString,TestMessage}", :map_string_enum => "Base.Dict{AbstractString,Int32}", :map_string_int32 => "Base.Dict{AbstractString,Int32}", :map_string_bool => "Base.Dict{AbstractString,Bool}", :nested_message => TestMessage_NestedMessage]
            oneofs = Int[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0]
            oneof_names = Symbol[Symbol("my_oneof")]
            meta(target, TestMessage, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_TestMessage[]
    end
end
function Base.getproperty(obj::TestMessage, name::Symbol)
    if name === :optional_int32
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :optional_int64
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :optional_uint32
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :optional_uint64
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :optional_bool
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :optional_double
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :optional_float
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :optional_string
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :optional_bytes
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :optional_enum
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :optional_msg
        return (obj.__protobuf_jl_internal_values[name])::TestMessage
    elseif name === :repeated_int32
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int32}
    elseif name === :repeated_int64
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :repeated_uint32
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt32}
    elseif name === :repeated_uint64
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    elseif name === :repeated_bool
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Bool}
    elseif name === :repeated_double
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
    elseif name === :repeated_float
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float32}
    elseif name === :repeated_string
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    elseif name === :repeated_bytes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Vector{UInt8}}
    elseif name === :repeated_enum
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int32}
    elseif name === :repeated_msg
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{TestMessage}
    elseif name === :oneof_int32
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :oneof_int64
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :oneof_uint32
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :oneof_uint64
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :oneof_bool
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :oneof_double
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :oneof_float
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :oneof_string
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :oneof_bytes
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :oneof_enum
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :oneof_msg
        return (obj.__protobuf_jl_internal_values[name])::TestMessage
    elseif name === :map_int32_string
        return (obj.__protobuf_jl_internal_values[name])::Any
    elseif name === :map_int64_string
        return (obj.__protobuf_jl_internal_values[name])::Any
    elseif name === :map_uint32_string
        return (obj.__protobuf_jl_internal_values[name])::Any
    elseif name === :map_uint64_string
        return (obj.__protobuf_jl_internal_values[name])::Any
    elseif name === :map_bool_string
        return (obj.__protobuf_jl_internal_values[name])::Any
    elseif name === :map_string_string
        return (obj.__protobuf_jl_internal_values[name])::Any
    elseif name === :map_string_msg
        return (obj.__protobuf_jl_internal_values[name])::Any
    elseif name === :map_string_enum
        return (obj.__protobuf_jl_internal_values[name])::Any
    elseif name === :map_string_int32
        return (obj.__protobuf_jl_internal_values[name])::Any
    elseif name === :map_string_bool
        return (obj.__protobuf_jl_internal_values[name])::Any
    elseif name === :nested_message
        return (obj.__protobuf_jl_internal_values[name])::TestMessage_NestedMessage
    else
        getfield(obj, name)
    end
end

export TestEnum, TestMessage_MapInt32StringEntry, TestMessage_MapInt64StringEntry, TestMessage_MapUint32StringEntry, TestMessage_MapUint64StringEntry, TestMessage_MapBoolStringEntry, TestMessage_MapStringStringEntry, TestMessage_MapStringMsgEntry, TestMessage_MapStringEnumEntry, TestMessage_MapStringInt32Entry, TestMessage_MapStringBoolEntry, TestMessage_NestedMessage, TestMessage, TestMessage_MapStringMsgEntry, TestMessage
# mapentries: "TestMessage_MapUint32StringEntry" => ("UInt32", "AbstractString"), "TestMessage_MapStringStringEntry" => ("AbstractString", "AbstractString"), "TestMessage_MapInt32StringEntry" => ("Int32", "AbstractString"), "TestMessage_MapUint64StringEntry" => ("UInt64", "AbstractString"), "TestMessage_MapBoolStringEntry" => ("Bool", "AbstractString"), "TestMessage_MapStringEnumEntry" => ("AbstractString", "Int32"), "TestMessage_MapInt64StringEntry" => ("Int64", "AbstractString"), "TestMessage_MapStringMsgEntry" => ("AbstractString", "TestMessage"), "TestMessage_MapStringInt32Entry" => ("AbstractString", "Int32"), "TestMessage_MapStringBoolEntry" => ("AbstractString", "Bool")
