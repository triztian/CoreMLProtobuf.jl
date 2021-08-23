# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct UniformWeighting <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function UniformWeighting(; kwargs...)
        obj = new(meta(UniformWeighting), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct UniformWeighting
const __meta_UniformWeighting = Ref{ProtoMeta}()
function meta(::Type{UniformWeighting})
    ProtoBuf.metalock() do
        if !isassigned(__meta_UniformWeighting)
            __meta_UniformWeighting[] = target = ProtoMeta(UniformWeighting)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, UniformWeighting, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_UniformWeighting[]
    end
end

mutable struct InverseDistanceWeighting <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function InverseDistanceWeighting(; kwargs...)
        obj = new(meta(InverseDistanceWeighting), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct InverseDistanceWeighting
const __meta_InverseDistanceWeighting = Ref{ProtoMeta}()
function meta(::Type{InverseDistanceWeighting})
    ProtoBuf.metalock() do
        if !isassigned(__meta_InverseDistanceWeighting)
            __meta_InverseDistanceWeighting[] = target = ProtoMeta(InverseDistanceWeighting)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, InverseDistanceWeighting, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_InverseDistanceWeighting[]
    end
end

mutable struct LinearIndex <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LinearIndex(; kwargs...)
        obj = new(meta(LinearIndex), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LinearIndex
const __meta_LinearIndex = Ref{ProtoMeta}()
function meta(::Type{LinearIndex})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LinearIndex)
            __meta_LinearIndex[] = target = ProtoMeta(LinearIndex)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, LinearIndex, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LinearIndex[]
    end
end

mutable struct SingleKdTreeIndex <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SingleKdTreeIndex(; kwargs...)
        obj = new(meta(SingleKdTreeIndex), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SingleKdTreeIndex
const __meta_SingleKdTreeIndex = Ref{ProtoMeta}()
function meta(::Type{SingleKdTreeIndex})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SingleKdTreeIndex)
            __meta_SingleKdTreeIndex[] = target = ProtoMeta(SingleKdTreeIndex)
            allflds = Pair{Symbol,Union{Type,String}}[:leafSize => Int32]
            meta(target, SingleKdTreeIndex, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SingleKdTreeIndex[]
    end
end
function Base.getproperty(obj::SingleKdTreeIndex, name::Symbol)
    if name === :leafSize
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct SquaredEuclideanDistance <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SquaredEuclideanDistance(; kwargs...)
        obj = new(meta(SquaredEuclideanDistance), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SquaredEuclideanDistance
const __meta_SquaredEuclideanDistance = Ref{ProtoMeta}()
function meta(::Type{SquaredEuclideanDistance})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SquaredEuclideanDistance)
            __meta_SquaredEuclideanDistance[] = target = ProtoMeta(SquaredEuclideanDistance)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, SquaredEuclideanDistance, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SquaredEuclideanDistance[]
    end
end

mutable struct NearestNeighborsIndex <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function NearestNeighborsIndex(; kwargs...)
        obj = new(meta(NearestNeighborsIndex), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct NearestNeighborsIndex
const __meta_NearestNeighborsIndex = Ref{ProtoMeta}()
function meta(::Type{NearestNeighborsIndex})
    ProtoBuf.metalock() do
        if !isassigned(__meta_NearestNeighborsIndex)
            __meta_NearestNeighborsIndex[] = target = ProtoMeta(NearestNeighborsIndex)
            fnum = Int[1,2,100,110,200]
            allflds = Pair{Symbol,Union{Type,String}}[:numberOfDimensions => Int32, :floatSamples => Base.Vector{FloatVector}, :linearIndex => LinearIndex, :singleKdTreeIndex => SingleKdTreeIndex, :squaredEuclideanDistance => SquaredEuclideanDistance]
            oneofs = Int[0,0,1,1,2]
            oneof_names = Symbol[Symbol("IndexType"),Symbol("DistanceFunction")]
            meta(target, NearestNeighborsIndex, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_NearestNeighborsIndex[]
    end
end
function Base.getproperty(obj::NearestNeighborsIndex, name::Symbol)
    if name === :numberOfDimensions
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :floatSamples
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{FloatVector}
    elseif name === :linearIndex
        return (obj.__protobuf_jl_internal_values[name])::LinearIndex
    elseif name === :singleKdTreeIndex
        return (obj.__protobuf_jl_internal_values[name])::SingleKdTreeIndex
    elseif name === :squaredEuclideanDistance
        return (obj.__protobuf_jl_internal_values[name])::SquaredEuclideanDistance
    else
        getfield(obj, name)
    end
end

mutable struct KNearestNeighborsClassifier <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function KNearestNeighborsClassifier(; kwargs...)
        obj = new(meta(KNearestNeighborsClassifier), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct KNearestNeighborsClassifier
const __meta_KNearestNeighborsClassifier = Ref{ProtoMeta}()
function meta(::Type{KNearestNeighborsClassifier})
    ProtoBuf.metalock() do
        if !isassigned(__meta_KNearestNeighborsClassifier)
            __meta_KNearestNeighborsClassifier[] = target = ProtoMeta(KNearestNeighborsClassifier)
            fnum = Int[1,3,100,101,110,111,200,210]
            allflds = Pair{Symbol,Union{Type,String}}[:nearestNeighborsIndex => NearestNeighborsIndex, :numberOfNeighbors => Int64Parameter, :stringClassLabels => StringVector, :int64ClassLabels => Int64Vector, :defaultStringLabel => AbstractString, :defaultInt64Label => Int64, :uniformWeighting => UniformWeighting, :inverseDistanceWeighting => InverseDistanceWeighting]
            oneofs = Int[0,0,1,1,2,2,3,3]
            oneof_names = Symbol[Symbol("ClassLabels"),Symbol("DefaultClassLabel"),Symbol("WeightingScheme")]
            meta(target, KNearestNeighborsClassifier, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_KNearestNeighborsClassifier[]
    end
end
function Base.getproperty(obj::KNearestNeighborsClassifier, name::Symbol)
    if name === :nearestNeighborsIndex
        return (obj.__protobuf_jl_internal_values[name])::NearestNeighborsIndex
    elseif name === :numberOfNeighbors
        return (obj.__protobuf_jl_internal_values[name])::Int64Parameter
    elseif name === :stringClassLabels
        return (obj.__protobuf_jl_internal_values[name])::StringVector
    elseif name === :int64ClassLabels
        return (obj.__protobuf_jl_internal_values[name])::Int64Vector
    elseif name === :defaultStringLabel
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :defaultInt64Label
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :uniformWeighting
        return (obj.__protobuf_jl_internal_values[name])::UniformWeighting
    elseif name === :inverseDistanceWeighting
        return (obj.__protobuf_jl_internal_values[name])::InverseDistanceWeighting
    else
        getfield(obj, name)
    end
end

export KNearestNeighborsClassifier, NearestNeighborsIndex, UniformWeighting, InverseDistanceWeighting, LinearIndex, SingleKdTreeIndex, SquaredEuclideanDistance
