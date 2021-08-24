# syntax: proto3
using ProtoBuf
import ProtoBuf.meta
import ._ProtoBuf_Top_.CoreMLProtobuf

mutable struct WordTagger <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function WordTagger(; kwargs...)
        obj = new(meta(WordTagger), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct WordTagger
const __meta_WordTagger = Ref{ProtoMeta}()
function meta(::Type{WordTagger})
    ProtoBuf.metalock() do
        if !isassigned(__meta_WordTagger)
            __meta_WordTagger[] = target = ProtoMeta(WordTagger)
            fnum = Int[1,10,20,21,22,23,100,200]
            allflds = Pair{Symbol,Union{Type,String}}[:revision => UInt32, :language => AbstractString, :tokensOutputFeatureName => AbstractString, :tokenTagsOutputFeatureName => AbstractString, :tokenLocationsOutputFeatureName => AbstractString, :tokenLengthsOutputFeatureName => AbstractString, :modelParameterData => Vector{UInt8}, :stringTags => CoreMLProtobuf.Specification.StringVector]
            oneofs = Int[0,0,0,0,0,0,0,1]
            oneof_names = Symbol[Symbol("Tags")]
            meta(target, WordTagger, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_WordTagger[]
    end
end
function Base.getproperty(obj::WordTagger, name::Symbol)
    if name === :revision
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :language
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :tokensOutputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :tokenTagsOutputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :tokenLocationsOutputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :tokenLengthsOutputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :modelParameterData
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :stringTags
        return (obj.__protobuf_jl_internal_values[name])::CoreMLProtobuf.Specification.StringVector
    else
        getfield(obj, name)
    end
end

export WordTagger
