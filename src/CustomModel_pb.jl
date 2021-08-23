# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct CustomModel_CustomModelParamValue <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CustomModel_CustomModelParamValue(; kwargs...)
        obj = new(meta(CustomModel_CustomModelParamValue), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CustomModel_CustomModelParamValue
const __meta_CustomModel_CustomModelParamValue = Ref{ProtoMeta}()
function meta(::Type{CustomModel_CustomModelParamValue})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CustomModel_CustomModelParamValue)
            __meta_CustomModel_CustomModelParamValue[] = target = ProtoMeta(CustomModel_CustomModelParamValue)
            fnum = Int[10,20,30,40,50,60]
            allflds = Pair{Symbol,Union{Type,String}}[:doubleValue => Float64, :stringValue => AbstractString, :intValue => Int32, :longValue => Int64, :boolValue => Bool, :bytesValue => Vector{UInt8}]
            oneofs = Int[1,1,1,1,1,1]
            oneof_names = Symbol[Symbol("value")]
            meta(target, CustomModel_CustomModelParamValue, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_CustomModel_CustomModelParamValue[]
    end
end
function Base.getproperty(obj::CustomModel_CustomModelParamValue, name::Symbol)
    if name === :doubleValue
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :stringValue
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :intValue
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :longValue
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :boolValue
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :bytesValue
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    else
        getfield(obj, name)
    end
end

mutable struct CustomModel_ParametersEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CustomModel_ParametersEntry(; kwargs...)
        obj = new(meta(CustomModel_ParametersEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CustomModel_ParametersEntry (mapentry)
const __meta_CustomModel_ParametersEntry = Ref{ProtoMeta}()
function meta(::Type{CustomModel_ParametersEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CustomModel_ParametersEntry)
            __meta_CustomModel_ParametersEntry[] = target = ProtoMeta(CustomModel_ParametersEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => CustomModel_CustomModelParamValue]
            meta(target, CustomModel_ParametersEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CustomModel_ParametersEntry[]
    end
end
function Base.getproperty(obj::CustomModel_ParametersEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::CustomModel_CustomModelParamValue
    else
        getfield(obj, name)
    end
end

mutable struct CustomModel <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CustomModel(; kwargs...)
        obj = new(meta(CustomModel), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CustomModel
const __meta_CustomModel = Ref{ProtoMeta}()
function meta(::Type{CustomModel})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CustomModel)
            __meta_CustomModel[] = target = ProtoMeta(CustomModel)
            fnum = Int[10,30,40]
            allflds = Pair{Symbol,Union{Type,String}}[:className => AbstractString, :parameters => Base.Dict{AbstractString,CustomModel_CustomModelParamValue}, :description => AbstractString]
            meta(target, CustomModel, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CustomModel[]
    end
end
function Base.getproperty(obj::CustomModel, name::Symbol)
    if name === :className
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :parameters
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,CustomModel_CustomModelParamValue}
    elseif name === :description
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

export CustomModel_CustomModelParamValue, CustomModel_ParametersEntry, CustomModel
# mapentries: "CustomModel_ParametersEntry" => ("AbstractString", "CustomModel_CustomModelParamValue")
