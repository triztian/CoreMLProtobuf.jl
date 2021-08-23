# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

const GLMClassifier_PostEvaluationTransform = (;[
    Symbol("Logit") => Int32(0),
    Symbol("Probit") => Int32(1),
]...)

const GLMClassifier_ClassEncoding = (;[
    Symbol("ReferenceClass") => Int32(0),
    Symbol("OneVsRest") => Int32(1),
]...)

mutable struct GLMClassifier_DoubleArray <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GLMClassifier_DoubleArray(; kwargs...)
        obj = new(meta(GLMClassifier_DoubleArray), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GLMClassifier_DoubleArray
const __meta_GLMClassifier_DoubleArray = Ref{ProtoMeta}()
function meta(::Type{GLMClassifier_DoubleArray})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GLMClassifier_DoubleArray)
            __meta_GLMClassifier_DoubleArray[] = target = ProtoMeta(GLMClassifier_DoubleArray)
            pack = Symbol[:value]
            allflds = Pair{Symbol,Union{Type,String}}[:value => Base.Vector{Float64}]
            meta(target, GLMClassifier_DoubleArray, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GLMClassifier_DoubleArray[]
    end
end
function Base.getproperty(obj::GLMClassifier_DoubleArray, name::Symbol)
    if name === :value
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
    else
        getfield(obj, name)
    end
end

mutable struct GLMClassifier <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GLMClassifier(; kwargs...)
        obj = new(meta(GLMClassifier), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GLMClassifier
const __meta_GLMClassifier = Ref{ProtoMeta}()
function meta(::Type{GLMClassifier})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GLMClassifier)
            __meta_GLMClassifier[] = target = ProtoMeta(GLMClassifier)
            fnum = Int[1,2,3,4,100,101]
            pack = Symbol[:offset]
            allflds = Pair{Symbol,Union{Type,String}}[:weights => Base.Vector{GLMClassifier_DoubleArray}, :offset => Base.Vector{Float64}, :postEvaluationTransform => Int32, :classEncoding => Int32, :stringClassLabels => StringVector, :int64ClassLabels => Int64Vector]
            oneofs = Int[0,0,0,0,1,1]
            oneof_names = Symbol[Symbol("ClassLabels")]
            meta(target, GLMClassifier, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_GLMClassifier[]
    end
end
function Base.getproperty(obj::GLMClassifier, name::Symbol)
    if name === :weights
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{GLMClassifier_DoubleArray}
    elseif name === :offset
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
    elseif name === :postEvaluationTransform
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :classEncoding
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :stringClassLabels
        return (obj.__protobuf_jl_internal_values[name])::StringVector
    elseif name === :int64ClassLabels
        return (obj.__protobuf_jl_internal_values[name])::Int64Vector
    else
        getfield(obj, name)
    end
end

export GLMClassifier_PostEvaluationTransform, GLMClassifier_ClassEncoding, GLMClassifier_DoubleArray, GLMClassifier
