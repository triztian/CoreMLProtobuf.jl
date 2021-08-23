# syntax: proto3
using ProtoBuf
import ProtoBuf.meta
import ._ProtoBuf_Top_.CoreML

mutable struct TextClassifier <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TextClassifier(; kwargs...)
        obj = new(meta(TextClassifier), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TextClassifier
const __meta_TextClassifier = Ref{ProtoMeta}()
function meta(::Type{TextClassifier})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TextClassifier)
            __meta_TextClassifier[] = target = ProtoMeta(TextClassifier)
            fnum = Int[1,10,100,200]
            allflds = Pair{Symbol,Union{Type,String}}[:revision => UInt32, :language => AbstractString, :modelParameterData => Vector{UInt8}, :stringClassLabels => CoreML.Specification.StringVector]
            oneofs = Int[0,0,0,1]
            oneof_names = Symbol[Symbol("ClassLabels")]
            meta(target, TextClassifier, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_TextClassifier[]
    end
end
function Base.getproperty(obj::TextClassifier, name::Symbol)
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

export TextClassifier
