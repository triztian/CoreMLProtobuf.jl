# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

const TreeEnsemblePostEvaluationTransform = (;[
    Symbol("NoTransform") => Int32(0),
    Symbol("Classification_SoftMax") => Int32(1),
    Symbol("Regression_Logistic") => Int32(2),
    Symbol("Classification_SoftMaxWithZeroClassReference") => Int32(3),
]...)

const TreeEnsembleParameters_TreeNode_TreeNodeBehavior = (;[
    Symbol("BranchOnValueLessThanEqual") => Int32(0),
    Symbol("BranchOnValueLessThan") => Int32(1),
    Symbol("BranchOnValueGreaterThanEqual") => Int32(2),
    Symbol("BranchOnValueGreaterThan") => Int32(3),
    Symbol("BranchOnValueEqual") => Int32(4),
    Symbol("BranchOnValueNotEqual") => Int32(5),
    Symbol("LeafNode") => Int32(6),
]...)

mutable struct TreeEnsembleParameters_TreeNode_EvaluationInfo <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TreeEnsembleParameters_TreeNode_EvaluationInfo(; kwargs...)
        obj = new(meta(TreeEnsembleParameters_TreeNode_EvaluationInfo), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TreeEnsembleParameters_TreeNode_EvaluationInfo
const __meta_TreeEnsembleParameters_TreeNode_EvaluationInfo = Ref{ProtoMeta}()
function meta(::Type{TreeEnsembleParameters_TreeNode_EvaluationInfo})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TreeEnsembleParameters_TreeNode_EvaluationInfo)
            __meta_TreeEnsembleParameters_TreeNode_EvaluationInfo[] = target = ProtoMeta(TreeEnsembleParameters_TreeNode_EvaluationInfo)
            allflds = Pair{Symbol,Union{Type,String}}[:evaluationIndex => UInt64, :evaluationValue => Float64]
            meta(target, TreeEnsembleParameters_TreeNode_EvaluationInfo, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_TreeEnsembleParameters_TreeNode_EvaluationInfo[]
    end
end
function Base.getproperty(obj::TreeEnsembleParameters_TreeNode_EvaluationInfo, name::Symbol)
    if name === :evaluationIndex
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :evaluationValue
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct TreeEnsembleParameters_TreeNode <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TreeEnsembleParameters_TreeNode(; kwargs...)
        obj = new(meta(TreeEnsembleParameters_TreeNode), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TreeEnsembleParameters_TreeNode
const __meta_TreeEnsembleParameters_TreeNode = Ref{ProtoMeta}()
function meta(::Type{TreeEnsembleParameters_TreeNode})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TreeEnsembleParameters_TreeNode)
            __meta_TreeEnsembleParameters_TreeNode[] = target = ProtoMeta(TreeEnsembleParameters_TreeNode)
            fnum = Int[1,2,3,10,11,12,13,14,20,30]
            allflds = Pair{Symbol,Union{Type,String}}[:treeId => UInt64, :nodeId => UInt64, :nodeBehavior => Int32, :branchFeatureIndex => UInt64, :branchFeatureValue => Float64, :trueChildNodeId => UInt64, :falseChildNodeId => UInt64, :missingValueTracksTrueChild => Bool, :evaluationInfo => Base.Vector{TreeEnsembleParameters_TreeNode_EvaluationInfo}, :relativeHitRate => Float64]
            meta(target, TreeEnsembleParameters_TreeNode, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_TreeEnsembleParameters_TreeNode[]
    end
end
function Base.getproperty(obj::TreeEnsembleParameters_TreeNode, name::Symbol)
    if name === :treeId
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :nodeId
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :nodeBehavior
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :branchFeatureIndex
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :branchFeatureValue
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :trueChildNodeId
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :falseChildNodeId
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :missingValueTracksTrueChild
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :evaluationInfo
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{TreeEnsembleParameters_TreeNode_EvaluationInfo}
    elseif name === :relativeHitRate
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct TreeEnsembleParameters <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TreeEnsembleParameters(; kwargs...)
        obj = new(meta(TreeEnsembleParameters), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TreeEnsembleParameters
const __meta_TreeEnsembleParameters = Ref{ProtoMeta}()
function meta(::Type{TreeEnsembleParameters})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TreeEnsembleParameters)
            __meta_TreeEnsembleParameters[] = target = ProtoMeta(TreeEnsembleParameters)
            pack = Symbol[:basePredictionValue]
            allflds = Pair{Symbol,Union{Type,String}}[:nodes => Base.Vector{TreeEnsembleParameters_TreeNode}, :numPredictionDimensions => UInt64, :basePredictionValue => Base.Vector{Float64}]
            meta(target, TreeEnsembleParameters, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_TreeEnsembleParameters[]
    end
end
function Base.getproperty(obj::TreeEnsembleParameters, name::Symbol)
    if name === :nodes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{TreeEnsembleParameters_TreeNode}
    elseif name === :numPredictionDimensions
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :basePredictionValue
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
    else
        getfield(obj, name)
    end
end

mutable struct TreeEnsembleClassifier <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TreeEnsembleClassifier(; kwargs...)
        obj = new(meta(TreeEnsembleClassifier), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TreeEnsembleClassifier
const __meta_TreeEnsembleClassifier = Ref{ProtoMeta}()
function meta(::Type{TreeEnsembleClassifier})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TreeEnsembleClassifier)
            __meta_TreeEnsembleClassifier[] = target = ProtoMeta(TreeEnsembleClassifier)
            fnum = Int[1,2,100,101]
            allflds = Pair{Symbol,Union{Type,String}}[:treeEnsemble => TreeEnsembleParameters, :postEvaluationTransform => Int32, :stringClassLabels => StringVector, :int64ClassLabels => Int64Vector]
            oneofs = Int[0,0,1,1]
            oneof_names = Symbol[Symbol("ClassLabels")]
            meta(target, TreeEnsembleClassifier, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_TreeEnsembleClassifier[]
    end
end
function Base.getproperty(obj::TreeEnsembleClassifier, name::Symbol)
    if name === :treeEnsemble
        return (obj.__protobuf_jl_internal_values[name])::TreeEnsembleParameters
    elseif name === :postEvaluationTransform
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :stringClassLabels
        return (obj.__protobuf_jl_internal_values[name])::StringVector
    elseif name === :int64ClassLabels
        return (obj.__protobuf_jl_internal_values[name])::Int64Vector
    else
        getfield(obj, name)
    end
end

mutable struct TreeEnsembleRegressor <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TreeEnsembleRegressor(; kwargs...)
        obj = new(meta(TreeEnsembleRegressor), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TreeEnsembleRegressor
const __meta_TreeEnsembleRegressor = Ref{ProtoMeta}()
function meta(::Type{TreeEnsembleRegressor})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TreeEnsembleRegressor)
            __meta_TreeEnsembleRegressor[] = target = ProtoMeta(TreeEnsembleRegressor)
            allflds = Pair{Symbol,Union{Type,String}}[:treeEnsemble => TreeEnsembleParameters, :postEvaluationTransform => Int32]
            meta(target, TreeEnsembleRegressor, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_TreeEnsembleRegressor[]
    end
end
function Base.getproperty(obj::TreeEnsembleRegressor, name::Symbol)
    if name === :treeEnsemble
        return (obj.__protobuf_jl_internal_values[name])::TreeEnsembleParameters
    elseif name === :postEvaluationTransform
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

export TreeEnsemblePostEvaluationTransform, TreeEnsembleParameters_TreeNode_TreeNodeBehavior, TreeEnsembleParameters_TreeNode_EvaluationInfo, TreeEnsembleParameters_TreeNode, TreeEnsembleParameters, TreeEnsembleClassifier, TreeEnsembleRegressor
