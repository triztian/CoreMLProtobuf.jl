module google
  const _ProtoBuf_Top_ = @static isdefined(parentmodule(@__MODULE__), :_ProtoBuf_Top_) ? (parentmodule(@__MODULE__))._ProtoBuf_Top_ : parentmodule(@__MODULE__)
  module protobuf
    const _ProtoBuf_Top_ = @static isdefined(parentmodule(@__MODULE__), :_ProtoBuf_Top_) ? (parentmodule(@__MODULE__))._ProtoBuf_Top_ : parentmodule(@__MODULE__)
    include("any_pb.jl")
    include("struct_pb.jl")
    include("timestamp_pb.jl")
    include("duration_pb.jl")
    include("wrappers_pb.jl")
    include("source_context_pb.jl")
    include("type_pb.jl")
    include("api_pb.jl")
    include("descriptor_pb.jl")
    module testing
      const _ProtoBuf_Top_ = @static isdefined(parentmodule(@__MODULE__), :_ProtoBuf_Top_) ? (parentmodule(@__MODULE__))._ProtoBuf_Top_ : parentmodule(@__MODULE__)
      include("anys_pb.jl")
      include("default_value_pb.jl")
      include("proto3_pb.jl")
    end
  end
end
