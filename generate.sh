#!/bin/zsh

function cleanup_generated {
	for file in $(find "$1" -name '*_pb.jl'); do
		rm -v $file
	done
}

function generate {
	protoc \
		--plugin=$HOME/.julia/packages/ProtoBuf/TYEdo/plugin/protoc-gen-julia \
		-I=$1 --julia_out=$2 $1/*.proto
}

cleanup_generated src/
generate src/Protobuf3/ src/
