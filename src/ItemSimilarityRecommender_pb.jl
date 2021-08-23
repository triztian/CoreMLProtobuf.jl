# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct ItemSimilarityRecommender_ConnectedItem <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ItemSimilarityRecommender_ConnectedItem(; kwargs...)
        obj = new(meta(ItemSimilarityRecommender_ConnectedItem), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ItemSimilarityRecommender_ConnectedItem
const __meta_ItemSimilarityRecommender_ConnectedItem = Ref{ProtoMeta}()
function meta(::Type{ItemSimilarityRecommender_ConnectedItem})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ItemSimilarityRecommender_ConnectedItem)
            __meta_ItemSimilarityRecommender_ConnectedItem[] = target = ProtoMeta(ItemSimilarityRecommender_ConnectedItem)
            allflds = Pair{Symbol,Union{Type,String}}[:itemId => UInt64, :similarityScore => Float64]
            meta(target, ItemSimilarityRecommender_ConnectedItem, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ItemSimilarityRecommender_ConnectedItem[]
    end
end
function Base.getproperty(obj::ItemSimilarityRecommender_ConnectedItem, name::Symbol)
    if name === :itemId
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :similarityScore
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct ItemSimilarityRecommender_SimilarItems <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ItemSimilarityRecommender_SimilarItems(; kwargs...)
        obj = new(meta(ItemSimilarityRecommender_SimilarItems), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ItemSimilarityRecommender_SimilarItems
const __meta_ItemSimilarityRecommender_SimilarItems = Ref{ProtoMeta}()
function meta(::Type{ItemSimilarityRecommender_SimilarItems})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ItemSimilarityRecommender_SimilarItems)
            __meta_ItemSimilarityRecommender_SimilarItems[] = target = ProtoMeta(ItemSimilarityRecommender_SimilarItems)
            allflds = Pair{Symbol,Union{Type,String}}[:itemId => UInt64, :similarItemList => Base.Vector{ItemSimilarityRecommender_ConnectedItem}, :itemScoreAdjustment => Float64]
            meta(target, ItemSimilarityRecommender_SimilarItems, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ItemSimilarityRecommender_SimilarItems[]
    end
end
function Base.getproperty(obj::ItemSimilarityRecommender_SimilarItems, name::Symbol)
    if name === :itemId
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :similarItemList
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ItemSimilarityRecommender_ConnectedItem}
    elseif name === :itemScoreAdjustment
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct ItemSimilarityRecommender <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ItemSimilarityRecommender(; kwargs...)
        obj = new(meta(ItemSimilarityRecommender), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ItemSimilarityRecommender
const __meta_ItemSimilarityRecommender = Ref{ProtoMeta}()
function meta(::Type{ItemSimilarityRecommender})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ItemSimilarityRecommender)
            __meta_ItemSimilarityRecommender[] = target = ProtoMeta(ItemSimilarityRecommender)
            fnum = Int[1,2,3,10,11,12,13,20,21]
            allflds = Pair{Symbol,Union{Type,String}}[:itemItemSimilarities => Base.Vector{ItemSimilarityRecommender_SimilarItems}, :itemStringIds => StringVector, :itemInt64Ids => Int64Vector, :itemInputFeatureName => AbstractString, :numRecommendationsInputFeatureName => AbstractString, :itemRestrictionInputFeatureName => AbstractString, :itemExclusionInputFeatureName => AbstractString, :recommendedItemListOutputFeatureName => AbstractString, :recommendedItemScoreOutputFeatureName => AbstractString]
            meta(target, ItemSimilarityRecommender, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ItemSimilarityRecommender[]
    end
end
function Base.getproperty(obj::ItemSimilarityRecommender, name::Symbol)
    if name === :itemItemSimilarities
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ItemSimilarityRecommender_SimilarItems}
    elseif name === :itemStringIds
        return (obj.__protobuf_jl_internal_values[name])::StringVector
    elseif name === :itemInt64Ids
        return (obj.__protobuf_jl_internal_values[name])::Int64Vector
    elseif name === :itemInputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :numRecommendationsInputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :itemRestrictionInputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :itemExclusionInputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :recommendedItemListOutputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :recommendedItemScoreOutputFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

export ItemSimilarityRecommender_ConnectedItem, ItemSimilarityRecommender_SimilarItems, ItemSimilarityRecommender
