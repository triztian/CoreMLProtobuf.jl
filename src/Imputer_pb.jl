# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct Imputer <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Imputer(; kwargs...)
        obj = new(meta(Imputer), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Imputer
const __meta_Imputer = Ref{ProtoMeta}()
function meta(::Type{Imputer})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Imputer)
            __meta_Imputer[] = target = ProtoMeta(Imputer)
            fnum = Int[1,2,3,4,5,6,7,11,12,13]
            allflds = Pair{Symbol,Union{Type,String}}[:imputedDoubleValue => Float64, :imputedInt64Value => Int64, :imputedStringValue => AbstractString, :imputedDoubleArray => DoubleVector, :imputedInt64Array => Int64Vector, :imputedStringDictionary => StringToDoubleMap, :imputedInt64Dictionary => Int64ToDoubleMap, :replaceDoubleValue => Float64, :replaceInt64Value => Int64, :replaceStringValue => AbstractString]
            oneofs = Int[1,1,1,1,1,1,1,2,2,2]
            oneof_names = Symbol[Symbol("ImputedValue"),Symbol("ReplaceValue")]
            meta(target, Imputer, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_Imputer[]
    end
end
function Base.getproperty(obj::Imputer, name::Symbol)
    if name === :imputedDoubleValue
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :imputedInt64Value
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :imputedStringValue
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :imputedDoubleArray
        return (obj.__protobuf_jl_internal_values[name])::DoubleVector
    elseif name === :imputedInt64Array
        return (obj.__protobuf_jl_internal_values[name])::Int64Vector
    elseif name === :imputedStringDictionary
        return (obj.__protobuf_jl_internal_values[name])::StringToDoubleMap
    elseif name === :imputedInt64Dictionary
        return (obj.__protobuf_jl_internal_values[name])::Int64ToDoubleMap
    elseif name === :replaceDoubleValue
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :replaceInt64Value
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :replaceStringValue
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

export Imputer
