# syntax: proto3
using ProtoBuf
import ProtoBuf.meta
import ._ProtoBuf_Top_.CoreML

mutable struct WordEmbedding <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function WordEmbedding(; kwargs...)
        obj = new(meta(WordEmbedding), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct WordEmbedding
const __meta_WordEmbedding = Ref{ProtoMeta}()
function meta(::Type{WordEmbedding})
    ProtoBuf.metalock() do
        if !isassigned(__meta_WordEmbedding)
            __meta_WordEmbedding[] = target = ProtoMeta(WordEmbedding)
            fnum = Int[1,10,100]
            allflds = Pair{Symbol,Union{Type,String}}[:revision => UInt32, :language => AbstractString, :modelParameterData => Vector{UInt8}]
            meta(target, WordEmbedding, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_WordEmbedding[]
    end
end
function Base.getproperty(obj::WordEmbedding, name::Symbol)
    if name === :revision
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :language
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :modelParameterData
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    else
        getfield(obj, name)
    end
end

export WordEmbedding
