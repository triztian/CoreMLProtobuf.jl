# syntax: proto3
using ProtoBuf
import ProtoBuf.meta
import ProtoBuf.google.protobuf

mutable struct DoubleMessage <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DoubleMessage(; kwargs...)
        obj = new(meta(DoubleMessage), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct DoubleMessage
const __meta_DoubleMessage = Ref{ProtoMeta}()
function meta(::Type{DoubleMessage})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DoubleMessage)
            __meta_DoubleMessage[] = target = ProtoMeta(DoubleMessage)
            fnum = Int[1,2,3,4,100,112,113]
            pack = Symbol[:repeated_double]
            allflds = Pair{Symbol,Union{Type,String}}[:double_value => Float64, :repeated_double => Base.Vector{Float64}, :nested_message => DoubleMessage, :repeated_nested_message => Base.Vector{DoubleMessage}, :double_wrapper => ProtoBuf.google.protobuf.DoubleValue, :str_value => AbstractString, :num_value => Int64]
            oneofs = Int[0,0,0,0,0,1,1]
            oneof_names = Symbol[Symbol("value")]
            meta(target, DoubleMessage, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_DoubleMessage[]
    end
end
function Base.getproperty(obj::DoubleMessage, name::Symbol)
    if name === :double_value
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :repeated_double
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
    elseif name === :nested_message
        return (obj.__protobuf_jl_internal_values[name])::DoubleMessage
    elseif name === :repeated_nested_message
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{DoubleMessage}
    elseif name === :double_wrapper
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf.DoubleValue
    elseif name === :str_value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :num_value
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct StructMessage <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function StructMessage(; kwargs...)
        obj = new(meta(StructMessage), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct StructMessage
const __meta_StructMessage = Ref{ProtoMeta}()
function meta(::Type{StructMessage})
    ProtoBuf.metalock() do
        if !isassigned(__meta_StructMessage)
            __meta_StructMessage[] = target = ProtoMeta(StructMessage)
            allflds = Pair{Symbol,Union{Type,String}}[:struct => ProtoBuf.google.protobuf.Struct]
            meta(target, StructMessage, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_StructMessage[]
    end
end
function Base.getproperty(obj::StructMessage, name::Symbol)
    if name === :struct
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf.Struct
    else
        getfield(obj, name)
    end
end

mutable struct ValueMessage <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ValueMessage(; kwargs...)
        obj = new(meta(ValueMessage), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ValueMessage
const __meta_ValueMessage = Ref{ProtoMeta}()
function meta(::Type{ValueMessage})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ValueMessage)
            __meta_ValueMessage[] = target = ProtoMeta(ValueMessage)
            allflds = Pair{Symbol,Union{Type,String}}[:value => ProtoBuf.google.protobuf.Value]
            meta(target, ValueMessage, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ValueMessage[]
    end
end
function Base.getproperty(obj::ValueMessage, name::Symbol)
    if name === :value
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf.Value
    else
        getfield(obj, name)
    end
end

mutable struct ListValueMessage <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ListValueMessage(; kwargs...)
        obj = new(meta(ListValueMessage), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ListValueMessage
const __meta_ListValueMessage = Ref{ProtoMeta}()
function meta(::Type{ListValueMessage})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ListValueMessage)
            __meta_ListValueMessage[] = target = ProtoMeta(ListValueMessage)
            allflds = Pair{Symbol,Union{Type,String}}[:shopping_list => ProtoBuf.google.protobuf.ListValue]
            meta(target, ListValueMessage, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ListValueMessage[]
    end
end
function Base.getproperty(obj::ListValueMessage, name::Symbol)
    if name === :shopping_list
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf.ListValue
    else
        getfield(obj, name)
    end
end

mutable struct RequestMessage <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RequestMessage(; kwargs...)
        obj = new(meta(RequestMessage), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RequestMessage
const __meta_RequestMessage = Ref{ProtoMeta}()
function meta(::Type{RequestMessage})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RequestMessage)
            __meta_RequestMessage[] = target = ProtoMeta(RequestMessage)
            allflds = Pair{Symbol,Union{Type,String}}[:content => AbstractString]
            meta(target, RequestMessage, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RequestMessage[]
    end
end
function Base.getproperty(obj::RequestMessage, name::Symbol)
    if name === :content
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct AnyData_MapDataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AnyData_MapDataEntry(; kwargs...)
        obj = new(meta(AnyData_MapDataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AnyData_MapDataEntry (mapentry)
const __meta_AnyData_MapDataEntry = Ref{ProtoMeta}()
function meta(::Type{AnyData_MapDataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AnyData_MapDataEntry)
            __meta_AnyData_MapDataEntry[] = target = ProtoMeta(AnyData_MapDataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, AnyData_MapDataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_AnyData_MapDataEntry[]
    end
end
function Base.getproperty(obj::AnyData_MapDataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct AnyData <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AnyData(; kwargs...)
        obj = new(meta(AnyData), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AnyData
const __meta_AnyData = Ref{ProtoMeta}()
function meta(::Type{AnyData})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AnyData)
            __meta_AnyData[] = target = ProtoMeta(AnyData)
            fnum = Int[1,2,3,4,7,8,9]
            allflds = Pair{Symbol,Union{Type,String}}[:attr => Int32, :str => AbstractString, :msgs => Base.Vector{AbstractString}, :nested_data => AnyData, :map_data => Base.Dict{AbstractString,AbstractString}, :struct_data => ProtoBuf.google.protobuf.Struct, :repeated_data => Base.Vector{AnyData}]
            meta(target, AnyData, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_AnyData[]
    end
end
function Base.getproperty(obj::AnyData, name::Symbol)
    if name === :attr
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :str
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :msgs
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    elseif name === :nested_data
        return (obj.__protobuf_jl_internal_values[name])::AnyData
    elseif name === :map_data
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    elseif name === :struct_data
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf.Struct
    elseif name === :repeated_data
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AnyData}
    else
        getfield(obj, name)
    end
end

mutable struct AnyMessage <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AnyMessage(; kwargs...)
        obj = new(meta(AnyMessage), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AnyMessage
const __meta_AnyMessage = Ref{ProtoMeta}()
function meta(::Type{AnyMessage})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AnyMessage)
            __meta_AnyMessage[] = target = ProtoMeta(AnyMessage)
            allflds = Pair{Symbol,Union{Type,String}}[:any => ProtoBuf.google.protobuf._Any, :data => AnyData]
            meta(target, AnyMessage, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_AnyMessage[]
    end
end
function Base.getproperty(obj::AnyMessage, name::Symbol)
    if name === :any
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf._Any
    elseif name === :data
        return (obj.__protobuf_jl_internal_values[name])::AnyData
    else
        getfield(obj, name)
    end
end

mutable struct StringtoIntMap_MapEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function StringtoIntMap_MapEntry(; kwargs...)
        obj = new(meta(StringtoIntMap_MapEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct StringtoIntMap_MapEntry (mapentry)
const __meta_StringtoIntMap_MapEntry = Ref{ProtoMeta}()
function meta(::Type{StringtoIntMap_MapEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_StringtoIntMap_MapEntry)
            __meta_StringtoIntMap_MapEntry[] = target = ProtoMeta(StringtoIntMap_MapEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => Int32]
            meta(target, StringtoIntMap_MapEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_StringtoIntMap_MapEntry[]
    end
end
function Base.getproperty(obj::StringtoIntMap_MapEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct StringtoIntMap <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function StringtoIntMap(; kwargs...)
        obj = new(meta(StringtoIntMap), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct StringtoIntMap
const __meta_StringtoIntMap = Ref{ProtoMeta}()
function meta(::Type{StringtoIntMap})
    ProtoBuf.metalock() do
        if !isassigned(__meta_StringtoIntMap)
            __meta_StringtoIntMap[] = target = ProtoMeta(StringtoIntMap)
            allflds = Pair{Symbol,Union{Type,String}}[:map => Base.Dict{AbstractString,Int32}]
            meta(target, StringtoIntMap, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_StringtoIntMap[]
    end
end
function Base.getproperty(obj::StringtoIntMap, name::Symbol)
    if name === :map
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,Int32}
    else
        getfield(obj, name)
    end
end

mutable struct IntToStringMap_MapEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function IntToStringMap_MapEntry(; kwargs...)
        obj = new(meta(IntToStringMap_MapEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct IntToStringMap_MapEntry (mapentry)
const __meta_IntToStringMap_MapEntry = Ref{ProtoMeta}()
function meta(::Type{IntToStringMap_MapEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_IntToStringMap_MapEntry)
            __meta_IntToStringMap_MapEntry[] = target = ProtoMeta(IntToStringMap_MapEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => Int32, :value => AbstractString]
            meta(target, IntToStringMap_MapEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_IntToStringMap_MapEntry[]
    end
end
function Base.getproperty(obj::IntToStringMap_MapEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct IntToStringMap <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function IntToStringMap(; kwargs...)
        obj = new(meta(IntToStringMap), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct IntToStringMap
const __meta_IntToStringMap = Ref{ProtoMeta}()
function meta(::Type{IntToStringMap})
    ProtoBuf.metalock() do
        if !isassigned(__meta_IntToStringMap)
            __meta_IntToStringMap[] = target = ProtoMeta(IntToStringMap)
            allflds = Pair{Symbol,Union{Type,String}}[:map => Base.Dict{Int32,AbstractString}]
            meta(target, IntToStringMap, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_IntToStringMap[]
    end
end
function Base.getproperty(obj::IntToStringMap, name::Symbol)
    if name === :map
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{Int32,AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct MixedMap_MapEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function MixedMap_MapEntry(; kwargs...)
        obj = new(meta(MixedMap_MapEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct MixedMap_MapEntry (mapentry)
const __meta_MixedMap_MapEntry = Ref{ProtoMeta}()
function meta(::Type{MixedMap_MapEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_MixedMap_MapEntry)
            __meta_MixedMap_MapEntry[] = target = ProtoMeta(MixedMap_MapEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => Float32]
            meta(target, MixedMap_MapEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_MixedMap_MapEntry[]
    end
end
function Base.getproperty(obj::MixedMap_MapEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct MixedMap <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function MixedMap(; kwargs...)
        obj = new(meta(MixedMap), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct MixedMap
const __meta_MixedMap = Ref{ProtoMeta}()
function meta(::Type{MixedMap})
    ProtoBuf.metalock() do
        if !isassigned(__meta_MixedMap)
            __meta_MixedMap[] = target = ProtoMeta(MixedMap)
            allflds = Pair{Symbol,Union{Type,String}}[:msg => AbstractString, :map => Base.Dict{AbstractString,Float32}, :int_value => Int32]
            meta(target, MixedMap, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_MixedMap[]
    end
end
function Base.getproperty(obj::MixedMap, name::Symbol)
    if name === :msg
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :map
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,Float32}
    elseif name === :int_value
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

const MixedMap2_E = (;[
    Symbol("E0") => Int32(0),
    Symbol("E1") => Int32(1),
    Symbol("E2") => Int32(2),
    Symbol("E3") => Int32(3),
]...)

mutable struct MixedMap2_MapEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function MixedMap2_MapEntry(; kwargs...)
        obj = new(meta(MixedMap2_MapEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct MixedMap2_MapEntry (mapentry)
const __meta_MixedMap2_MapEntry = Ref{ProtoMeta}()
function meta(::Type{MixedMap2_MapEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_MixedMap2_MapEntry)
            __meta_MixedMap2_MapEntry[] = target = ProtoMeta(MixedMap2_MapEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => Int32, :value => Bool]
            meta(target, MixedMap2_MapEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_MixedMap2_MapEntry[]
    end
end
function Base.getproperty(obj::MixedMap2_MapEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct MixedMap2 <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function MixedMap2(; kwargs...)
        obj = new(meta(MixedMap2), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct MixedMap2
const __meta_MixedMap2 = Ref{ProtoMeta}()
function meta(::Type{MixedMap2})
    ProtoBuf.metalock() do
        if !isassigned(__meta_MixedMap2)
            __meta_MixedMap2[] = target = ProtoMeta(MixedMap2)
            fnum = Int[1,2,4]
            allflds = Pair{Symbol,Union{Type,String}}[:map => Base.Dict{Int32,Bool}, :ee => Int32, :msg => AbstractString]
            meta(target, MixedMap2, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_MixedMap2[]
    end
end
function Base.getproperty(obj::MixedMap2, name::Symbol)
    if name === :map
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{Int32,Bool}
    elseif name === :ee
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :msg
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct MessageMap_M <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function MessageMap_M(; kwargs...)
        obj = new(meta(MessageMap_M), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct MessageMap_M
const __meta_MessageMap_M = Ref{ProtoMeta}()
function meta(::Type{MessageMap_M})
    ProtoBuf.metalock() do
        if !isassigned(__meta_MessageMap_M)
            __meta_MessageMap_M[] = target = ProtoMeta(MessageMap_M)
            allflds = Pair{Symbol,Union{Type,String}}[:inner_int => Int32, :inner_text => AbstractString]
            meta(target, MessageMap_M, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_MessageMap_M[]
    end
end
function Base.getproperty(obj::MessageMap_M, name::Symbol)
    if name === :inner_int
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :inner_text
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct MessageMap_MapEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function MessageMap_MapEntry(; kwargs...)
        obj = new(meta(MessageMap_MapEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct MessageMap_MapEntry (mapentry)
const __meta_MessageMap_MapEntry = Ref{ProtoMeta}()
function meta(::Type{MessageMap_MapEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_MessageMap_MapEntry)
            __meta_MessageMap_MapEntry[] = target = ProtoMeta(MessageMap_MapEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => MessageMap_M]
            meta(target, MessageMap_MapEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_MessageMap_MapEntry[]
    end
end
function Base.getproperty(obj::MessageMap_MapEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::MessageMap_M
    else
        getfield(obj, name)
    end
end

mutable struct MessageMap <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function MessageMap(; kwargs...)
        obj = new(meta(MessageMap), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct MessageMap
const __meta_MessageMap = Ref{ProtoMeta}()
function meta(::Type{MessageMap})
    ProtoBuf.metalock() do
        if !isassigned(__meta_MessageMap)
            __meta_MessageMap[] = target = ProtoMeta(MessageMap)
            allflds = Pair{Symbol,Union{Type,String}}[:map => Base.Dict{AbstractString,MessageMap_M}]
            meta(target, MessageMap, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_MessageMap[]
    end
end
function Base.getproperty(obj::MessageMap, name::Symbol)
    if name === :map
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,MessageMap_M}
    else
        getfield(obj, name)
    end
end

mutable struct DoubleValueMessage <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DoubleValueMessage(; kwargs...)
        obj = new(meta(DoubleValueMessage), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct DoubleValueMessage
const __meta_DoubleValueMessage = Ref{ProtoMeta}()
function meta(::Type{DoubleValueMessage})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DoubleValueMessage)
            __meta_DoubleValueMessage[] = target = ProtoMeta(DoubleValueMessage)
            allflds = Pair{Symbol,Union{Type,String}}[:double => ProtoBuf.google.protobuf.DoubleValue]
            meta(target, DoubleValueMessage, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DoubleValueMessage[]
    end
end
function Base.getproperty(obj::DoubleValueMessage, name::Symbol)
    if name === :double
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf.DoubleValue
    else
        getfield(obj, name)
    end
end

mutable struct DefaultValueTestCases <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DefaultValueTestCases(; kwargs...)
        obj = new(meta(DefaultValueTestCases), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct DefaultValueTestCases
const __meta_DefaultValueTestCases = Ref{ProtoMeta}()
function meta(::Type{DefaultValueTestCases})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DefaultValueTestCases)
            __meta_DefaultValueTestCases[] = target = ProtoMeta(DefaultValueTestCases)
            fnum = Int[1,2,3,4,5,6,7,201,202,203,204,205,206,207,208,209,210,212,213,214,215,216,217,218,219,301,302,303,304,305,306,307,308,401,402,403,404,405,406,407,408,409,501,502]
            allflds = Pair{Symbol,Union{Type,String}}[:empty_double => DoubleMessage, :double_with_default_value => DoubleMessage, :double_with_nondefault_value => DoubleMessage, :repeated_double => DoubleMessage, :nested_message => DoubleMessage, :repeated_nested_message => DoubleMessage, :double_message_with_oneof => DoubleMessage, :empty_struct => StructMessage, :empty_struct2 => StructMessage, :struct_with_null_value => StructMessage, :struct_with_values => StructMessage, :struct_with_nested_struct => StructMessage, :struct_with_nested_list => StructMessage, :struct_with_list_of_nulls => StructMessage, :struct_with_list_of_lists => StructMessage, :struct_with_list_of_structs => StructMessage, :top_level_struct => ProtoBuf.google.protobuf.Struct, :value_wrapper_simple => ValueMessage, :value_wrapper_with_struct => ValueMessage, :value_wrapper_with_list => ValueMessage, :list_value_wrapper => ListValueMessage, :top_level_value_simple => ProtoBuf.google.protobuf.Value, :top_level_value_with_struct => ProtoBuf.google.protobuf.Value, :top_level_value_with_list => ProtoBuf.google.protobuf.Value, :top_level_listvalue => ProtoBuf.google.protobuf.ListValue, :empty_any => AnyMessage, :type_only_any => AnyMessage, :recursive_any => AnyMessage, :any_with_message_value => AnyMessage, :any_with_nested_message => AnyMessage, :any_with_message_containing_map => AnyMessage, :any_with_message_containing_struct => AnyMessage, :top_level_any => ProtoBuf.google.protobuf._Any, :empty_map => StringtoIntMap, :string_to_int => StringtoIntMap, :int_to_string => IntToStringMap, :mixed1 => MixedMap, :mixed2 => MixedMap2, :empty_mixed2 => MixedMap2, :map_of_objects => MessageMap, :mixed_empty => MixedMap, :message_map_empty => MessageMap, :double_value => DoubleValueMessage, :double_value_default => DoubleValueMessage]
            meta(target, DefaultValueTestCases, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DefaultValueTestCases[]
    end
end
function Base.getproperty(obj::DefaultValueTestCases, name::Symbol)
    if name === :empty_double
        return (obj.__protobuf_jl_internal_values[name])::DoubleMessage
    elseif name === :double_with_default_value
        return (obj.__protobuf_jl_internal_values[name])::DoubleMessage
    elseif name === :double_with_nondefault_value
        return (obj.__protobuf_jl_internal_values[name])::DoubleMessage
    elseif name === :repeated_double
        return (obj.__protobuf_jl_internal_values[name])::DoubleMessage
    elseif name === :nested_message
        return (obj.__protobuf_jl_internal_values[name])::DoubleMessage
    elseif name === :repeated_nested_message
        return (obj.__protobuf_jl_internal_values[name])::DoubleMessage
    elseif name === :double_message_with_oneof
        return (obj.__protobuf_jl_internal_values[name])::DoubleMessage
    elseif name === :empty_struct
        return (obj.__protobuf_jl_internal_values[name])::StructMessage
    elseif name === :empty_struct2
        return (obj.__protobuf_jl_internal_values[name])::StructMessage
    elseif name === :struct_with_null_value
        return (obj.__protobuf_jl_internal_values[name])::StructMessage
    elseif name === :struct_with_values
        return (obj.__protobuf_jl_internal_values[name])::StructMessage
    elseif name === :struct_with_nested_struct
        return (obj.__protobuf_jl_internal_values[name])::StructMessage
    elseif name === :struct_with_nested_list
        return (obj.__protobuf_jl_internal_values[name])::StructMessage
    elseif name === :struct_with_list_of_nulls
        return (obj.__protobuf_jl_internal_values[name])::StructMessage
    elseif name === :struct_with_list_of_lists
        return (obj.__protobuf_jl_internal_values[name])::StructMessage
    elseif name === :struct_with_list_of_structs
        return (obj.__protobuf_jl_internal_values[name])::StructMessage
    elseif name === :top_level_struct
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf.Struct
    elseif name === :value_wrapper_simple
        return (obj.__protobuf_jl_internal_values[name])::ValueMessage
    elseif name === :value_wrapper_with_struct
        return (obj.__protobuf_jl_internal_values[name])::ValueMessage
    elseif name === :value_wrapper_with_list
        return (obj.__protobuf_jl_internal_values[name])::ValueMessage
    elseif name === :list_value_wrapper
        return (obj.__protobuf_jl_internal_values[name])::ListValueMessage
    elseif name === :top_level_value_simple
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf.Value
    elseif name === :top_level_value_with_struct
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf.Value
    elseif name === :top_level_value_with_list
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf.Value
    elseif name === :top_level_listvalue
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf.ListValue
    elseif name === :empty_any
        return (obj.__protobuf_jl_internal_values[name])::AnyMessage
    elseif name === :type_only_any
        return (obj.__protobuf_jl_internal_values[name])::AnyMessage
    elseif name === :recursive_any
        return (obj.__protobuf_jl_internal_values[name])::AnyMessage
    elseif name === :any_with_message_value
        return (obj.__protobuf_jl_internal_values[name])::AnyMessage
    elseif name === :any_with_nested_message
        return (obj.__protobuf_jl_internal_values[name])::AnyMessage
    elseif name === :any_with_message_containing_map
        return (obj.__protobuf_jl_internal_values[name])::AnyMessage
    elseif name === :any_with_message_containing_struct
        return (obj.__protobuf_jl_internal_values[name])::AnyMessage
    elseif name === :top_level_any
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf._Any
    elseif name === :empty_map
        return (obj.__protobuf_jl_internal_values[name])::StringtoIntMap
    elseif name === :string_to_int
        return (obj.__protobuf_jl_internal_values[name])::StringtoIntMap
    elseif name === :int_to_string
        return (obj.__protobuf_jl_internal_values[name])::IntToStringMap
    elseif name === :mixed1
        return (obj.__protobuf_jl_internal_values[name])::MixedMap
    elseif name === :mixed2
        return (obj.__protobuf_jl_internal_values[name])::MixedMap2
    elseif name === :empty_mixed2
        return (obj.__protobuf_jl_internal_values[name])::MixedMap2
    elseif name === :map_of_objects
        return (obj.__protobuf_jl_internal_values[name])::MessageMap
    elseif name === :mixed_empty
        return (obj.__protobuf_jl_internal_values[name])::MixedMap
    elseif name === :message_map_empty
        return (obj.__protobuf_jl_internal_values[name])::MessageMap
    elseif name === :double_value
        return (obj.__protobuf_jl_internal_values[name])::DoubleValueMessage
    elseif name === :double_value_default
        return (obj.__protobuf_jl_internal_values[name])::DoubleValueMessage
    else
        getfield(obj, name)
    end
end

# service methods for DefaultValueTestService
const _DefaultValueTestService_methods = MethodDescriptor[
        MethodDescriptor("Call", 1, RequestMessage, DefaultValueTestCases)
    ] # const _DefaultValueTestService_methods
const _DefaultValueTestService_desc = ServiceDescriptor("google.protobuf.testing.DefaultValueTestService", 1, _DefaultValueTestService_methods)

DefaultValueTestService(impl::Module) = ProtoService(_DefaultValueTestService_desc, impl)

mutable struct DefaultValueTestServiceStub <: AbstractProtoServiceStub{false}
    impl::ProtoServiceStub
    DefaultValueTestServiceStub(channel::ProtoRpcChannel) = new(ProtoServiceStub(_DefaultValueTestService_desc, channel))
end # mutable struct DefaultValueTestServiceStub

mutable struct DefaultValueTestServiceBlockingStub <: AbstractProtoServiceStub{true}
    impl::ProtoServiceBlockingStub
    DefaultValueTestServiceBlockingStub(channel::ProtoRpcChannel) = new(ProtoServiceBlockingStub(_DefaultValueTestService_desc, channel))
end # mutable struct DefaultValueTestServiceBlockingStub

Call(stub::DefaultValueTestServiceStub, controller::ProtoRpcController, inp::RequestMessage, done::Function) = call_method(stub.impl, _DefaultValueTestService_methods[1], controller, inp, done)
Call(stub::DefaultValueTestServiceBlockingStub, controller::ProtoRpcController, inp::RequestMessage) = call_method(stub.impl, _DefaultValueTestService_methods[1], controller, inp)

export DefaultValueTestCases, DoubleMessage, StructMessage, ValueMessage, ListValueMessage, RequestMessage, AnyMessage, AnyData_MapDataEntry, AnyData, StringtoIntMap_MapEntry, StringtoIntMap, IntToStringMap_MapEntry, IntToStringMap, MixedMap_MapEntry, MixedMap, MixedMap2_E, MixedMap2_MapEntry, MixedMap2, MessageMap_M, MessageMap_MapEntry, MessageMap, DoubleValueMessage, DefaultValueTestService, DefaultValueTestServiceStub, DefaultValueTestServiceBlockingStub, Call
# mapentries: "AnyData_MapDataEntry" => ("AbstractString", "AbstractString"), "StringtoIntMap_MapEntry" => ("AbstractString", "Int32"), "IntToStringMap_MapEntry" => ("Int32", "AbstractString"), "MixedMap_MapEntry" => ("AbstractString", "Float32"), "MixedMap2_MapEntry" => ("Int32", "Bool"), "MessageMap_MapEntry" => ("AbstractString", "MessageMap_M")
