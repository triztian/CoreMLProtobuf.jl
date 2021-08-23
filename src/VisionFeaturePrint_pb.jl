# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

const VisionFeaturePrint_Scene_SceneVersion = (;[
    Symbol("SCENE_VERSION_INVALID") => Int32(0),
    Symbol("SCENE_VERSION_1") => Int32(1),
]...)

mutable struct VisionFeaturePrint_Scene <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function VisionFeaturePrint_Scene(; kwargs...)
        obj = new(meta(VisionFeaturePrint_Scene), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct VisionFeaturePrint_Scene
const __meta_VisionFeaturePrint_Scene = Ref{ProtoMeta}()
function meta(::Type{VisionFeaturePrint_Scene})
    ProtoBuf.metalock() do
        if !isassigned(__meta_VisionFeaturePrint_Scene)
            __meta_VisionFeaturePrint_Scene[] = target = ProtoMeta(VisionFeaturePrint_Scene)
            allflds = Pair{Symbol,Union{Type,String}}[:version => Int32]
            meta(target, VisionFeaturePrint_Scene, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_VisionFeaturePrint_Scene[]
    end
end
function Base.getproperty(obj::VisionFeaturePrint_Scene, name::Symbol)
    if name === :version
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

const VisionFeaturePrint_Objects_ObjectsVersion = (;[
    Symbol("OBJECTS_VERSION_INVALID") => Int32(0),
    Symbol("OBJECTS_VERSION_1") => Int32(1),
]...)

mutable struct VisionFeaturePrint_Objects <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function VisionFeaturePrint_Objects(; kwargs...)
        obj = new(meta(VisionFeaturePrint_Objects), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct VisionFeaturePrint_Objects
const __meta_VisionFeaturePrint_Objects = Ref{ProtoMeta}()
function meta(::Type{VisionFeaturePrint_Objects})
    ProtoBuf.metalock() do
        if !isassigned(__meta_VisionFeaturePrint_Objects)
            __meta_VisionFeaturePrint_Objects[] = target = ProtoMeta(VisionFeaturePrint_Objects)
            fnum = Int[1,100]
            allflds = Pair{Symbol,Union{Type,String}}[:version => Int32, :output => Base.Vector{AbstractString}]
            meta(target, VisionFeaturePrint_Objects, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_VisionFeaturePrint_Objects[]
    end
end
function Base.getproperty(obj::VisionFeaturePrint_Objects, name::Symbol)
    if name === :version
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :output
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct VisionFeaturePrint <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function VisionFeaturePrint(; kwargs...)
        obj = new(meta(VisionFeaturePrint), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct VisionFeaturePrint
const __meta_VisionFeaturePrint = Ref{ProtoMeta}()
function meta(::Type{VisionFeaturePrint})
    ProtoBuf.metalock() do
        if !isassigned(__meta_VisionFeaturePrint)
            __meta_VisionFeaturePrint[] = target = ProtoMeta(VisionFeaturePrint)
            fnum = Int[20,21]
            allflds = Pair{Symbol,Union{Type,String}}[:scene => VisionFeaturePrint_Scene, :objects => VisionFeaturePrint_Objects]
            oneofs = Int[1,1]
            oneof_names = Symbol[Symbol("VisionFeaturePrintType")]
            meta(target, VisionFeaturePrint, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_VisionFeaturePrint[]
    end
end
function Base.getproperty(obj::VisionFeaturePrint, name::Symbol)
    if name === :scene
        return (obj.__protobuf_jl_internal_values[name])::VisionFeaturePrint_Scene
    elseif name === :objects
        return (obj.__protobuf_jl_internal_values[name])::VisionFeaturePrint_Objects
    else
        getfield(obj, name)
    end
end

export VisionFeaturePrint_Scene_SceneVersion, VisionFeaturePrint_Scene, VisionFeaturePrint_Objects_ObjectsVersion, VisionFeaturePrint_Objects, VisionFeaturePrint
