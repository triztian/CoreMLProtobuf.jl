# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

const NeuralNetworkMultiArrayShapeMapping = (;[
    Symbol("RANK5_ARRAY_MAPPING") => Int32(0),
    Symbol("EXACT_ARRAY_MAPPING") => Int32(1),
]...)

const NeuralNetworkImageShapeMapping = (;[
    Symbol("RANK5_IMAGE_MAPPING") => Int32(0),
    Symbol("RANK4_IMAGE_MAPPING") => Int32(1),
]...)

const ScatterMode = (;[
    Symbol("SCATTER_UPDATE") => Int32(0),
    Symbol("SCATTER_ADD") => Int32(1),
    Symbol("SCATTER_SUB") => Int32(2),
    Symbol("SCATTER_MUL") => Int32(3),
    Symbol("SCATTER_DIV") => Int32(4),
    Symbol("SCATTER_MAX") => Int32(5),
    Symbol("SCATTER_MIN") => Int32(6),
]...)

mutable struct NeuralNetworkImageScaler <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function NeuralNetworkImageScaler(; kwargs...)
        obj = new(meta(NeuralNetworkImageScaler), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct NeuralNetworkImageScaler
const __meta_NeuralNetworkImageScaler = Ref{ProtoMeta}()
function meta(::Type{NeuralNetworkImageScaler})
    ProtoBuf.metalock() do
        if !isassigned(__meta_NeuralNetworkImageScaler)
            __meta_NeuralNetworkImageScaler[] = target = ProtoMeta(NeuralNetworkImageScaler)
            fnum = Int[10,20,21,22,30]
            allflds = Pair{Symbol,Union{Type,String}}[:channelScale => Float32, :blueBias => Float32, :greenBias => Float32, :redBias => Float32, :grayBias => Float32]
            meta(target, NeuralNetworkImageScaler, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_NeuralNetworkImageScaler[]
    end
end
function Base.getproperty(obj::NeuralNetworkImageScaler, name::Symbol)
    if name === :channelScale
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :blueBias
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :greenBias
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :redBias
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :grayBias
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct NeuralNetworkMeanImage <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function NeuralNetworkMeanImage(; kwargs...)
        obj = new(meta(NeuralNetworkMeanImage), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct NeuralNetworkMeanImage
const __meta_NeuralNetworkMeanImage = Ref{ProtoMeta}()
function meta(::Type{NeuralNetworkMeanImage})
    ProtoBuf.metalock() do
        if !isassigned(__meta_NeuralNetworkMeanImage)
            __meta_NeuralNetworkMeanImage[] = target = ProtoMeta(NeuralNetworkMeanImage)
            pack = Symbol[:meanImage]
            allflds = Pair{Symbol,Union{Type,String}}[:meanImage => Base.Vector{Float32}]
            meta(target, NeuralNetworkMeanImage, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_NeuralNetworkMeanImage[]
    end
end
function Base.getproperty(obj::NeuralNetworkMeanImage, name::Symbol)
    if name === :meanImage
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float32}
    else
        getfield(obj, name)
    end
end

mutable struct NeuralNetworkPreprocessing <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function NeuralNetworkPreprocessing(; kwargs...)
        obj = new(meta(NeuralNetworkPreprocessing), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct NeuralNetworkPreprocessing
const __meta_NeuralNetworkPreprocessing = Ref{ProtoMeta}()
function meta(::Type{NeuralNetworkPreprocessing})
    ProtoBuf.metalock() do
        if !isassigned(__meta_NeuralNetworkPreprocessing)
            __meta_NeuralNetworkPreprocessing[] = target = ProtoMeta(NeuralNetworkPreprocessing)
            fnum = Int[1,10,11]
            allflds = Pair{Symbol,Union{Type,String}}[:featureName => AbstractString, :scaler => NeuralNetworkImageScaler, :meanImage => NeuralNetworkMeanImage]
            oneofs = Int[0,1,1]
            oneof_names = Symbol[Symbol("preprocessor")]
            meta(target, NeuralNetworkPreprocessing, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_NeuralNetworkPreprocessing[]
    end
end
function Base.getproperty(obj::NeuralNetworkPreprocessing, name::Symbol)
    if name === :featureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :scaler
        return (obj.__protobuf_jl_internal_values[name])::NeuralNetworkImageScaler
    elseif name === :meanImage
        return (obj.__protobuf_jl_internal_values[name])::NeuralNetworkMeanImage
    else
        getfield(obj, name)
    end
end

mutable struct ActivationReLU <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ActivationReLU(; kwargs...)
        obj = new(meta(ActivationReLU), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ActivationReLU
const __meta_ActivationReLU = Ref{ProtoMeta}()
function meta(::Type{ActivationReLU})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ActivationReLU)
            __meta_ActivationReLU[] = target = ProtoMeta(ActivationReLU)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, ActivationReLU, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ActivationReLU[]
    end
end

mutable struct ActivationLeakyReLU <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ActivationLeakyReLU(; kwargs...)
        obj = new(meta(ActivationLeakyReLU), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ActivationLeakyReLU
const __meta_ActivationLeakyReLU = Ref{ProtoMeta}()
function meta(::Type{ActivationLeakyReLU})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ActivationLeakyReLU)
            __meta_ActivationLeakyReLU[] = target = ProtoMeta(ActivationLeakyReLU)
            allflds = Pair{Symbol,Union{Type,String}}[:alpha => Float32]
            meta(target, ActivationLeakyReLU, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ActivationLeakyReLU[]
    end
end
function Base.getproperty(obj::ActivationLeakyReLU, name::Symbol)
    if name === :alpha
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct ActivationTanh <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ActivationTanh(; kwargs...)
        obj = new(meta(ActivationTanh), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ActivationTanh
const __meta_ActivationTanh = Ref{ProtoMeta}()
function meta(::Type{ActivationTanh})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ActivationTanh)
            __meta_ActivationTanh[] = target = ProtoMeta(ActivationTanh)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, ActivationTanh, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ActivationTanh[]
    end
end

mutable struct ActivationScaledTanh <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ActivationScaledTanh(; kwargs...)
        obj = new(meta(ActivationScaledTanh), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ActivationScaledTanh
const __meta_ActivationScaledTanh = Ref{ProtoMeta}()
function meta(::Type{ActivationScaledTanh})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ActivationScaledTanh)
            __meta_ActivationScaledTanh[] = target = ProtoMeta(ActivationScaledTanh)
            allflds = Pair{Symbol,Union{Type,String}}[:alpha => Float32, :beta => Float32]
            meta(target, ActivationScaledTanh, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ActivationScaledTanh[]
    end
end
function Base.getproperty(obj::ActivationScaledTanh, name::Symbol)
    if name === :alpha
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :beta
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct ActivationSigmoid <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ActivationSigmoid(; kwargs...)
        obj = new(meta(ActivationSigmoid), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ActivationSigmoid
const __meta_ActivationSigmoid = Ref{ProtoMeta}()
function meta(::Type{ActivationSigmoid})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ActivationSigmoid)
            __meta_ActivationSigmoid[] = target = ProtoMeta(ActivationSigmoid)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, ActivationSigmoid, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ActivationSigmoid[]
    end
end

mutable struct ActivationLinear <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ActivationLinear(; kwargs...)
        obj = new(meta(ActivationLinear), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ActivationLinear
const __meta_ActivationLinear = Ref{ProtoMeta}()
function meta(::Type{ActivationLinear})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ActivationLinear)
            __meta_ActivationLinear[] = target = ProtoMeta(ActivationLinear)
            allflds = Pair{Symbol,Union{Type,String}}[:alpha => Float32, :beta => Float32]
            meta(target, ActivationLinear, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ActivationLinear[]
    end
end
function Base.getproperty(obj::ActivationLinear, name::Symbol)
    if name === :alpha
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :beta
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct ActivationSigmoidHard <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ActivationSigmoidHard(; kwargs...)
        obj = new(meta(ActivationSigmoidHard), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ActivationSigmoidHard
const __meta_ActivationSigmoidHard = Ref{ProtoMeta}()
function meta(::Type{ActivationSigmoidHard})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ActivationSigmoidHard)
            __meta_ActivationSigmoidHard[] = target = ProtoMeta(ActivationSigmoidHard)
            allflds = Pair{Symbol,Union{Type,String}}[:alpha => Float32, :beta => Float32]
            meta(target, ActivationSigmoidHard, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ActivationSigmoidHard[]
    end
end
function Base.getproperty(obj::ActivationSigmoidHard, name::Symbol)
    if name === :alpha
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :beta
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct ActivationELU <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ActivationELU(; kwargs...)
        obj = new(meta(ActivationELU), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ActivationELU
const __meta_ActivationELU = Ref{ProtoMeta}()
function meta(::Type{ActivationELU})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ActivationELU)
            __meta_ActivationELU[] = target = ProtoMeta(ActivationELU)
            allflds = Pair{Symbol,Union{Type,String}}[:alpha => Float32]
            meta(target, ActivationELU, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ActivationELU[]
    end
end
function Base.getproperty(obj::ActivationELU, name::Symbol)
    if name === :alpha
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct ActivationThresholdedReLU <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ActivationThresholdedReLU(; kwargs...)
        obj = new(meta(ActivationThresholdedReLU), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ActivationThresholdedReLU
const __meta_ActivationThresholdedReLU = Ref{ProtoMeta}()
function meta(::Type{ActivationThresholdedReLU})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ActivationThresholdedReLU)
            __meta_ActivationThresholdedReLU[] = target = ProtoMeta(ActivationThresholdedReLU)
            allflds = Pair{Symbol,Union{Type,String}}[:alpha => Float32]
            meta(target, ActivationThresholdedReLU, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ActivationThresholdedReLU[]
    end
end
function Base.getproperty(obj::ActivationThresholdedReLU, name::Symbol)
    if name === :alpha
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct ActivationSoftsign <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ActivationSoftsign(; kwargs...)
        obj = new(meta(ActivationSoftsign), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ActivationSoftsign
const __meta_ActivationSoftsign = Ref{ProtoMeta}()
function meta(::Type{ActivationSoftsign})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ActivationSoftsign)
            __meta_ActivationSoftsign[] = target = ProtoMeta(ActivationSoftsign)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, ActivationSoftsign, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ActivationSoftsign[]
    end
end

mutable struct ActivationSoftplus <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ActivationSoftplus(; kwargs...)
        obj = new(meta(ActivationSoftplus), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ActivationSoftplus
const __meta_ActivationSoftplus = Ref{ProtoMeta}()
function meta(::Type{ActivationSoftplus})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ActivationSoftplus)
            __meta_ActivationSoftplus[] = target = ProtoMeta(ActivationSoftplus)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, ActivationSoftplus, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ActivationSoftplus[]
    end
end

mutable struct Tensor <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Tensor(; kwargs...)
        obj = new(meta(Tensor), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Tensor
const __meta_Tensor = Ref{ProtoMeta}()
function meta(::Type{Tensor})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Tensor)
            __meta_Tensor[] = target = ProtoMeta(Tensor)
            pack = Symbol[:dimValue]
            allflds = Pair{Symbol,Union{Type,String}}[:rank => UInt32, :dimValue => Base.Vector{Int64}]
            meta(target, Tensor, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Tensor[]
    end
end
function Base.getproperty(obj::Tensor, name::Symbol)
    if name === :rank
        return (obj.__protobuf_jl_internal_values[name])::UInt32
    elseif name === :dimValue
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    else
        getfield(obj, name)
    end
end

mutable struct LoopBreakLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LoopBreakLayerParams(; kwargs...)
        obj = new(meta(LoopBreakLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LoopBreakLayerParams
const __meta_LoopBreakLayerParams = Ref{ProtoMeta}()
function meta(::Type{LoopBreakLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LoopBreakLayerParams)
            __meta_LoopBreakLayerParams[] = target = ProtoMeta(LoopBreakLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, LoopBreakLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LoopBreakLayerParams[]
    end
end

mutable struct LoopContinueLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LoopContinueLayerParams(; kwargs...)
        obj = new(meta(LoopContinueLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LoopContinueLayerParams
const __meta_LoopContinueLayerParams = Ref{ProtoMeta}()
function meta(::Type{LoopContinueLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LoopContinueLayerParams)
            __meta_LoopContinueLayerParams[] = target = ProtoMeta(LoopContinueLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, LoopContinueLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LoopContinueLayerParams[]
    end
end

mutable struct CopyLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CopyLayerParams(; kwargs...)
        obj = new(meta(CopyLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CopyLayerParams
const __meta_CopyLayerParams = Ref{ProtoMeta}()
function meta(::Type{CopyLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CopyLayerParams)
            __meta_CopyLayerParams[] = target = ProtoMeta(CopyLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, CopyLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CopyLayerParams[]
    end
end

mutable struct GreaterThanLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GreaterThanLayerParams(; kwargs...)
        obj = new(meta(GreaterThanLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GreaterThanLayerParams
const __meta_GreaterThanLayerParams = Ref{ProtoMeta}()
function meta(::Type{GreaterThanLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GreaterThanLayerParams)
            __meta_GreaterThanLayerParams[] = target = ProtoMeta(GreaterThanLayerParams)
            fnum = Int[2]
            allflds = Pair{Symbol,Union{Type,String}}[:alpha => Float32]
            meta(target, GreaterThanLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GreaterThanLayerParams[]
    end
end
function Base.getproperty(obj::GreaterThanLayerParams, name::Symbol)
    if name === :alpha
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct GreaterEqualLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GreaterEqualLayerParams(; kwargs...)
        obj = new(meta(GreaterEqualLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GreaterEqualLayerParams
const __meta_GreaterEqualLayerParams = Ref{ProtoMeta}()
function meta(::Type{GreaterEqualLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GreaterEqualLayerParams)
            __meta_GreaterEqualLayerParams[] = target = ProtoMeta(GreaterEqualLayerParams)
            fnum = Int[2]
            allflds = Pair{Symbol,Union{Type,String}}[:alpha => Float32]
            meta(target, GreaterEqualLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GreaterEqualLayerParams[]
    end
end
function Base.getproperty(obj::GreaterEqualLayerParams, name::Symbol)
    if name === :alpha
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct LessThanLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LessThanLayerParams(; kwargs...)
        obj = new(meta(LessThanLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LessThanLayerParams
const __meta_LessThanLayerParams = Ref{ProtoMeta}()
function meta(::Type{LessThanLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LessThanLayerParams)
            __meta_LessThanLayerParams[] = target = ProtoMeta(LessThanLayerParams)
            fnum = Int[2]
            allflds = Pair{Symbol,Union{Type,String}}[:alpha => Float32]
            meta(target, LessThanLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LessThanLayerParams[]
    end
end
function Base.getproperty(obj::LessThanLayerParams, name::Symbol)
    if name === :alpha
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct LessEqualLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LessEqualLayerParams(; kwargs...)
        obj = new(meta(LessEqualLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LessEqualLayerParams
const __meta_LessEqualLayerParams = Ref{ProtoMeta}()
function meta(::Type{LessEqualLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LessEqualLayerParams)
            __meta_LessEqualLayerParams[] = target = ProtoMeta(LessEqualLayerParams)
            fnum = Int[2]
            allflds = Pair{Symbol,Union{Type,String}}[:alpha => Float32]
            meta(target, LessEqualLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LessEqualLayerParams[]
    end
end
function Base.getproperty(obj::LessEqualLayerParams, name::Symbol)
    if name === :alpha
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct EqualLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function EqualLayerParams(; kwargs...)
        obj = new(meta(EqualLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct EqualLayerParams
const __meta_EqualLayerParams = Ref{ProtoMeta}()
function meta(::Type{EqualLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_EqualLayerParams)
            __meta_EqualLayerParams[] = target = ProtoMeta(EqualLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:alpha => Float32]
            meta(target, EqualLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_EqualLayerParams[]
    end
end
function Base.getproperty(obj::EqualLayerParams, name::Symbol)
    if name === :alpha
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct NotEqualLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function NotEqualLayerParams(; kwargs...)
        obj = new(meta(NotEqualLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct NotEqualLayerParams
const __meta_NotEqualLayerParams = Ref{ProtoMeta}()
function meta(::Type{NotEqualLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_NotEqualLayerParams)
            __meta_NotEqualLayerParams[] = target = ProtoMeta(NotEqualLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:alpha => Float32]
            meta(target, NotEqualLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_NotEqualLayerParams[]
    end
end
function Base.getproperty(obj::NotEqualLayerParams, name::Symbol)
    if name === :alpha
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct LogicalAndLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LogicalAndLayerParams(; kwargs...)
        obj = new(meta(LogicalAndLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LogicalAndLayerParams
const __meta_LogicalAndLayerParams = Ref{ProtoMeta}()
function meta(::Type{LogicalAndLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LogicalAndLayerParams)
            __meta_LogicalAndLayerParams[] = target = ProtoMeta(LogicalAndLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, LogicalAndLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LogicalAndLayerParams[]
    end
end

mutable struct LogicalOrLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LogicalOrLayerParams(; kwargs...)
        obj = new(meta(LogicalOrLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LogicalOrLayerParams
const __meta_LogicalOrLayerParams = Ref{ProtoMeta}()
function meta(::Type{LogicalOrLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LogicalOrLayerParams)
            __meta_LogicalOrLayerParams[] = target = ProtoMeta(LogicalOrLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, LogicalOrLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LogicalOrLayerParams[]
    end
end

mutable struct LogicalXorLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LogicalXorLayerParams(; kwargs...)
        obj = new(meta(LogicalXorLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LogicalXorLayerParams
const __meta_LogicalXorLayerParams = Ref{ProtoMeta}()
function meta(::Type{LogicalXorLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LogicalXorLayerParams)
            __meta_LogicalXorLayerParams[] = target = ProtoMeta(LogicalXorLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, LogicalXorLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LogicalXorLayerParams[]
    end
end

mutable struct LogicalNotLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LogicalNotLayerParams(; kwargs...)
        obj = new(meta(LogicalNotLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LogicalNotLayerParams
const __meta_LogicalNotLayerParams = Ref{ProtoMeta}()
function meta(::Type{LogicalNotLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LogicalNotLayerParams)
            __meta_LogicalNotLayerParams[] = target = ProtoMeta(LogicalNotLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, LogicalNotLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LogicalNotLayerParams[]
    end
end

mutable struct BorderAmounts_EdgeSizes <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BorderAmounts_EdgeSizes(; kwargs...)
        obj = new(meta(BorderAmounts_EdgeSizes), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct BorderAmounts_EdgeSizes
const __meta_BorderAmounts_EdgeSizes = Ref{ProtoMeta}()
function meta(::Type{BorderAmounts_EdgeSizes})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BorderAmounts_EdgeSizes)
            __meta_BorderAmounts_EdgeSizes[] = target = ProtoMeta(BorderAmounts_EdgeSizes)
            allflds = Pair{Symbol,Union{Type,String}}[:startEdgeSize => UInt64, :endEdgeSize => UInt64]
            meta(target, BorderAmounts_EdgeSizes, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BorderAmounts_EdgeSizes[]
    end
end
function Base.getproperty(obj::BorderAmounts_EdgeSizes, name::Symbol)
    if name === :startEdgeSize
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :endEdgeSize
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct BorderAmounts <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BorderAmounts(; kwargs...)
        obj = new(meta(BorderAmounts), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct BorderAmounts
const __meta_BorderAmounts = Ref{ProtoMeta}()
function meta(::Type{BorderAmounts})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BorderAmounts)
            __meta_BorderAmounts[] = target = ProtoMeta(BorderAmounts)
            fnum = Int[10]
            allflds = Pair{Symbol,Union{Type,String}}[:borderAmounts => Base.Vector{BorderAmounts_EdgeSizes}]
            meta(target, BorderAmounts, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BorderAmounts[]
    end
end
function Base.getproperty(obj::BorderAmounts, name::Symbol)
    if name === :borderAmounts
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{BorderAmounts_EdgeSizes}
    else
        getfield(obj, name)
    end
end

mutable struct ValidPadding <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ValidPadding(; kwargs...)
        obj = new(meta(ValidPadding), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ValidPadding
const __meta_ValidPadding = Ref{ProtoMeta}()
function meta(::Type{ValidPadding})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ValidPadding)
            __meta_ValidPadding[] = target = ProtoMeta(ValidPadding)
            allflds = Pair{Symbol,Union{Type,String}}[:paddingAmounts => BorderAmounts]
            meta(target, ValidPadding, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ValidPadding[]
    end
end
function Base.getproperty(obj::ValidPadding, name::Symbol)
    if name === :paddingAmounts
        return (obj.__protobuf_jl_internal_values[name])::BorderAmounts
    else
        getfield(obj, name)
    end
end

const SamePadding_SamePaddingMode = (;[
    Symbol("BOTTOM_RIGHT_HEAVY") => Int32(0),
    Symbol("TOP_LEFT_HEAVY") => Int32(1),
]...)

mutable struct SamePadding <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SamePadding(; kwargs...)
        obj = new(meta(SamePadding), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SamePadding
const __meta_SamePadding = Ref{ProtoMeta}()
function meta(::Type{SamePadding})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SamePadding)
            __meta_SamePadding[] = target = ProtoMeta(SamePadding)
            allflds = Pair{Symbol,Union{Type,String}}[:asymmetryMode => Int32]
            meta(target, SamePadding, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SamePadding[]
    end
end
function Base.getproperty(obj::SamePadding, name::Symbol)
    if name === :asymmetryMode
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

const SamplingMode_Method = (;[
    Symbol("STRICT_ALIGN_ENDPOINTS_MODE") => Int32(0),
    Symbol("ALIGN_ENDPOINTS_MODE") => Int32(1),
    Symbol("UPSAMPLE_MODE") => Int32(2),
    Symbol("ROI_ALIGN_MODE") => Int32(3),
]...)

mutable struct SamplingMode <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SamplingMode(; kwargs...)
        obj = new(meta(SamplingMode), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SamplingMode
const __meta_SamplingMode = Ref{ProtoMeta}()
function meta(::Type{SamplingMode})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SamplingMode)
            __meta_SamplingMode[] = target = ProtoMeta(SamplingMode)
            allflds = Pair{Symbol,Union{Type,String}}[:samplingMethod => Int32]
            meta(target, SamplingMode, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SamplingMode[]
    end
end
function Base.getproperty(obj::SamplingMode, name::Symbol)
    if name === :samplingMethod
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

const BoxCoordinatesMode_Coordinates = (;[
    Symbol("CORNERS_HEIGHT_FIRST") => Int32(0),
    Symbol("CORNERS_WIDTH_FIRST") => Int32(1),
    Symbol("CENTER_SIZE_HEIGHT_FIRST") => Int32(2),
    Symbol("CENTER_SIZE_WIDTH_FIRST") => Int32(3),
]...)

mutable struct BoxCoordinatesMode <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BoxCoordinatesMode(; kwargs...)
        obj = new(meta(BoxCoordinatesMode), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct BoxCoordinatesMode
const __meta_BoxCoordinatesMode = Ref{ProtoMeta}()
function meta(::Type{BoxCoordinatesMode})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BoxCoordinatesMode)
            __meta_BoxCoordinatesMode[] = target = ProtoMeta(BoxCoordinatesMode)
            allflds = Pair{Symbol,Union{Type,String}}[:boxMode => Int32]
            meta(target, BoxCoordinatesMode, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BoxCoordinatesMode[]
    end
end
function Base.getproperty(obj::BoxCoordinatesMode, name::Symbol)
    if name === :boxMode
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct LinearQuantizationParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LinearQuantizationParams(; kwargs...)
        obj = new(meta(LinearQuantizationParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LinearQuantizationParams
const __meta_LinearQuantizationParams = Ref{ProtoMeta}()
function meta(::Type{LinearQuantizationParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LinearQuantizationParams)
            __meta_LinearQuantizationParams[] = target = ProtoMeta(LinearQuantizationParams)
            pack = Symbol[:scale,:bias]
            allflds = Pair{Symbol,Union{Type,String}}[:scale => Base.Vector{Float32}, :bias => Base.Vector{Float32}]
            meta(target, LinearQuantizationParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LinearQuantizationParams[]
    end
end
function Base.getproperty(obj::LinearQuantizationParams, name::Symbol)
    if name === :scale
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float32}
    elseif name === :bias
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float32}
    else
        getfield(obj, name)
    end
end

mutable struct LookUpTableQuantizationParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LookUpTableQuantizationParams(; kwargs...)
        obj = new(meta(LookUpTableQuantizationParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LookUpTableQuantizationParams
const __meta_LookUpTableQuantizationParams = Ref{ProtoMeta}()
function meta(::Type{LookUpTableQuantizationParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LookUpTableQuantizationParams)
            __meta_LookUpTableQuantizationParams[] = target = ProtoMeta(LookUpTableQuantizationParams)
            pack = Symbol[:floatValue]
            allflds = Pair{Symbol,Union{Type,String}}[:floatValue => Base.Vector{Float32}]
            meta(target, LookUpTableQuantizationParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LookUpTableQuantizationParams[]
    end
end
function Base.getproperty(obj::LookUpTableQuantizationParams, name::Symbol)
    if name === :floatValue
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float32}
    else
        getfield(obj, name)
    end
end

mutable struct QuantizationParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function QuantizationParams(; kwargs...)
        obj = new(meta(QuantizationParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct QuantizationParams
const __meta_QuantizationParams = Ref{ProtoMeta}()
function meta(::Type{QuantizationParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_QuantizationParams)
            __meta_QuantizationParams[] = target = ProtoMeta(QuantizationParams)
            fnum = Int[1,101,102]
            allflds = Pair{Symbol,Union{Type,String}}[:numberOfBits => UInt64, :linearQuantization => LinearQuantizationParams, :lookupTableQuantization => LookUpTableQuantizationParams]
            oneofs = Int[0,1,1]
            oneof_names = Symbol[Symbol("QuantizationType")]
            meta(target, QuantizationParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_QuantizationParams[]
    end
end
function Base.getproperty(obj::QuantizationParams, name::Symbol)
    if name === :numberOfBits
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :linearQuantization
        return (obj.__protobuf_jl_internal_values[name])::LinearQuantizationParams
    elseif name === :lookupTableQuantization
        return (obj.__protobuf_jl_internal_values[name])::LookUpTableQuantizationParams
    else
        getfield(obj, name)
    end
end

mutable struct WeightParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function WeightParams(; kwargs...)
        obj = new(meta(WeightParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct WeightParams
const __meta_WeightParams = Ref{ProtoMeta}()
function meta(::Type{WeightParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_WeightParams)
            __meta_WeightParams[] = target = ProtoMeta(WeightParams)
            fnum = Int[1,2,30,31,40,50]
            pack = Symbol[:floatValue]
            allflds = Pair{Symbol,Union{Type,String}}[:floatValue => Base.Vector{Float32}, :float16Value => Vector{UInt8}, :rawValue => Vector{UInt8}, :int8RawValue => Vector{UInt8}, :quantization => QuantizationParams, :isUpdatable => Bool]
            meta(target, WeightParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_WeightParams[]
    end
end
function Base.getproperty(obj::WeightParams, name::Symbol)
    if name === :floatValue
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float32}
    elseif name === :float16Value
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :rawValue
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :int8RawValue
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    elseif name === :quantization
        return (obj.__protobuf_jl_internal_values[name])::QuantizationParams
    elseif name === :isUpdatable
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct ActivationPReLU <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ActivationPReLU(; kwargs...)
        obj = new(meta(ActivationPReLU), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ActivationPReLU
const __meta_ActivationPReLU = Ref{ProtoMeta}()
function meta(::Type{ActivationPReLU})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ActivationPReLU)
            __meta_ActivationPReLU[] = target = ProtoMeta(ActivationPReLU)
            allflds = Pair{Symbol,Union{Type,String}}[:alpha => WeightParams]
            meta(target, ActivationPReLU, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ActivationPReLU[]
    end
end
function Base.getproperty(obj::ActivationPReLU, name::Symbol)
    if name === :alpha
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    else
        getfield(obj, name)
    end
end

mutable struct ActivationParametricSoftplus <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ActivationParametricSoftplus(; kwargs...)
        obj = new(meta(ActivationParametricSoftplus), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ActivationParametricSoftplus
const __meta_ActivationParametricSoftplus = Ref{ProtoMeta}()
function meta(::Type{ActivationParametricSoftplus})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ActivationParametricSoftplus)
            __meta_ActivationParametricSoftplus[] = target = ProtoMeta(ActivationParametricSoftplus)
            allflds = Pair{Symbol,Union{Type,String}}[:alpha => WeightParams, :beta => WeightParams]
            meta(target, ActivationParametricSoftplus, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ActivationParametricSoftplus[]
    end
end
function Base.getproperty(obj::ActivationParametricSoftplus, name::Symbol)
    if name === :alpha
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :beta
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    else
        getfield(obj, name)
    end
end

mutable struct ActivationParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ActivationParams(; kwargs...)
        obj = new(meta(ActivationParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ActivationParams
const __meta_ActivationParams = Ref{ProtoMeta}()
function meta(::Type{ActivationParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ActivationParams)
            __meta_ActivationParams[] = target = ProtoMeta(ActivationParams)
            fnum = Int[5,10,15,20,25,30,31,40,41,50,60,70,71]
            allflds = Pair{Symbol,Union{Type,String}}[:linear => ActivationLinear, :ReLU => ActivationReLU, :leakyReLU => ActivationLeakyReLU, :thresholdedReLU => ActivationThresholdedReLU, :PReLU => ActivationPReLU, :tanh => ActivationTanh, :scaledTanh => ActivationScaledTanh, :sigmoid => ActivationSigmoid, :sigmoidHard => ActivationSigmoidHard, :ELU => ActivationELU, :softsign => ActivationSoftsign, :softplus => ActivationSoftplus, :parametricSoftplus => ActivationParametricSoftplus]
            oneofs = Int[1,1,1,1,1,1,1,1,1,1,1,1,1]
            oneof_names = Symbol[Symbol("NonlinearityType")]
            meta(target, ActivationParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_ActivationParams[]
    end
end
function Base.getproperty(obj::ActivationParams, name::Symbol)
    if name === :linear
        return (obj.__protobuf_jl_internal_values[name])::ActivationLinear
    elseif name === :ReLU
        return (obj.__protobuf_jl_internal_values[name])::ActivationReLU
    elseif name === :leakyReLU
        return (obj.__protobuf_jl_internal_values[name])::ActivationLeakyReLU
    elseif name === :thresholdedReLU
        return (obj.__protobuf_jl_internal_values[name])::ActivationThresholdedReLU
    elseif name === :PReLU
        return (obj.__protobuf_jl_internal_values[name])::ActivationPReLU
    elseif name === :tanh
        return (obj.__protobuf_jl_internal_values[name])::ActivationTanh
    elseif name === :scaledTanh
        return (obj.__protobuf_jl_internal_values[name])::ActivationScaledTanh
    elseif name === :sigmoid
        return (obj.__protobuf_jl_internal_values[name])::ActivationSigmoid
    elseif name === :sigmoidHard
        return (obj.__protobuf_jl_internal_values[name])::ActivationSigmoidHard
    elseif name === :ELU
        return (obj.__protobuf_jl_internal_values[name])::ActivationELU
    elseif name === :softsign
        return (obj.__protobuf_jl_internal_values[name])::ActivationSoftsign
    elseif name === :softplus
        return (obj.__protobuf_jl_internal_values[name])::ActivationSoftplus
    elseif name === :parametricSoftplus
        return (obj.__protobuf_jl_internal_values[name])::ActivationParametricSoftplus
    else
        getfield(obj, name)
    end
end

mutable struct ConvolutionLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ConvolutionLayerParams(; kwargs...)
        obj = new(meta(ConvolutionLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ConvolutionLayerParams
const __meta_ConvolutionLayerParams = Ref{ProtoMeta}()
function meta(::Type{ConvolutionLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ConvolutionLayerParams)
            __meta_ConvolutionLayerParams[] = target = ProtoMeta(ConvolutionLayerParams)
            fnum = Int[1,2,10,20,30,40,50,51,60,70,90,91,100]
            pack = Symbol[:kernelSize,:stride,:dilationFactor,:outputShape]
            allflds = Pair{Symbol,Union{Type,String}}[:outputChannels => UInt64, :kernelChannels => UInt64, :nGroups => UInt64, :kernelSize => Base.Vector{UInt64}, :stride => Base.Vector{UInt64}, :dilationFactor => Base.Vector{UInt64}, :valid => ValidPadding, :same => SamePadding, :isDeconvolution => Bool, :hasBias => Bool, :weights => WeightParams, :bias => WeightParams, :outputShape => Base.Vector{UInt64}]
            oneofs = Int[0,0,0,0,0,0,1,1,0,0,0,0,0]
            oneof_names = Symbol[Symbol("ConvolutionPaddingType")]
            meta(target, ConvolutionLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_ConvolutionLayerParams[]
    end
end
function Base.getproperty(obj::ConvolutionLayerParams, name::Symbol)
    if name === :outputChannels
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :kernelChannels
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :nGroups
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :kernelSize
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    elseif name === :stride
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    elseif name === :dilationFactor
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    elseif name === :valid
        return (obj.__protobuf_jl_internal_values[name])::ValidPadding
    elseif name === :same
        return (obj.__protobuf_jl_internal_values[name])::SamePadding
    elseif name === :isDeconvolution
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :hasBias
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :weights
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :bias
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :outputShape
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    else
        getfield(obj, name)
    end
end

const Convolution3DLayerParams_PaddingType = (;[
    Symbol("CUSTOM") => Int32(0),
    Symbol("VALID") => Int32(1),
    Symbol("SAME") => Int32(2),
]...)

mutable struct Convolution3DLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Convolution3DLayerParams(; kwargs...)
        obj = new(meta(Convolution3DLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Convolution3DLayerParams
const __meta_Convolution3DLayerParams = Ref{ProtoMeta}()
function meta(::Type{Convolution3DLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Convolution3DLayerParams)
            __meta_Convolution3DLayerParams[] = target = ProtoMeta(Convolution3DLayerParams)
            fnum = Int[1,2,10,20,21,22,31,32,33,40,41,42,50,60,61,70,80,81,82,83,84,85,86,87]
            pack = Symbol[:outputShape]
            allflds = Pair{Symbol,Union{Type,String}}[:outputChannels => Int32, :inputChannels => Int32, :nGroups => Int32, :kernelDepth => Int32, :kernelHeight => Int32, :kernelWidth => Int32, :strideDepth => Int32, :strideHeight => Int32, :strideWidth => Int32, :dilationDepth => Int32, :dilationHeight => Int32, :dilationWidth => Int32, :hasBias => Bool, :weights => WeightParams, :bias => WeightParams, :paddingType => Int32, :customPaddingFront => Int32, :customPaddingBack => Int32, :customPaddingTop => Int32, :customPaddingBottom => Int32, :customPaddingLeft => Int32, :customPaddingRight => Int32, :isDeconvolution => Bool, :outputShape => Base.Vector{UInt64}]
            meta(target, Convolution3DLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Convolution3DLayerParams[]
    end
end
function Base.getproperty(obj::Convolution3DLayerParams, name::Symbol)
    if name === :outputChannels
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :inputChannels
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :nGroups
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :kernelDepth
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :kernelHeight
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :kernelWidth
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :strideDepth
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :strideHeight
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :strideWidth
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :dilationDepth
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :dilationHeight
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :dilationWidth
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :hasBias
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :weights
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :bias
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :paddingType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :customPaddingFront
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :customPaddingBack
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :customPaddingTop
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :customPaddingBottom
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :customPaddingLeft
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :customPaddingRight
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :isDeconvolution
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :outputShape
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    else
        getfield(obj, name)
    end
end

mutable struct InnerProductLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function InnerProductLayerParams(; kwargs...)
        obj = new(meta(InnerProductLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct InnerProductLayerParams
const __meta_InnerProductLayerParams = Ref{ProtoMeta}()
function meta(::Type{InnerProductLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_InnerProductLayerParams)
            __meta_InnerProductLayerParams[] = target = ProtoMeta(InnerProductLayerParams)
            fnum = Int[1,2,10,20,21,22]
            allflds = Pair{Symbol,Union{Type,String}}[:inputChannels => UInt64, :outputChannels => UInt64, :hasBias => Bool, :weights => WeightParams, :bias => WeightParams, :int8DynamicQuantize => Bool]
            meta(target, InnerProductLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_InnerProductLayerParams[]
    end
end
function Base.getproperty(obj::InnerProductLayerParams, name::Symbol)
    if name === :inputChannels
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :outputChannels
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :hasBias
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :weights
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :bias
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :int8DynamicQuantize
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct EmbeddingLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function EmbeddingLayerParams(; kwargs...)
        obj = new(meta(EmbeddingLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct EmbeddingLayerParams
const __meta_EmbeddingLayerParams = Ref{ProtoMeta}()
function meta(::Type{EmbeddingLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_EmbeddingLayerParams)
            __meta_EmbeddingLayerParams[] = target = ProtoMeta(EmbeddingLayerParams)
            fnum = Int[1,2,10,20,21]
            allflds = Pair{Symbol,Union{Type,String}}[:inputDim => UInt64, :outputChannels => UInt64, :hasBias => Bool, :weights => WeightParams, :bias => WeightParams]
            meta(target, EmbeddingLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_EmbeddingLayerParams[]
    end
end
function Base.getproperty(obj::EmbeddingLayerParams, name::Symbol)
    if name === :inputDim
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :outputChannels
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :hasBias
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :weights
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :bias
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    else
        getfield(obj, name)
    end
end

mutable struct EmbeddingNDLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function EmbeddingNDLayerParams(; kwargs...)
        obj = new(meta(EmbeddingNDLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct EmbeddingNDLayerParams
const __meta_EmbeddingNDLayerParams = Ref{ProtoMeta}()
function meta(::Type{EmbeddingNDLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_EmbeddingNDLayerParams)
            __meta_EmbeddingNDLayerParams[] = target = ProtoMeta(EmbeddingNDLayerParams)
            fnum = Int[1,2,3,20,21]
            allflds = Pair{Symbol,Union{Type,String}}[:vocabSize => UInt64, :embeddingSize => UInt64, :hasBias => Bool, :weights => WeightParams, :bias => WeightParams]
            meta(target, EmbeddingNDLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_EmbeddingNDLayerParams[]
    end
end
function Base.getproperty(obj::EmbeddingNDLayerParams, name::Symbol)
    if name === :vocabSize
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :embeddingSize
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :hasBias
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :weights
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :bias
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    else
        getfield(obj, name)
    end
end

mutable struct BatchnormLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BatchnormLayerParams(; kwargs...)
        obj = new(meta(BatchnormLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct BatchnormLayerParams
const __meta_BatchnormLayerParams = Ref{ProtoMeta}()
function meta(::Type{BatchnormLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BatchnormLayerParams)
            __meta_BatchnormLayerParams[] = target = ProtoMeta(BatchnormLayerParams)
            fnum = Int[1,5,6,10,15,16,17,18]
            allflds = Pair{Symbol,Union{Type,String}}[:channels => UInt64, :computeMeanVar => Bool, :instanceNormalization => Bool, :epsilon => Float32, :gamma => WeightParams, :beta => WeightParams, :mean => WeightParams, :variance => WeightParams]
            meta(target, BatchnormLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BatchnormLayerParams[]
    end
end
function Base.getproperty(obj::BatchnormLayerParams, name::Symbol)
    if name === :channels
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :computeMeanVar
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :instanceNormalization
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :epsilon
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :gamma
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :beta
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :mean
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :variance
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    else
        getfield(obj, name)
    end
end

const PoolingLayerParams_PoolingType = (;[
    Symbol("MAX") => Int32(0),
    Symbol("AVERAGE") => Int32(1),
    Symbol("L2") => Int32(2),
]...)

mutable struct PoolingLayerParams_ValidCompletePadding <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PoolingLayerParams_ValidCompletePadding(; kwargs...)
        obj = new(meta(PoolingLayerParams_ValidCompletePadding), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PoolingLayerParams_ValidCompletePadding
const __meta_PoolingLayerParams_ValidCompletePadding = Ref{ProtoMeta}()
function meta(::Type{PoolingLayerParams_ValidCompletePadding})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PoolingLayerParams_ValidCompletePadding)
            __meta_PoolingLayerParams_ValidCompletePadding[] = target = ProtoMeta(PoolingLayerParams_ValidCompletePadding)
            fnum = Int[10]
            pack = Symbol[:paddingAmounts]
            allflds = Pair{Symbol,Union{Type,String}}[:paddingAmounts => Base.Vector{UInt64}]
            meta(target, PoolingLayerParams_ValidCompletePadding, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PoolingLayerParams_ValidCompletePadding[]
    end
end
function Base.getproperty(obj::PoolingLayerParams_ValidCompletePadding, name::Symbol)
    if name === :paddingAmounts
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    else
        getfield(obj, name)
    end
end

mutable struct PoolingLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PoolingLayerParams(; kwargs...)
        obj = new(meta(PoolingLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PoolingLayerParams
const __meta_PoolingLayerParams = Ref{ProtoMeta}()
function meta(::Type{PoolingLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PoolingLayerParams)
            __meta_PoolingLayerParams[] = target = ProtoMeta(PoolingLayerParams)
            fnum = Int[1,10,20,30,31,32,50,60]
            pack = Symbol[:kernelSize,:stride]
            allflds = Pair{Symbol,Union{Type,String}}[:_type => Int32, :kernelSize => Base.Vector{UInt64}, :stride => Base.Vector{UInt64}, :valid => ValidPadding, :same => SamePadding, :includeLastPixel => PoolingLayerParams_ValidCompletePadding, :avgPoolExcludePadding => Bool, :globalPooling => Bool]
            oneofs = Int[0,0,0,1,1,1,0,0]
            oneof_names = Symbol[Symbol("PoolingPaddingType")]
            meta(target, PoolingLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_PoolingLayerParams[]
    end
end
function Base.getproperty(obj::PoolingLayerParams, name::Symbol)
    if name === :_type
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :kernelSize
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    elseif name === :stride
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    elseif name === :valid
        return (obj.__protobuf_jl_internal_values[name])::ValidPadding
    elseif name === :same
        return (obj.__protobuf_jl_internal_values[name])::SamePadding
    elseif name === :includeLastPixel
        return (obj.__protobuf_jl_internal_values[name])::PoolingLayerParams_ValidCompletePadding
    elseif name === :avgPoolExcludePadding
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :globalPooling
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

const Pooling3DLayerParams_PoolingType3D = (;[
    Symbol("MAX") => Int32(0),
    Symbol("AVERAGE") => Int32(1),
]...)

const Pooling3DLayerParams_Pooling3DPaddingType = (;[
    Symbol("CUSTOM") => Int32(0),
    Symbol("VALID") => Int32(1),
    Symbol("SAME") => Int32(2),
]...)

mutable struct Pooling3DLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Pooling3DLayerParams(; kwargs...)
        obj = new(meta(Pooling3DLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Pooling3DLayerParams
const __meta_Pooling3DLayerParams = Ref{ProtoMeta}()
function meta(::Type{Pooling3DLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Pooling3DLayerParams)
            __meta_Pooling3DLayerParams[] = target = ProtoMeta(Pooling3DLayerParams)
            fnum = Int[1,2,3,4,5,6,7,15,8,9,10,11,12,13,14]
            allflds = Pair{Symbol,Union{Type,String}}[:_type => Int32, :kernelDepth => Int32, :kernelHeight => Int32, :kernelWidth => Int32, :strideDepth => Int32, :strideHeight => Int32, :strideWidth => Int32, :paddingType => Int32, :customPaddingFront => Int32, :customPaddingBack => Int32, :customPaddingTop => Int32, :customPaddingBottom => Int32, :customPaddingLeft => Int32, :customPaddingRight => Int32, :countExcludePadding => Bool]
            meta(target, Pooling3DLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Pooling3DLayerParams[]
    end
end
function Base.getproperty(obj::Pooling3DLayerParams, name::Symbol)
    if name === :_type
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :kernelDepth
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :kernelHeight
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :kernelWidth
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :strideDepth
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :strideHeight
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :strideWidth
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :paddingType
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :customPaddingFront
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :customPaddingBack
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :customPaddingTop
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :customPaddingBottom
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :customPaddingLeft
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :customPaddingRight
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :countExcludePadding
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

const GlobalPooling3DLayerParams_GlobalPoolingType3D = (;[
    Symbol("MAX") => Int32(0),
    Symbol("AVERAGE") => Int32(1),
]...)

mutable struct GlobalPooling3DLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GlobalPooling3DLayerParams(; kwargs...)
        obj = new(meta(GlobalPooling3DLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GlobalPooling3DLayerParams
const __meta_GlobalPooling3DLayerParams = Ref{ProtoMeta}()
function meta(::Type{GlobalPooling3DLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GlobalPooling3DLayerParams)
            __meta_GlobalPooling3DLayerParams[] = target = ProtoMeta(GlobalPooling3DLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:_type => Int32]
            meta(target, GlobalPooling3DLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GlobalPooling3DLayerParams[]
    end
end
function Base.getproperty(obj::GlobalPooling3DLayerParams, name::Symbol)
    if name === :_type
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct PaddingLayerParams_PaddingConstant <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PaddingLayerParams_PaddingConstant(; kwargs...)
        obj = new(meta(PaddingLayerParams_PaddingConstant), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PaddingLayerParams_PaddingConstant
const __meta_PaddingLayerParams_PaddingConstant = Ref{ProtoMeta}()
function meta(::Type{PaddingLayerParams_PaddingConstant})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PaddingLayerParams_PaddingConstant)
            __meta_PaddingLayerParams_PaddingConstant[] = target = ProtoMeta(PaddingLayerParams_PaddingConstant)
            allflds = Pair{Symbol,Union{Type,String}}[:value => Float32]
            meta(target, PaddingLayerParams_PaddingConstant, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PaddingLayerParams_PaddingConstant[]
    end
end
function Base.getproperty(obj::PaddingLayerParams_PaddingConstant, name::Symbol)
    if name === :value
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct PaddingLayerParams_PaddingReflection <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PaddingLayerParams_PaddingReflection(; kwargs...)
        obj = new(meta(PaddingLayerParams_PaddingReflection), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PaddingLayerParams_PaddingReflection
const __meta_PaddingLayerParams_PaddingReflection = Ref{ProtoMeta}()
function meta(::Type{PaddingLayerParams_PaddingReflection})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PaddingLayerParams_PaddingReflection)
            __meta_PaddingLayerParams_PaddingReflection[] = target = ProtoMeta(PaddingLayerParams_PaddingReflection)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, PaddingLayerParams_PaddingReflection, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PaddingLayerParams_PaddingReflection[]
    end
end

mutable struct PaddingLayerParams_PaddingReplication <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PaddingLayerParams_PaddingReplication(; kwargs...)
        obj = new(meta(PaddingLayerParams_PaddingReplication), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PaddingLayerParams_PaddingReplication
const __meta_PaddingLayerParams_PaddingReplication = Ref{ProtoMeta}()
function meta(::Type{PaddingLayerParams_PaddingReplication})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PaddingLayerParams_PaddingReplication)
            __meta_PaddingLayerParams_PaddingReplication[] = target = ProtoMeta(PaddingLayerParams_PaddingReplication)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, PaddingLayerParams_PaddingReplication, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PaddingLayerParams_PaddingReplication[]
    end
end

mutable struct PaddingLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PaddingLayerParams(; kwargs...)
        obj = new(meta(PaddingLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PaddingLayerParams
const __meta_PaddingLayerParams = Ref{ProtoMeta}()
function meta(::Type{PaddingLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PaddingLayerParams)
            __meta_PaddingLayerParams[] = target = ProtoMeta(PaddingLayerParams)
            fnum = Int[1,2,3,10]
            allflds = Pair{Symbol,Union{Type,String}}[:constant => PaddingLayerParams_PaddingConstant, :reflection => PaddingLayerParams_PaddingReflection, :replication => PaddingLayerParams_PaddingReplication, :paddingAmounts => BorderAmounts]
            oneofs = Int[1,1,1,0]
            oneof_names = Symbol[Symbol("PaddingType")]
            meta(target, PaddingLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_PaddingLayerParams[]
    end
end
function Base.getproperty(obj::PaddingLayerParams, name::Symbol)
    if name === :constant
        return (obj.__protobuf_jl_internal_values[name])::PaddingLayerParams_PaddingConstant
    elseif name === :reflection
        return (obj.__protobuf_jl_internal_values[name])::PaddingLayerParams_PaddingReflection
    elseif name === :replication
        return (obj.__protobuf_jl_internal_values[name])::PaddingLayerParams_PaddingReplication
    elseif name === :paddingAmounts
        return (obj.__protobuf_jl_internal_values[name])::BorderAmounts
    else
        getfield(obj, name)
    end
end

mutable struct ConcatLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ConcatLayerParams(; kwargs...)
        obj = new(meta(ConcatLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ConcatLayerParams
const __meta_ConcatLayerParams = Ref{ProtoMeta}()
function meta(::Type{ConcatLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ConcatLayerParams)
            __meta_ConcatLayerParams[] = target = ProtoMeta(ConcatLayerParams)
            fnum = Int[100]
            allflds = Pair{Symbol,Union{Type,String}}[:sequenceConcat => Bool]
            meta(target, ConcatLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ConcatLayerParams[]
    end
end
function Base.getproperty(obj::ConcatLayerParams, name::Symbol)
    if name === :sequenceConcat
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct LRNLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LRNLayerParams(; kwargs...)
        obj = new(meta(LRNLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LRNLayerParams
const __meta_LRNLayerParams = Ref{ProtoMeta}()
function meta(::Type{LRNLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LRNLayerParams)
            __meta_LRNLayerParams[] = target = ProtoMeta(LRNLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:alpha => Float32, :beta => Float32, :localSize => UInt64, :k => Float32]
            meta(target, LRNLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LRNLayerParams[]
    end
end
function Base.getproperty(obj::LRNLayerParams, name::Symbol)
    if name === :alpha
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :beta
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :localSize
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :k
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct SoftmaxLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SoftmaxLayerParams(; kwargs...)
        obj = new(meta(SoftmaxLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SoftmaxLayerParams
const __meta_SoftmaxLayerParams = Ref{ProtoMeta}()
function meta(::Type{SoftmaxLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SoftmaxLayerParams)
            __meta_SoftmaxLayerParams[] = target = ProtoMeta(SoftmaxLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, SoftmaxLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SoftmaxLayerParams[]
    end
end

mutable struct SplitLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SplitLayerParams(; kwargs...)
        obj = new(meta(SplitLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SplitLayerParams
const __meta_SplitLayerParams = Ref{ProtoMeta}()
function meta(::Type{SplitLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SplitLayerParams)
            __meta_SplitLayerParams[] = target = ProtoMeta(SplitLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:nOutputs => UInt64]
            meta(target, SplitLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SplitLayerParams[]
    end
end
function Base.getproperty(obj::SplitLayerParams, name::Symbol)
    if name === :nOutputs
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct AddLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AddLayerParams(; kwargs...)
        obj = new(meta(AddLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AddLayerParams
const __meta_AddLayerParams = Ref{ProtoMeta}()
function meta(::Type{AddLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AddLayerParams)
            __meta_AddLayerParams[] = target = ProtoMeta(AddLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:alpha => Float32]
            meta(target, AddLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_AddLayerParams[]
    end
end
function Base.getproperty(obj::AddLayerParams, name::Symbol)
    if name === :alpha
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct MultiplyLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function MultiplyLayerParams(; kwargs...)
        obj = new(meta(MultiplyLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct MultiplyLayerParams
const __meta_MultiplyLayerParams = Ref{ProtoMeta}()
function meta(::Type{MultiplyLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_MultiplyLayerParams)
            __meta_MultiplyLayerParams[] = target = ProtoMeta(MultiplyLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:alpha => Float32]
            meta(target, MultiplyLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_MultiplyLayerParams[]
    end
end
function Base.getproperty(obj::MultiplyLayerParams, name::Symbol)
    if name === :alpha
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

const UnaryFunctionLayerParams_Operation = (;[
    Symbol("SQRT") => Int32(0),
    Symbol("RSQRT") => Int32(1),
    Symbol("INVERSE") => Int32(2),
    Symbol("POWER") => Int32(3),
    Symbol("EXP") => Int32(4),
    Symbol("LOG") => Int32(5),
    Symbol("ABS") => Int32(6),
    Symbol("THRESHOLD") => Int32(7),
]...)

mutable struct UnaryFunctionLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function UnaryFunctionLayerParams(; kwargs...)
        obj = new(meta(UnaryFunctionLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct UnaryFunctionLayerParams
const __meta_UnaryFunctionLayerParams = Ref{ProtoMeta}()
function meta(::Type{UnaryFunctionLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_UnaryFunctionLayerParams)
            __meta_UnaryFunctionLayerParams[] = target = ProtoMeta(UnaryFunctionLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:_type => Int32, :alpha => Float32, :epsilon => Float32, :shift => Float32, :scale => Float32]
            meta(target, UnaryFunctionLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_UnaryFunctionLayerParams[]
    end
end
function Base.getproperty(obj::UnaryFunctionLayerParams, name::Symbol)
    if name === :_type
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :alpha
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :epsilon
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :shift
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :scale
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

const UpsampleLayerParams_InterpolationMode = (;[
    Symbol("NN") => Int32(0),
    Symbol("BILINEAR") => Int32(1),
]...)

const UpsampleLayerParams_LinearUpsampleMode = (;[
    Symbol("DEFAULT") => Int32(0),
    Symbol("ALIGN_CORNERS_TRUE") => Int32(1),
    Symbol("ALIGN_CORNERS_FALSE") => Int32(2),
]...)

mutable struct UpsampleLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function UpsampleLayerParams(; kwargs...)
        obj = new(meta(UpsampleLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct UpsampleLayerParams
const __meta_UpsampleLayerParams = Ref{ProtoMeta}()
function meta(::Type{UpsampleLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_UpsampleLayerParams)
            __meta_UpsampleLayerParams[] = target = ProtoMeta(UpsampleLayerParams)
            fnum = Int[1,7,5,6]
            pack = Symbol[:scalingFactor,:fractionalScalingFactor]
            allflds = Pair{Symbol,Union{Type,String}}[:scalingFactor => Base.Vector{UInt64}, :fractionalScalingFactor => Base.Vector{Float32}, :mode => Int32, :linearUpsampleMode => Int32]
            meta(target, UpsampleLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_UpsampleLayerParams[]
    end
end
function Base.getproperty(obj::UpsampleLayerParams, name::Symbol)
    if name === :scalingFactor
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    elseif name === :fractionalScalingFactor
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float32}
    elseif name === :mode
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :linearUpsampleMode
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct ResizeBilinearLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ResizeBilinearLayerParams(; kwargs...)
        obj = new(meta(ResizeBilinearLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ResizeBilinearLayerParams
const __meta_ResizeBilinearLayerParams = Ref{ProtoMeta}()
function meta(::Type{ResizeBilinearLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ResizeBilinearLayerParams)
            __meta_ResizeBilinearLayerParams[] = target = ProtoMeta(ResizeBilinearLayerParams)
            pack = Symbol[:targetSize]
            allflds = Pair{Symbol,Union{Type,String}}[:targetSize => Base.Vector{UInt64}, :mode => SamplingMode]
            meta(target, ResizeBilinearLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ResizeBilinearLayerParams[]
    end
end
function Base.getproperty(obj::ResizeBilinearLayerParams, name::Symbol)
    if name === :targetSize
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    elseif name === :mode
        return (obj.__protobuf_jl_internal_values[name])::SamplingMode
    else
        getfield(obj, name)
    end
end

mutable struct CropResizeLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CropResizeLayerParams(; kwargs...)
        obj = new(meta(CropResizeLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CropResizeLayerParams
const __meta_CropResizeLayerParams = Ref{ProtoMeta}()
function meta(::Type{CropResizeLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CropResizeLayerParams)
            __meta_CropResizeLayerParams[] = target = ProtoMeta(CropResizeLayerParams)
            pack = Symbol[:targetSize]
            allflds = Pair{Symbol,Union{Type,String}}[:targetSize => Base.Vector{UInt64}, :normalizedCoordinates => Bool, :mode => SamplingMode, :boxIndicesMode => BoxCoordinatesMode, :spatialScale => Float32]
            meta(target, CropResizeLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CropResizeLayerParams[]
    end
end
function Base.getproperty(obj::CropResizeLayerParams, name::Symbol)
    if name === :targetSize
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    elseif name === :normalizedCoordinates
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :mode
        return (obj.__protobuf_jl_internal_values[name])::SamplingMode
    elseif name === :boxIndicesMode
        return (obj.__protobuf_jl_internal_values[name])::BoxCoordinatesMode
    elseif name === :spatialScale
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct BiasLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BiasLayerParams(; kwargs...)
        obj = new(meta(BiasLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct BiasLayerParams
const __meta_BiasLayerParams = Ref{ProtoMeta}()
function meta(::Type{BiasLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BiasLayerParams)
            __meta_BiasLayerParams[] = target = ProtoMeta(BiasLayerParams)
            pack = Symbol[:shape]
            allflds = Pair{Symbol,Union{Type,String}}[:shape => Base.Vector{UInt64}, :bias => WeightParams]
            meta(target, BiasLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BiasLayerParams[]
    end
end
function Base.getproperty(obj::BiasLayerParams, name::Symbol)
    if name === :shape
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    elseif name === :bias
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    else
        getfield(obj, name)
    end
end

mutable struct ScaleLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ScaleLayerParams(; kwargs...)
        obj = new(meta(ScaleLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ScaleLayerParams
const __meta_ScaleLayerParams = Ref{ProtoMeta}()
function meta(::Type{ScaleLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ScaleLayerParams)
            __meta_ScaleLayerParams[] = target = ProtoMeta(ScaleLayerParams)
            pack = Symbol[:shapeScale,:shapeBias]
            allflds = Pair{Symbol,Union{Type,String}}[:shapeScale => Base.Vector{UInt64}, :scale => WeightParams, :hasBias => Bool, :shapeBias => Base.Vector{UInt64}, :bias => WeightParams]
            meta(target, ScaleLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ScaleLayerParams[]
    end
end
function Base.getproperty(obj::ScaleLayerParams, name::Symbol)
    if name === :shapeScale
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    elseif name === :scale
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :hasBias
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :shapeBias
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    elseif name === :bias
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    else
        getfield(obj, name)
    end
end

mutable struct LoadConstantLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LoadConstantLayerParams(; kwargs...)
        obj = new(meta(LoadConstantLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LoadConstantLayerParams
const __meta_LoadConstantLayerParams = Ref{ProtoMeta}()
function meta(::Type{LoadConstantLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LoadConstantLayerParams)
            __meta_LoadConstantLayerParams[] = target = ProtoMeta(LoadConstantLayerParams)
            pack = Symbol[:shape]
            allflds = Pair{Symbol,Union{Type,String}}[:shape => Base.Vector{UInt64}, :data => WeightParams]
            meta(target, LoadConstantLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LoadConstantLayerParams[]
    end
end
function Base.getproperty(obj::LoadConstantLayerParams, name::Symbol)
    if name === :shape
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    elseif name === :data
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    else
        getfield(obj, name)
    end
end

mutable struct L2NormalizeLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function L2NormalizeLayerParams(; kwargs...)
        obj = new(meta(L2NormalizeLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct L2NormalizeLayerParams
const __meta_L2NormalizeLayerParams = Ref{ProtoMeta}()
function meta(::Type{L2NormalizeLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_L2NormalizeLayerParams)
            __meta_L2NormalizeLayerParams[] = target = ProtoMeta(L2NormalizeLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:epsilon => Float32]
            meta(target, L2NormalizeLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_L2NormalizeLayerParams[]
    end
end
function Base.getproperty(obj::L2NormalizeLayerParams, name::Symbol)
    if name === :epsilon
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

const FlattenLayerParams_FlattenOrder = (;[
    Symbol("CHANNEL_FIRST") => Int32(0),
    Symbol("CHANNEL_LAST") => Int32(1),
]...)

mutable struct FlattenLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function FlattenLayerParams(; kwargs...)
        obj = new(meta(FlattenLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct FlattenLayerParams
const __meta_FlattenLayerParams = Ref{ProtoMeta}()
function meta(::Type{FlattenLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_FlattenLayerParams)
            __meta_FlattenLayerParams[] = target = ProtoMeta(FlattenLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:mode => Int32]
            meta(target, FlattenLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_FlattenLayerParams[]
    end
end
function Base.getproperty(obj::FlattenLayerParams, name::Symbol)
    if name === :mode
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

const ReshapeLayerParams_ReshapeOrder = (;[
    Symbol("CHANNEL_FIRST") => Int32(0),
    Symbol("CHANNEL_LAST") => Int32(1),
]...)

mutable struct ReshapeLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ReshapeLayerParams(; kwargs...)
        obj = new(meta(ReshapeLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ReshapeLayerParams
const __meta_ReshapeLayerParams = Ref{ProtoMeta}()
function meta(::Type{ReshapeLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ReshapeLayerParams)
            __meta_ReshapeLayerParams[] = target = ProtoMeta(ReshapeLayerParams)
            pack = Symbol[:targetShape]
            allflds = Pair{Symbol,Union{Type,String}}[:targetShape => Base.Vector{Int64}, :mode => Int32]
            meta(target, ReshapeLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ReshapeLayerParams[]
    end
end
function Base.getproperty(obj::ReshapeLayerParams, name::Symbol)
    if name === :targetShape
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :mode
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct PermuteLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PermuteLayerParams(; kwargs...)
        obj = new(meta(PermuteLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PermuteLayerParams
const __meta_PermuteLayerParams = Ref{ProtoMeta}()
function meta(::Type{PermuteLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PermuteLayerParams)
            __meta_PermuteLayerParams[] = target = ProtoMeta(PermuteLayerParams)
            pack = Symbol[:axis]
            allflds = Pair{Symbol,Union{Type,String}}[:axis => Base.Vector{UInt64}]
            meta(target, PermuteLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PermuteLayerParams[]
    end
end
function Base.getproperty(obj::PermuteLayerParams, name::Symbol)
    if name === :axis
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    else
        getfield(obj, name)
    end
end

const ReorganizeDataLayerParams_ReorganizationType = (;[
    Symbol("SPACE_TO_DEPTH") => Int32(0),
    Symbol("DEPTH_TO_SPACE") => Int32(1),
    Symbol("PIXEL_SHUFFLE") => Int32(2),
]...)

mutable struct ReorganizeDataLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ReorganizeDataLayerParams(; kwargs...)
        obj = new(meta(ReorganizeDataLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ReorganizeDataLayerParams
const __meta_ReorganizeDataLayerParams = Ref{ProtoMeta}()
function meta(::Type{ReorganizeDataLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ReorganizeDataLayerParams)
            __meta_ReorganizeDataLayerParams[] = target = ProtoMeta(ReorganizeDataLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:mode => Int32, :blockSize => UInt64]
            meta(target, ReorganizeDataLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ReorganizeDataLayerParams[]
    end
end
function Base.getproperty(obj::ReorganizeDataLayerParams, name::Symbol)
    if name === :mode
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :blockSize
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

const SliceLayerParams_SliceAxis = (;[
    Symbol("CHANNEL_AXIS") => Int32(0),
    Symbol("HEIGHT_AXIS") => Int32(1),
    Symbol("WIDTH_AXIS") => Int32(2),
]...)

mutable struct SliceLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SliceLayerParams(; kwargs...)
        obj = new(meta(SliceLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SliceLayerParams
const __meta_SliceLayerParams = Ref{ProtoMeta}()
function meta(::Type{SliceLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SliceLayerParams)
            __meta_SliceLayerParams[] = target = ProtoMeta(SliceLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:startIndex => Int64, :endIndex => Int64, :stride => UInt64, :axis => Int32]
            meta(target, SliceLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SliceLayerParams[]
    end
end
function Base.getproperty(obj::SliceLayerParams, name::Symbol)
    if name === :startIndex
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :endIndex
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :stride
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :axis
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

const ReduceLayerParams_ReduceOperation = (;[
    Symbol("SUM") => Int32(0),
    Symbol("AVG") => Int32(1),
    Symbol("PROD") => Int32(2),
    Symbol("LOGSUM") => Int32(3),
    Symbol("SUMSQUARE") => Int32(4),
    Symbol("L1") => Int32(5),
    Symbol("L2") => Int32(6),
    Symbol("MAX") => Int32(7),
    Symbol("MIN") => Int32(8),
    Symbol("ARGMAX") => Int32(9),
]...)

const ReduceLayerParams_ReduceAxis = (;[
    Symbol("CHW") => Int32(0),
    Symbol("HW") => Int32(1),
    Symbol("C") => Int32(2),
    Symbol("H") => Int32(3),
    Symbol("W") => Int32(4),
]...)

mutable struct ReduceLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ReduceLayerParams(; kwargs...)
        obj = new(meta(ReduceLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ReduceLayerParams
const __meta_ReduceLayerParams = Ref{ProtoMeta}()
function meta(::Type{ReduceLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ReduceLayerParams)
            __meta_ReduceLayerParams[] = target = ProtoMeta(ReduceLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:mode => Int32, :epsilon => Float32, :axis => Int32]
            meta(target, ReduceLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ReduceLayerParams[]
    end
end
function Base.getproperty(obj::ReduceLayerParams, name::Symbol)
    if name === :mode
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :epsilon
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :axis
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct CropLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CropLayerParams(; kwargs...)
        obj = new(meta(CropLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CropLayerParams
const __meta_CropLayerParams = Ref{ProtoMeta}()
function meta(::Type{CropLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CropLayerParams)
            __meta_CropLayerParams[] = target = ProtoMeta(CropLayerParams)
            fnum = Int[1,5]
            pack = Symbol[:offset]
            allflds = Pair{Symbol,Union{Type,String}}[:cropAmounts => BorderAmounts, :offset => Base.Vector{UInt64}]
            meta(target, CropLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CropLayerParams[]
    end
end
function Base.getproperty(obj::CropLayerParams, name::Symbol)
    if name === :cropAmounts
        return (obj.__protobuf_jl_internal_values[name])::BorderAmounts
    elseif name === :offset
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    else
        getfield(obj, name)
    end
end

mutable struct AverageLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AverageLayerParams(; kwargs...)
        obj = new(meta(AverageLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AverageLayerParams
const __meta_AverageLayerParams = Ref{ProtoMeta}()
function meta(::Type{AverageLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AverageLayerParams)
            __meta_AverageLayerParams[] = target = ProtoMeta(AverageLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, AverageLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_AverageLayerParams[]
    end
end

mutable struct MaxLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function MaxLayerParams(; kwargs...)
        obj = new(meta(MaxLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct MaxLayerParams
const __meta_MaxLayerParams = Ref{ProtoMeta}()
function meta(::Type{MaxLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_MaxLayerParams)
            __meta_MaxLayerParams[] = target = ProtoMeta(MaxLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, MaxLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_MaxLayerParams[]
    end
end

mutable struct MinLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function MinLayerParams(; kwargs...)
        obj = new(meta(MinLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct MinLayerParams
const __meta_MinLayerParams = Ref{ProtoMeta}()
function meta(::Type{MinLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_MinLayerParams)
            __meta_MinLayerParams[] = target = ProtoMeta(MinLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, MinLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_MinLayerParams[]
    end
end

mutable struct DotProductLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DotProductLayerParams(; kwargs...)
        obj = new(meta(DotProductLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct DotProductLayerParams
const __meta_DotProductLayerParams = Ref{ProtoMeta}()
function meta(::Type{DotProductLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DotProductLayerParams)
            __meta_DotProductLayerParams[] = target = ProtoMeta(DotProductLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:cosineSimilarity => Bool]
            meta(target, DotProductLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DotProductLayerParams[]
    end
end
function Base.getproperty(obj::DotProductLayerParams, name::Symbol)
    if name === :cosineSimilarity
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct MeanVarianceNormalizeLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function MeanVarianceNormalizeLayerParams(; kwargs...)
        obj = new(meta(MeanVarianceNormalizeLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct MeanVarianceNormalizeLayerParams
const __meta_MeanVarianceNormalizeLayerParams = Ref{ProtoMeta}()
function meta(::Type{MeanVarianceNormalizeLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_MeanVarianceNormalizeLayerParams)
            __meta_MeanVarianceNormalizeLayerParams[] = target = ProtoMeta(MeanVarianceNormalizeLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:acrossChannels => Bool, :normalizeVariance => Bool, :epsilon => Float32]
            meta(target, MeanVarianceNormalizeLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_MeanVarianceNormalizeLayerParams[]
    end
end
function Base.getproperty(obj::MeanVarianceNormalizeLayerParams, name::Symbol)
    if name === :acrossChannels
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :normalizeVariance
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :epsilon
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct SequenceRepeatLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SequenceRepeatLayerParams(; kwargs...)
        obj = new(meta(SequenceRepeatLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SequenceRepeatLayerParams
const __meta_SequenceRepeatLayerParams = Ref{ProtoMeta}()
function meta(::Type{SequenceRepeatLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SequenceRepeatLayerParams)
            __meta_SequenceRepeatLayerParams[] = target = ProtoMeta(SequenceRepeatLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:nRepetitions => UInt64]
            meta(target, SequenceRepeatLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SequenceRepeatLayerParams[]
    end
end
function Base.getproperty(obj::SequenceRepeatLayerParams, name::Symbol)
    if name === :nRepetitions
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct SimpleRecurrentLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SimpleRecurrentLayerParams(; kwargs...)
        obj = new(meta(SimpleRecurrentLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SimpleRecurrentLayerParams
const __meta_SimpleRecurrentLayerParams = Ref{ProtoMeta}()
function meta(::Type{SimpleRecurrentLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SimpleRecurrentLayerParams)
            __meta_SimpleRecurrentLayerParams[] = target = ProtoMeta(SimpleRecurrentLayerParams)
            fnum = Int[1,2,10,15,20,30,31,32,100]
            allflds = Pair{Symbol,Union{Type,String}}[:inputVectorSize => UInt64, :outputVectorSize => UInt64, :activation => ActivationParams, :sequenceOutput => Bool, :hasBiasVector => Bool, :weightMatrix => WeightParams, :recursionMatrix => WeightParams, :biasVector => WeightParams, :reverseInput => Bool]
            meta(target, SimpleRecurrentLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SimpleRecurrentLayerParams[]
    end
end
function Base.getproperty(obj::SimpleRecurrentLayerParams, name::Symbol)
    if name === :inputVectorSize
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :outputVectorSize
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :activation
        return (obj.__protobuf_jl_internal_values[name])::ActivationParams
    elseif name === :sequenceOutput
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :hasBiasVector
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :weightMatrix
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :recursionMatrix
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :biasVector
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :reverseInput
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct GRULayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GRULayerParams(; kwargs...)
        obj = new(meta(GRULayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GRULayerParams
const __meta_GRULayerParams = Ref{ProtoMeta}()
function meta(::Type{GRULayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GRULayerParams)
            __meta_GRULayerParams[] = target = ProtoMeta(GRULayerParams)
            fnum = Int[1,2,10,15,20,30,31,32,50,51,52,70,71,72,100]
            allflds = Pair{Symbol,Union{Type,String}}[:inputVectorSize => UInt64, :outputVectorSize => UInt64, :activations => Base.Vector{ActivationParams}, :sequenceOutput => Bool, :hasBiasVectors => Bool, :updateGateWeightMatrix => WeightParams, :resetGateWeightMatrix => WeightParams, :outputGateWeightMatrix => WeightParams, :updateGateRecursionMatrix => WeightParams, :resetGateRecursionMatrix => WeightParams, :outputGateRecursionMatrix => WeightParams, :updateGateBiasVector => WeightParams, :resetGateBiasVector => WeightParams, :outputGateBiasVector => WeightParams, :reverseInput => Bool]
            meta(target, GRULayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GRULayerParams[]
    end
end
function Base.getproperty(obj::GRULayerParams, name::Symbol)
    if name === :inputVectorSize
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :outputVectorSize
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :activations
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ActivationParams}
    elseif name === :sequenceOutput
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :hasBiasVectors
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :updateGateWeightMatrix
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :resetGateWeightMatrix
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :outputGateWeightMatrix
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :updateGateRecursionMatrix
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :resetGateRecursionMatrix
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :outputGateRecursionMatrix
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :updateGateBiasVector
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :resetGateBiasVector
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :outputGateBiasVector
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :reverseInput
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct LSTMParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LSTMParams(; kwargs...)
        obj = new(meta(LSTMParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LSTMParams
const __meta_LSTMParams = Ref{ProtoMeta}()
function meta(::Type{LSTMParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LSTMParams)
            __meta_LSTMParams[] = target = ProtoMeta(LSTMParams)
            fnum = Int[10,20,30,40,50,60]
            allflds = Pair{Symbol,Union{Type,String}}[:sequenceOutput => Bool, :hasBiasVectors => Bool, :forgetBias => Bool, :hasPeepholeVectors => Bool, :coupledInputAndForgetGate => Bool, :cellClipThreshold => Float32]
            meta(target, LSTMParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LSTMParams[]
    end
end
function Base.getproperty(obj::LSTMParams, name::Symbol)
    if name === :sequenceOutput
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :hasBiasVectors
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :forgetBias
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :hasPeepholeVectors
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :coupledInputAndForgetGate
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :cellClipThreshold
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct LSTMWeightParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LSTMWeightParams(; kwargs...)
        obj = new(meta(LSTMWeightParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LSTMWeightParams
const __meta_LSTMWeightParams = Ref{ProtoMeta}()
function meta(::Type{LSTMWeightParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LSTMWeightParams)
            __meta_LSTMWeightParams[] = target = ProtoMeta(LSTMWeightParams)
            fnum = Int[1,2,3,4,20,21,22,23,40,41,42,43,60,61,62]
            allflds = Pair{Symbol,Union{Type,String}}[:inputGateWeightMatrix => WeightParams, :forgetGateWeightMatrix => WeightParams, :blockInputWeightMatrix => WeightParams, :outputGateWeightMatrix => WeightParams, :inputGateRecursionMatrix => WeightParams, :forgetGateRecursionMatrix => WeightParams, :blockInputRecursionMatrix => WeightParams, :outputGateRecursionMatrix => WeightParams, :inputGateBiasVector => WeightParams, :forgetGateBiasVector => WeightParams, :blockInputBiasVector => WeightParams, :outputGateBiasVector => WeightParams, :inputGatePeepholeVector => WeightParams, :forgetGatePeepholeVector => WeightParams, :outputGatePeepholeVector => WeightParams]
            meta(target, LSTMWeightParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LSTMWeightParams[]
    end
end
function Base.getproperty(obj::LSTMWeightParams, name::Symbol)
    if name === :inputGateWeightMatrix
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :forgetGateWeightMatrix
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :blockInputWeightMatrix
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :outputGateWeightMatrix
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :inputGateRecursionMatrix
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :forgetGateRecursionMatrix
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :blockInputRecursionMatrix
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :outputGateRecursionMatrix
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :inputGateBiasVector
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :forgetGateBiasVector
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :blockInputBiasVector
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :outputGateBiasVector
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :inputGatePeepholeVector
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :forgetGatePeepholeVector
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :outputGatePeepholeVector
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    else
        getfield(obj, name)
    end
end

mutable struct UniDirectionalLSTMLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function UniDirectionalLSTMLayerParams(; kwargs...)
        obj = new(meta(UniDirectionalLSTMLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct UniDirectionalLSTMLayerParams
const __meta_UniDirectionalLSTMLayerParams = Ref{ProtoMeta}()
function meta(::Type{UniDirectionalLSTMLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_UniDirectionalLSTMLayerParams)
            __meta_UniDirectionalLSTMLayerParams[] = target = ProtoMeta(UniDirectionalLSTMLayerParams)
            fnum = Int[1,2,10,15,20,100]
            allflds = Pair{Symbol,Union{Type,String}}[:inputVectorSize => UInt64, :outputVectorSize => UInt64, :activations => Base.Vector{ActivationParams}, :params => LSTMParams, :weightParams => LSTMWeightParams, :reverseInput => Bool]
            meta(target, UniDirectionalLSTMLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_UniDirectionalLSTMLayerParams[]
    end
end
function Base.getproperty(obj::UniDirectionalLSTMLayerParams, name::Symbol)
    if name === :inputVectorSize
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :outputVectorSize
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :activations
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ActivationParams}
    elseif name === :params
        return (obj.__protobuf_jl_internal_values[name])::LSTMParams
    elseif name === :weightParams
        return (obj.__protobuf_jl_internal_values[name])::LSTMWeightParams
    elseif name === :reverseInput
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct BiDirectionalLSTMLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BiDirectionalLSTMLayerParams(; kwargs...)
        obj = new(meta(BiDirectionalLSTMLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct BiDirectionalLSTMLayerParams
const __meta_BiDirectionalLSTMLayerParams = Ref{ProtoMeta}()
function meta(::Type{BiDirectionalLSTMLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BiDirectionalLSTMLayerParams)
            __meta_BiDirectionalLSTMLayerParams[] = target = ProtoMeta(BiDirectionalLSTMLayerParams)
            fnum = Int[1,2,10,11,15,20]
            allflds = Pair{Symbol,Union{Type,String}}[:inputVectorSize => UInt64, :outputVectorSize => UInt64, :activationsForwardLSTM => Base.Vector{ActivationParams}, :activationsBackwardLSTM => Base.Vector{ActivationParams}, :params => LSTMParams, :weightParams => Base.Vector{LSTMWeightParams}]
            meta(target, BiDirectionalLSTMLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BiDirectionalLSTMLayerParams[]
    end
end
function Base.getproperty(obj::BiDirectionalLSTMLayerParams, name::Symbol)
    if name === :inputVectorSize
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :outputVectorSize
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :activationsForwardLSTM
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ActivationParams}
    elseif name === :activationsBackwardLSTM
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ActivationParams}
    elseif name === :params
        return (obj.__protobuf_jl_internal_values[name])::LSTMParams
    elseif name === :weightParams
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{LSTMWeightParams}
    else
        getfield(obj, name)
    end
end

mutable struct CustomLayerParams_CustomLayerParamValue <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CustomLayerParams_CustomLayerParamValue(; kwargs...)
        obj = new(meta(CustomLayerParams_CustomLayerParamValue), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CustomLayerParams_CustomLayerParamValue
const __meta_CustomLayerParams_CustomLayerParamValue = Ref{ProtoMeta}()
function meta(::Type{CustomLayerParams_CustomLayerParamValue})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CustomLayerParams_CustomLayerParamValue)
            __meta_CustomLayerParams_CustomLayerParamValue[] = target = ProtoMeta(CustomLayerParams_CustomLayerParamValue)
            fnum = Int[10,20,30,40,50]
            allflds = Pair{Symbol,Union{Type,String}}[:doubleValue => Float64, :stringValue => AbstractString, :intValue => Int32, :longValue => Int64, :boolValue => Bool]
            oneofs = Int[1,1,1,1,1]
            oneof_names = Symbol[Symbol("value")]
            meta(target, CustomLayerParams_CustomLayerParamValue, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_CustomLayerParams_CustomLayerParamValue[]
    end
end
function Base.getproperty(obj::CustomLayerParams_CustomLayerParamValue, name::Symbol)
    if name === :doubleValue
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :stringValue
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :intValue
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :longValue
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :boolValue
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct CustomLayerParams_ParametersEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CustomLayerParams_ParametersEntry(; kwargs...)
        obj = new(meta(CustomLayerParams_ParametersEntry), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CustomLayerParams_ParametersEntry (mapentry)
const __meta_CustomLayerParams_ParametersEntry = Ref{ProtoMeta}()
function meta(::Type{CustomLayerParams_ParametersEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CustomLayerParams_ParametersEntry)
            __meta_CustomLayerParams_ParametersEntry[] = target = ProtoMeta(CustomLayerParams_ParametersEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => CustomLayerParams_CustomLayerParamValue]
            meta(target, CustomLayerParams_ParametersEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CustomLayerParams_ParametersEntry[]
    end
end
function Base.getproperty(obj::CustomLayerParams_ParametersEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::CustomLayerParams_CustomLayerParamValue
    else
        getfield(obj, name)
    end
end

mutable struct CustomLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CustomLayerParams(; kwargs...)
        obj = new(meta(CustomLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CustomLayerParams
const __meta_CustomLayerParams = Ref{ProtoMeta}()
function meta(::Type{CustomLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CustomLayerParams)
            __meta_CustomLayerParams[] = target = ProtoMeta(CustomLayerParams)
            fnum = Int[10,20,30,40]
            allflds = Pair{Symbol,Union{Type,String}}[:className => AbstractString, :weights => Base.Vector{WeightParams}, :parameters => Base.Dict{AbstractString,CustomLayerParams_CustomLayerParamValue}, :description => AbstractString]
            meta(target, CustomLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CustomLayerParams[]
    end
end
function Base.getproperty(obj::CustomLayerParams, name::Symbol)
    if name === :className
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :weights
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{WeightParams}
    elseif name === :parameters
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,CustomLayerParams_CustomLayerParamValue}
    elseif name === :description
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct TransposeLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TransposeLayerParams(; kwargs...)
        obj = new(meta(TransposeLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TransposeLayerParams
const __meta_TransposeLayerParams = Ref{ProtoMeta}()
function meta(::Type{TransposeLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TransposeLayerParams)
            __meta_TransposeLayerParams[] = target = ProtoMeta(TransposeLayerParams)
            pack = Symbol[:axes]
            allflds = Pair{Symbol,Union{Type,String}}[:axes => Base.Vector{UInt64}]
            meta(target, TransposeLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_TransposeLayerParams[]
    end
end
function Base.getproperty(obj::TransposeLayerParams, name::Symbol)
    if name === :axes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    else
        getfield(obj, name)
    end
end

mutable struct BatchedMatMulLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BatchedMatMulLayerParams(; kwargs...)
        obj = new(meta(BatchedMatMulLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct BatchedMatMulLayerParams
const __meta_BatchedMatMulLayerParams = Ref{ProtoMeta}()
function meta(::Type{BatchedMatMulLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BatchedMatMulLayerParams)
            __meta_BatchedMatMulLayerParams[] = target = ProtoMeta(BatchedMatMulLayerParams)
            fnum = Int[1,2,5,6,7,8,9,10]
            allflds = Pair{Symbol,Union{Type,String}}[:transposeA => Bool, :transposeB => Bool, :weightMatrixFirstDimension => UInt64, :weightMatrixSecondDimension => UInt64, :hasBias => Bool, :weights => WeightParams, :bias => WeightParams, :int8DynamicQuantize => Bool]
            meta(target, BatchedMatMulLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BatchedMatMulLayerParams[]
    end
end
function Base.getproperty(obj::BatchedMatMulLayerParams, name::Symbol)
    if name === :transposeA
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :transposeB
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :weightMatrixFirstDimension
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :weightMatrixSecondDimension
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :hasBias
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :weights
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :bias
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :int8DynamicQuantize
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct ConcatNDLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ConcatNDLayerParams(; kwargs...)
        obj = new(meta(ConcatNDLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ConcatNDLayerParams
const __meta_ConcatNDLayerParams = Ref{ProtoMeta}()
function meta(::Type{ConcatNDLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ConcatNDLayerParams)
            __meta_ConcatNDLayerParams[] = target = ProtoMeta(ConcatNDLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:axis => Int64, :interleave => Bool]
            meta(target, ConcatNDLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ConcatNDLayerParams[]
    end
end
function Base.getproperty(obj::ConcatNDLayerParams, name::Symbol)
    if name === :axis
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :interleave
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct SoftmaxNDLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SoftmaxNDLayerParams(; kwargs...)
        obj = new(meta(SoftmaxNDLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SoftmaxNDLayerParams
const __meta_SoftmaxNDLayerParams = Ref{ProtoMeta}()
function meta(::Type{SoftmaxNDLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SoftmaxNDLayerParams)
            __meta_SoftmaxNDLayerParams[] = target = ProtoMeta(SoftmaxNDLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:axis => Int64]
            meta(target, SoftmaxNDLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SoftmaxNDLayerParams[]
    end
end
function Base.getproperty(obj::SoftmaxNDLayerParams, name::Symbol)
    if name === :axis
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ReverseLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ReverseLayerParams(; kwargs...)
        obj = new(meta(ReverseLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ReverseLayerParams
const __meta_ReverseLayerParams = Ref{ProtoMeta}()
function meta(::Type{ReverseLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ReverseLayerParams)
            __meta_ReverseLayerParams[] = target = ProtoMeta(ReverseLayerParams)
            pack = Symbol[:reverseDim]
            allflds = Pair{Symbol,Union{Type,String}}[:reverseDim => Base.Vector{Bool}]
            meta(target, ReverseLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ReverseLayerParams[]
    end
end
function Base.getproperty(obj::ReverseLayerParams, name::Symbol)
    if name === :reverseDim
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Bool}
    else
        getfield(obj, name)
    end
end

mutable struct ReverseSeqLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ReverseSeqLayerParams(; kwargs...)
        obj = new(meta(ReverseSeqLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ReverseSeqLayerParams
const __meta_ReverseSeqLayerParams = Ref{ProtoMeta}()
function meta(::Type{ReverseSeqLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ReverseSeqLayerParams)
            __meta_ReverseSeqLayerParams[] = target = ProtoMeta(ReverseSeqLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:batchAxis => Int64, :sequenceAxis => Int64]
            meta(target, ReverseSeqLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ReverseSeqLayerParams[]
    end
end
function Base.getproperty(obj::ReverseSeqLayerParams, name::Symbol)
    if name === :batchAxis
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :sequenceAxis
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct LoadConstantNDLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LoadConstantNDLayerParams(; kwargs...)
        obj = new(meta(LoadConstantNDLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LoadConstantNDLayerParams
const __meta_LoadConstantNDLayerParams = Ref{ProtoMeta}()
function meta(::Type{LoadConstantNDLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LoadConstantNDLayerParams)
            __meta_LoadConstantNDLayerParams[] = target = ProtoMeta(LoadConstantNDLayerParams)
            pack = Symbol[:shape]
            allflds = Pair{Symbol,Union{Type,String}}[:shape => Base.Vector{UInt64}, :data => WeightParams]
            meta(target, LoadConstantNDLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LoadConstantNDLayerParams[]
    end
end
function Base.getproperty(obj::LoadConstantNDLayerParams, name::Symbol)
    if name === :shape
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    elseif name === :data
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    else
        getfield(obj, name)
    end
end

mutable struct FillLikeLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function FillLikeLayerParams(; kwargs...)
        obj = new(meta(FillLikeLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct FillLikeLayerParams
const __meta_FillLikeLayerParams = Ref{ProtoMeta}()
function meta(::Type{FillLikeLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_FillLikeLayerParams)
            __meta_FillLikeLayerParams[] = target = ProtoMeta(FillLikeLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:value => Float32]
            meta(target, FillLikeLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_FillLikeLayerParams[]
    end
end
function Base.getproperty(obj::FillLikeLayerParams, name::Symbol)
    if name === :value
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct FillStaticLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function FillStaticLayerParams(; kwargs...)
        obj = new(meta(FillStaticLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct FillStaticLayerParams
const __meta_FillStaticLayerParams = Ref{ProtoMeta}()
function meta(::Type{FillStaticLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_FillStaticLayerParams)
            __meta_FillStaticLayerParams[] = target = ProtoMeta(FillStaticLayerParams)
            pack = Symbol[:targetShape]
            allflds = Pair{Symbol,Union{Type,String}}[:value => Float32, :targetShape => Base.Vector{UInt64}]
            meta(target, FillStaticLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_FillStaticLayerParams[]
    end
end
function Base.getproperty(obj::FillStaticLayerParams, name::Symbol)
    if name === :value
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :targetShape
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    else
        getfield(obj, name)
    end
end

mutable struct FillDynamicLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function FillDynamicLayerParams(; kwargs...)
        obj = new(meta(FillDynamicLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct FillDynamicLayerParams
const __meta_FillDynamicLayerParams = Ref{ProtoMeta}()
function meta(::Type{FillDynamicLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_FillDynamicLayerParams)
            __meta_FillDynamicLayerParams[] = target = ProtoMeta(FillDynamicLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:value => Float32]
            meta(target, FillDynamicLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_FillDynamicLayerParams[]
    end
end
function Base.getproperty(obj::FillDynamicLayerParams, name::Symbol)
    if name === :value
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct WhereBroadcastableLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function WhereBroadcastableLayerParams(; kwargs...)
        obj = new(meta(WhereBroadcastableLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct WhereBroadcastableLayerParams
const __meta_WhereBroadcastableLayerParams = Ref{ProtoMeta}()
function meta(::Type{WhereBroadcastableLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_WhereBroadcastableLayerParams)
            __meta_WhereBroadcastableLayerParams[] = target = ProtoMeta(WhereBroadcastableLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, WhereBroadcastableLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_WhereBroadcastableLayerParams[]
    end
end

mutable struct SinLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SinLayerParams(; kwargs...)
        obj = new(meta(SinLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SinLayerParams
const __meta_SinLayerParams = Ref{ProtoMeta}()
function meta(::Type{SinLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SinLayerParams)
            __meta_SinLayerParams[] = target = ProtoMeta(SinLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, SinLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SinLayerParams[]
    end
end

mutable struct CosLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CosLayerParams(; kwargs...)
        obj = new(meta(CosLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CosLayerParams
const __meta_CosLayerParams = Ref{ProtoMeta}()
function meta(::Type{CosLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CosLayerParams)
            __meta_CosLayerParams[] = target = ProtoMeta(CosLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, CosLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CosLayerParams[]
    end
end

mutable struct TanLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TanLayerParams(; kwargs...)
        obj = new(meta(TanLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TanLayerParams
const __meta_TanLayerParams = Ref{ProtoMeta}()
function meta(::Type{TanLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TanLayerParams)
            __meta_TanLayerParams[] = target = ProtoMeta(TanLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, TanLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_TanLayerParams[]
    end
end

mutable struct AsinLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AsinLayerParams(; kwargs...)
        obj = new(meta(AsinLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AsinLayerParams
const __meta_AsinLayerParams = Ref{ProtoMeta}()
function meta(::Type{AsinLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AsinLayerParams)
            __meta_AsinLayerParams[] = target = ProtoMeta(AsinLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, AsinLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_AsinLayerParams[]
    end
end

mutable struct AcosLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AcosLayerParams(; kwargs...)
        obj = new(meta(AcosLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AcosLayerParams
const __meta_AcosLayerParams = Ref{ProtoMeta}()
function meta(::Type{AcosLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AcosLayerParams)
            __meta_AcosLayerParams[] = target = ProtoMeta(AcosLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, AcosLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_AcosLayerParams[]
    end
end

mutable struct AtanLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AtanLayerParams(; kwargs...)
        obj = new(meta(AtanLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AtanLayerParams
const __meta_AtanLayerParams = Ref{ProtoMeta}()
function meta(::Type{AtanLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AtanLayerParams)
            __meta_AtanLayerParams[] = target = ProtoMeta(AtanLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, AtanLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_AtanLayerParams[]
    end
end

mutable struct SinhLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SinhLayerParams(; kwargs...)
        obj = new(meta(SinhLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SinhLayerParams
const __meta_SinhLayerParams = Ref{ProtoMeta}()
function meta(::Type{SinhLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SinhLayerParams)
            __meta_SinhLayerParams[] = target = ProtoMeta(SinhLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, SinhLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SinhLayerParams[]
    end
end

mutable struct CoshLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CoshLayerParams(; kwargs...)
        obj = new(meta(CoshLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CoshLayerParams
const __meta_CoshLayerParams = Ref{ProtoMeta}()
function meta(::Type{CoshLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CoshLayerParams)
            __meta_CoshLayerParams[] = target = ProtoMeta(CoshLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, CoshLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CoshLayerParams[]
    end
end

mutable struct TanhLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TanhLayerParams(; kwargs...)
        obj = new(meta(TanhLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TanhLayerParams
const __meta_TanhLayerParams = Ref{ProtoMeta}()
function meta(::Type{TanhLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TanhLayerParams)
            __meta_TanhLayerParams[] = target = ProtoMeta(TanhLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, TanhLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_TanhLayerParams[]
    end
end

mutable struct AsinhLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AsinhLayerParams(; kwargs...)
        obj = new(meta(AsinhLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AsinhLayerParams
const __meta_AsinhLayerParams = Ref{ProtoMeta}()
function meta(::Type{AsinhLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AsinhLayerParams)
            __meta_AsinhLayerParams[] = target = ProtoMeta(AsinhLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, AsinhLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_AsinhLayerParams[]
    end
end

mutable struct AcoshLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AcoshLayerParams(; kwargs...)
        obj = new(meta(AcoshLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AcoshLayerParams
const __meta_AcoshLayerParams = Ref{ProtoMeta}()
function meta(::Type{AcoshLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AcoshLayerParams)
            __meta_AcoshLayerParams[] = target = ProtoMeta(AcoshLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, AcoshLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_AcoshLayerParams[]
    end
end

mutable struct AtanhLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AtanhLayerParams(; kwargs...)
        obj = new(meta(AtanhLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AtanhLayerParams
const __meta_AtanhLayerParams = Ref{ProtoMeta}()
function meta(::Type{AtanhLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AtanhLayerParams)
            __meta_AtanhLayerParams[] = target = ProtoMeta(AtanhLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, AtanhLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_AtanhLayerParams[]
    end
end

mutable struct PowBroadcastableLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PowBroadcastableLayerParams(; kwargs...)
        obj = new(meta(PowBroadcastableLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct PowBroadcastableLayerParams
const __meta_PowBroadcastableLayerParams = Ref{ProtoMeta}()
function meta(::Type{PowBroadcastableLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PowBroadcastableLayerParams)
            __meta_PowBroadcastableLayerParams[] = target = ProtoMeta(PowBroadcastableLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, PowBroadcastableLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PowBroadcastableLayerParams[]
    end
end

mutable struct Exp2LayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Exp2LayerParams(; kwargs...)
        obj = new(meta(Exp2LayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Exp2LayerParams
const __meta_Exp2LayerParams = Ref{ProtoMeta}()
function meta(::Type{Exp2LayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Exp2LayerParams)
            __meta_Exp2LayerParams[] = target = ProtoMeta(Exp2LayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, Exp2LayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Exp2LayerParams[]
    end
end

mutable struct WhereNonZeroLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function WhereNonZeroLayerParams(; kwargs...)
        obj = new(meta(WhereNonZeroLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct WhereNonZeroLayerParams
const __meta_WhereNonZeroLayerParams = Ref{ProtoMeta}()
function meta(::Type{WhereNonZeroLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_WhereNonZeroLayerParams)
            __meta_WhereNonZeroLayerParams[] = target = ProtoMeta(WhereNonZeroLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, WhereNonZeroLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_WhereNonZeroLayerParams[]
    end
end

mutable struct MatrixBandPartLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function MatrixBandPartLayerParams(; kwargs...)
        obj = new(meta(MatrixBandPartLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct MatrixBandPartLayerParams
const __meta_MatrixBandPartLayerParams = Ref{ProtoMeta}()
function meta(::Type{MatrixBandPartLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_MatrixBandPartLayerParams)
            __meta_MatrixBandPartLayerParams[] = target = ProtoMeta(MatrixBandPartLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:numLower => Int64, :numUpper => Int64]
            meta(target, MatrixBandPartLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_MatrixBandPartLayerParams[]
    end
end
function Base.getproperty(obj::MatrixBandPartLayerParams, name::Symbol)
    if name === :numLower
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :numUpper
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct UpperTriangularLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function UpperTriangularLayerParams(; kwargs...)
        obj = new(meta(UpperTriangularLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct UpperTriangularLayerParams
const __meta_UpperTriangularLayerParams = Ref{ProtoMeta}()
function meta(::Type{UpperTriangularLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_UpperTriangularLayerParams)
            __meta_UpperTriangularLayerParams[] = target = ProtoMeta(UpperTriangularLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:k => Int64]
            meta(target, UpperTriangularLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_UpperTriangularLayerParams[]
    end
end
function Base.getproperty(obj::UpperTriangularLayerParams, name::Symbol)
    if name === :k
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct LowerTriangularLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LowerTriangularLayerParams(; kwargs...)
        obj = new(meta(LowerTriangularLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LowerTriangularLayerParams
const __meta_LowerTriangularLayerParams = Ref{ProtoMeta}()
function meta(::Type{LowerTriangularLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LowerTriangularLayerParams)
            __meta_LowerTriangularLayerParams[] = target = ProtoMeta(LowerTriangularLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:k => Int64]
            meta(target, LowerTriangularLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LowerTriangularLayerParams[]
    end
end
function Base.getproperty(obj::LowerTriangularLayerParams, name::Symbol)
    if name === :k
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct BroadcastToLikeLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BroadcastToLikeLayerParams(; kwargs...)
        obj = new(meta(BroadcastToLikeLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct BroadcastToLikeLayerParams
const __meta_BroadcastToLikeLayerParams = Ref{ProtoMeta}()
function meta(::Type{BroadcastToLikeLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BroadcastToLikeLayerParams)
            __meta_BroadcastToLikeLayerParams[] = target = ProtoMeta(BroadcastToLikeLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, BroadcastToLikeLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BroadcastToLikeLayerParams[]
    end
end

mutable struct BroadcastToStaticLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BroadcastToStaticLayerParams(; kwargs...)
        obj = new(meta(BroadcastToStaticLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct BroadcastToStaticLayerParams
const __meta_BroadcastToStaticLayerParams = Ref{ProtoMeta}()
function meta(::Type{BroadcastToStaticLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BroadcastToStaticLayerParams)
            __meta_BroadcastToStaticLayerParams[] = target = ProtoMeta(BroadcastToStaticLayerParams)
            pack = Symbol[:targetShape]
            allflds = Pair{Symbol,Union{Type,String}}[:targetShape => Base.Vector{UInt64}]
            meta(target, BroadcastToStaticLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BroadcastToStaticLayerParams[]
    end
end
function Base.getproperty(obj::BroadcastToStaticLayerParams, name::Symbol)
    if name === :targetShape
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    else
        getfield(obj, name)
    end
end

mutable struct BroadcastToDynamicLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BroadcastToDynamicLayerParams(; kwargs...)
        obj = new(meta(BroadcastToDynamicLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct BroadcastToDynamicLayerParams
const __meta_BroadcastToDynamicLayerParams = Ref{ProtoMeta}()
function meta(::Type{BroadcastToDynamicLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BroadcastToDynamicLayerParams)
            __meta_BroadcastToDynamicLayerParams[] = target = ProtoMeta(BroadcastToDynamicLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, BroadcastToDynamicLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BroadcastToDynamicLayerParams[]
    end
end

mutable struct AddBroadcastableLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AddBroadcastableLayerParams(; kwargs...)
        obj = new(meta(AddBroadcastableLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AddBroadcastableLayerParams
const __meta_AddBroadcastableLayerParams = Ref{ProtoMeta}()
function meta(::Type{AddBroadcastableLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AddBroadcastableLayerParams)
            __meta_AddBroadcastableLayerParams[] = target = ProtoMeta(AddBroadcastableLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, AddBroadcastableLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_AddBroadcastableLayerParams[]
    end
end

mutable struct MaxBroadcastableLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function MaxBroadcastableLayerParams(; kwargs...)
        obj = new(meta(MaxBroadcastableLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct MaxBroadcastableLayerParams
const __meta_MaxBroadcastableLayerParams = Ref{ProtoMeta}()
function meta(::Type{MaxBroadcastableLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_MaxBroadcastableLayerParams)
            __meta_MaxBroadcastableLayerParams[] = target = ProtoMeta(MaxBroadcastableLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, MaxBroadcastableLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_MaxBroadcastableLayerParams[]
    end
end

mutable struct MinBroadcastableLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function MinBroadcastableLayerParams(; kwargs...)
        obj = new(meta(MinBroadcastableLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct MinBroadcastableLayerParams
const __meta_MinBroadcastableLayerParams = Ref{ProtoMeta}()
function meta(::Type{MinBroadcastableLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_MinBroadcastableLayerParams)
            __meta_MinBroadcastableLayerParams[] = target = ProtoMeta(MinBroadcastableLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, MinBroadcastableLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_MinBroadcastableLayerParams[]
    end
end

mutable struct ModBroadcastableLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ModBroadcastableLayerParams(; kwargs...)
        obj = new(meta(ModBroadcastableLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ModBroadcastableLayerParams
const __meta_ModBroadcastableLayerParams = Ref{ProtoMeta}()
function meta(::Type{ModBroadcastableLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ModBroadcastableLayerParams)
            __meta_ModBroadcastableLayerParams[] = target = ProtoMeta(ModBroadcastableLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, ModBroadcastableLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ModBroadcastableLayerParams[]
    end
end

mutable struct FloorDivBroadcastableLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function FloorDivBroadcastableLayerParams(; kwargs...)
        obj = new(meta(FloorDivBroadcastableLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct FloorDivBroadcastableLayerParams
const __meta_FloorDivBroadcastableLayerParams = Ref{ProtoMeta}()
function meta(::Type{FloorDivBroadcastableLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_FloorDivBroadcastableLayerParams)
            __meta_FloorDivBroadcastableLayerParams[] = target = ProtoMeta(FloorDivBroadcastableLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, FloorDivBroadcastableLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_FloorDivBroadcastableLayerParams[]
    end
end

mutable struct SubtractBroadcastableLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SubtractBroadcastableLayerParams(; kwargs...)
        obj = new(meta(SubtractBroadcastableLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SubtractBroadcastableLayerParams
const __meta_SubtractBroadcastableLayerParams = Ref{ProtoMeta}()
function meta(::Type{SubtractBroadcastableLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SubtractBroadcastableLayerParams)
            __meta_SubtractBroadcastableLayerParams[] = target = ProtoMeta(SubtractBroadcastableLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, SubtractBroadcastableLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SubtractBroadcastableLayerParams[]
    end
end

mutable struct MultiplyBroadcastableLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function MultiplyBroadcastableLayerParams(; kwargs...)
        obj = new(meta(MultiplyBroadcastableLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct MultiplyBroadcastableLayerParams
const __meta_MultiplyBroadcastableLayerParams = Ref{ProtoMeta}()
function meta(::Type{MultiplyBroadcastableLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_MultiplyBroadcastableLayerParams)
            __meta_MultiplyBroadcastableLayerParams[] = target = ProtoMeta(MultiplyBroadcastableLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, MultiplyBroadcastableLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_MultiplyBroadcastableLayerParams[]
    end
end

mutable struct DivideBroadcastableLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DivideBroadcastableLayerParams(; kwargs...)
        obj = new(meta(DivideBroadcastableLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct DivideBroadcastableLayerParams
const __meta_DivideBroadcastableLayerParams = Ref{ProtoMeta}()
function meta(::Type{DivideBroadcastableLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DivideBroadcastableLayerParams)
            __meta_DivideBroadcastableLayerParams[] = target = ProtoMeta(DivideBroadcastableLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, DivideBroadcastableLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DivideBroadcastableLayerParams[]
    end
end

mutable struct GatherLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GatherLayerParams(; kwargs...)
        obj = new(meta(GatherLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GatherLayerParams
const __meta_GatherLayerParams = Ref{ProtoMeta}()
function meta(::Type{GatherLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GatherLayerParams)
            __meta_GatherLayerParams[] = target = ProtoMeta(GatherLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:axis => Int64]
            meta(target, GatherLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GatherLayerParams[]
    end
end
function Base.getproperty(obj::GatherLayerParams, name::Symbol)
    if name === :axis
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ScatterLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ScatterLayerParams(; kwargs...)
        obj = new(meta(ScatterLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ScatterLayerParams
const __meta_ScatterLayerParams = Ref{ProtoMeta}()
function meta(::Type{ScatterLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ScatterLayerParams)
            __meta_ScatterLayerParams[] = target = ProtoMeta(ScatterLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:axis => Int64, :mode => Int32]
            meta(target, ScatterLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ScatterLayerParams[]
    end
end
function Base.getproperty(obj::ScatterLayerParams, name::Symbol)
    if name === :axis
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :mode
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct GatherNDLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GatherNDLayerParams(; kwargs...)
        obj = new(meta(GatherNDLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GatherNDLayerParams
const __meta_GatherNDLayerParams = Ref{ProtoMeta}()
function meta(::Type{GatherNDLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GatherNDLayerParams)
            __meta_GatherNDLayerParams[] = target = ProtoMeta(GatherNDLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, GatherNDLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GatherNDLayerParams[]
    end
end

mutable struct ScatterNDLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ScatterNDLayerParams(; kwargs...)
        obj = new(meta(ScatterNDLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ScatterNDLayerParams
const __meta_ScatterNDLayerParams = Ref{ProtoMeta}()
function meta(::Type{ScatterNDLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ScatterNDLayerParams)
            __meta_ScatterNDLayerParams[] = target = ProtoMeta(ScatterNDLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:mode => Int32]
            meta(target, ScatterNDLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ScatterNDLayerParams[]
    end
end
function Base.getproperty(obj::ScatterNDLayerParams, name::Symbol)
    if name === :mode
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct GatherAlongAxisLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GatherAlongAxisLayerParams(; kwargs...)
        obj = new(meta(GatherAlongAxisLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GatherAlongAxisLayerParams
const __meta_GatherAlongAxisLayerParams = Ref{ProtoMeta}()
function meta(::Type{GatherAlongAxisLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GatherAlongAxisLayerParams)
            __meta_GatherAlongAxisLayerParams[] = target = ProtoMeta(GatherAlongAxisLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:axis => Int64]
            meta(target, GatherAlongAxisLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GatherAlongAxisLayerParams[]
    end
end
function Base.getproperty(obj::GatherAlongAxisLayerParams, name::Symbol)
    if name === :axis
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ScatterAlongAxisLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ScatterAlongAxisLayerParams(; kwargs...)
        obj = new(meta(ScatterAlongAxisLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ScatterAlongAxisLayerParams
const __meta_ScatterAlongAxisLayerParams = Ref{ProtoMeta}()
function meta(::Type{ScatterAlongAxisLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ScatterAlongAxisLayerParams)
            __meta_ScatterAlongAxisLayerParams[] = target = ProtoMeta(ScatterAlongAxisLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:axis => Int64, :mode => Int32]
            meta(target, ScatterAlongAxisLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ScatterAlongAxisLayerParams[]
    end
end
function Base.getproperty(obj::ScatterAlongAxisLayerParams, name::Symbol)
    if name === :axis
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :mode
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct StackLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function StackLayerParams(; kwargs...)
        obj = new(meta(StackLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct StackLayerParams
const __meta_StackLayerParams = Ref{ProtoMeta}()
function meta(::Type{StackLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_StackLayerParams)
            __meta_StackLayerParams[] = target = ProtoMeta(StackLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:axis => Int64]
            meta(target, StackLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_StackLayerParams[]
    end
end
function Base.getproperty(obj::StackLayerParams, name::Symbol)
    if name === :axis
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct RankPreservingReshapeLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RankPreservingReshapeLayerParams(; kwargs...)
        obj = new(meta(RankPreservingReshapeLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RankPreservingReshapeLayerParams
const __meta_RankPreservingReshapeLayerParams = Ref{ProtoMeta}()
function meta(::Type{RankPreservingReshapeLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RankPreservingReshapeLayerParams)
            __meta_RankPreservingReshapeLayerParams[] = target = ProtoMeta(RankPreservingReshapeLayerParams)
            pack = Symbol[:targetShape]
            allflds = Pair{Symbol,Union{Type,String}}[:targetShape => Base.Vector{Int64}]
            meta(target, RankPreservingReshapeLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RankPreservingReshapeLayerParams[]
    end
end
function Base.getproperty(obj::RankPreservingReshapeLayerParams, name::Symbol)
    if name === :targetShape
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    else
        getfield(obj, name)
    end
end

mutable struct ConstantPaddingLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ConstantPaddingLayerParams(; kwargs...)
        obj = new(meta(ConstantPaddingLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ConstantPaddingLayerParams
const __meta_ConstantPaddingLayerParams = Ref{ProtoMeta}()
function meta(::Type{ConstantPaddingLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ConstantPaddingLayerParams)
            __meta_ConstantPaddingLayerParams[] = target = ProtoMeta(ConstantPaddingLayerParams)
            pack = Symbol[:padAmounts]
            allflds = Pair{Symbol,Union{Type,String}}[:value => Float32, :padAmounts => Base.Vector{UInt64}, :padToGivenOutputSizeMode => Bool]
            meta(target, ConstantPaddingLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ConstantPaddingLayerParams[]
    end
end
function Base.getproperty(obj::ConstantPaddingLayerParams, name::Symbol)
    if name === :value
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :padAmounts
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    elseif name === :padToGivenOutputSizeMode
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct RandomNormalLikeLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RandomNormalLikeLayerParams(; kwargs...)
        obj = new(meta(RandomNormalLikeLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RandomNormalLikeLayerParams
const __meta_RandomNormalLikeLayerParams = Ref{ProtoMeta}()
function meta(::Type{RandomNormalLikeLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RandomNormalLikeLayerParams)
            __meta_RandomNormalLikeLayerParams[] = target = ProtoMeta(RandomNormalLikeLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:seed => Int64, :mean => Float32, :stdDev => Float32]
            meta(target, RandomNormalLikeLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RandomNormalLikeLayerParams[]
    end
end
function Base.getproperty(obj::RandomNormalLikeLayerParams, name::Symbol)
    if name === :seed
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :mean
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :stdDev
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct RandomNormalStaticLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RandomNormalStaticLayerParams(; kwargs...)
        obj = new(meta(RandomNormalStaticLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RandomNormalStaticLayerParams
const __meta_RandomNormalStaticLayerParams = Ref{ProtoMeta}()
function meta(::Type{RandomNormalStaticLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RandomNormalStaticLayerParams)
            __meta_RandomNormalStaticLayerParams[] = target = ProtoMeta(RandomNormalStaticLayerParams)
            pack = Symbol[:outputShape]
            allflds = Pair{Symbol,Union{Type,String}}[:seed => Int64, :mean => Float32, :stdDev => Float32, :outputShape => Base.Vector{UInt64}]
            meta(target, RandomNormalStaticLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RandomNormalStaticLayerParams[]
    end
end
function Base.getproperty(obj::RandomNormalStaticLayerParams, name::Symbol)
    if name === :seed
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :mean
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :stdDev
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :outputShape
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    else
        getfield(obj, name)
    end
end

mutable struct RandomNormalDynamicLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RandomNormalDynamicLayerParams(; kwargs...)
        obj = new(meta(RandomNormalDynamicLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RandomNormalDynamicLayerParams
const __meta_RandomNormalDynamicLayerParams = Ref{ProtoMeta}()
function meta(::Type{RandomNormalDynamicLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RandomNormalDynamicLayerParams)
            __meta_RandomNormalDynamicLayerParams[] = target = ProtoMeta(RandomNormalDynamicLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:seed => Int64, :mean => Float32, :stdDev => Float32]
            meta(target, RandomNormalDynamicLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RandomNormalDynamicLayerParams[]
    end
end
function Base.getproperty(obj::RandomNormalDynamicLayerParams, name::Symbol)
    if name === :seed
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :mean
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :stdDev
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct RandomUniformLikeLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RandomUniformLikeLayerParams(; kwargs...)
        obj = new(meta(RandomUniformLikeLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RandomUniformLikeLayerParams
const __meta_RandomUniformLikeLayerParams = Ref{ProtoMeta}()
function meta(::Type{RandomUniformLikeLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RandomUniformLikeLayerParams)
            __meta_RandomUniformLikeLayerParams[] = target = ProtoMeta(RandomUniformLikeLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:seed => Int64, :minVal => Float32, :maxVal => Float32]
            meta(target, RandomUniformLikeLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RandomUniformLikeLayerParams[]
    end
end
function Base.getproperty(obj::RandomUniformLikeLayerParams, name::Symbol)
    if name === :seed
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :minVal
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :maxVal
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct RandomUniformStaticLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RandomUniformStaticLayerParams(; kwargs...)
        obj = new(meta(RandomUniformStaticLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RandomUniformStaticLayerParams
const __meta_RandomUniformStaticLayerParams = Ref{ProtoMeta}()
function meta(::Type{RandomUniformStaticLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RandomUniformStaticLayerParams)
            __meta_RandomUniformStaticLayerParams[] = target = ProtoMeta(RandomUniformStaticLayerParams)
            pack = Symbol[:outputShape]
            allflds = Pair{Symbol,Union{Type,String}}[:seed => Int64, :minVal => Float32, :maxVal => Float32, :outputShape => Base.Vector{UInt64}]
            meta(target, RandomUniformStaticLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RandomUniformStaticLayerParams[]
    end
end
function Base.getproperty(obj::RandomUniformStaticLayerParams, name::Symbol)
    if name === :seed
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :minVal
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :maxVal
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :outputShape
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    else
        getfield(obj, name)
    end
end

mutable struct RandomUniformDynamicLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RandomUniformDynamicLayerParams(; kwargs...)
        obj = new(meta(RandomUniformDynamicLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RandomUniformDynamicLayerParams
const __meta_RandomUniformDynamicLayerParams = Ref{ProtoMeta}()
function meta(::Type{RandomUniformDynamicLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RandomUniformDynamicLayerParams)
            __meta_RandomUniformDynamicLayerParams[] = target = ProtoMeta(RandomUniformDynamicLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:seed => Int64, :minVal => Float32, :maxVal => Float32]
            meta(target, RandomUniformDynamicLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RandomUniformDynamicLayerParams[]
    end
end
function Base.getproperty(obj::RandomUniformDynamicLayerParams, name::Symbol)
    if name === :seed
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :minVal
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :maxVal
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct RandomBernoulliLikeLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RandomBernoulliLikeLayerParams(; kwargs...)
        obj = new(meta(RandomBernoulliLikeLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RandomBernoulliLikeLayerParams
const __meta_RandomBernoulliLikeLayerParams = Ref{ProtoMeta}()
function meta(::Type{RandomBernoulliLikeLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RandomBernoulliLikeLayerParams)
            __meta_RandomBernoulliLikeLayerParams[] = target = ProtoMeta(RandomBernoulliLikeLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:seed => Int64, :prob => Float32]
            meta(target, RandomBernoulliLikeLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RandomBernoulliLikeLayerParams[]
    end
end
function Base.getproperty(obj::RandomBernoulliLikeLayerParams, name::Symbol)
    if name === :seed
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :prob
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct RandomBernoulliStaticLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RandomBernoulliStaticLayerParams(; kwargs...)
        obj = new(meta(RandomBernoulliStaticLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RandomBernoulliStaticLayerParams
const __meta_RandomBernoulliStaticLayerParams = Ref{ProtoMeta}()
function meta(::Type{RandomBernoulliStaticLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RandomBernoulliStaticLayerParams)
            __meta_RandomBernoulliStaticLayerParams[] = target = ProtoMeta(RandomBernoulliStaticLayerParams)
            pack = Symbol[:outputShape]
            allflds = Pair{Symbol,Union{Type,String}}[:seed => Int64, :prob => Float32, :outputShape => Base.Vector{UInt64}]
            meta(target, RandomBernoulliStaticLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RandomBernoulliStaticLayerParams[]
    end
end
function Base.getproperty(obj::RandomBernoulliStaticLayerParams, name::Symbol)
    if name === :seed
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :prob
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :outputShape
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    else
        getfield(obj, name)
    end
end

mutable struct RandomBernoulliDynamicLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RandomBernoulliDynamicLayerParams(; kwargs...)
        obj = new(meta(RandomBernoulliDynamicLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RandomBernoulliDynamicLayerParams
const __meta_RandomBernoulliDynamicLayerParams = Ref{ProtoMeta}()
function meta(::Type{RandomBernoulliDynamicLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RandomBernoulliDynamicLayerParams)
            __meta_RandomBernoulliDynamicLayerParams[] = target = ProtoMeta(RandomBernoulliDynamicLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:seed => Int64, :prob => Float32]
            meta(target, RandomBernoulliDynamicLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RandomBernoulliDynamicLayerParams[]
    end
end
function Base.getproperty(obj::RandomBernoulliDynamicLayerParams, name::Symbol)
    if name === :seed
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :prob
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct CategoricalDistributionLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CategoricalDistributionLayerParams(; kwargs...)
        obj = new(meta(CategoricalDistributionLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CategoricalDistributionLayerParams
const __meta_CategoricalDistributionLayerParams = Ref{ProtoMeta}()
function meta(::Type{CategoricalDistributionLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CategoricalDistributionLayerParams)
            __meta_CategoricalDistributionLayerParams[] = target = ProtoMeta(CategoricalDistributionLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:seed => Int64, :numSamples => Int64, :isLogits => Bool, :eps => Float32, :temperature => Float32]
            meta(target, CategoricalDistributionLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CategoricalDistributionLayerParams[]
    end
end
function Base.getproperty(obj::CategoricalDistributionLayerParams, name::Symbol)
    if name === :seed
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :numSamples
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :isLogits
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :eps
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :temperature
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct ReduceL1LayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ReduceL1LayerParams(; kwargs...)
        obj = new(meta(ReduceL1LayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ReduceL1LayerParams
const __meta_ReduceL1LayerParams = Ref{ProtoMeta}()
function meta(::Type{ReduceL1LayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ReduceL1LayerParams)
            __meta_ReduceL1LayerParams[] = target = ProtoMeta(ReduceL1LayerParams)
            pack = Symbol[:axes]
            allflds = Pair{Symbol,Union{Type,String}}[:axes => Base.Vector{Int64}, :keepDims => Bool, :reduceAll => Bool]
            meta(target, ReduceL1LayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ReduceL1LayerParams[]
    end
end
function Base.getproperty(obj::ReduceL1LayerParams, name::Symbol)
    if name === :axes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :keepDims
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :reduceAll
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct ReduceL2LayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ReduceL2LayerParams(; kwargs...)
        obj = new(meta(ReduceL2LayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ReduceL2LayerParams
const __meta_ReduceL2LayerParams = Ref{ProtoMeta}()
function meta(::Type{ReduceL2LayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ReduceL2LayerParams)
            __meta_ReduceL2LayerParams[] = target = ProtoMeta(ReduceL2LayerParams)
            pack = Symbol[:axes]
            allflds = Pair{Symbol,Union{Type,String}}[:axes => Base.Vector{Int64}, :keepDims => Bool, :reduceAll => Bool]
            meta(target, ReduceL2LayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ReduceL2LayerParams[]
    end
end
function Base.getproperty(obj::ReduceL2LayerParams, name::Symbol)
    if name === :axes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :keepDims
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :reduceAll
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct ReduceMaxLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ReduceMaxLayerParams(; kwargs...)
        obj = new(meta(ReduceMaxLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ReduceMaxLayerParams
const __meta_ReduceMaxLayerParams = Ref{ProtoMeta}()
function meta(::Type{ReduceMaxLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ReduceMaxLayerParams)
            __meta_ReduceMaxLayerParams[] = target = ProtoMeta(ReduceMaxLayerParams)
            pack = Symbol[:axes]
            allflds = Pair{Symbol,Union{Type,String}}[:axes => Base.Vector{Int64}, :keepDims => Bool, :reduceAll => Bool]
            meta(target, ReduceMaxLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ReduceMaxLayerParams[]
    end
end
function Base.getproperty(obj::ReduceMaxLayerParams, name::Symbol)
    if name === :axes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :keepDims
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :reduceAll
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct ReduceMinLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ReduceMinLayerParams(; kwargs...)
        obj = new(meta(ReduceMinLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ReduceMinLayerParams
const __meta_ReduceMinLayerParams = Ref{ProtoMeta}()
function meta(::Type{ReduceMinLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ReduceMinLayerParams)
            __meta_ReduceMinLayerParams[] = target = ProtoMeta(ReduceMinLayerParams)
            pack = Symbol[:axes]
            allflds = Pair{Symbol,Union{Type,String}}[:axes => Base.Vector{Int64}, :keepDims => Bool, :reduceAll => Bool]
            meta(target, ReduceMinLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ReduceMinLayerParams[]
    end
end
function Base.getproperty(obj::ReduceMinLayerParams, name::Symbol)
    if name === :axes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :keepDims
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :reduceAll
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct ReduceSumLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ReduceSumLayerParams(; kwargs...)
        obj = new(meta(ReduceSumLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ReduceSumLayerParams
const __meta_ReduceSumLayerParams = Ref{ProtoMeta}()
function meta(::Type{ReduceSumLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ReduceSumLayerParams)
            __meta_ReduceSumLayerParams[] = target = ProtoMeta(ReduceSumLayerParams)
            pack = Symbol[:axes]
            allflds = Pair{Symbol,Union{Type,String}}[:axes => Base.Vector{Int64}, :keepDims => Bool, :reduceAll => Bool]
            meta(target, ReduceSumLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ReduceSumLayerParams[]
    end
end
function Base.getproperty(obj::ReduceSumLayerParams, name::Symbol)
    if name === :axes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :keepDims
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :reduceAll
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct ReduceProdLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ReduceProdLayerParams(; kwargs...)
        obj = new(meta(ReduceProdLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ReduceProdLayerParams
const __meta_ReduceProdLayerParams = Ref{ProtoMeta}()
function meta(::Type{ReduceProdLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ReduceProdLayerParams)
            __meta_ReduceProdLayerParams[] = target = ProtoMeta(ReduceProdLayerParams)
            pack = Symbol[:axes]
            allflds = Pair{Symbol,Union{Type,String}}[:axes => Base.Vector{Int64}, :keepDims => Bool, :reduceAll => Bool]
            meta(target, ReduceProdLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ReduceProdLayerParams[]
    end
end
function Base.getproperty(obj::ReduceProdLayerParams, name::Symbol)
    if name === :axes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :keepDims
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :reduceAll
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct ReduceMeanLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ReduceMeanLayerParams(; kwargs...)
        obj = new(meta(ReduceMeanLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ReduceMeanLayerParams
const __meta_ReduceMeanLayerParams = Ref{ProtoMeta}()
function meta(::Type{ReduceMeanLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ReduceMeanLayerParams)
            __meta_ReduceMeanLayerParams[] = target = ProtoMeta(ReduceMeanLayerParams)
            pack = Symbol[:axes]
            allflds = Pair{Symbol,Union{Type,String}}[:axes => Base.Vector{Int64}, :keepDims => Bool, :reduceAll => Bool]
            meta(target, ReduceMeanLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ReduceMeanLayerParams[]
    end
end
function Base.getproperty(obj::ReduceMeanLayerParams, name::Symbol)
    if name === :axes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :keepDims
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :reduceAll
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct ReduceLogSumLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ReduceLogSumLayerParams(; kwargs...)
        obj = new(meta(ReduceLogSumLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ReduceLogSumLayerParams
const __meta_ReduceLogSumLayerParams = Ref{ProtoMeta}()
function meta(::Type{ReduceLogSumLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ReduceLogSumLayerParams)
            __meta_ReduceLogSumLayerParams[] = target = ProtoMeta(ReduceLogSumLayerParams)
            pack = Symbol[:axes]
            allflds = Pair{Symbol,Union{Type,String}}[:axes => Base.Vector{Int64}, :keepDims => Bool, :reduceAll => Bool]
            meta(target, ReduceLogSumLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ReduceLogSumLayerParams[]
    end
end
function Base.getproperty(obj::ReduceLogSumLayerParams, name::Symbol)
    if name === :axes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :keepDims
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :reduceAll
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct ReduceSumSquareLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ReduceSumSquareLayerParams(; kwargs...)
        obj = new(meta(ReduceSumSquareLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ReduceSumSquareLayerParams
const __meta_ReduceSumSquareLayerParams = Ref{ProtoMeta}()
function meta(::Type{ReduceSumSquareLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ReduceSumSquareLayerParams)
            __meta_ReduceSumSquareLayerParams[] = target = ProtoMeta(ReduceSumSquareLayerParams)
            pack = Symbol[:axes]
            allflds = Pair{Symbol,Union{Type,String}}[:axes => Base.Vector{Int64}, :keepDims => Bool, :reduceAll => Bool]
            meta(target, ReduceSumSquareLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ReduceSumSquareLayerParams[]
    end
end
function Base.getproperty(obj::ReduceSumSquareLayerParams, name::Symbol)
    if name === :axes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :keepDims
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :reduceAll
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct ReduceLogSumExpLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ReduceLogSumExpLayerParams(; kwargs...)
        obj = new(meta(ReduceLogSumExpLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ReduceLogSumExpLayerParams
const __meta_ReduceLogSumExpLayerParams = Ref{ProtoMeta}()
function meta(::Type{ReduceLogSumExpLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ReduceLogSumExpLayerParams)
            __meta_ReduceLogSumExpLayerParams[] = target = ProtoMeta(ReduceLogSumExpLayerParams)
            pack = Symbol[:axes]
            allflds = Pair{Symbol,Union{Type,String}}[:axes => Base.Vector{Int64}, :keepDims => Bool, :reduceAll => Bool]
            meta(target, ReduceLogSumExpLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ReduceLogSumExpLayerParams[]
    end
end
function Base.getproperty(obj::ReduceLogSumExpLayerParams, name::Symbol)
    if name === :axes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :keepDims
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :reduceAll
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct ExpandDimsLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ExpandDimsLayerParams(; kwargs...)
        obj = new(meta(ExpandDimsLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ExpandDimsLayerParams
const __meta_ExpandDimsLayerParams = Ref{ProtoMeta}()
function meta(::Type{ExpandDimsLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ExpandDimsLayerParams)
            __meta_ExpandDimsLayerParams[] = target = ProtoMeta(ExpandDimsLayerParams)
            pack = Symbol[:axes]
            allflds = Pair{Symbol,Union{Type,String}}[:axes => Base.Vector{Int64}]
            meta(target, ExpandDimsLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ExpandDimsLayerParams[]
    end
end
function Base.getproperty(obj::ExpandDimsLayerParams, name::Symbol)
    if name === :axes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    else
        getfield(obj, name)
    end
end

mutable struct FlattenTo2DLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function FlattenTo2DLayerParams(; kwargs...)
        obj = new(meta(FlattenTo2DLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct FlattenTo2DLayerParams
const __meta_FlattenTo2DLayerParams = Ref{ProtoMeta}()
function meta(::Type{FlattenTo2DLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_FlattenTo2DLayerParams)
            __meta_FlattenTo2DLayerParams[] = target = ProtoMeta(FlattenTo2DLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:axis => Int64]
            meta(target, FlattenTo2DLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_FlattenTo2DLayerParams[]
    end
end
function Base.getproperty(obj::FlattenTo2DLayerParams, name::Symbol)
    if name === :axis
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct ReshapeStaticLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ReshapeStaticLayerParams(; kwargs...)
        obj = new(meta(ReshapeStaticLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ReshapeStaticLayerParams
const __meta_ReshapeStaticLayerParams = Ref{ProtoMeta}()
function meta(::Type{ReshapeStaticLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ReshapeStaticLayerParams)
            __meta_ReshapeStaticLayerParams[] = target = ProtoMeta(ReshapeStaticLayerParams)
            pack = Symbol[:targetShape]
            allflds = Pair{Symbol,Union{Type,String}}[:targetShape => Base.Vector{Int64}]
            meta(target, ReshapeStaticLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ReshapeStaticLayerParams[]
    end
end
function Base.getproperty(obj::ReshapeStaticLayerParams, name::Symbol)
    if name === :targetShape
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    else
        getfield(obj, name)
    end
end

mutable struct ReshapeLikeLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ReshapeLikeLayerParams(; kwargs...)
        obj = new(meta(ReshapeLikeLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ReshapeLikeLayerParams
const __meta_ReshapeLikeLayerParams = Ref{ProtoMeta}()
function meta(::Type{ReshapeLikeLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ReshapeLikeLayerParams)
            __meta_ReshapeLikeLayerParams[] = target = ProtoMeta(ReshapeLikeLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, ReshapeLikeLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ReshapeLikeLayerParams[]
    end
end

mutable struct ReshapeDynamicLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ReshapeDynamicLayerParams(; kwargs...)
        obj = new(meta(ReshapeDynamicLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ReshapeDynamicLayerParams
const __meta_ReshapeDynamicLayerParams = Ref{ProtoMeta}()
function meta(::Type{ReshapeDynamicLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ReshapeDynamicLayerParams)
            __meta_ReshapeDynamicLayerParams[] = target = ProtoMeta(ReshapeDynamicLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, ReshapeDynamicLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ReshapeDynamicLayerParams[]
    end
end

mutable struct SqueezeLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SqueezeLayerParams(; kwargs...)
        obj = new(meta(SqueezeLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SqueezeLayerParams
const __meta_SqueezeLayerParams = Ref{ProtoMeta}()
function meta(::Type{SqueezeLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SqueezeLayerParams)
            __meta_SqueezeLayerParams[] = target = ProtoMeta(SqueezeLayerParams)
            pack = Symbol[:axes]
            allflds = Pair{Symbol,Union{Type,String}}[:axes => Base.Vector{Int64}, :squeezeAll => Bool]
            meta(target, SqueezeLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SqueezeLayerParams[]
    end
end
function Base.getproperty(obj::SqueezeLayerParams, name::Symbol)
    if name === :axes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :squeezeAll
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct TopKLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TopKLayerParams(; kwargs...)
        obj = new(meta(TopKLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TopKLayerParams
const __meta_TopKLayerParams = Ref{ProtoMeta}()
function meta(::Type{TopKLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TopKLayerParams)
            __meta_TopKLayerParams[] = target = ProtoMeta(TopKLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:axis => Int64, :K => UInt64, :useBottomK => Bool]
            meta(target, TopKLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_TopKLayerParams[]
    end
end
function Base.getproperty(obj::TopKLayerParams, name::Symbol)
    if name === :axis
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :K
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :useBottomK
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct ArgMaxLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ArgMaxLayerParams(; kwargs...)
        obj = new(meta(ArgMaxLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ArgMaxLayerParams
const __meta_ArgMaxLayerParams = Ref{ProtoMeta}()
function meta(::Type{ArgMaxLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ArgMaxLayerParams)
            __meta_ArgMaxLayerParams[] = target = ProtoMeta(ArgMaxLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:axis => Int64, :removeDim => Bool]
            meta(target, ArgMaxLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ArgMaxLayerParams[]
    end
end
function Base.getproperty(obj::ArgMaxLayerParams, name::Symbol)
    if name === :axis
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :removeDim
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct ArgMinLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ArgMinLayerParams(; kwargs...)
        obj = new(meta(ArgMinLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ArgMinLayerParams
const __meta_ArgMinLayerParams = Ref{ProtoMeta}()
function meta(::Type{ArgMinLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ArgMinLayerParams)
            __meta_ArgMinLayerParams[] = target = ProtoMeta(ArgMinLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:axis => Int64, :removeDim => Bool]
            meta(target, ArgMinLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ArgMinLayerParams[]
    end
end
function Base.getproperty(obj::ArgMinLayerParams, name::Symbol)
    if name === :axis
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :removeDim
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct SplitNDLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SplitNDLayerParams(; kwargs...)
        obj = new(meta(SplitNDLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SplitNDLayerParams
const __meta_SplitNDLayerParams = Ref{ProtoMeta}()
function meta(::Type{SplitNDLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SplitNDLayerParams)
            __meta_SplitNDLayerParams[] = target = ProtoMeta(SplitNDLayerParams)
            pack = Symbol[:splitSizes]
            allflds = Pair{Symbol,Union{Type,String}}[:axis => Int64, :numSplits => UInt64, :splitSizes => Base.Vector{UInt64}]
            meta(target, SplitNDLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SplitNDLayerParams[]
    end
end
function Base.getproperty(obj::SplitNDLayerParams, name::Symbol)
    if name === :axis
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :numSplits
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :splitSizes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    else
        getfield(obj, name)
    end
end

mutable struct CeilLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CeilLayerParams(; kwargs...)
        obj = new(meta(CeilLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CeilLayerParams
const __meta_CeilLayerParams = Ref{ProtoMeta}()
function meta(::Type{CeilLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CeilLayerParams)
            __meta_CeilLayerParams[] = target = ProtoMeta(CeilLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, CeilLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CeilLayerParams[]
    end
end

mutable struct RoundLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RoundLayerParams(; kwargs...)
        obj = new(meta(RoundLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RoundLayerParams
const __meta_RoundLayerParams = Ref{ProtoMeta}()
function meta(::Type{RoundLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RoundLayerParams)
            __meta_RoundLayerParams[] = target = ProtoMeta(RoundLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, RoundLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RoundLayerParams[]
    end
end

mutable struct FloorLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function FloorLayerParams(; kwargs...)
        obj = new(meta(FloorLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct FloorLayerParams
const __meta_FloorLayerParams = Ref{ProtoMeta}()
function meta(::Type{FloorLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_FloorLayerParams)
            __meta_FloorLayerParams[] = target = ProtoMeta(FloorLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, FloorLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_FloorLayerParams[]
    end
end

mutable struct SignLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SignLayerParams(; kwargs...)
        obj = new(meta(SignLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SignLayerParams
const __meta_SignLayerParams = Ref{ProtoMeta}()
function meta(::Type{SignLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SignLayerParams)
            __meta_SignLayerParams[] = target = ProtoMeta(SignLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, SignLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SignLayerParams[]
    end
end

mutable struct ClipLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ClipLayerParams(; kwargs...)
        obj = new(meta(ClipLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ClipLayerParams
const __meta_ClipLayerParams = Ref{ProtoMeta}()
function meta(::Type{ClipLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ClipLayerParams)
            __meta_ClipLayerParams[] = target = ProtoMeta(ClipLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:minVal => Float32, :maxVal => Float32]
            meta(target, ClipLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ClipLayerParams[]
    end
end
function Base.getproperty(obj::ClipLayerParams, name::Symbol)
    if name === :minVal
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :maxVal
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct SliceStaticLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SliceStaticLayerParams(; kwargs...)
        obj = new(meta(SliceStaticLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SliceStaticLayerParams
const __meta_SliceStaticLayerParams = Ref{ProtoMeta}()
function meta(::Type{SliceStaticLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SliceStaticLayerParams)
            __meta_SliceStaticLayerParams[] = target = ProtoMeta(SliceStaticLayerParams)
            pack = Symbol[:beginIds,:beginMasks,:endIds,:endMasks,:strides,:squeezeMasks]
            allflds = Pair{Symbol,Union{Type,String}}[:beginIds => Base.Vector{Int64}, :beginMasks => Base.Vector{Bool}, :endIds => Base.Vector{Int64}, :endMasks => Base.Vector{Bool}, :strides => Base.Vector{Int64}, :squeezeMasks => Base.Vector{Bool}]
            meta(target, SliceStaticLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SliceStaticLayerParams[]
    end
end
function Base.getproperty(obj::SliceStaticLayerParams, name::Symbol)
    if name === :beginIds
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :beginMasks
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Bool}
    elseif name === :endIds
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :endMasks
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Bool}
    elseif name === :strides
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :squeezeMasks
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Bool}
    else
        getfield(obj, name)
    end
end

mutable struct SliceDynamicLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SliceDynamicLayerParams(; kwargs...)
        obj = new(meta(SliceDynamicLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SliceDynamicLayerParams
const __meta_SliceDynamicLayerParams = Ref{ProtoMeta}()
function meta(::Type{SliceDynamicLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SliceDynamicLayerParams)
            __meta_SliceDynamicLayerParams[] = target = ProtoMeta(SliceDynamicLayerParams)
            fnum = Int[2,3,4,5,6]
            pack = Symbol[:beginMasks,:endIds,:endMasks,:strides,:squeezeMasks]
            allflds = Pair{Symbol,Union{Type,String}}[:beginMasks => Base.Vector{Bool}, :endIds => Base.Vector{Int64}, :endMasks => Base.Vector{Bool}, :strides => Base.Vector{Int64}, :squeezeMasks => Base.Vector{Bool}]
            meta(target, SliceDynamicLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SliceDynamicLayerParams[]
    end
end
function Base.getproperty(obj::SliceDynamicLayerParams, name::Symbol)
    if name === :beginMasks
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Bool}
    elseif name === :endIds
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :endMasks
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Bool}
    elseif name === :strides
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :squeezeMasks
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Bool}
    else
        getfield(obj, name)
    end
end

mutable struct TileLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TileLayerParams(; kwargs...)
        obj = new(meta(TileLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TileLayerParams
const __meta_TileLayerParams = Ref{ProtoMeta}()
function meta(::Type{TileLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TileLayerParams)
            __meta_TileLayerParams[] = target = ProtoMeta(TileLayerParams)
            pack = Symbol[:reps]
            allflds = Pair{Symbol,Union{Type,String}}[:reps => Base.Vector{UInt64}]
            meta(target, TileLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_TileLayerParams[]
    end
end
function Base.getproperty(obj::TileLayerParams, name::Symbol)
    if name === :reps
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{UInt64}
    else
        getfield(obj, name)
    end
end

mutable struct GetShapeLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GetShapeLayerParams(; kwargs...)
        obj = new(meta(GetShapeLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GetShapeLayerParams
const __meta_GetShapeLayerParams = Ref{ProtoMeta}()
function meta(::Type{GetShapeLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GetShapeLayerParams)
            __meta_GetShapeLayerParams[] = target = ProtoMeta(GetShapeLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, GetShapeLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GetShapeLayerParams[]
    end
end

mutable struct ErfLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ErfLayerParams(; kwargs...)
        obj = new(meta(ErfLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ErfLayerParams
const __meta_ErfLayerParams = Ref{ProtoMeta}()
function meta(::Type{ErfLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ErfLayerParams)
            __meta_ErfLayerParams[] = target = ProtoMeta(ErfLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, ErfLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ErfLayerParams[]
    end
end

const GeluLayerParams_GeluMode = (;[
    Symbol("EXACT") => Int32(0),
    Symbol("TANH_APPROXIMATION") => Int32(1),
    Symbol("SIGMOID_APPROXIMATION") => Int32(2),
]...)

mutable struct GeluLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function GeluLayerParams(; kwargs...)
        obj = new(meta(GeluLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct GeluLayerParams
const __meta_GeluLayerParams = Ref{ProtoMeta}()
function meta(::Type{GeluLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_GeluLayerParams)
            __meta_GeluLayerParams[] = target = ProtoMeta(GeluLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:mode => Int32]
            meta(target, GeluLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_GeluLayerParams[]
    end
end
function Base.getproperty(obj::GeluLayerParams, name::Symbol)
    if name === :mode
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct RangeStaticLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RangeStaticLayerParams(; kwargs...)
        obj = new(meta(RangeStaticLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RangeStaticLayerParams
const __meta_RangeStaticLayerParams = Ref{ProtoMeta}()
function meta(::Type{RangeStaticLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RangeStaticLayerParams)
            __meta_RangeStaticLayerParams[] = target = ProtoMeta(RangeStaticLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:endValue => Float32, :startValue => Float32, :stepSizeValue => Float32]
            meta(target, RangeStaticLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RangeStaticLayerParams[]
    end
end
function Base.getproperty(obj::RangeStaticLayerParams, name::Symbol)
    if name === :endValue
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :startValue
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :stepSizeValue
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct RangeDynamicLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RangeDynamicLayerParams(; kwargs...)
        obj = new(meta(RangeDynamicLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RangeDynamicLayerParams
const __meta_RangeDynamicLayerParams = Ref{ProtoMeta}()
function meta(::Type{RangeDynamicLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RangeDynamicLayerParams)
            __meta_RangeDynamicLayerParams[] = target = ProtoMeta(RangeDynamicLayerParams)
            fnum = Int[2,3]
            allflds = Pair{Symbol,Union{Type,String}}[:startValue => Float32, :stepSizeValue => Float32]
            meta(target, RangeDynamicLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RangeDynamicLayerParams[]
    end
end
function Base.getproperty(obj::RangeDynamicLayerParams, name::Symbol)
    if name === :startValue
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :stepSizeValue
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct SlidingWindowsLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SlidingWindowsLayerParams(; kwargs...)
        obj = new(meta(SlidingWindowsLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SlidingWindowsLayerParams
const __meta_SlidingWindowsLayerParams = Ref{ProtoMeta}()
function meta(::Type{SlidingWindowsLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SlidingWindowsLayerParams)
            __meta_SlidingWindowsLayerParams[] = target = ProtoMeta(SlidingWindowsLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:axis => Int64, :windowSize => UInt64, :step => UInt64]
            meta(target, SlidingWindowsLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SlidingWindowsLayerParams[]
    end
end
function Base.getproperty(obj::SlidingWindowsLayerParams, name::Symbol)
    if name === :axis
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :windowSize
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :step
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    else
        getfield(obj, name)
    end
end

mutable struct LayerNormalizationLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LayerNormalizationLayerParams(; kwargs...)
        obj = new(meta(LayerNormalizationLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LayerNormalizationLayerParams
const __meta_LayerNormalizationLayerParams = Ref{ProtoMeta}()
function meta(::Type{LayerNormalizationLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LayerNormalizationLayerParams)
            __meta_LayerNormalizationLayerParams[] = target = ProtoMeta(LayerNormalizationLayerParams)
            pack = Symbol[:normalizedShape]
            allflds = Pair{Symbol,Union{Type,String}}[:normalizedShape => Base.Vector{Int64}, :eps => Float32, :gamma => WeightParams, :beta => WeightParams]
            meta(target, LayerNormalizationLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LayerNormalizationLayerParams[]
    end
end
function Base.getproperty(obj::LayerNormalizationLayerParams, name::Symbol)
    if name === :normalizedShape
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :eps
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :gamma
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    elseif name === :beta
        return (obj.__protobuf_jl_internal_values[name])::WeightParams
    else
        getfield(obj, name)
    end
end

mutable struct NonMaximumSuppressionLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function NonMaximumSuppressionLayerParams(; kwargs...)
        obj = new(meta(NonMaximumSuppressionLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct NonMaximumSuppressionLayerParams
const __meta_NonMaximumSuppressionLayerParams = Ref{ProtoMeta}()
function meta(::Type{NonMaximumSuppressionLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_NonMaximumSuppressionLayerParams)
            __meta_NonMaximumSuppressionLayerParams[] = target = ProtoMeta(NonMaximumSuppressionLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:iouThreshold => Float32, :scoreThreshold => Float32, :maxBoxes => UInt64, :perClassSuppression => Bool]
            meta(target, NonMaximumSuppressionLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_NonMaximumSuppressionLayerParams[]
    end
end
function Base.getproperty(obj::NonMaximumSuppressionLayerParams, name::Symbol)
    if name === :iouThreshold
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :scoreThreshold
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :maxBoxes
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :perClassSuppression
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct ClampedReLULayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ClampedReLULayerParams(; kwargs...)
        obj = new(meta(ClampedReLULayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ClampedReLULayerParams
const __meta_ClampedReLULayerParams = Ref{ProtoMeta}()
function meta(::Type{ClampedReLULayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ClampedReLULayerParams)
            __meta_ClampedReLULayerParams[] = target = ProtoMeta(ClampedReLULayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:alpha => Float32, :beta => Float32]
            meta(target, ClampedReLULayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ClampedReLULayerParams[]
    end
end
function Base.getproperty(obj::ClampedReLULayerParams, name::Symbol)
    if name === :alpha
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :beta
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct ArgSortLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ArgSortLayerParams(; kwargs...)
        obj = new(meta(ArgSortLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct ArgSortLayerParams
const __meta_ArgSortLayerParams = Ref{ProtoMeta}()
function meta(::Type{ArgSortLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ArgSortLayerParams)
            __meta_ArgSortLayerParams[] = target = ProtoMeta(ArgSortLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:axis => Int64, :descending => Bool]
            meta(target, ArgSortLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ArgSortLayerParams[]
    end
end
function Base.getproperty(obj::ArgSortLayerParams, name::Symbol)
    if name === :axis
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :descending
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct SliceBySizeLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SliceBySizeLayerParams(; kwargs...)
        obj = new(meta(SliceBySizeLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SliceBySizeLayerParams
const __meta_SliceBySizeLayerParams = Ref{ProtoMeta}()
function meta(::Type{SliceBySizeLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SliceBySizeLayerParams)
            __meta_SliceBySizeLayerParams[] = target = ProtoMeta(SliceBySizeLayerParams)
            fnum = Int[2,3]
            allflds = Pair{Symbol,Union{Type,String}}[:size => Int64, :axis => Int64]
            meta(target, SliceBySizeLayerParams, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SliceBySizeLayerParams[]
    end
end
function Base.getproperty(obj::SliceBySizeLayerParams, name::Symbol)
    if name === :size
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :axis
        return (obj.__protobuf_jl_internal_values[name])::Int64
    else
        getfield(obj, name)
    end
end

mutable struct OneHotLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function OneHotLayerParams(; kwargs...)
        obj = new(meta(OneHotLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct OneHotLayerParams
const __meta_OneHotLayerParams = Ref{ProtoMeta}()
function meta(::Type{OneHotLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_OneHotLayerParams)
            __meta_OneHotLayerParams[] = target = ProtoMeta(OneHotLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:oneHotVectorSize => UInt64, :axis => Int64, :onValue => Float32, :offValue => Float32]
            meta(target, OneHotLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_OneHotLayerParams[]
    end
end
function Base.getproperty(obj::OneHotLayerParams, name::Symbol)
    if name === :oneHotVectorSize
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :axis
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :onValue
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :offValue
        return (obj.__protobuf_jl_internal_values[name])::Float32
    else
        getfield(obj, name)
    end
end

mutable struct CumSumLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CumSumLayerParams(; kwargs...)
        obj = new(meta(CumSumLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CumSumLayerParams
const __meta_CumSumLayerParams = Ref{ProtoMeta}()
function meta(::Type{CumSumLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CumSumLayerParams)
            __meta_CumSumLayerParams[] = target = ProtoMeta(CumSumLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:axis => Int64, :excludeFinalSum => Bool, :reverse => Bool]
            meta(target, CumSumLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CumSumLayerParams[]
    end
end
function Base.getproperty(obj::CumSumLayerParams, name::Symbol)
    if name === :axis
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :excludeFinalSum
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :reverse
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

mutable struct CategoricalCrossEntropyLossLayer <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function CategoricalCrossEntropyLossLayer(; kwargs...)
        obj = new(meta(CategoricalCrossEntropyLossLayer), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct CategoricalCrossEntropyLossLayer
const __meta_CategoricalCrossEntropyLossLayer = Ref{ProtoMeta}()
function meta(::Type{CategoricalCrossEntropyLossLayer})
    ProtoBuf.metalock() do
        if !isassigned(__meta_CategoricalCrossEntropyLossLayer)
            __meta_CategoricalCrossEntropyLossLayer[] = target = ProtoMeta(CategoricalCrossEntropyLossLayer)
            allflds = Pair{Symbol,Union{Type,String}}[:input => AbstractString, :target => AbstractString]
            meta(target, CategoricalCrossEntropyLossLayer, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_CategoricalCrossEntropyLossLayer[]
    end
end
function Base.getproperty(obj::CategoricalCrossEntropyLossLayer, name::Symbol)
    if name === :input
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :target
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct MeanSquaredErrorLossLayer <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function MeanSquaredErrorLossLayer(; kwargs...)
        obj = new(meta(MeanSquaredErrorLossLayer), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct MeanSquaredErrorLossLayer
const __meta_MeanSquaredErrorLossLayer = Ref{ProtoMeta}()
function meta(::Type{MeanSquaredErrorLossLayer})
    ProtoBuf.metalock() do
        if !isassigned(__meta_MeanSquaredErrorLossLayer)
            __meta_MeanSquaredErrorLossLayer[] = target = ProtoMeta(MeanSquaredErrorLossLayer)
            allflds = Pair{Symbol,Union{Type,String}}[:input => AbstractString, :target => AbstractString]
            meta(target, MeanSquaredErrorLossLayer, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_MeanSquaredErrorLossLayer[]
    end
end
function Base.getproperty(obj::MeanSquaredErrorLossLayer, name::Symbol)
    if name === :input
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :target
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct LossLayer <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LossLayer(; kwargs...)
        obj = new(meta(LossLayer), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LossLayer
const __meta_LossLayer = Ref{ProtoMeta}()
function meta(::Type{LossLayer})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LossLayer)
            __meta_LossLayer[] = target = ProtoMeta(LossLayer)
            fnum = Int[1,10,11]
            allflds = Pair{Symbol,Union{Type,String}}[:name => AbstractString, :categoricalCrossEntropyLossLayer => CategoricalCrossEntropyLossLayer, :meanSquaredErrorLossLayer => MeanSquaredErrorLossLayer]
            oneofs = Int[0,1,1]
            oneof_names = Symbol[Symbol("LossLayerType")]
            meta(target, LossLayer, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_LossLayer[]
    end
end
function Base.getproperty(obj::LossLayer, name::Symbol)
    if name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :categoricalCrossEntropyLossLayer
        return (obj.__protobuf_jl_internal_values[name])::CategoricalCrossEntropyLossLayer
    elseif name === :meanSquaredErrorLossLayer
        return (obj.__protobuf_jl_internal_values[name])::MeanSquaredErrorLossLayer
    else
        getfield(obj, name)
    end
end

mutable struct SGDOptimizer <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SGDOptimizer(; kwargs...)
        obj = new(meta(SGDOptimizer), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SGDOptimizer
const __meta_SGDOptimizer = Ref{ProtoMeta}()
function meta(::Type{SGDOptimizer})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SGDOptimizer)
            __meta_SGDOptimizer[] = target = ProtoMeta(SGDOptimizer)
            allflds = Pair{Symbol,Union{Type,String}}[:learningRate => DoubleParameter, :miniBatchSize => Int64Parameter, :momentum => DoubleParameter]
            meta(target, SGDOptimizer, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SGDOptimizer[]
    end
end
function Base.getproperty(obj::SGDOptimizer, name::Symbol)
    if name === :learningRate
        return (obj.__protobuf_jl_internal_values[name])::DoubleParameter
    elseif name === :miniBatchSize
        return (obj.__protobuf_jl_internal_values[name])::Int64Parameter
    elseif name === :momentum
        return (obj.__protobuf_jl_internal_values[name])::DoubleParameter
    else
        getfield(obj, name)
    end
end

mutable struct AdamOptimizer <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function AdamOptimizer(; kwargs...)
        obj = new(meta(AdamOptimizer), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct AdamOptimizer
const __meta_AdamOptimizer = Ref{ProtoMeta}()
function meta(::Type{AdamOptimizer})
    ProtoBuf.metalock() do
        if !isassigned(__meta_AdamOptimizer)
            __meta_AdamOptimizer[] = target = ProtoMeta(AdamOptimizer)
            allflds = Pair{Symbol,Union{Type,String}}[:learningRate => DoubleParameter, :miniBatchSize => Int64Parameter, :beta1 => DoubleParameter, :beta2 => DoubleParameter, :eps => DoubleParameter]
            meta(target, AdamOptimizer, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_AdamOptimizer[]
    end
end
function Base.getproperty(obj::AdamOptimizer, name::Symbol)
    if name === :learningRate
        return (obj.__protobuf_jl_internal_values[name])::DoubleParameter
    elseif name === :miniBatchSize
        return (obj.__protobuf_jl_internal_values[name])::Int64Parameter
    elseif name === :beta1
        return (obj.__protobuf_jl_internal_values[name])::DoubleParameter
    elseif name === :beta2
        return (obj.__protobuf_jl_internal_values[name])::DoubleParameter
    elseif name === :eps
        return (obj.__protobuf_jl_internal_values[name])::DoubleParameter
    else
        getfield(obj, name)
    end
end

mutable struct Optimizer <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Optimizer(; kwargs...)
        obj = new(meta(Optimizer), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Optimizer
const __meta_Optimizer = Ref{ProtoMeta}()
function meta(::Type{Optimizer})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Optimizer)
            __meta_Optimizer[] = target = ProtoMeta(Optimizer)
            fnum = Int[10,11]
            allflds = Pair{Symbol,Union{Type,String}}[:sgdOptimizer => SGDOptimizer, :adamOptimizer => AdamOptimizer]
            oneofs = Int[1,1]
            oneof_names = Symbol[Symbol("OptimizerType")]
            meta(target, Optimizer, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_Optimizer[]
    end
end
function Base.getproperty(obj::Optimizer, name::Symbol)
    if name === :sgdOptimizer
        return (obj.__protobuf_jl_internal_values[name])::SGDOptimizer
    elseif name === :adamOptimizer
        return (obj.__protobuf_jl_internal_values[name])::AdamOptimizer
    else
        getfield(obj, name)
    end
end

mutable struct NetworkUpdateParameters <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function NetworkUpdateParameters(; kwargs...)
        obj = new(meta(NetworkUpdateParameters), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct NetworkUpdateParameters
const __meta_NetworkUpdateParameters = Ref{ProtoMeta}()
function meta(::Type{NetworkUpdateParameters})
    ProtoBuf.metalock() do
        if !isassigned(__meta_NetworkUpdateParameters)
            __meta_NetworkUpdateParameters[] = target = ProtoMeta(NetworkUpdateParameters)
            fnum = Int[1,2,3,10,20]
            allflds = Pair{Symbol,Union{Type,String}}[:lossLayers => Base.Vector{LossLayer}, :optimizer => Optimizer, :epochs => Int64Parameter, :shuffle => BoolParameter, :seed => Int64Parameter]
            meta(target, NetworkUpdateParameters, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_NetworkUpdateParameters[]
    end
end
function Base.getproperty(obj::NetworkUpdateParameters, name::Symbol)
    if name === :lossLayers
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{LossLayer}
    elseif name === :optimizer
        return (obj.__protobuf_jl_internal_values[name])::Optimizer
    elseif name === :epochs
        return (obj.__protobuf_jl_internal_values[name])::Int64Parameter
    elseif name === :shuffle
        return (obj.__protobuf_jl_internal_values[name])::BoolParameter
    elseif name === :seed
        return (obj.__protobuf_jl_internal_values[name])::Int64Parameter
    else
        getfield(obj, name)
    end
end

mutable struct NeuralNetwork <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function NeuralNetwork(; kwargs...)
        obj = new(meta(NeuralNetwork), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct NeuralNetwork (has cyclic type dependency)
const __meta_NeuralNetwork = Ref{ProtoMeta}()
function meta(::Type{NeuralNetwork})
    ProtoBuf.metalock() do
        if !isassigned(__meta_NeuralNetwork)
            __meta_NeuralNetwork[] = target = ProtoMeta(NeuralNetwork)
            fnum = Int[1,2,5,6,10]
            allflds = Pair{Symbol,Union{Type,String}}[:layers => "Base.Vector{NeuralNetworkLayer}", :preprocessing => Base.Vector{NeuralNetworkPreprocessing}, :arrayInputShapeMapping => Int32, :imageInputShapeMapping => Int32, :updateParams => NetworkUpdateParameters]
            meta(target, NeuralNetwork, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_NeuralNetwork[]
    end
end
function Base.getproperty(obj::NeuralNetwork, name::Symbol)
    if name === :layers
        return (obj.__protobuf_jl_internal_values[name])::Any
    elseif name === :preprocessing
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{NeuralNetworkPreprocessing}
    elseif name === :arrayInputShapeMapping
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :imageInputShapeMapping
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :updateParams
        return (obj.__protobuf_jl_internal_values[name])::NetworkUpdateParameters
    else
        getfield(obj, name)
    end
end

mutable struct NeuralNetworkLayer <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function NeuralNetworkLayer(; kwargs...)
        obj = new(meta(NeuralNetworkLayer), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct NeuralNetworkLayer (has cyclic type dependency)
const __meta_NeuralNetworkLayer = Ref{ProtoMeta}()
function meta(::Type{NeuralNetworkLayer})
    ProtoBuf.metalock() do
        if !isassigned(__meta_NeuralNetworkLayer)
            __meta_NeuralNetworkLayer[] = target = ProtoMeta(NeuralNetworkLayer)
            fnum = Int[1,2,3,4,5,10,100,120,130,140,150,160,165,170,175,180,190,200,210,211,212,220,230,231,240,245,250,260,261,270,280,290,300,301,310,320,330,340,345,350,400,410,420,430,500,600,605,615,620,625,635,640,660,665,670,680,685,700,710,715,720,730,735,740,750,755,760,770,775,780,790,795,815,820,825,827,830,832,840,845,850,855,865,870,875,880,885,890,895,900,905,920,925,930,935,940,945,950,952,954,960,965,975,980,985,995,1000,1005,1015,1020,1025,1040,1045,1065,1070,1080,1085,1090,1100,1105,1110,1120,1125,1130,1135,1140,1145,1150,1155,1170,1175,1180,1190,1195,1200,1210,1215,1220,1230,1250,1255,1260,1265,1270,1275,1280,1285,1290,1295,1313,1315,1320,1325,1330,1350,1400,1450,1455,1460,1461,1465,1466,1470,1471]
            allflds = Pair{Symbol,Union{Type,String}}[:name => AbstractString, :input => Base.Vector{AbstractString}, :output => Base.Vector{AbstractString}, :inputTensor => Base.Vector{Tensor}, :outputTensor => Base.Vector{Tensor}, :isUpdatable => Bool, :convolution => ConvolutionLayerParams, :pooling => PoolingLayerParams, :activation => ActivationParams, :innerProduct => InnerProductLayerParams, :embedding => EmbeddingLayerParams, :batchnorm => BatchnormLayerParams, :mvn => MeanVarianceNormalizeLayerParams, :l2normalize => L2NormalizeLayerParams, :softmax => SoftmaxLayerParams, :lrn => LRNLayerParams, :crop => CropLayerParams, :padding => PaddingLayerParams, :upsample => UpsampleLayerParams, :resizeBilinear => ResizeBilinearLayerParams, :cropResize => CropResizeLayerParams, :unary => UnaryFunctionLayerParams, :add => AddLayerParams, :multiply => MultiplyLayerParams, :average => AverageLayerParams, :scale => ScaleLayerParams, :bias => BiasLayerParams, :max => MaxLayerParams, :min => MinLayerParams, :dot => DotProductLayerParams, :reduce => ReduceLayerParams, :loadConstant => LoadConstantLayerParams, :reshape => ReshapeLayerParams, :flatten => FlattenLayerParams, :permute => PermuteLayerParams, :concat => ConcatLayerParams, :split => SplitLayerParams, :sequenceRepeat => SequenceRepeatLayerParams, :reorganizeData => ReorganizeDataLayerParams, :slice => SliceLayerParams, :simpleRecurrent => SimpleRecurrentLayerParams, :gru => GRULayerParams, :uniDirectionalLSTM => UniDirectionalLSTMLayerParams, :biDirectionalLSTM => BiDirectionalLSTMLayerParams, :custom => CustomLayerParams, :copy => CopyLayerParams, :branch => "BranchLayerParams", :loop => "LoopLayerParams", :loopBreak => LoopBreakLayerParams, :loopContinue => LoopContinueLayerParams, :rangeStatic => RangeStaticLayerParams, :rangeDynamic => RangeDynamicLayerParams, :clip => ClipLayerParams, :ceil => CeilLayerParams, :floor => FloorLayerParams, :sign => SignLayerParams, :round => RoundLayerParams, :exp2 => Exp2LayerParams, :sin => SinLayerParams, :cos => CosLayerParams, :tan => TanLayerParams, :asin => AsinLayerParams, :acos => AcosLayerParams, :atan => AtanLayerParams, :sinh => SinhLayerParams, :cosh => CoshLayerParams, :tanh => TanhLayerParams, :asinh => AsinhLayerParams, :acosh => AcoshLayerParams, :atanh => AtanhLayerParams, :erf => ErfLayerParams, :gelu => GeluLayerParams, :equal => EqualLayerParams, :notEqual => NotEqualLayerParams, :lessThan => LessThanLayerParams, :lessEqual => LessEqualLayerParams, :greaterThan => GreaterThanLayerParams, :greaterEqual => GreaterEqualLayerParams, :logicalOr => LogicalOrLayerParams, :logicalXor => LogicalXorLayerParams, :logicalNot => LogicalNotLayerParams, :logicalAnd => LogicalAndLayerParams, :modBroadcastable => ModBroadcastableLayerParams, :minBroadcastable => MinBroadcastableLayerParams, :maxBroadcastable => MaxBroadcastableLayerParams, :addBroadcastable => AddBroadcastableLayerParams, :powBroadcastable => PowBroadcastableLayerParams, :divideBroadcastable => DivideBroadcastableLayerParams, :floorDivBroadcastable => FloorDivBroadcastableLayerParams, :multiplyBroadcastable => MultiplyBroadcastableLayerParams, :subtractBroadcastable => SubtractBroadcastableLayerParams, :tile => TileLayerParams, :stack => StackLayerParams, :gather => GatherLayerParams, :scatter => ScatterLayerParams, :gatherND => GatherNDLayerParams, :scatterND => ScatterNDLayerParams, :softmaxND => SoftmaxNDLayerParams, :gatherAlongAxis => GatherAlongAxisLayerParams, :scatterAlongAxis => ScatterAlongAxisLayerParams, :reverse => ReverseLayerParams, :reverseSeq => ReverseSeqLayerParams, :splitND => SplitNDLayerParams, :concatND => ConcatNDLayerParams, :transpose => TransposeLayerParams, :sliceStatic => SliceStaticLayerParams, :sliceDynamic => SliceDynamicLayerParams, :slidingWindows => SlidingWindowsLayerParams, :topK => TopKLayerParams, :argMin => ArgMinLayerParams, :argMax => ArgMaxLayerParams, :embeddingND => EmbeddingNDLayerParams, :batchedMatmul => BatchedMatMulLayerParams, :getShape => GetShapeLayerParams, :loadConstantND => LoadConstantNDLayerParams, :fillLike => FillLikeLayerParams, :fillStatic => FillStaticLayerParams, :fillDynamic => FillDynamicLayerParams, :broadcastToLike => BroadcastToLikeLayerParams, :broadcastToStatic => BroadcastToStaticLayerParams, :broadcastToDynamic => BroadcastToDynamicLayerParams, :squeeze => SqueezeLayerParams, :expandDims => ExpandDimsLayerParams, :flattenTo2D => FlattenTo2DLayerParams, :reshapeLike => ReshapeLikeLayerParams, :reshapeStatic => ReshapeStaticLayerParams, :reshapeDynamic => ReshapeDynamicLayerParams, :rankPreservingReshape => RankPreservingReshapeLayerParams, :constantPad => ConstantPaddingLayerParams, :randomNormalLike => RandomNormalLikeLayerParams, :randomNormalStatic => RandomNormalStaticLayerParams, :randomNormalDynamic => RandomNormalDynamicLayerParams, :randomUniformLike => RandomUniformLikeLayerParams, :randomUniformStatic => RandomUniformStaticLayerParams, :randomUniformDynamic => RandomUniformDynamicLayerParams, :randomBernoulliLike => RandomBernoulliLikeLayerParams, :randomBernoulliStatic => RandomBernoulliStaticLayerParams, :randomBernoulliDynamic => RandomBernoulliDynamicLayerParams, :categoricalDistribution => CategoricalDistributionLayerParams, :reduceL1 => ReduceL1LayerParams, :reduceL2 => ReduceL2LayerParams, :reduceMax => ReduceMaxLayerParams, :reduceMin => ReduceMinLayerParams, :reduceSum => ReduceSumLayerParams, :reduceProd => ReduceProdLayerParams, :reduceMean => ReduceMeanLayerParams, :reduceLogSum => ReduceLogSumLayerParams, :reduceSumSquare => ReduceSumSquareLayerParams, :reduceLogSumExp => ReduceLogSumExpLayerParams, :whereNonZero => WhereNonZeroLayerParams, :matrixBandPart => MatrixBandPartLayerParams, :lowerTriangular => LowerTriangularLayerParams, :upperTriangular => UpperTriangularLayerParams, :whereBroadcastable => WhereBroadcastableLayerParams, :layerNormalization => LayerNormalizationLayerParams, :NonMaximumSuppression => NonMaximumSuppressionLayerParams, :oneHot => OneHotLayerParams, :cumSum => CumSumLayerParams, :clampedReLU => ClampedReLULayerParams, :argSort => ArgSortLayerParams, :pooling3d => Pooling3DLayerParams, :globalPooling3d => GlobalPooling3DLayerParams, :sliceBySize => SliceBySizeLayerParams, :convolution3d => Convolution3DLayerParams]
            oneofs = Int[0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
            oneof_names = Symbol[Symbol("layer")]
            meta(target, NeuralNetworkLayer, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_NeuralNetworkLayer[]
    end
end
function Base.getproperty(obj::NeuralNetworkLayer, name::Symbol)
    if name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :input
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    elseif name === :output
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    elseif name === :inputTensor
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Tensor}
    elseif name === :outputTensor
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Tensor}
    elseif name === :isUpdatable
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :convolution
        return (obj.__protobuf_jl_internal_values[name])::ConvolutionLayerParams
    elseif name === :pooling
        return (obj.__protobuf_jl_internal_values[name])::PoolingLayerParams
    elseif name === :activation
        return (obj.__protobuf_jl_internal_values[name])::ActivationParams
    elseif name === :innerProduct
        return (obj.__protobuf_jl_internal_values[name])::InnerProductLayerParams
    elseif name === :embedding
        return (obj.__protobuf_jl_internal_values[name])::EmbeddingLayerParams
    elseif name === :batchnorm
        return (obj.__protobuf_jl_internal_values[name])::BatchnormLayerParams
    elseif name === :mvn
        return (obj.__protobuf_jl_internal_values[name])::MeanVarianceNormalizeLayerParams
    elseif name === :l2normalize
        return (obj.__protobuf_jl_internal_values[name])::L2NormalizeLayerParams
    elseif name === :softmax
        return (obj.__protobuf_jl_internal_values[name])::SoftmaxLayerParams
    elseif name === :lrn
        return (obj.__protobuf_jl_internal_values[name])::LRNLayerParams
    elseif name === :crop
        return (obj.__protobuf_jl_internal_values[name])::CropLayerParams
    elseif name === :padding
        return (obj.__protobuf_jl_internal_values[name])::PaddingLayerParams
    elseif name === :upsample
        return (obj.__protobuf_jl_internal_values[name])::UpsampleLayerParams
    elseif name === :resizeBilinear
        return (obj.__protobuf_jl_internal_values[name])::ResizeBilinearLayerParams
    elseif name === :cropResize
        return (obj.__protobuf_jl_internal_values[name])::CropResizeLayerParams
    elseif name === :unary
        return (obj.__protobuf_jl_internal_values[name])::UnaryFunctionLayerParams
    elseif name === :add
        return (obj.__protobuf_jl_internal_values[name])::AddLayerParams
    elseif name === :multiply
        return (obj.__protobuf_jl_internal_values[name])::MultiplyLayerParams
    elseif name === :average
        return (obj.__protobuf_jl_internal_values[name])::AverageLayerParams
    elseif name === :scale
        return (obj.__protobuf_jl_internal_values[name])::ScaleLayerParams
    elseif name === :bias
        return (obj.__protobuf_jl_internal_values[name])::BiasLayerParams
    elseif name === :max
        return (obj.__protobuf_jl_internal_values[name])::MaxLayerParams
    elseif name === :min
        return (obj.__protobuf_jl_internal_values[name])::MinLayerParams
    elseif name === :dot
        return (obj.__protobuf_jl_internal_values[name])::DotProductLayerParams
    elseif name === :reduce
        return (obj.__protobuf_jl_internal_values[name])::ReduceLayerParams
    elseif name === :loadConstant
        return (obj.__protobuf_jl_internal_values[name])::LoadConstantLayerParams
    elseif name === :reshape
        return (obj.__protobuf_jl_internal_values[name])::ReshapeLayerParams
    elseif name === :flatten
        return (obj.__protobuf_jl_internal_values[name])::FlattenLayerParams
    elseif name === :permute
        return (obj.__protobuf_jl_internal_values[name])::PermuteLayerParams
    elseif name === :concat
        return (obj.__protobuf_jl_internal_values[name])::ConcatLayerParams
    elseif name === :split
        return (obj.__protobuf_jl_internal_values[name])::SplitLayerParams
    elseif name === :sequenceRepeat
        return (obj.__protobuf_jl_internal_values[name])::SequenceRepeatLayerParams
    elseif name === :reorganizeData
        return (obj.__protobuf_jl_internal_values[name])::ReorganizeDataLayerParams
    elseif name === :slice
        return (obj.__protobuf_jl_internal_values[name])::SliceLayerParams
    elseif name === :simpleRecurrent
        return (obj.__protobuf_jl_internal_values[name])::SimpleRecurrentLayerParams
    elseif name === :gru
        return (obj.__protobuf_jl_internal_values[name])::GRULayerParams
    elseif name === :uniDirectionalLSTM
        return (obj.__protobuf_jl_internal_values[name])::UniDirectionalLSTMLayerParams
    elseif name === :biDirectionalLSTM
        return (obj.__protobuf_jl_internal_values[name])::BiDirectionalLSTMLayerParams
    elseif name === :custom
        return (obj.__protobuf_jl_internal_values[name])::CustomLayerParams
    elseif name === :copy
        return (obj.__protobuf_jl_internal_values[name])::CopyLayerParams
    elseif name === :branch
        return (obj.__protobuf_jl_internal_values[name])::Any
    elseif name === :loop
        return (obj.__protobuf_jl_internal_values[name])::Any
    elseif name === :loopBreak
        return (obj.__protobuf_jl_internal_values[name])::LoopBreakLayerParams
    elseif name === :loopContinue
        return (obj.__protobuf_jl_internal_values[name])::LoopContinueLayerParams
    elseif name === :rangeStatic
        return (obj.__protobuf_jl_internal_values[name])::RangeStaticLayerParams
    elseif name === :rangeDynamic
        return (obj.__protobuf_jl_internal_values[name])::RangeDynamicLayerParams
    elseif name === :clip
        return (obj.__protobuf_jl_internal_values[name])::ClipLayerParams
    elseif name === :ceil
        return (obj.__protobuf_jl_internal_values[name])::CeilLayerParams
    elseif name === :floor
        return (obj.__protobuf_jl_internal_values[name])::FloorLayerParams
    elseif name === :sign
        return (obj.__protobuf_jl_internal_values[name])::SignLayerParams
    elseif name === :round
        return (obj.__protobuf_jl_internal_values[name])::RoundLayerParams
    elseif name === :exp2
        return (obj.__protobuf_jl_internal_values[name])::Exp2LayerParams
    elseif name === :sin
        return (obj.__protobuf_jl_internal_values[name])::SinLayerParams
    elseif name === :cos
        return (obj.__protobuf_jl_internal_values[name])::CosLayerParams
    elseif name === :tan
        return (obj.__protobuf_jl_internal_values[name])::TanLayerParams
    elseif name === :asin
        return (obj.__protobuf_jl_internal_values[name])::AsinLayerParams
    elseif name === :acos
        return (obj.__protobuf_jl_internal_values[name])::AcosLayerParams
    elseif name === :atan
        return (obj.__protobuf_jl_internal_values[name])::AtanLayerParams
    elseif name === :sinh
        return (obj.__protobuf_jl_internal_values[name])::SinhLayerParams
    elseif name === :cosh
        return (obj.__protobuf_jl_internal_values[name])::CoshLayerParams
    elseif name === :tanh
        return (obj.__protobuf_jl_internal_values[name])::TanhLayerParams
    elseif name === :asinh
        return (obj.__protobuf_jl_internal_values[name])::AsinhLayerParams
    elseif name === :acosh
        return (obj.__protobuf_jl_internal_values[name])::AcoshLayerParams
    elseif name === :atanh
        return (obj.__protobuf_jl_internal_values[name])::AtanhLayerParams
    elseif name === :erf
        return (obj.__protobuf_jl_internal_values[name])::ErfLayerParams
    elseif name === :gelu
        return (obj.__protobuf_jl_internal_values[name])::GeluLayerParams
    elseif name === :equal
        return (obj.__protobuf_jl_internal_values[name])::EqualLayerParams
    elseif name === :notEqual
        return (obj.__protobuf_jl_internal_values[name])::NotEqualLayerParams
    elseif name === :lessThan
        return (obj.__protobuf_jl_internal_values[name])::LessThanLayerParams
    elseif name === :lessEqual
        return (obj.__protobuf_jl_internal_values[name])::LessEqualLayerParams
    elseif name === :greaterThan
        return (obj.__protobuf_jl_internal_values[name])::GreaterThanLayerParams
    elseif name === :greaterEqual
        return (obj.__protobuf_jl_internal_values[name])::GreaterEqualLayerParams
    elseif name === :logicalOr
        return (obj.__protobuf_jl_internal_values[name])::LogicalOrLayerParams
    elseif name === :logicalXor
        return (obj.__protobuf_jl_internal_values[name])::LogicalXorLayerParams
    elseif name === :logicalNot
        return (obj.__protobuf_jl_internal_values[name])::LogicalNotLayerParams
    elseif name === :logicalAnd
        return (obj.__protobuf_jl_internal_values[name])::LogicalAndLayerParams
    elseif name === :modBroadcastable
        return (obj.__protobuf_jl_internal_values[name])::ModBroadcastableLayerParams
    elseif name === :minBroadcastable
        return (obj.__protobuf_jl_internal_values[name])::MinBroadcastableLayerParams
    elseif name === :maxBroadcastable
        return (obj.__protobuf_jl_internal_values[name])::MaxBroadcastableLayerParams
    elseif name === :addBroadcastable
        return (obj.__protobuf_jl_internal_values[name])::AddBroadcastableLayerParams
    elseif name === :powBroadcastable
        return (obj.__protobuf_jl_internal_values[name])::PowBroadcastableLayerParams
    elseif name === :divideBroadcastable
        return (obj.__protobuf_jl_internal_values[name])::DivideBroadcastableLayerParams
    elseif name === :floorDivBroadcastable
        return (obj.__protobuf_jl_internal_values[name])::FloorDivBroadcastableLayerParams
    elseif name === :multiplyBroadcastable
        return (obj.__protobuf_jl_internal_values[name])::MultiplyBroadcastableLayerParams
    elseif name === :subtractBroadcastable
        return (obj.__protobuf_jl_internal_values[name])::SubtractBroadcastableLayerParams
    elseif name === :tile
        return (obj.__protobuf_jl_internal_values[name])::TileLayerParams
    elseif name === :stack
        return (obj.__protobuf_jl_internal_values[name])::StackLayerParams
    elseif name === :gather
        return (obj.__protobuf_jl_internal_values[name])::GatherLayerParams
    elseif name === :scatter
        return (obj.__protobuf_jl_internal_values[name])::ScatterLayerParams
    elseif name === :gatherND
        return (obj.__protobuf_jl_internal_values[name])::GatherNDLayerParams
    elseif name === :scatterND
        return (obj.__protobuf_jl_internal_values[name])::ScatterNDLayerParams
    elseif name === :softmaxND
        return (obj.__protobuf_jl_internal_values[name])::SoftmaxNDLayerParams
    elseif name === :gatherAlongAxis
        return (obj.__protobuf_jl_internal_values[name])::GatherAlongAxisLayerParams
    elseif name === :scatterAlongAxis
        return (obj.__protobuf_jl_internal_values[name])::ScatterAlongAxisLayerParams
    elseif name === :reverse
        return (obj.__protobuf_jl_internal_values[name])::ReverseLayerParams
    elseif name === :reverseSeq
        return (obj.__protobuf_jl_internal_values[name])::ReverseSeqLayerParams
    elseif name === :splitND
        return (obj.__protobuf_jl_internal_values[name])::SplitNDLayerParams
    elseif name === :concatND
        return (obj.__protobuf_jl_internal_values[name])::ConcatNDLayerParams
    elseif name === :transpose
        return (obj.__protobuf_jl_internal_values[name])::TransposeLayerParams
    elseif name === :sliceStatic
        return (obj.__protobuf_jl_internal_values[name])::SliceStaticLayerParams
    elseif name === :sliceDynamic
        return (obj.__protobuf_jl_internal_values[name])::SliceDynamicLayerParams
    elseif name === :slidingWindows
        return (obj.__protobuf_jl_internal_values[name])::SlidingWindowsLayerParams
    elseif name === :topK
        return (obj.__protobuf_jl_internal_values[name])::TopKLayerParams
    elseif name === :argMin
        return (obj.__protobuf_jl_internal_values[name])::ArgMinLayerParams
    elseif name === :argMax
        return (obj.__protobuf_jl_internal_values[name])::ArgMaxLayerParams
    elseif name === :embeddingND
        return (obj.__protobuf_jl_internal_values[name])::EmbeddingNDLayerParams
    elseif name === :batchedMatmul
        return (obj.__protobuf_jl_internal_values[name])::BatchedMatMulLayerParams
    elseif name === :getShape
        return (obj.__protobuf_jl_internal_values[name])::GetShapeLayerParams
    elseif name === :loadConstantND
        return (obj.__protobuf_jl_internal_values[name])::LoadConstantNDLayerParams
    elseif name === :fillLike
        return (obj.__protobuf_jl_internal_values[name])::FillLikeLayerParams
    elseif name === :fillStatic
        return (obj.__protobuf_jl_internal_values[name])::FillStaticLayerParams
    elseif name === :fillDynamic
        return (obj.__protobuf_jl_internal_values[name])::FillDynamicLayerParams
    elseif name === :broadcastToLike
        return (obj.__protobuf_jl_internal_values[name])::BroadcastToLikeLayerParams
    elseif name === :broadcastToStatic
        return (obj.__protobuf_jl_internal_values[name])::BroadcastToStaticLayerParams
    elseif name === :broadcastToDynamic
        return (obj.__protobuf_jl_internal_values[name])::BroadcastToDynamicLayerParams
    elseif name === :squeeze
        return (obj.__protobuf_jl_internal_values[name])::SqueezeLayerParams
    elseif name === :expandDims
        return (obj.__protobuf_jl_internal_values[name])::ExpandDimsLayerParams
    elseif name === :flattenTo2D
        return (obj.__protobuf_jl_internal_values[name])::FlattenTo2DLayerParams
    elseif name === :reshapeLike
        return (obj.__protobuf_jl_internal_values[name])::ReshapeLikeLayerParams
    elseif name === :reshapeStatic
        return (obj.__protobuf_jl_internal_values[name])::ReshapeStaticLayerParams
    elseif name === :reshapeDynamic
        return (obj.__protobuf_jl_internal_values[name])::ReshapeDynamicLayerParams
    elseif name === :rankPreservingReshape
        return (obj.__protobuf_jl_internal_values[name])::RankPreservingReshapeLayerParams
    elseif name === :constantPad
        return (obj.__protobuf_jl_internal_values[name])::ConstantPaddingLayerParams
    elseif name === :randomNormalLike
        return (obj.__protobuf_jl_internal_values[name])::RandomNormalLikeLayerParams
    elseif name === :randomNormalStatic
        return (obj.__protobuf_jl_internal_values[name])::RandomNormalStaticLayerParams
    elseif name === :randomNormalDynamic
        return (obj.__protobuf_jl_internal_values[name])::RandomNormalDynamicLayerParams
    elseif name === :randomUniformLike
        return (obj.__protobuf_jl_internal_values[name])::RandomUniformLikeLayerParams
    elseif name === :randomUniformStatic
        return (obj.__protobuf_jl_internal_values[name])::RandomUniformStaticLayerParams
    elseif name === :randomUniformDynamic
        return (obj.__protobuf_jl_internal_values[name])::RandomUniformDynamicLayerParams
    elseif name === :randomBernoulliLike
        return (obj.__protobuf_jl_internal_values[name])::RandomBernoulliLikeLayerParams
    elseif name === :randomBernoulliStatic
        return (obj.__protobuf_jl_internal_values[name])::RandomBernoulliStaticLayerParams
    elseif name === :randomBernoulliDynamic
        return (obj.__protobuf_jl_internal_values[name])::RandomBernoulliDynamicLayerParams
    elseif name === :categoricalDistribution
        return (obj.__protobuf_jl_internal_values[name])::CategoricalDistributionLayerParams
    elseif name === :reduceL1
        return (obj.__protobuf_jl_internal_values[name])::ReduceL1LayerParams
    elseif name === :reduceL2
        return (obj.__protobuf_jl_internal_values[name])::ReduceL2LayerParams
    elseif name === :reduceMax
        return (obj.__protobuf_jl_internal_values[name])::ReduceMaxLayerParams
    elseif name === :reduceMin
        return (obj.__protobuf_jl_internal_values[name])::ReduceMinLayerParams
    elseif name === :reduceSum
        return (obj.__protobuf_jl_internal_values[name])::ReduceSumLayerParams
    elseif name === :reduceProd
        return (obj.__protobuf_jl_internal_values[name])::ReduceProdLayerParams
    elseif name === :reduceMean
        return (obj.__protobuf_jl_internal_values[name])::ReduceMeanLayerParams
    elseif name === :reduceLogSum
        return (obj.__protobuf_jl_internal_values[name])::ReduceLogSumLayerParams
    elseif name === :reduceSumSquare
        return (obj.__protobuf_jl_internal_values[name])::ReduceSumSquareLayerParams
    elseif name === :reduceLogSumExp
        return (obj.__protobuf_jl_internal_values[name])::ReduceLogSumExpLayerParams
    elseif name === :whereNonZero
        return (obj.__protobuf_jl_internal_values[name])::WhereNonZeroLayerParams
    elseif name === :matrixBandPart
        return (obj.__protobuf_jl_internal_values[name])::MatrixBandPartLayerParams
    elseif name === :lowerTriangular
        return (obj.__protobuf_jl_internal_values[name])::LowerTriangularLayerParams
    elseif name === :upperTriangular
        return (obj.__protobuf_jl_internal_values[name])::UpperTriangularLayerParams
    elseif name === :whereBroadcastable
        return (obj.__protobuf_jl_internal_values[name])::WhereBroadcastableLayerParams
    elseif name === :layerNormalization
        return (obj.__protobuf_jl_internal_values[name])::LayerNormalizationLayerParams
    elseif name === :NonMaximumSuppression
        return (obj.__protobuf_jl_internal_values[name])::NonMaximumSuppressionLayerParams
    elseif name === :oneHot
        return (obj.__protobuf_jl_internal_values[name])::OneHotLayerParams
    elseif name === :cumSum
        return (obj.__protobuf_jl_internal_values[name])::CumSumLayerParams
    elseif name === :clampedReLU
        return (obj.__protobuf_jl_internal_values[name])::ClampedReLULayerParams
    elseif name === :argSort
        return (obj.__protobuf_jl_internal_values[name])::ArgSortLayerParams
    elseif name === :pooling3d
        return (obj.__protobuf_jl_internal_values[name])::Pooling3DLayerParams
    elseif name === :globalPooling3d
        return (obj.__protobuf_jl_internal_values[name])::GlobalPooling3DLayerParams
    elseif name === :sliceBySize
        return (obj.__protobuf_jl_internal_values[name])::SliceBySizeLayerParams
    elseif name === :convolution3d
        return (obj.__protobuf_jl_internal_values[name])::Convolution3DLayerParams
    else
        getfield(obj, name)
    end
end

mutable struct BranchLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function BranchLayerParams(; kwargs...)
        obj = new(meta(BranchLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct BranchLayerParams (has cyclic type dependency)
const __meta_BranchLayerParams = Ref{ProtoMeta}()
function meta(::Type{BranchLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_BranchLayerParams)
            __meta_BranchLayerParams[] = target = ProtoMeta(BranchLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:ifBranch => NeuralNetwork, :elseBranch => NeuralNetwork]
            meta(target, BranchLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_BranchLayerParams[]
    end
end
function Base.getproperty(obj::BranchLayerParams, name::Symbol)
    if name === :ifBranch
        return (obj.__protobuf_jl_internal_values[name])::NeuralNetwork
    elseif name === :elseBranch
        return (obj.__protobuf_jl_internal_values[name])::NeuralNetwork
    else
        getfield(obj, name)
    end
end

mutable struct LoopLayerParams <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LoopLayerParams(; kwargs...)
        obj = new(meta(LoopLayerParams), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LoopLayerParams (has cyclic type dependency)
const __meta_LoopLayerParams = Ref{ProtoMeta}()
function meta(::Type{LoopLayerParams})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LoopLayerParams)
            __meta_LoopLayerParams[] = target = ProtoMeta(LoopLayerParams)
            allflds = Pair{Symbol,Union{Type,String}}[:maxLoopIterations => UInt64, :conditionVar => AbstractString, :conditionNetwork => NeuralNetwork, :bodyNetwork => NeuralNetwork]
            meta(target, LoopLayerParams, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LoopLayerParams[]
    end
end
function Base.getproperty(obj::LoopLayerParams, name::Symbol)
    if name === :maxLoopIterations
        return (obj.__protobuf_jl_internal_values[name])::UInt64
    elseif name === :conditionVar
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :conditionNetwork
        return (obj.__protobuf_jl_internal_values[name])::NeuralNetwork
    elseif name === :bodyNetwork
        return (obj.__protobuf_jl_internal_values[name])::NeuralNetwork
    else
        getfield(obj, name)
    end
end

mutable struct NeuralNetworkClassifier <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function NeuralNetworkClassifier(; kwargs...)
        obj = new(meta(NeuralNetworkClassifier), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct NeuralNetworkClassifier (has cyclic type dependency)
const __meta_NeuralNetworkClassifier = Ref{ProtoMeta}()
function meta(::Type{NeuralNetworkClassifier})
    ProtoBuf.metalock() do
        if !isassigned(__meta_NeuralNetworkClassifier)
            __meta_NeuralNetworkClassifier[] = target = ProtoMeta(NeuralNetworkClassifier)
            fnum = Int[1,2,5,6,10,100,101,200]
            allflds = Pair{Symbol,Union{Type,String}}[:layers => Base.Vector{NeuralNetworkLayer}, :preprocessing => Base.Vector{NeuralNetworkPreprocessing}, :arrayInputShapeMapping => Int32, :imageInputShapeMapping => Int32, :updateParams => NetworkUpdateParameters, :stringClassLabels => StringVector, :int64ClassLabels => Int64Vector, :labelProbabilityLayerName => AbstractString]
            oneofs = Int[0,0,0,0,0,1,1,0]
            oneof_names = Symbol[Symbol("ClassLabels")]
            meta(target, NeuralNetworkClassifier, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_NeuralNetworkClassifier[]
    end
end
function Base.getproperty(obj::NeuralNetworkClassifier, name::Symbol)
    if name === :layers
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{NeuralNetworkLayer}
    elseif name === :preprocessing
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{NeuralNetworkPreprocessing}
    elseif name === :arrayInputShapeMapping
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :imageInputShapeMapping
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :updateParams
        return (obj.__protobuf_jl_internal_values[name])::NetworkUpdateParameters
    elseif name === :stringClassLabels
        return (obj.__protobuf_jl_internal_values[name])::StringVector
    elseif name === :int64ClassLabels
        return (obj.__protobuf_jl_internal_values[name])::Int64Vector
    elseif name === :labelProbabilityLayerName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct NeuralNetworkRegressor <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function NeuralNetworkRegressor(; kwargs...)
        obj = new(meta(NeuralNetworkRegressor), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct NeuralNetworkRegressor (has cyclic type dependency)
const __meta_NeuralNetworkRegressor = Ref{ProtoMeta}()
function meta(::Type{NeuralNetworkRegressor})
    ProtoBuf.metalock() do
        if !isassigned(__meta_NeuralNetworkRegressor)
            __meta_NeuralNetworkRegressor[] = target = ProtoMeta(NeuralNetworkRegressor)
            fnum = Int[1,2,5,6,10]
            allflds = Pair{Symbol,Union{Type,String}}[:layers => Base.Vector{NeuralNetworkLayer}, :preprocessing => Base.Vector{NeuralNetworkPreprocessing}, :arrayInputShapeMapping => Int32, :imageInputShapeMapping => Int32, :updateParams => NetworkUpdateParameters]
            meta(target, NeuralNetworkRegressor, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_NeuralNetworkRegressor[]
    end
end
function Base.getproperty(obj::NeuralNetworkRegressor, name::Symbol)
    if name === :layers
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{NeuralNetworkLayer}
    elseif name === :preprocessing
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{NeuralNetworkPreprocessing}
    elseif name === :arrayInputShapeMapping
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :imageInputShapeMapping
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :updateParams
        return (obj.__protobuf_jl_internal_values[name])::NetworkUpdateParameters
    else
        getfield(obj, name)
    end
end

export NeuralNetworkMultiArrayShapeMapping, NeuralNetworkImageShapeMapping, ScatterMode, NeuralNetwork, NeuralNetworkImageScaler, NeuralNetworkMeanImage, NeuralNetworkPreprocessing, ActivationReLU, ActivationLeakyReLU, ActivationTanh, ActivationScaledTanh, ActivationSigmoid, ActivationLinear, ActivationSigmoidHard, ActivationPReLU, ActivationELU, ActivationThresholdedReLU, ActivationSoftsign, ActivationSoftplus, ActivationParametricSoftplus, ActivationParams, Tensor, NeuralNetworkLayer, BranchLayerParams, LoopLayerParams, LoopBreakLayerParams, LoopContinueLayerParams, CopyLayerParams, GreaterThanLayerParams, GreaterEqualLayerParams, LessThanLayerParams, LessEqualLayerParams, EqualLayerParams, NotEqualLayerParams, LogicalAndLayerParams, LogicalOrLayerParams, LogicalXorLayerParams, LogicalNotLayerParams, BorderAmounts_EdgeSizes, BorderAmounts, ValidPadding, SamePadding_SamePaddingMode, SamePadding, SamplingMode_Method, SamplingMode, BoxCoordinatesMode_Coordinates, BoxCoordinatesMode, WeightParams, QuantizationParams, LinearQuantizationParams, LookUpTableQuantizationParams, ConvolutionLayerParams, Convolution3DLayerParams_PaddingType, Convolution3DLayerParams, InnerProductLayerParams, EmbeddingLayerParams, EmbeddingNDLayerParams, BatchnormLayerParams, PoolingLayerParams_PoolingType, PoolingLayerParams_ValidCompletePadding, PoolingLayerParams, Pooling3DLayerParams_PoolingType3D, Pooling3DLayerParams_Pooling3DPaddingType, Pooling3DLayerParams, GlobalPooling3DLayerParams_GlobalPoolingType3D, GlobalPooling3DLayerParams, PaddingLayerParams_PaddingConstant, PaddingLayerParams_PaddingReflection, PaddingLayerParams_PaddingReplication, PaddingLayerParams, ConcatLayerParams, LRNLayerParams, SoftmaxLayerParams, SplitLayerParams, AddLayerParams, MultiplyLayerParams, UnaryFunctionLayerParams_Operation, UnaryFunctionLayerParams, UpsampleLayerParams_InterpolationMode, UpsampleLayerParams_LinearUpsampleMode, UpsampleLayerParams, ResizeBilinearLayerParams, CropResizeLayerParams, BiasLayerParams, ScaleLayerParams, LoadConstantLayerParams, L2NormalizeLayerParams, FlattenLayerParams_FlattenOrder, FlattenLayerParams, ReshapeLayerParams_ReshapeOrder, ReshapeLayerParams, PermuteLayerParams, ReorganizeDataLayerParams_ReorganizationType, ReorganizeDataLayerParams, SliceLayerParams_SliceAxis, SliceLayerParams, ReduceLayerParams_ReduceOperation, ReduceLayerParams_ReduceAxis, ReduceLayerParams, CropLayerParams, AverageLayerParams, MaxLayerParams, MinLayerParams, DotProductLayerParams, MeanVarianceNormalizeLayerParams, SequenceRepeatLayerParams, SimpleRecurrentLayerParams, GRULayerParams, LSTMParams, LSTMWeightParams, UniDirectionalLSTMLayerParams, BiDirectionalLSTMLayerParams, CustomLayerParams_CustomLayerParamValue, CustomLayerParams_ParametersEntry, CustomLayerParams, TransposeLayerParams, BatchedMatMulLayerParams, ConcatNDLayerParams, SoftmaxNDLayerParams, ReverseLayerParams, ReverseSeqLayerParams, LoadConstantNDLayerParams, FillLikeLayerParams, FillStaticLayerParams, FillDynamicLayerParams, WhereBroadcastableLayerParams, SinLayerParams, CosLayerParams, TanLayerParams, AsinLayerParams, AcosLayerParams, AtanLayerParams, SinhLayerParams, CoshLayerParams, TanhLayerParams, AsinhLayerParams, AcoshLayerParams, AtanhLayerParams, PowBroadcastableLayerParams, Exp2LayerParams, WhereNonZeroLayerParams, MatrixBandPartLayerParams, UpperTriangularLayerParams, LowerTriangularLayerParams, BroadcastToLikeLayerParams, BroadcastToStaticLayerParams, BroadcastToDynamicLayerParams, AddBroadcastableLayerParams, MaxBroadcastableLayerParams, MinBroadcastableLayerParams, ModBroadcastableLayerParams, FloorDivBroadcastableLayerParams, SubtractBroadcastableLayerParams, MultiplyBroadcastableLayerParams, DivideBroadcastableLayerParams, GatherLayerParams, ScatterLayerParams, GatherNDLayerParams, ScatterNDLayerParams, GatherAlongAxisLayerParams, ScatterAlongAxisLayerParams, StackLayerParams, RankPreservingReshapeLayerParams, ConstantPaddingLayerParams, RandomNormalLikeLayerParams, RandomNormalStaticLayerParams, RandomNormalDynamicLayerParams, RandomUniformLikeLayerParams, RandomUniformStaticLayerParams, RandomUniformDynamicLayerParams, RandomBernoulliLikeLayerParams, RandomBernoulliStaticLayerParams, RandomBernoulliDynamicLayerParams, CategoricalDistributionLayerParams, ReduceL1LayerParams, ReduceL2LayerParams, ReduceMaxLayerParams, ReduceMinLayerParams, ReduceSumLayerParams, ReduceProdLayerParams, ReduceMeanLayerParams, ReduceLogSumLayerParams, ReduceSumSquareLayerParams, ReduceLogSumExpLayerParams, ExpandDimsLayerParams, FlattenTo2DLayerParams, ReshapeStaticLayerParams, ReshapeLikeLayerParams, ReshapeDynamicLayerParams, SqueezeLayerParams, TopKLayerParams, ArgMaxLayerParams, ArgMinLayerParams, SplitNDLayerParams, CeilLayerParams, RoundLayerParams, FloorLayerParams, SignLayerParams, ClipLayerParams, SliceStaticLayerParams, SliceDynamicLayerParams, TileLayerParams, GetShapeLayerParams, ErfLayerParams, GeluLayerParams_GeluMode, GeluLayerParams, RangeStaticLayerParams, RangeDynamicLayerParams, SlidingWindowsLayerParams, LayerNormalizationLayerParams, NonMaximumSuppressionLayerParams, ClampedReLULayerParams, ArgSortLayerParams, SliceBySizeLayerParams, NeuralNetworkClassifier, OneHotLayerParams, CumSumLayerParams, NeuralNetworkRegressor, NetworkUpdateParameters, LossLayer, CategoricalCrossEntropyLossLayer, MeanSquaredErrorLossLayer, Optimizer, SGDOptimizer, AdamOptimizer, NeuralNetwork, NeuralNetworkLayer, BranchLayerParams, LoopLayerParams, NeuralNetworkClassifier, NeuralNetworkRegressor
# mapentries: "CustomLayerParams_ParametersEntry" => ("AbstractString", "CustomLayerParams_CustomLayerParamValue")
