# syntax: proto3
using ProtoBuf
import ProtoBuf.meta
import ..CoreML

mutable struct FeatureDescription <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function FeatureDescription(; kwargs...)
        obj = new(meta(FeatureDescription), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct FeatureDescription
const __meta_FeatureDescription = Ref{ProtoMeta}()
function meta(::Type{FeatureDescription})
    ProtoBuf.metalock() do
        if !isassigned(__meta_FeatureDescription)
            __meta_FeatureDescription[] = target = ProtoMeta(FeatureDescription)
            allflds = Pair{Symbol,Union{Type,String}}[:name => AbstractString, :shortDescription => AbstractString, :_type => FeatureType]
            meta(target, FeatureDescription, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_FeatureDescription[]
    end
end
function Base.getproperty(obj::FeatureDescription, name::Symbol)
    if name === :name
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :shortDescription
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :_type
        return (obj.__protobuf_jl_internal_values[name])::FeatureType
    else
        getfield(obj, name)
    end
end

mutable struct Metadata_UserDefinedEntry <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Metadata_UserDefinedEntry(; kwargs...)
        obj = new(meta(Metadata_UserDefinedEntry), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Metadata_UserDefinedEntry (mapentry)
const __meta_Metadata_UserDefinedEntry = Ref{ProtoMeta}()
function meta(::Type{Metadata_UserDefinedEntry})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Metadata_UserDefinedEntry)
            __meta_Metadata_UserDefinedEntry[] = target = ProtoMeta(Metadata_UserDefinedEntry)
            allflds = Pair{Symbol,Union{Type,String}}[:key => AbstractString, :value => AbstractString]
            meta(target, Metadata_UserDefinedEntry, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Metadata_UserDefinedEntry[]
    end
end
function Base.getproperty(obj::Metadata_UserDefinedEntry, name::Symbol)
    if name === :key
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :value
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    else
        getfield(obj, name)
    end
end

mutable struct Metadata <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Metadata(; kwargs...)
        obj = new(meta(Metadata), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Metadata
const __meta_Metadata = Ref{ProtoMeta}()
function meta(::Type{Metadata})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Metadata)
            __meta_Metadata[] = target = ProtoMeta(Metadata)
            fnum = Int[1,2,3,4,100]
            allflds = Pair{Symbol,Union{Type,String}}[:shortDescription => AbstractString, :versionString => AbstractString, :author => AbstractString, :license => AbstractString, :userDefined => Base.Dict{AbstractString,AbstractString}]
            meta(target, Metadata, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Metadata[]
    end
end
function Base.getproperty(obj::Metadata, name::Symbol)
    if name === :shortDescription
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :versionString
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :author
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :license
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :userDefined
        return (obj.__protobuf_jl_internal_values[name])::Base.Dict{AbstractString,AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct ModelDescription <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ModelDescription(; kwargs...)
        obj = new(meta(ModelDescription), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct ModelDescription
const __meta_ModelDescription = Ref{ProtoMeta}()
function meta(::Type{ModelDescription})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ModelDescription)
            __meta_ModelDescription[] = target = ProtoMeta(ModelDescription)
            fnum = Int[1,10,11,12,50,100]
            allflds = Pair{Symbol,Union{Type,String}}[:input => Base.Vector{FeatureDescription}, :output => Base.Vector{FeatureDescription}, :predictedFeatureName => AbstractString, :predictedProbabilitiesName => AbstractString, :trainingInput => Base.Vector{FeatureDescription}, :metadata => Metadata]
            meta(target, ModelDescription, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ModelDescription[]
    end
end
function Base.getproperty(obj::ModelDescription, name::Symbol)
    if name === :input
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{FeatureDescription}
    elseif name === :output
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{FeatureDescription}
    elseif name === :predictedFeatureName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :predictedProbabilitiesName
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :trainingInput
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{FeatureDescription}
    elseif name === :metadata
        return (obj.__protobuf_jl_internal_values[name])::Metadata
    else
        getfield(obj, name)
    end
end

mutable struct SerializedModel <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SerializedModel(; kwargs...)
        obj = new(meta(SerializedModel), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct SerializedModel
const __meta_SerializedModel = Ref{ProtoMeta}()
function meta(::Type{SerializedModel})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SerializedModel)
            __meta_SerializedModel[] = target = ProtoMeta(SerializedModel)
            allflds = Pair{Symbol,Union{Type,String}}[:identifier => AbstractString, :model => Vector{UInt8}]
            meta(target, SerializedModel, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SerializedModel[]
    end
end
function Base.getproperty(obj::SerializedModel, name::Symbol)
    if name === :identifier
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :model
        return (obj.__protobuf_jl_internal_values[name])::Vector{UInt8}
    else
        getfield(obj, name)
    end
end

mutable struct Pipeline <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Pipeline(; kwargs...)
        obj = new(meta(Pipeline), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Pipeline (has cyclic type dependency)
const __meta_Pipeline = Ref{ProtoMeta}()
function meta(::Type{Pipeline})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Pipeline)
            __meta_Pipeline[] = target = ProtoMeta(Pipeline)
            allflds = Pair{Symbol,Union{Type,String}}[:models => "Base.Vector{Model}", :names => Base.Vector{AbstractString}]
            meta(target, Pipeline, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Pipeline[]
    end
end
function Base.getproperty(obj::Pipeline, name::Symbol)
    if name === :models
        return (obj.__protobuf_jl_internal_values[name])::Any
    elseif name === :names
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{AbstractString}
    else
        getfield(obj, name)
    end
end

mutable struct PipelineClassifier <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PipelineClassifier(; kwargs...)
        obj = new(meta(PipelineClassifier), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct PipelineClassifier (has cyclic type dependency)
const __meta_PipelineClassifier = Ref{ProtoMeta}()
function meta(::Type{PipelineClassifier})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PipelineClassifier)
            __meta_PipelineClassifier[] = target = ProtoMeta(PipelineClassifier)
            allflds = Pair{Symbol,Union{Type,String}}[:pipeline => Pipeline]
            meta(target, PipelineClassifier, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PipelineClassifier[]
    end
end
function Base.getproperty(obj::PipelineClassifier, name::Symbol)
    if name === :pipeline
        return (obj.__protobuf_jl_internal_values[name])::Pipeline
    else
        getfield(obj, name)
    end
end

mutable struct PipelineRegressor <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function PipelineRegressor(; kwargs...)
        obj = new(meta(PipelineRegressor), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct PipelineRegressor (has cyclic type dependency)
const __meta_PipelineRegressor = Ref{ProtoMeta}()
function meta(::Type{PipelineRegressor})
    ProtoBuf.metalock() do
        if !isassigned(__meta_PipelineRegressor)
            __meta_PipelineRegressor[] = target = ProtoMeta(PipelineRegressor)
            allflds = Pair{Symbol,Union{Type,String}}[:pipeline => Pipeline]
            meta(target, PipelineRegressor, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_PipelineRegressor[]
    end
end
function Base.getproperty(obj::PipelineRegressor, name::Symbol)
    if name === :pipeline
        return (obj.__protobuf_jl_internal_values[name])::Pipeline
    else
        getfield(obj, name)
    end
end

mutable struct Model <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Model(; kwargs...)
        obj = new(meta(Model), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            if fldval !== nothing
                values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
            end
        end
        obj
    end
end # mutable struct Model (has cyclic type dependency)
const __meta_Model = Ref{ProtoMeta}()
function meta(::Type{Model})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Model)
            __meta_Model[] = target = ProtoMeta(Model)
            fnum = Int[1,2,10,200,201,202,300,301,302,303,304,400,401,402,403,404,500,501,555,556,600,601,602,603,604,606,607,609,610,900,2000,2001,2002,2003,2004,2005,3000]
            allflds = Pair{Symbol,Union{Type,String}}[:specificationVersion => Int32, :description => ModelDescription, :isUpdatable => Bool, :pipelineClassifier => PipelineClassifier, :pipelineRegressor => PipelineRegressor, :pipeline => Pipeline, :glmRegressor => GLMRegressor, :supportVectorRegressor => SupportVectorRegressor, :treeEnsembleRegressor => TreeEnsembleRegressor, :neuralNetworkRegressor => NeuralNetworkRegressor, :bayesianProbitRegressor => BayesianProbitRegressor, :glmClassifier => GLMClassifier, :supportVectorClassifier => SupportVectorClassifier, :treeEnsembleClassifier => TreeEnsembleClassifier, :neuralNetworkClassifier => NeuralNetworkClassifier, :kNearestNeighborsClassifier => KNearestNeighborsClassifier, :neuralNetwork => NeuralNetwork, :itemSimilarityRecommender => ItemSimilarityRecommender, :customModel => CustomModel, :linkedModel => LinkedModel, :oneHotEncoder => OneHotEncoder, :imputer => Imputer, :featureVectorizer => FeatureVectorizer, :dictVectorizer => DictVectorizer, :scaler => Scaler, :categoricalMapping => CategoricalMapping, :normalizer => Normalizer, :arrayFeatureExtractor => ArrayFeatureExtractor, :nonMaximumSuppression => NonMaximumSuppression, :identity => Identity, :textClassifier => CoreML.Specification.CoreMLModels.TextClassifier, :wordTagger => CoreML.Specification.CoreMLModels.WordTagger, :visionFeaturePrint => CoreML.Specification.CoreMLModels.VisionFeaturePrint, :soundAnalysisPreprocessing => CoreML.Specification.CoreMLModels.SoundAnalysisPreprocessing, :gazetteer => CoreML.Specification.CoreMLModels.Gazetteer, :wordEmbedding => CoreML.Specification.CoreMLModels.WordEmbedding, :serializedModel => SerializedModel]
            oneofs = Int[0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
            oneof_names = Symbol[Symbol("Type")]
            meta(target, Model, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_Model[]
    end
end
function Base.getproperty(obj::Model, name::Symbol)
    if name === :specificationVersion
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :description
        return (obj.__protobuf_jl_internal_values[name])::ModelDescription
    elseif name === :isUpdatable
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :pipelineClassifier
        return (obj.__protobuf_jl_internal_values[name])::PipelineClassifier
    elseif name === :pipelineRegressor
        return (obj.__protobuf_jl_internal_values[name])::PipelineRegressor
    elseif name === :pipeline
        return (obj.__protobuf_jl_internal_values[name])::Pipeline
    elseif name === :glmRegressor
        return (obj.__protobuf_jl_internal_values[name])::GLMRegressor
    elseif name === :supportVectorRegressor
        return (obj.__protobuf_jl_internal_values[name])::SupportVectorRegressor
    elseif name === :treeEnsembleRegressor
        return (obj.__protobuf_jl_internal_values[name])::TreeEnsembleRegressor
    elseif name === :neuralNetworkRegressor
        return (obj.__protobuf_jl_internal_values[name])::NeuralNetworkRegressor
    elseif name === :bayesianProbitRegressor
        return (obj.__protobuf_jl_internal_values[name])::BayesianProbitRegressor
    elseif name === :glmClassifier
        return (obj.__protobuf_jl_internal_values[name])::GLMClassifier
    elseif name === :supportVectorClassifier
        return (obj.__protobuf_jl_internal_values[name])::SupportVectorClassifier
    elseif name === :treeEnsembleClassifier
        return (obj.__protobuf_jl_internal_values[name])::TreeEnsembleClassifier
    elseif name === :neuralNetworkClassifier
        return (obj.__protobuf_jl_internal_values[name])::NeuralNetworkClassifier
    elseif name === :kNearestNeighborsClassifier
        return (obj.__protobuf_jl_internal_values[name])::KNearestNeighborsClassifier
    elseif name === :neuralNetwork
        return (obj.__protobuf_jl_internal_values[name])::NeuralNetwork
    elseif name === :itemSimilarityRecommender
        return (obj.__protobuf_jl_internal_values[name])::ItemSimilarityRecommender
    elseif name === :customModel
        return (obj.__protobuf_jl_internal_values[name])::CustomModel
    elseif name === :linkedModel
        return (obj.__protobuf_jl_internal_values[name])::LinkedModel
    elseif name === :oneHotEncoder
        return (obj.__protobuf_jl_internal_values[name])::OneHotEncoder
    elseif name === :imputer
        return (obj.__protobuf_jl_internal_values[name])::Imputer
    elseif name === :featureVectorizer
        return (obj.__protobuf_jl_internal_values[name])::FeatureVectorizer
    elseif name === :dictVectorizer
        return (obj.__protobuf_jl_internal_values[name])::DictVectorizer
    elseif name === :scaler
        return (obj.__protobuf_jl_internal_values[name])::Scaler
    elseif name === :categoricalMapping
        return (obj.__protobuf_jl_internal_values[name])::CategoricalMapping
    elseif name === :normalizer
        return (obj.__protobuf_jl_internal_values[name])::Normalizer
    elseif name === :arrayFeatureExtractor
        return (obj.__protobuf_jl_internal_values[name])::ArrayFeatureExtractor
    elseif name === :nonMaximumSuppression
        return (obj.__protobuf_jl_internal_values[name])::NonMaximumSuppression
    elseif name === :identity
        return (obj.__protobuf_jl_internal_values[name])::Identity
    elseif name === :textClassifier
        return (obj.__protobuf_jl_internal_values[name])::CoreML.Specification.CoreMLModels.TextClassifier
    elseif name === :wordTagger
        return (obj.__protobuf_jl_internal_values[name])::CoreML.Specification.CoreMLModels.WordTagger
    elseif name === :visionFeaturePrint
        return (obj.__protobuf_jl_internal_values[name])::CoreML.Specification.CoreMLModels.VisionFeaturePrint
    elseif name === :soundAnalysisPreprocessing
        return (obj.__protobuf_jl_internal_values[name])::CoreML.Specification.CoreMLModels.SoundAnalysisPreprocessing
    elseif name === :gazetteer
        return (obj.__protobuf_jl_internal_values[name])::CoreML.Specification.CoreMLModels.Gazetteer
    elseif name === :wordEmbedding
        return (obj.__protobuf_jl_internal_values[name])::CoreML.Specification.CoreMLModels.WordEmbedding
    elseif name === :serializedModel
        return (obj.__protobuf_jl_internal_values[name])::SerializedModel
    else
        getfield(obj, name)
    end
end

export Pipeline, PipelineClassifier, PipelineRegressor, FeatureDescription, Metadata_UserDefinedEntry, Metadata, ModelDescription, SerializedModel, Model, Pipeline, PipelineClassifier, PipelineRegressor, Model
# mapentries: "Metadata_UserDefinedEntry" => ("AbstractString", "AbstractString")
