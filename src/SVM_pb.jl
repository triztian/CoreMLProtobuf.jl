# syntax: proto3
using ProtoBuf
import ProtoBuf.meta

mutable struct LinearKernel <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LinearKernel(; kwargs...)
        obj = new(meta(LinearKernel), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct LinearKernel
const __meta_LinearKernel = Ref{ProtoMeta}()
function meta(::Type{LinearKernel})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LinearKernel)
            __meta_LinearKernel[] = target = ProtoMeta(LinearKernel)
            allflds = Pair{Symbol,Union{Type,String}}[]
            meta(target, LinearKernel, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LinearKernel[]
    end
end

mutable struct RBFKernel <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RBFKernel(; kwargs...)
        obj = new(meta(RBFKernel), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct RBFKernel
const __meta_RBFKernel = Ref{ProtoMeta}()
function meta(::Type{RBFKernel})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RBFKernel)
            __meta_RBFKernel[] = target = ProtoMeta(RBFKernel)
            allflds = Pair{Symbol,Union{Type,String}}[:gamma => Float64]
            meta(target, RBFKernel, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RBFKernel[]
    end
end
function Base.getproperty(obj::RBFKernel, name::Symbol)
    if name === :gamma
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct PolyKernel <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PolyKernel(; kwargs...)
        obj = new(meta(PolyKernel), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct PolyKernel
const __meta_PolyKernel = Ref{ProtoMeta}()
function meta(::Type{PolyKernel})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PolyKernel)
            __meta_PolyKernel[] = target = ProtoMeta(PolyKernel)
            allflds = Pair{Symbol,Union{Type,String}}[:degree => Int32, :c => Float64, :gamma => Float64]
            meta(target, PolyKernel, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PolyKernel[]
    end
end
function Base.getproperty(obj::PolyKernel, name::Symbol)
    if name === :degree
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :c
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :gamma
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct SigmoidKernel <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SigmoidKernel(; kwargs...)
        obj = new(meta(SigmoidKernel), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct SigmoidKernel
const __meta_SigmoidKernel = Ref{ProtoMeta}()
function meta(::Type{SigmoidKernel})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SigmoidKernel)
            __meta_SigmoidKernel[] = target = ProtoMeta(SigmoidKernel)
            allflds = Pair{Symbol,Union{Type,String}}[:gamma => Float64, :c => Float64]
            meta(target, SigmoidKernel, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SigmoidKernel[]
    end
end
function Base.getproperty(obj::SigmoidKernel, name::Symbol)
    if name === :gamma
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :c
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct Kernel <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Kernel(; kwargs...)
        obj = new(meta(Kernel), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Kernel
const __meta_Kernel = Ref{ProtoMeta}()
function meta(::Type{Kernel})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Kernel)
            __meta_Kernel[] = target = ProtoMeta(Kernel)
            allflds = Pair{Symbol,Union{Type,String}}[:linearKernel => LinearKernel, :rbfKernel => RBFKernel, :polyKernel => PolyKernel, :sigmoidKernel => SigmoidKernel]
            oneofs = Int[1,1,1,1]
            oneof_names = Symbol[Symbol("kernel")]
            meta(target, Kernel, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_Kernel[]
    end
end
function Base.getproperty(obj::Kernel, name::Symbol)
    if name === :linearKernel
        return (obj.__protobuf_jl_internal_values[name])::LinearKernel
    elseif name === :rbfKernel
        return (obj.__protobuf_jl_internal_values[name])::RBFKernel
    elseif name === :polyKernel
        return (obj.__protobuf_jl_internal_values[name])::PolyKernel
    elseif name === :sigmoidKernel
        return (obj.__protobuf_jl_internal_values[name])::SigmoidKernel
    else
        getfield(obj, name)
    end
end

mutable struct SparseNode <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SparseNode(; kwargs...)
        obj = new(meta(SparseNode), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct SparseNode
const __meta_SparseNode = Ref{ProtoMeta}()
function meta(::Type{SparseNode})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SparseNode)
            __meta_SparseNode[] = target = ProtoMeta(SparseNode)
            allflds = Pair{Symbol,Union{Type,String}}[:index => Int32, :value => Float64]
            meta(target, SparseNode, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SparseNode[]
    end
end
function Base.getproperty(obj::SparseNode, name::Symbol)
    if name === :index
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct SparseVector <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SparseVector(; kwargs...)
        obj = new(meta(SparseVector), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct SparseVector
const __meta_SparseVector = Ref{ProtoMeta}()
function meta(::Type{SparseVector})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SparseVector)
            __meta_SparseVector[] = target = ProtoMeta(SparseVector)
            allflds = Pair{Symbol,Union{Type,String}}[:nodes => Base.Vector{SparseNode}]
            meta(target, SparseVector, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SparseVector[]
    end
end
function Base.getproperty(obj::SparseVector, name::Symbol)
    if name === :nodes
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{SparseNode}
    else
        getfield(obj, name)
    end
end

mutable struct SparseSupportVectors <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SparseSupportVectors(; kwargs...)
        obj = new(meta(SparseSupportVectors), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct SparseSupportVectors
const __meta_SparseSupportVectors = Ref{ProtoMeta}()
function meta(::Type{SparseSupportVectors})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SparseSupportVectors)
            __meta_SparseSupportVectors[] = target = ProtoMeta(SparseSupportVectors)
            allflds = Pair{Symbol,Union{Type,String}}[:vectors => Base.Vector{SparseVector}]
            meta(target, SparseSupportVectors, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SparseSupportVectors[]
    end
end
function Base.getproperty(obj::SparseSupportVectors, name::Symbol)
    if name === :vectors
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{SparseVector}
    else
        getfield(obj, name)
    end
end

mutable struct DenseVector <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DenseVector(; kwargs...)
        obj = new(meta(DenseVector), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct DenseVector
const __meta_DenseVector = Ref{ProtoMeta}()
function meta(::Type{DenseVector})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DenseVector)
            __meta_DenseVector[] = target = ProtoMeta(DenseVector)
            pack = Symbol[:values]
            allflds = Pair{Symbol,Union{Type,String}}[:values => Base.Vector{Float64}]
            meta(target, DenseVector, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DenseVector[]
    end
end
function Base.getproperty(obj::DenseVector, name::Symbol)
    if name === :values
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
    else
        getfield(obj, name)
    end
end

mutable struct DenseSupportVectors <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DenseSupportVectors(; kwargs...)
        obj = new(meta(DenseSupportVectors), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct DenseSupportVectors
const __meta_DenseSupportVectors = Ref{ProtoMeta}()
function meta(::Type{DenseSupportVectors})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DenseSupportVectors)
            __meta_DenseSupportVectors[] = target = ProtoMeta(DenseSupportVectors)
            allflds = Pair{Symbol,Union{Type,String}}[:vectors => Base.Vector{DenseVector}]
            meta(target, DenseSupportVectors, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DenseSupportVectors[]
    end
end
function Base.getproperty(obj::DenseSupportVectors, name::Symbol)
    if name === :vectors
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{DenseVector}
    else
        getfield(obj, name)
    end
end

mutable struct Coefficients <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Coefficients(; kwargs...)
        obj = new(meta(Coefficients), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Coefficients
const __meta_Coefficients = Ref{ProtoMeta}()
function meta(::Type{Coefficients})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Coefficients)
            __meta_Coefficients[] = target = ProtoMeta(Coefficients)
            pack = Symbol[:alpha]
            allflds = Pair{Symbol,Union{Type,String}}[:alpha => Base.Vector{Float64}]
            meta(target, Coefficients, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Coefficients[]
    end
end
function Base.getproperty(obj::Coefficients, name::Symbol)
    if name === :alpha
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
    else
        getfield(obj, name)
    end
end

mutable struct SupportVectorRegressor <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SupportVectorRegressor(; kwargs...)
        obj = new(meta(SupportVectorRegressor), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct SupportVectorRegressor
const __meta_SupportVectorRegressor = Ref{ProtoMeta}()
function meta(::Type{SupportVectorRegressor})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SupportVectorRegressor)
            __meta_SupportVectorRegressor[] = target = ProtoMeta(SupportVectorRegressor)
            allflds = Pair{Symbol,Union{Type,String}}[:kernel => Kernel, :sparseSupportVectors => SparseSupportVectors, :denseSupportVectors => DenseSupportVectors, :coefficients => Coefficients, :rho => Float64]
            oneofs = Int[0,1,1,0,0]
            oneof_names = Symbol[Symbol("supportVectors")]
            meta(target, SupportVectorRegressor, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_SupportVectorRegressor[]
    end
end
function Base.getproperty(obj::SupportVectorRegressor, name::Symbol)
    if name === :kernel
        return (obj.__protobuf_jl_internal_values[name])::Kernel
    elseif name === :sparseSupportVectors
        return (obj.__protobuf_jl_internal_values[name])::SparseSupportVectors
    elseif name === :denseSupportVectors
        return (obj.__protobuf_jl_internal_values[name])::DenseSupportVectors
    elseif name === :coefficients
        return (obj.__protobuf_jl_internal_values[name])::Coefficients
    elseif name === :rho
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

mutable struct SupportVectorClassifier <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SupportVectorClassifier(; kwargs...)
        obj = new(meta(SupportVectorClassifier), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct SupportVectorClassifier
const __meta_SupportVectorClassifier = Ref{ProtoMeta}()
function meta(::Type{SupportVectorClassifier})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SupportVectorClassifier)
            __meta_SupportVectorClassifier[] = target = ProtoMeta(SupportVectorClassifier)
            fnum = Int[1,2,3,4,5,6,7,8,100,101]
            pack = Symbol[:numberOfSupportVectorsPerClass,:rho,:probA,:probB]
            allflds = Pair{Symbol,Union{Type,String}}[:kernel => Kernel, :numberOfSupportVectorsPerClass => Base.Vector{Int32}, :sparseSupportVectors => SparseSupportVectors, :denseSupportVectors => DenseSupportVectors, :coefficients => Base.Vector{Coefficients}, :rho => Base.Vector{Float64}, :probA => Base.Vector{Float64}, :probB => Base.Vector{Float64}, :stringClassLabels => StringVector, :int64ClassLabels => Int64Vector]
            oneofs = Int[0,0,1,1,0,0,0,0,2,2]
            oneof_names = Symbol[Symbol("supportVectors"),Symbol("ClassLabels")]
            meta(target, SupportVectorClassifier, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, pack, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_SupportVectorClassifier[]
    end
end
function Base.getproperty(obj::SupportVectorClassifier, name::Symbol)
    if name === :kernel
        return (obj.__protobuf_jl_internal_values[name])::Kernel
    elseif name === :numberOfSupportVectorsPerClass
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int32}
    elseif name === :sparseSupportVectors
        return (obj.__protobuf_jl_internal_values[name])::SparseSupportVectors
    elseif name === :denseSupportVectors
        return (obj.__protobuf_jl_internal_values[name])::DenseSupportVectors
    elseif name === :coefficients
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Coefficients}
    elseif name === :rho
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
    elseif name === :probA
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
    elseif name === :probB
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
    elseif name === :stringClassLabels
        return (obj.__protobuf_jl_internal_values[name])::StringVector
    elseif name === :int64ClassLabels
        return (obj.__protobuf_jl_internal_values[name])::Int64Vector
    else
        getfield(obj, name)
    end
end

export LinearKernel, RBFKernel, PolyKernel, SigmoidKernel, Kernel, SparseNode, SparseVector, SparseSupportVectors, DenseVector, DenseSupportVectors, Coefficients, SupportVectorRegressor, SupportVectorClassifier
