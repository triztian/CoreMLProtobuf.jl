# syntax: proto3
using ProtoBuf
import ProtoBuf.meta
import ProtoBuf.google.protobuf

mutable struct AnyWrapper <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AnyWrapper(; kwargs...)
        obj = new(meta(AnyWrapper), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AnyWrapper
const __meta_AnyWrapper = Ref{ProtoMeta}()
function meta(::Type{AnyWrapper})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AnyWrapper)
            __meta_AnyWrapper[] = target = ProtoMeta(AnyWrapper)
            allflds = Pair{Symbol,Union{Type,String}}[:any => ProtoBuf.google.protobuf._Any]
            meta(target, AnyWrapper, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_AnyWrapper[]
    end
end
function Base.getproperty(obj::AnyWrapper, name::Symbol)
    if name === :any
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf._Any
    else
        getfield(obj, name)
    end
end

mutable struct AnyTestCases <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AnyTestCases(; kwargs...)
        obj = new(meta(AnyTestCases), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AnyTestCases
const __meta_AnyTestCases = Ref{ProtoMeta}()
function meta(::Type{AnyTestCases})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AnyTestCases)
            __meta_AnyTestCases[] = target = ProtoMeta(AnyTestCases)
            fnum = Int[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,50,51]
            allflds = Pair{Symbol,Union{Type,String}}[:empty_any => AnyWrapper, :type_only_any => AnyWrapper, :wrapper_any => AnyWrapper, :any_with_timestamp_value => AnyWrapper, :any_with_duration_value => AnyWrapper, :any_with_struct_value => AnyWrapper, :recursive_any => AnyWrapper, :any_with_message_value => AnyWrapper, :any_with_nested_message => AnyWrapper, :any_with_message_with_wrapper_type => AnyWrapper, :any_with_message_with_timestamp => AnyWrapper, :any_with_message_containing_map => AnyWrapper, :any_with_message_containing_struct => AnyWrapper, :any_with_message_containing_repeated_message => AnyWrapper, :recursive_any_with_type_field_at_end => AnyWrapper, :top_level_any => ProtoBuf.google.protobuf._Any, :top_level_any_with_type_field_at_end => ProtoBuf.google.protobuf._Any]
            meta(target, AnyTestCases, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_AnyTestCases[]
    end
end
function Base.getproperty(obj::AnyTestCases, name::Symbol)
    if name === :empty_any
        return (obj.__protobuf_jl_internal_values[name])::AnyWrapper
    elseif name === :type_only_any
        return (obj.__protobuf_jl_internal_values[name])::AnyWrapper
    elseif name === :wrapper_any
        return (obj.__protobuf_jl_internal_values[name])::AnyWrapper
    elseif name === :any_with_timestamp_value
        return (obj.__protobuf_jl_internal_values[name])::AnyWrapper
    elseif name === :any_with_duration_value
        return (obj.__protobuf_jl_internal_values[name])::AnyWrapper
    elseif name === :any_with_struct_value
        return (obj.__protobuf_jl_internal_values[name])::AnyWrapper
    elseif name === :recursive_any
        return (obj.__protobuf_jl_internal_values[name])::AnyWrapper
    elseif name === :any_with_message_value
        return (obj.__protobuf_jl_internal_values[name])::AnyWrapper
    elseif name === :any_with_nested_message
        return (obj.__protobuf_jl_internal_values[name])::AnyWrapper
    elseif name === :any_with_message_with_wrapper_type
        return (obj.__protobuf_jl_internal_values[name])::AnyWrapper
    elseif name === :any_with_message_with_timestamp
        return (obj.__protobuf_jl_internal_values[name])::AnyWrapper
    elseif name === :any_with_message_containing_map
        return (obj.__protobuf_jl_internal_values[name])::AnyWrapper
    elseif name === :any_with_message_containing_struct
        return (obj.__protobuf_jl_internal_values[name])::AnyWrapper
    elseif name === :any_with_message_containing_repeated_message
        return (obj.__protobuf_jl_internal_values[name])::AnyWrapper
    elseif name === :recursive_any_with_type_field_at_end
        return (obj.__protobuf_jl_internal_values[name])::AnyWrapper
    elseif name === :top_level_any
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf._Any
    elseif name === :top_level_any_with_type_field_at_end
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf._Any
    else
        getfield(obj, name)
    end
end

mutable struct Data_MapDataEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Data_MapDataEntry(; kwargs...)
        obj = new(meta(Data_MapDataEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Data_MapDataEntry (mapentry)
const __meta_Data_MapDataEntry = Ref{ProtoMeta}()
function meta(::Type{Data_MapDataEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Data_MapDataEntry)
            __meta_Data_MapDataEntry[] = target = ProtoMeta(Data_MapDataEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, Data_MapDataEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Data_MapDataEntry[]
    end
end
function Base.getproperty(obj::Data_MapDataEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct Data <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Data(; kwargs...)
        obj = new(meta(Data), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Data
const __meta_Data = Ref{ProtoMeta}()
function meta(::Type{Data})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Data)
            __meta_Data[] = target = ProtoMeta(Data)
            allflds = Pair{Symbol,Union{Type,String}}[:attr => Int32, :str => AbstractString, :msgs => Base.Vector{AbstractString}, :nested_data => Data, :int_wrapper => ProtoBuf.google.protobuf.Int32Value, :time => ProtoBuf.google.protobuf.Timestamp, :map_data => Base.Dict{AbstractString,AbstractString}, :struct_data => ProtoBuf.google.protobuf.Struct, :repeated_data => Base.Vector{Data}]
            meta(target, Data, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Data[]
    end
end
function Base.getproperty(obj::Data, name::Symbol)
    if name === :attr
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :str
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :msgs
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    elseif name === :nested_data
        return (obj.__protobuf_jl_internal_values[name])::Data
    elseif name === :int_wrapper
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf.Int32Value
    elseif name === :time
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf.Timestamp
    elseif name === :map_data
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    elseif name === :struct_data
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf.Struct
    elseif name === :repeated_data
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Data}
    else
        getfield(obj, name)
    end
end

mutable struct Imports <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Imports(; kwargs...)
        obj = new(meta(Imports), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Imports
const __meta_Imports = Ref{ProtoMeta}()
function meta(::Type{Imports})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Imports)
            __meta_Imports[] = target = ProtoMeta(Imports)
            fnum = Int[1,2,3,4,5,100]
            allflds = Pair{Symbol,Union{Type,String}}[:dbl => ProtoBuf.google.protobuf.DoubleValue, :struct => ProtoBuf.google.protobuf.Struct, :timestamp => ProtoBuf.google.protobuf.Timestamp, :duration => ProtoBuf.google.protobuf.Duration, :i32 => ProtoBuf.google.protobuf.Int32Value, :data => Data]
            meta(target, Imports, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Imports[]
    end
end
function Base.getproperty(obj::Imports, name::Symbol)
    if name === :dbl
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf.DoubleValue
    elseif name === :struct
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf.Struct
    elseif name === :timestamp
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf.Timestamp
    elseif name === :duration
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf.Duration
    elseif name === :i32
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf.Int32Value
    elseif name === :data
        return (obj.__protobuf_jl_internal_values[name])::Data
    else
        getfield(obj, name)
    end
end

mutable struct AnyIn <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AnyIn(; kwargs...)
        obj = new(meta(AnyIn), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AnyIn
const __meta_AnyIn = Ref{ProtoMeta}()
function meta(::Type{AnyIn})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AnyIn)
            __meta_AnyIn[] = target = ProtoMeta(AnyIn)
            allflds = Pair{Symbol,Union{Type,String}}[:something => AbstractString, :any => ProtoBuf.google.protobuf._Any]
            meta(target, AnyIn, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_AnyIn[]
    end
end
function Base.getproperty(obj::AnyIn, name::Symbol)
    if name === :something
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :any
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf._Any
    else
        getfield(obj, name)
    end
end

mutable struct AnyOut <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AnyOut(; kwargs...)
        obj = new(meta(AnyOut), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AnyOut
const __meta_AnyOut = Ref{ProtoMeta}()
function meta(::Type{AnyOut})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AnyOut)
            __meta_AnyOut[] = target = ProtoMeta(AnyOut)
            allflds = Pair{Symbol,Union{Type,String}}[:any => ProtoBuf.google.protobuf._Any]
            meta(target, AnyOut, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_AnyOut[]
    end
end
function Base.getproperty(obj::AnyOut, name::Symbol)
    if name === :any
        return (obj.__protobuf_jl_internal_values[name])::ProtoBuf.google.protobuf._Any
    else
        getfield(obj, name)
    end
end

mutable struct AnyM <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AnyM(; kwargs...)
        obj = new(meta(AnyM), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AnyM
const __meta_AnyM = Ref{ProtoMeta}()
function meta(::Type{AnyM})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AnyM)
            __meta_AnyM[] = target = ProtoMeta(AnyM)
            allflds = Pair{Symbol,Union{Type,String}}[:foo => AbstractString]
            meta(target, AnyM, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_AnyM[]
    end
end
function Base.getproperty(obj::AnyM, name::Symbol)
    if name === :foo
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

# service methods for AnyTestService
const _AnyTestService_methods = MethodDescriptor[
        MethodDescriptor("Call", 1, AnyTestCases, AnyTestCases),
        MethodDescriptor("Call1", 2, Imports, Imports)
    ] # const _AnyTestService_methods
const _AnyTestService_desc = ServiceDescriptor("google.protobuf.testing.AnyTestService", 1, _AnyTestService_methods)

AnyTestService(impl::Module) = ProtoService(_AnyTestService_desc, impl)

mutable struct AnyTestServiceStub <: AbstractProtoServiceStub{false}
    impl::ProtoServiceStub
    AnyTestServiceStub(channel::ProtoRpcChannel) = new(ProtoServiceStub(_AnyTestService_desc, channel))
end # mutable struct AnyTestServiceStub

mutable struct AnyTestServiceBlockingStub <: AbstractProtoServiceStub{true}
    impl::ProtoServiceBlockingStub
    AnyTestServiceBlockingStub(channel::ProtoRpcChannel) = new(ProtoServiceBlockingStub(_AnyTestService_desc, channel))
end # mutable struct AnyTestServiceBlockingStub

Call(stub::AnyTestServiceStub, controller::ProtoRpcController, inp::AnyTestCases, done::Function) = call_method(stub.impl, _AnyTestService_methods[1], controller, inp, done)
Call(stub::AnyTestServiceBlockingStub, controller::ProtoRpcController, inp::AnyTestCases) = call_method(stub.impl, _AnyTestService_methods[1], controller, inp)

Call1(stub::AnyTestServiceStub, controller::ProtoRpcController, inp::Imports, done::Function) = call_method(stub.impl, _AnyTestService_methods[2], controller, inp, done)
Call1(stub::AnyTestServiceBlockingStub, controller::ProtoRpcController, inp::Imports) = call_method(stub.impl, _AnyTestService_methods[2], controller, inp)

export AnyTestCases, AnyWrapper, Imports, Data_MapDataEntry, Data, AnyIn, AnyOut, AnyM, AnyTestService, AnyTestServiceStub, AnyTestServiceBlockingStub, Call, Call1
# mapentries: "Data_MapDataEntry" => ("AbstractString", "AbstractString")
