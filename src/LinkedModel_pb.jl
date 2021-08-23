# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct LinkedModelFile <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LinkedModelFile(; kwargs...)
        obj = new(meta(LinkedModelFile), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LinkedModelFile
const __meta_LinkedModelFile = Ref{ProtoMeta}()
function meta(::Type{LinkedModelFile})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LinkedModelFile)
            __meta_LinkedModelFile[] = target = ProtoMeta(LinkedModelFile)
            allflds = Pair{Symbol,Union{Type,String}}[:linkedModelFileName => StringParameter, :linkedModelSearchPath => StringParameter]
            meta(target, LinkedModelFile, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LinkedModelFile[]
    end
end
function Base.getproperty(obj::LinkedModelFile, name::Symbol)
    if name === :linkedModelFileName
        return (obj.__protobuf_jl_internal_values[name])::StringParameter
    elseif name === :linkedModelSearchPath
        return (obj.__protobuf_jl_internal_values[name])::StringParameter
    else
        getfield(obj, name)
    end
end

mutable struct LinkedModel <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LinkedModel(; kwargs...)
        obj = new(meta(LinkedModel), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LinkedModel
const __meta_LinkedModel = Ref{ProtoMeta}()
function meta(::Type{LinkedModel})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LinkedModel)
            __meta_LinkedModel[] = target = ProtoMeta(LinkedModel)
            allflds = Pair{Symbol,Union{Type,String}}[:linkedModelFile => LinkedModelFile]
            oneofs = Int[1]
            oneof_names = Symbol[Symbol("LinkType")]
            meta(target, LinkedModel, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_LinkedModel[]
    end
end
function Base.getproperty(obj::LinkedModel, name::Symbol)
    if name === :linkedModelFile
        return (obj.__protobuf_jl_internal_values[name])::LinkedModelFile
    else
        getfield(obj, name)
    end
end

export LinkedModel, LinkedModelFile
