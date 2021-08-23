# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

const Person_PhoneType = (;[
    Symbol("MOBILE") => Int32(0),
    Symbol("HOME") => Int32(1),
    Symbol("WORK") => Int32(2),
]...)

mutable struct Person_PhoneNumber <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Person_PhoneNumber(; kwargs...)
        obj = new(meta(Person_PhoneNumber), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Person_PhoneNumber
const __meta_Person_PhoneNumber = Ref{ProtoMeta}()
function meta(::Type{Person_PhoneNumber})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Person_PhoneNumber)
            __meta_Person_PhoneNumber[] = target = ProtoMeta(Person_PhoneNumber)
            allflds = Pair{Symbol,Union{Type,String}}[:number => AbstractString, :_type => Int32]
            meta(target, Person_PhoneNumber, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Person_PhoneNumber[]
    end
end
function Base.getproperty(obj::Person_PhoneNumber, name::Symbol)
    if name === :number
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :_type
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct Person <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Person(; kwargs...)
        obj = new(meta(Person), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Person
const __meta_Person = Ref{ProtoMeta}()
function meta(::Type{Person})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Person)
            __meta_Person[] = target = ProtoMeta(Person)
            allflds = Pair{Symbol,Union{Type,String}}[:name => AbstractString, :id => Int32, :email => AbstractString, :phones => Base.Vector{Person_PhoneNumber}]
            meta(target, Person, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Person[]
    end
end
function Base.getproperty(obj::Person, name::Symbol)
    if name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :id
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :email
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :phones
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Person_PhoneNumber}
    else
        getfield(obj, name)
    end
end

mutable struct AddressBook <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AddressBook(; kwargs...)
        obj = new(meta(AddressBook), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AddressBook
const __meta_AddressBook = Ref{ProtoMeta}()
function meta(::Type{AddressBook})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AddressBook)
            __meta_AddressBook[] = target = ProtoMeta(AddressBook)
            allflds = Pair{Symbol,Union{Type,String}}[:people => Base.Vector{Person}]
            meta(target, AddressBook, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_AddressBook[]
    end
end
function Base.getproperty(obj::AddressBook, name::Symbol)
    if name === :people
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Person}
    else
        getfield(obj, name)
    end
end

export Person_PhoneType, Person_PhoneNumber, Person, AddressBook
