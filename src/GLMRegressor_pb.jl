# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

const GLMRegressor_PostEvaluationTransform = (;[
    Symbol("NoTransform") => Int32(0),
    Symbol("Logit") => Int32(1),
    Symbol("Probit") => Int32(2),
]...)

mutable struct GLMRegressor_DoubleArray <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GLMRegressor_DoubleArray(; kwargs...)
        obj = new(meta(GLMRegressor_DoubleArray), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GLMRegressor_DoubleArray
const __meta_GLMRegressor_DoubleArray = Ref{ProtoMeta}()
function meta(::Type{GLMRegressor_DoubleArray})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GLMRegressor_DoubleArray)
            __meta_GLMRegressor_DoubleArray[] = target = ProtoMeta(GLMRegressor_DoubleArray)
            pack = Symbol[:value]
            allflds = Pair{Symbol,Union{Type,String}}[:value => Base.Vector{Float64}]
            meta(target, GLMRegressor_DoubleArray, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GLMRegressor_DoubleArray[]
    end
end
function Base.getproperty(obj::GLMRegressor_DoubleArray, name::Symbol)
    if name === :value
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
    else
        getfield(obj, name)
    end
end

mutable struct GLMRegressor <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GLMRegressor(; kwargs...)
        obj = new(meta(GLMRegressor), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GLMRegressor
const __meta_GLMRegressor = Ref{ProtoMeta}()
function meta(::Type{GLMRegressor})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GLMRegressor)
            __meta_GLMRegressor[] = target = ProtoMeta(GLMRegressor)
            pack = Symbol[:offset]
            allflds = Pair{Symbol,Union{Type,String}}[:weights => Base.Vector{GLMRegressor_DoubleArray}, :offset => Base.Vector{Float64}, :postEvaluationTransform => Int32]
            meta(target, GLMRegressor, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GLMRegressor[]
    end
end
function Base.getproperty(obj::GLMRegressor, name::Symbol)
    if name === :weights
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{GLMRegressor_DoubleArray}
    elseif name === :offset
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
    elseif name === :postEvaluationTransform
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

export GLMRegressor_PostEvaluationTransform, GLMRegressor_DoubleArray, GLMRegressor
