# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct GoogleMessage1SubMessage <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GoogleMessage1SubMessage(; kwargs...)
        obj = new(meta(GoogleMessage1SubMessage), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GoogleMessage1SubMessage
const __meta_GoogleMessage1SubMessage = Ref{ProtoMeta}()
function meta(::Type{GoogleMessage1SubMessage})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GoogleMessage1SubMessage)
            __meta_GoogleMessage1SubMessage[] = target = ProtoMeta(GoogleMessage1SubMessage)
            fnum = Int[1,2,3,15,12,13,14,16,19,20,28,21,22,23,206,203,204,205,207,300]
            wtype = Dict(:field21 => :fixed64, :field203 => :fixed32)
            allflds = Pair{Symbol,Union{Type,String}}[:field1 => Int32, :field2 => Int32, :field3 => Int32, :field15 => AbstractString, :field12 => Bool, :field13 => Int64, :field14 => Int64, :field16 => Int32, :field19 => Int32, :field20 => Bool, :field28 => Bool, :field21 => UInt64, :field22 => Int32, :field23 => Bool, :field206 => Bool, :field203 => UInt32, :field204 => Int32, :field205 => AbstractString, :field207 => UInt64, :field300 => UInt64]
            meta(target, GoogleMessage1SubMessage, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, wtype, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GoogleMessage1SubMessage[]
    end
end
function Base.getproperty(obj::GoogleMessage1SubMessage, name::Symbol)
    if name === :field1
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field2
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field3
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field15
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :field12
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :field13
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :field14
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :field16
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field19
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field20
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :field28
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :field21
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :field22
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field23
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :field206
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :field203
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :field204
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field205
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :field207
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :field300
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct GoogleMessage1 <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GoogleMessage1(; kwargs...)
        obj = new(meta(GoogleMessage1), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GoogleMessage1
const __meta_GoogleMessage1 = Ref{ProtoMeta}()
function meta(::Type{GoogleMessage1})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GoogleMessage1)
            __meta_GoogleMessage1[] = target = ProtoMeta(GoogleMessage1)
            fnum = Int[1,9,18,80,81,2,3,280,6,22,4,5,59,7,16,130,12,17,13,14,104,100,101,102,103,29,30,60,271,272,150,23,24,25,15,78,67,68,128,129,131]
            pack = Symbol[:field5]
            wtype = Dict(:field5 => :fixed64)
            allflds = Pair{Symbol,Union{Type,String}}[:field1 => AbstractString, :field9 => AbstractString, :field18 => AbstractString, :field80 => Bool, :field81 => Bool, :field2 => Int32, :field3 => Int32, :field280 => Int32, :field6 => Int32, :field22 => Int64, :field4 => AbstractString, :field5 => Base.Vector{UInt64}, :field59 => Bool, :field7 => AbstractString, :field16 => Int32, :field130 => Int32, :field12 => Bool, :field17 => Bool, :field13 => Bool, :field14 => Bool, :field104 => Int32, :field100 => Int32, :field101 => Int32, :field102 => AbstractString, :field103 => AbstractString, :field29 => Int32, :field30 => Bool, :field60 => Int32, :field271 => Int32, :field272 => Int32, :field150 => Int32, :field23 => Int32, :field24 => Bool, :field25 => Int32, :field15 => GoogleMessage1SubMessage, :field78 => Bool, :field67 => Int32, :field68 => Int32, :field128 => Int32, :field129 => AbstractString, :field131 => Int32]
            meta(target, GoogleMessage1, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, pack, wtype, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GoogleMessage1[]
    end
end
function Base.getproperty(obj::GoogleMessage1, name::Symbol)
    if name === :field1
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :field9
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :field18
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :field80
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :field81
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :field2
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field3
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field280
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field6
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field22
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :field4
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :field5
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    elseif name === :field59
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :field7
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :field16
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field130
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field12
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :field17
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :field13
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :field14
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :field104
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field100
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field101
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field102
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :field103
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :field29
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field30
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :field60
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field271
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field272
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field150
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field23
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field24
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :field25
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field15
        return (obj.__protobuf_jl_internal_values[name])::GoogleMessage1SubMessage
    elseif name === :field78
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :field67
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field68
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field128
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :field129
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :field131
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

export GoogleMessage1, GoogleMessage1SubMessage
