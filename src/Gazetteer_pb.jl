# syntax: proto3
using ProtoBuf
import ProtoBuf.meta
import ._ProtoBuf_Top_.CoreML

mutable struct Gazetteer <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Gazetteer(; kwargs...)
        obj = new(meta(Gazetteer), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Gazetteer
const __meta_Gazetteer = Ref{ProtoMeta}()
function meta(::Type{Gazetteer})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Gazetteer)
            __meta_Gazetteer[] = target = ProtoMeta(Gazetteer)
            fnum = Int[1,10,100,200]
            allflds = Pair{Symbol,Union{Type,String}}[:revision => UInt32, :language => AbstractString, :modelParameterData => Vector{UInt8}, :stringClassLabels => CoreML.Specification.StringVector]
            oneofs = Int[0,0,0,1]
            oneof_names = Symbol[Symbol("ClassLabels")]
            meta(target, Gazetteer, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_Gazetteer[]
    end
end
function Base.getproperty(obj::Gazetteer, name::Symbol)
    if name === :revision
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :language
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :modelParameterData
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :stringClassLabels
        return (obj.__protobuf_jl_internal_values[name])::CoreML.Specification.StringVector
    else
        getfield(obj, name)
    end
end

export Gazetteer
