# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct StringToInt64Map_MapEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function StringToInt64Map_MapEntry(; kwargs...)
        obj = new(meta(StringToInt64Map_MapEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct StringToInt64Map_MapEntry (mapentry)
const __meta_StringToInt64Map_MapEntry = Ref{ProtoMeta}()
function meta(::Type{StringToInt64Map_MapEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_StringToInt64Map_MapEntry)
            __meta_StringToInt64Map_MapEntry[] = target = ProtoMeta(StringToInt64Map_MapEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => Int64]
            meta(target, StringToInt64Map_MapEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_StringToInt64Map_MapEntry[]
    end
end
function Base.getproperty(obj::StringToInt64Map_MapEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct StringToInt64Map <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function StringToInt64Map(; kwargs...)
        obj = new(meta(StringToInt64Map), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct StringToInt64Map
const __meta_StringToInt64Map = Ref{ProtoMeta}()
function meta(::Type{StringToInt64Map})
    ProtoBuf.metalock() do
        if !isassigned(__meta_StringToInt64Map)
            __meta_StringToInt64Map[] = target = ProtoMeta(StringToInt64Map)
            allflds = Pair{Symbol,Union{Type,String}}[:map => Base.Dict{AbstractString,Int64}]
            meta(target, StringToInt64Map, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_StringToInt64Map[]
    end
end
function Base.getproperty(obj::StringToInt64Map, name::Symbol)
    if name === :map
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,Int64}
    else
        getfield(obj, name)
    end
end

mutable struct Int64ToStringMap_MapEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Int64ToStringMap_MapEntry(; kwargs...)
        obj = new(meta(Int64ToStringMap_MapEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Int64ToStringMap_MapEntry (mapentry)
const __meta_Int64ToStringMap_MapEntry = Ref{ProtoMeta}()
function meta(::Type{Int64ToStringMap_MapEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Int64ToStringMap_MapEntry)
            __meta_Int64ToStringMap_MapEntry[] = target = ProtoMeta(Int64ToStringMap_MapEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => Int64, :value => AbstractString]
            meta(target, Int64ToStringMap_MapEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Int64ToStringMap_MapEntry[]
    end
end
function Base.getproperty(obj::Int64ToStringMap_MapEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct Int64ToStringMap <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Int64ToStringMap(; kwargs...)
        obj = new(meta(Int64ToStringMap), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Int64ToStringMap
const __meta_Int64ToStringMap = Ref{ProtoMeta}()
function meta(::Type{Int64ToStringMap})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Int64ToStringMap)
            __meta_Int64ToStringMap[] = target = ProtoMeta(Int64ToStringMap)
            allflds = Pair{Symbol,Union{Type,String}}[:map => Base.Dict{Int64,AbstractString}]
            meta(target, Int64ToStringMap, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Int64ToStringMap[]
    end
end
function Base.getproperty(obj::Int64ToStringMap, name::Symbol)
    if name === :map
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{Int64,AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct StringToDoubleMap_MapEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function StringToDoubleMap_MapEntry(; kwargs...)
        obj = new(meta(StringToDoubleMap_MapEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct StringToDoubleMap_MapEntry (mapentry)
const __meta_StringToDoubleMap_MapEntry = Ref{ProtoMeta}()
function meta(::Type{StringToDoubleMap_MapEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_StringToDoubleMap_MapEntry)
            __meta_StringToDoubleMap_MapEntry[] = target = ProtoMeta(StringToDoubleMap_MapEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => Float64]
            meta(target, StringToDoubleMap_MapEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_StringToDoubleMap_MapEntry[]
    end
end
function Base.getproperty(obj::StringToDoubleMap_MapEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct StringToDoubleMap <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function StringToDoubleMap(; kwargs...)
        obj = new(meta(StringToDoubleMap), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct StringToDoubleMap
const __meta_StringToDoubleMap = Ref{ProtoMeta}()
function meta(::Type{StringToDoubleMap})
    ProtoBuf.metalock() do
        if !isassigned(__meta_StringToDoubleMap)
            __meta_StringToDoubleMap[] = target = ProtoMeta(StringToDoubleMap)
            allflds = Pair{Symbol,Union{Type,String}}[:map => Base.Dict{AbstractString,Float64}]
            meta(target, StringToDoubleMap, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_StringToDoubleMap[]
    end
end
function Base.getproperty(obj::StringToDoubleMap, name::Symbol)
    if name === :map
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,Float64}
    else
        getfield(obj, name)
    end
end

mutable struct Int64ToDoubleMap_MapEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Int64ToDoubleMap_MapEntry(; kwargs...)
        obj = new(meta(Int64ToDoubleMap_MapEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Int64ToDoubleMap_MapEntry (mapentry)
const __meta_Int64ToDoubleMap_MapEntry = Ref{ProtoMeta}()
function meta(::Type{Int64ToDoubleMap_MapEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Int64ToDoubleMap_MapEntry)
            __meta_Int64ToDoubleMap_MapEntry[] = target = ProtoMeta(Int64ToDoubleMap_MapEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => Int64, :value => Float64]
            meta(target, Int64ToDoubleMap_MapEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Int64ToDoubleMap_MapEntry[]
    end
end
function Base.getproperty(obj::Int64ToDoubleMap_MapEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct Int64ToDoubleMap <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Int64ToDoubleMap(; kwargs...)
        obj = new(meta(Int64ToDoubleMap), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Int64ToDoubleMap
const __meta_Int64ToDoubleMap = Ref{ProtoMeta}()
function meta(::Type{Int64ToDoubleMap})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Int64ToDoubleMap)
            __meta_Int64ToDoubleMap[] = target = ProtoMeta(Int64ToDoubleMap)
            allflds = Pair{Symbol,Union{Type,String}}[:map => Base.Dict{Int64,Float64}]
            meta(target, Int64ToDoubleMap, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Int64ToDoubleMap[]
    end
end
function Base.getproperty(obj::Int64ToDoubleMap, name::Symbol)
    if name === :map
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{Int64,Float64}
    else
        getfield(obj, name)
    end
end

mutable struct StringVector <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function StringVector(; kwargs...)
        obj = new(meta(StringVector), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct StringVector
const __meta_StringVector = Ref{ProtoMeta}()
function meta(::Type{StringVector})
    ProtoBuf.metalock() do
        if !isassigned(__meta_StringVector)
            __meta_StringVector[] = target = ProtoMeta(StringVector)
            allflds = Pair{Symbol,Union{Type,String}}[:vector => Base.Vector{AbstractString}]
            meta(target, StringVector, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_StringVector[]
    end
end
function Base.getproperty(obj::StringVector, name::Symbol)
    if name === :vector
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct Int64Vector <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Int64Vector(; kwargs...)
        obj = new(meta(Int64Vector), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Int64Vector
const __meta_Int64Vector = Ref{ProtoMeta}()
function meta(::Type{Int64Vector})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Int64Vector)
            __meta_Int64Vector[] = target = ProtoMeta(Int64Vector)
            pack = Symbol[:vector]
            allflds = Pair{Symbol,Union{Type,String}}[:vector => Base.Vector{Int64}]
            meta(target, Int64Vector, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Int64Vector[]
    end
end
function Base.getproperty(obj::Int64Vector, name::Symbol)
    if name === :vector
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    else
        getfield(obj, name)
    end
end

mutable struct FloatVector <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function FloatVector(; kwargs...)
        obj = new(meta(FloatVector), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct FloatVector
const __meta_FloatVector = Ref{ProtoMeta}()
function meta(::Type{FloatVector})
    ProtoBuf.metalock() do
        if !isassigned(__meta_FloatVector)
            __meta_FloatVector[] = target = ProtoMeta(FloatVector)
            pack = Symbol[:vector]
            allflds = Pair{Symbol,Union{Type,String}}[:vector => Base.Vector{Float32}]
            meta(target, FloatVector, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_FloatVector[]
    end
end
function Base.getproperty(obj::FloatVector, name::Symbol)
    if name === :vector
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float32}
    else
        getfield(obj, name)
    end
end

mutable struct DoubleVector <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DoubleVector(; kwargs...)
        obj = new(meta(DoubleVector), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct DoubleVector
const __meta_DoubleVector = Ref{ProtoMeta}()
function meta(::Type{DoubleVector})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DoubleVector)
            __meta_DoubleVector[] = target = ProtoMeta(DoubleVector)
            pack = Symbol[:vector]
            allflds = Pair{Symbol,Union{Type,String}}[:vector => Base.Vector{Float64}]
            meta(target, DoubleVector, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DoubleVector[]
    end
end
function Base.getproperty(obj::DoubleVector, name::Symbol)
    if name === :vector
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
    else
        getfield(obj, name)
    end
end

mutable struct Int64Range <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Int64Range(; kwargs...)
        obj = new(meta(Int64Range), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Int64Range
const __meta_Int64Range = Ref{ProtoMeta}()
function meta(::Type{Int64Range})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Int64Range)
            __meta_Int64Range[] = target = ProtoMeta(Int64Range)
            allflds = Pair{Symbol,Union{Type,String}}[:minValue => Int64, :maxValue => Int64]
            meta(target, Int64Range, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Int64Range[]
    end
end
function Base.getproperty(obj::Int64Range, name::Symbol)
    if name === :minValue
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :maxValue
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct Int64Set <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Int64Set(; kwargs...)
        obj = new(meta(Int64Set), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Int64Set
const __meta_Int64Set = Ref{ProtoMeta}()
function meta(::Type{Int64Set})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Int64Set)
            __meta_Int64Set[] = target = ProtoMeta(Int64Set)
            pack = Symbol[:values]
            allflds = Pair{Symbol,Union{Type,String}}[:values => Base.Vector{Int64}]
            meta(target, Int64Set, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Int64Set[]
    end
end
function Base.getproperty(obj::Int64Set, name::Symbol)
    if name === :values
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    else
        getfield(obj, name)
    end
end

mutable struct DoubleRange <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DoubleRange(; kwargs...)
        obj = new(meta(DoubleRange), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct DoubleRange
const __meta_DoubleRange = Ref{ProtoMeta}()
function meta(::Type{DoubleRange})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DoubleRange)
            __meta_DoubleRange[] = target = ProtoMeta(DoubleRange)
            allflds = Pair{Symbol,Union{Type,String}}[:minValue => Float64, :maxValue => Float64]
            meta(target, DoubleRange, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DoubleRange[]
    end
end
function Base.getproperty(obj::DoubleRange, name::Symbol)
    if name === :minValue
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :maxValue
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

export StringToInt64Map_MapEntry, StringToInt64Map, Int64ToStringMap_MapEntry, Int64ToStringMap, StringToDoubleMap_MapEntry, StringToDoubleMap, Int64ToDoubleMap_MapEntry, Int64ToDoubleMap, StringVector, Int64Vector, FloatVector, DoubleVector, Int64Range, Int64Set, DoubleRange
# mapentries: "StringToInt64Map_MapEntry" => ("AbstractString", "Int64"), "Int64ToDoubleMap_MapEntry" => ("Int64", "Float64"), "Int64ToStringMap_MapEntry" => ("Int64", "AbstractString"), "StringToDoubleMap_MapEntry" => ("AbstractString", "Float64")
