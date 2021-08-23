# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct Int64FeatureType <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Int64FeatureType(; kwargs...)
        obj = new(meta(Int64FeatureType), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Int64FeatureType
const __meta_Int64FeatureType = Ref{ProtoMeta}()
function meta(::Type{Int64FeatureType})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Int64FeatureType)
            __meta_Int64FeatureType[] = target = ProtoMeta(Int64FeatureType)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, Int64FeatureType, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Int64FeatureType[]
    end
end

mutable struct DoubleFeatureType <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DoubleFeatureType(; kwargs...)
        obj = new(meta(DoubleFeatureType), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct DoubleFeatureType
const __meta_DoubleFeatureType = Ref{ProtoMeta}()
function meta(::Type{DoubleFeatureType})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DoubleFeatureType)
            __meta_DoubleFeatureType[] = target = ProtoMeta(DoubleFeatureType)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, DoubleFeatureType, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DoubleFeatureType[]
    end
end

mutable struct StringFeatureType <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function StringFeatureType(; kwargs...)
        obj = new(meta(StringFeatureType), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct StringFeatureType
const __meta_StringFeatureType = Ref{ProtoMeta}()
function meta(::Type{StringFeatureType})
    ProtoBuf.metalock() do
        if !isassigned(__meta_StringFeatureType)
            __meta_StringFeatureType[] = target = ProtoMeta(StringFeatureType)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, StringFeatureType, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_StringFeatureType[]
    end
end

mutable struct SizeRange <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SizeRange(; kwargs...)
        obj = new(meta(SizeRange), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SizeRange
const __meta_SizeRange = Ref{ProtoMeta}()
function meta(::Type{SizeRange})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SizeRange)
            __meta_SizeRange[] = target = ProtoMeta(SizeRange)
            allflds = Pair{Symbol,Union{Type,String}}[:lowerBound => UInt64, :upperBound => Int64]
            meta(target, SizeRange, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SizeRange[]
    end
end
function Base.getproperty(obj::SizeRange, name::Symbol)
    if name === :lowerBound
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :upperBound
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

const ImageFeatureType_ColorSpace = (;[
    Symbol("INVALID_COLOR_SPACE") => Int32(0),
    Symbol("GRAYSCALE") => Int32(10),
    Symbol("RGB") => Int32(20),
    Symbol("BGR") => Int32(30),
]...)

mutable struct ImageFeatureType_ImageSize <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ImageFeatureType_ImageSize(; kwargs...)
        obj = new(meta(ImageFeatureType_ImageSize), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ImageFeatureType_ImageSize
const __meta_ImageFeatureType_ImageSize = Ref{ProtoMeta}()
function meta(::Type{ImageFeatureType_ImageSize})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ImageFeatureType_ImageSize)
            __meta_ImageFeatureType_ImageSize[] = target = ProtoMeta(ImageFeatureType_ImageSize)
            allflds = Pair{Symbol,Union{Type,String}}[:width => UInt64, :height => UInt64]
            meta(target, ImageFeatureType_ImageSize, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ImageFeatureType_ImageSize[]
    end
end
function Base.getproperty(obj::ImageFeatureType_ImageSize, name::Symbol)
    if name === :width
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :height
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct ImageFeatureType_EnumeratedImageSizes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ImageFeatureType_EnumeratedImageSizes(; kwargs...)
        obj = new(meta(ImageFeatureType_EnumeratedImageSizes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ImageFeatureType_EnumeratedImageSizes
const __meta_ImageFeatureType_EnumeratedImageSizes = Ref{ProtoMeta}()
function meta(::Type{ImageFeatureType_EnumeratedImageSizes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ImageFeatureType_EnumeratedImageSizes)
            __meta_ImageFeatureType_EnumeratedImageSizes[] = target = ProtoMeta(ImageFeatureType_EnumeratedImageSizes)
            allflds = Pair{Symbol,Union{Type,String}}[:sizes => Base.Vector{ImageFeatureType_ImageSize}]
            meta(target, ImageFeatureType_EnumeratedImageSizes, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ImageFeatureType_EnumeratedImageSizes[]
    end
end
function Base.getproperty(obj::ImageFeatureType_EnumeratedImageSizes, name::Symbol)
    if name === :sizes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ImageFeatureType_ImageSize}
    else
        getfield(obj, name)
    end
end

mutable struct ImageFeatureType_ImageSizeRange <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ImageFeatureType_ImageSizeRange(; kwargs...)
        obj = new(meta(ImageFeatureType_ImageSizeRange), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ImageFeatureType_ImageSizeRange
const __meta_ImageFeatureType_ImageSizeRange = Ref{ProtoMeta}()
function meta(::Type{ImageFeatureType_ImageSizeRange})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ImageFeatureType_ImageSizeRange)
            __meta_ImageFeatureType_ImageSizeRange[] = target = ProtoMeta(ImageFeatureType_ImageSizeRange)
            allflds = Pair{Symbol,Union{Type,String}}[:widthRange => SizeRange, :heightRange => SizeRange]
            meta(target, ImageFeatureType_ImageSizeRange, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ImageFeatureType_ImageSizeRange[]
    end
end
function Base.getproperty(obj::ImageFeatureType_ImageSizeRange, name::Symbol)
    if name === :widthRange
        return (obj.__protobuf_jl_internal_values[name])::SizeRange
    elseif name === :heightRange
        return (obj.__protobuf_jl_internal_values[name])::SizeRange
    else
        getfield(obj, name)
    end
end

mutable struct ImageFeatureType <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ImageFeatureType(; kwargs...)
        obj = new(meta(ImageFeatureType), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ImageFeatureType
const __meta_ImageFeatureType = Ref{ProtoMeta}()
function meta(::Type{ImageFeatureType})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ImageFeatureType)
            __meta_ImageFeatureType[] = target = ProtoMeta(ImageFeatureType)
            fnum = Int[1,2,21,31,3]
            allflds = Pair{Symbol,Union{Type,String}}[:width => Int64, :height => Int64, :enumeratedSizes => ImageFeatureType_EnumeratedImageSizes, :imageSizeRange => ImageFeatureType_ImageSizeRange, :colorSpace => Int32]
            oneofs = Int[0,0,1,1,0]
            oneof_names = Symbol[Symbol("SizeFlexibility")]
            meta(target, ImageFeatureType, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_ImageFeatureType[]
    end
end
function Base.getproperty(obj::ImageFeatureType, name::Symbol)
    if name === :width
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :height
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :enumeratedSizes
        return (obj.__protobuf_jl_internal_values[name])::ImageFeatureType_EnumeratedImageSizes
    elseif name === :imageSizeRange
        return (obj.__protobuf_jl_internal_values[name])::ImageFeatureType_ImageSizeRange
    elseif name === :colorSpace
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

const ArrayFeatureType_ArrayDataType = (;[
    Symbol("INVALID_ARRAY_DATA_TYPE") => Int32(0),
    Symbol("FLOAT32") => Int32(65568),
    Symbol("DOUBLE") => Int32(65600),
    Symbol("INT32") => Int32(131104),
]...)

mutable struct ArrayFeatureType_Shape <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ArrayFeatureType_Shape(; kwargs...)
        obj = new(meta(ArrayFeatureType_Shape), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ArrayFeatureType_Shape
const __meta_ArrayFeatureType_Shape = Ref{ProtoMeta}()
function meta(::Type{ArrayFeatureType_Shape})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ArrayFeatureType_Shape)
            __meta_ArrayFeatureType_Shape[] = target = ProtoMeta(ArrayFeatureType_Shape)
            pack = Symbol[:shape]
            allflds = Pair{Symbol,Union{Type,String}}[:shape => Base.Vector{Int64}]
            meta(target, ArrayFeatureType_Shape, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ArrayFeatureType_Shape[]
    end
end
function Base.getproperty(obj::ArrayFeatureType_Shape, name::Symbol)
    if name === :shape
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    else
        getfield(obj, name)
    end
end

mutable struct ArrayFeatureType_EnumeratedShapes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ArrayFeatureType_EnumeratedShapes(; kwargs...)
        obj = new(meta(ArrayFeatureType_EnumeratedShapes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ArrayFeatureType_EnumeratedShapes
const __meta_ArrayFeatureType_EnumeratedShapes = Ref{ProtoMeta}()
function meta(::Type{ArrayFeatureType_EnumeratedShapes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ArrayFeatureType_EnumeratedShapes)
            __meta_ArrayFeatureType_EnumeratedShapes[] = target = ProtoMeta(ArrayFeatureType_EnumeratedShapes)
            allflds = Pair{Symbol,Union{Type,String}}[:shapes => Base.Vector{ArrayFeatureType_Shape}]
            meta(target, ArrayFeatureType_EnumeratedShapes, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ArrayFeatureType_EnumeratedShapes[]
    end
end
function Base.getproperty(obj::ArrayFeatureType_EnumeratedShapes, name::Symbol)
    if name === :shapes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ArrayFeatureType_Shape}
    else
        getfield(obj, name)
    end
end

mutable struct ArrayFeatureType_ShapeRange <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ArrayFeatureType_ShapeRange(; kwargs...)
        obj = new(meta(ArrayFeatureType_ShapeRange), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ArrayFeatureType_ShapeRange
const __meta_ArrayFeatureType_ShapeRange = Ref{ProtoMeta}()
function meta(::Type{ArrayFeatureType_ShapeRange})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ArrayFeatureType_ShapeRange)
            __meta_ArrayFeatureType_ShapeRange[] = target = ProtoMeta(ArrayFeatureType_ShapeRange)
            allflds = Pair{Symbol,Union{Type,String}}[:sizeRanges => Base.Vector{SizeRange}]
            meta(target, ArrayFeatureType_ShapeRange, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ArrayFeatureType_ShapeRange[]
    end
end
function Base.getproperty(obj::ArrayFeatureType_ShapeRange, name::Symbol)
    if name === :sizeRanges
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{SizeRange}
    else
        getfield(obj, name)
    end
end

mutable struct ArrayFeatureType <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ArrayFeatureType(; kwargs...)
        obj = new(meta(ArrayFeatureType), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ArrayFeatureType
const __meta_ArrayFeatureType = Ref{ProtoMeta}()
function meta(::Type{ArrayFeatureType})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ArrayFeatureType)
            __meta_ArrayFeatureType[] = target = ProtoMeta(ArrayFeatureType)
            fnum = Int[1,2,21,31,41,51,61]
            pack = Symbol[:shape]
            allflds = Pair{Symbol,Union{Type,String}}[:shape => Base.Vector{Int64}, :dataType => Int32, :enumeratedShapes => ArrayFeatureType_EnumeratedShapes, :shapeRange => ArrayFeatureType_ShapeRange, :intDefaultValue => Int32, :floatDefaultValue => Float32, :doubleDefaultValue => Float64]
            oneofs = Int[0,0,1,1,2,2,2]
            oneof_names = Symbol[Symbol("ShapeFlexibility"),Symbol("defaultOptionalValue")]
            meta(target, ArrayFeatureType, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_ArrayFeatureType[]
    end
end
function Base.getproperty(obj::ArrayFeatureType, name::Symbol)
    if name === :shape
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :dataType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :enumeratedShapes
        return (obj.__protobuf_jl_internal_values[name])::ArrayFeatureType_EnumeratedShapes
    elseif name === :shapeRange
        return (obj.__protobuf_jl_internal_values[name])::ArrayFeatureType_ShapeRange
    elseif name === :intDefaultValue
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :floatDefaultValue
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :doubleDefaultValue
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct DictionaryFeatureType <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DictionaryFeatureType(; kwargs...)
        obj = new(meta(DictionaryFeatureType), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct DictionaryFeatureType
const __meta_DictionaryFeatureType = Ref{ProtoMeta}()
function meta(::Type{DictionaryFeatureType})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DictionaryFeatureType)
            __meta_DictionaryFeatureType[] = target = ProtoMeta(DictionaryFeatureType)
            allflds = Pair{Symbol,Union{Type,String}}[:int64KeyType => Int64FeatureType, :stringKeyType => StringFeatureType]
            oneofs = Int[1,1]
            oneof_names = Symbol[Symbol("KeyType")]
            meta(target, DictionaryFeatureType, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_DictionaryFeatureType[]
    end
end
function Base.getproperty(obj::DictionaryFeatureType, name::Symbol)
    if name === :int64KeyType
        return (obj.__protobuf_jl_internal_values[name])::Int64FeatureType
    elseif name === :stringKeyType
        return (obj.__protobuf_jl_internal_values[name])::StringFeatureType
    else
        getfield(obj, name)
    end
end

mutable struct SequenceFeatureType <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SequenceFeatureType(; kwargs...)
        obj = new(meta(SequenceFeatureType), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SequenceFeatureType
const __meta_SequenceFeatureType = Ref{ProtoMeta}()
function meta(::Type{SequenceFeatureType})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SequenceFeatureType)
            __meta_SequenceFeatureType[] = target = ProtoMeta(SequenceFeatureType)
            fnum = Int[1,3,101]
            allflds = Pair{Symbol,Union{Type,String}}[:int64Type => Int64FeatureType, :stringType => StringFeatureType, :sizeRange => SizeRange]
            oneofs = Int[1,1,0]
            oneof_names = Symbol[Symbol("Type")]
            meta(target, SequenceFeatureType, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_SequenceFeatureType[]
    end
end
function Base.getproperty(obj::SequenceFeatureType, name::Symbol)
    if name === :int64Type
        return (obj.__protobuf_jl_internal_values[name])::Int64FeatureType
    elseif name === :stringType
        return (obj.__protobuf_jl_internal_values[name])::StringFeatureType
    elseif name === :sizeRange
        return (obj.__protobuf_jl_internal_values[name])::SizeRange
    else
        getfield(obj, name)
    end
end

mutable struct FeatureType <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function FeatureType(; kwargs...)
        obj = new(meta(FeatureType), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct FeatureType
const __meta_FeatureType = Ref{ProtoMeta}()
function meta(::Type{FeatureType})
    ProtoBuf.metalock() do
        if !isassigned(__meta_FeatureType)
            __meta_FeatureType[] = target = ProtoMeta(FeatureType)
            fnum = Int[1,2,3,4,5,6,7,1000]
            allflds = Pair{Symbol,Union{Type,String}}[:int64Type => Int64FeatureType, :doubleType => DoubleFeatureType, :stringType => StringFeatureType, :imageType => ImageFeatureType, :multiArrayType => ArrayFeatureType, :dictionaryType => DictionaryFeatureType, :sequenceType => SequenceFeatureType, :isOptional => Bool]
            oneofs = Int[1,1,1,1,1,1,1,0]
            oneof_names = Symbol[Symbol("Type")]
            meta(target, FeatureType, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_FeatureType[]
    end
end
function Base.getproperty(obj::FeatureType, name::Symbol)
    if name === :int64Type
        return (obj.__protobuf_jl_internal_values[name])::Int64FeatureType
    elseif name === :doubleType
        return (obj.__protobuf_jl_internal_values[name])::DoubleFeatureType
    elseif name === :stringType
        return (obj.__protobuf_jl_internal_values[name])::StringFeatureType
    elseif name === :imageType
        return (obj.__protobuf_jl_internal_values[name])::ImageFeatureType
    elseif name === :multiArrayType
        return (obj.__protobuf_jl_internal_values[name])::ArrayFeatureType
    elseif name === :dictionaryType
        return (obj.__protobuf_jl_internal_values[name])::DictionaryFeatureType
    elseif name === :sequenceType
        return (obj.__protobuf_jl_internal_values[name])::SequenceFeatureType
    elseif name === :isOptional
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

export Int64FeatureType, DoubleFeatureType, StringFeatureType, SizeRange, ImageFeatureType_ColorSpace, ImageFeatureType_ImageSize, ImageFeatureType_EnumeratedImageSizes, ImageFeatureType_ImageSizeRange, ImageFeatureType, ArrayFeatureType_ArrayDataType, ArrayFeatureType_Shape, ArrayFeatureType_EnumeratedShapes, ArrayFeatureType_ShapeRange, ArrayFeatureType, DictionaryFeatureType, SequenceFeatureType, FeatureType
