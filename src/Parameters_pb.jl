# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct Int64Parameter <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Int64Parameter(; kwargs...)
        obj = new(meta(Int64Parameter), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Int64Parameter
const __meta_Int64Parameter = Ref{ProtoMeta}()
function meta(::Type{Int64Parameter})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Int64Parameter)
            __meta_Int64Parameter[] = target = ProtoMeta(Int64Parameter)
            fnum = Int[1,10,11]
            allflds = Pair{Symbol,Union{Type,String}}[:defaultValue => Int64, :range => Int64Range, :set => Int64Set]
            oneofs = Int[0,1,1]
            oneof_names = Symbol[Symbol("AllowedValues")]
            meta(target, Int64Parameter, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_Int64Parameter[]
    end
end
function Base.getproperty(obj::Int64Parameter, name::Symbol)
    if name === :defaultValue
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :range
        return (obj.__protobuf_jl_internal_values[name])::Int64Range
    elseif name === :set
        return (obj.__protobuf_jl_internal_values[name])::Int64Set
    else
        getfield(obj, name)
    end
end

mutable struct DoubleParameter <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DoubleParameter(; kwargs...)
        obj = new(meta(DoubleParameter), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct DoubleParameter
const __meta_DoubleParameter = Ref{ProtoMeta}()
function meta(::Type{DoubleParameter})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DoubleParameter)
            __meta_DoubleParameter[] = target = ProtoMeta(DoubleParameter)
            fnum = Int[1,10]
            allflds = Pair{Symbol,Union{Type,String}}[:defaultValue => Float64, :range => DoubleRange]
            oneofs = Int[0,1]
            oneof_names = Symbol[Symbol("AllowedValues")]
            meta(target, DoubleParameter, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_DoubleParameter[]
    end
end
function Base.getproperty(obj::DoubleParameter, name::Symbol)
    if name === :defaultValue
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :range
        return (obj.__protobuf_jl_internal_values[name])::DoubleRange
    else
        getfield(obj, name)
    end
end

mutable struct StringParameter <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function StringParameter(; kwargs...)
        obj = new(meta(StringParameter), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct StringParameter
const __meta_StringParameter = Ref{ProtoMeta}()
function meta(::Type{StringParameter})
    ProtoBuf.metalock() do
        if !isassigned(__meta_StringParameter)
            __meta_StringParameter[] = target = ProtoMeta(StringParameter)
            allflds = Pair{Symbol,Union{Type,String}}[:defaultValue => AbstractString]
            meta(target, StringParameter, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_StringParameter[]
    end
end
function Base.getproperty(obj::StringParameter, name::Symbol)
    if name === :defaultValue
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct BoolParameter <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BoolParameter(; kwargs...)
        obj = new(meta(BoolParameter), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct BoolParameter
const __meta_BoolParameter = Ref{ProtoMeta}()
function meta(::Type{BoolParameter})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BoolParameter)
            __meta_BoolParameter[] = target = ProtoMeta(BoolParameter)
            allflds = Pair{Symbol,Union{Type,String}}[:defaultValue => Bool]
            meta(target, BoolParameter, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BoolParameter[]
    end
end
function Base.getproperty(obj::BoolParameter, name::Symbol)
    if name === :defaultValue
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

export Int64Parameter, DoubleParameter, StringParameter, BoolParameter
