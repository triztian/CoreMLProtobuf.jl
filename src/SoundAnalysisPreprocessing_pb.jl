# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct SoundAnalysisPreprocessing_Vggish <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SoundAnalysisPreprocessing_Vggish(; kwargs...)
        obj = new(meta(SoundAnalysisPreprocessing_Vggish), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SoundAnalysisPreprocessing_Vggish
const __meta_SoundAnalysisPreprocessing_Vggish = Ref{ProtoMeta}()
function meta(::Type{SoundAnalysisPreprocessing_Vggish})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SoundAnalysisPreprocessing_Vggish)
            __meta_SoundAnalysisPreprocessing_Vggish[] = target = ProtoMeta(SoundAnalysisPreprocessing_Vggish)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, SoundAnalysisPreprocessing_Vggish, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SoundAnalysisPreprocessing_Vggish[]
    end
end

mutable struct SoundAnalysisPreprocessing <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SoundAnalysisPreprocessing(; kwargs...)
        obj = new(meta(SoundAnalysisPreprocessing), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SoundAnalysisPreprocessing
const __meta_SoundAnalysisPreprocessing = Ref{ProtoMeta}()
function meta(::Type{SoundAnalysisPreprocessing})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SoundAnalysisPreprocessing)
            __meta_SoundAnalysisPreprocessing[] = target = ProtoMeta(SoundAnalysisPreprocessing)
            fnum = Int[20]
            allflds = Pair{Symbol,Union{Type,String}}[:vggish => SoundAnalysisPreprocessing_Vggish]
            oneofs = Int[1]
            oneof_names = Symbol[Symbol("SoundAnalysisPreprocessingType")]
            meta(target, SoundAnalysisPreprocessing, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_SoundAnalysisPreprocessing[]
    end
end
function Base.getproperty(obj::SoundAnalysisPreprocessing, name::Symbol)
    if name === :vggish
        return (obj.__protobuf_jl_internal_values[name])::SoundAnalysisPreprocessing_Vggish
    else
        getfield(obj, name)
    end
end

export SoundAnalysisPreprocessing_Vggish, SoundAnalysisPreprocessing
