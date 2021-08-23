# CoreMLProtobuf.jl

A repository of generate Julia models from Apple's CoreML protobuf message format

## CoreML Specification

  * [Core ML Model Format Specification](https://apple.github.io/coremltools/mlmodel/index.html)

## Obtaining the Protobuf Formats

Simply run the script, below at the root of this project repo:

```bash
./download-protos.sh
```

## Generating the Julia source files

First install `ProtoBuf.jl`

```bash
julia -e 'using Pkg; Pkg.add("ProtoBuf")'
```

Alternatively:
```
julia > ]
(@v1.6) pkg> add ProtoBuf
```

Then run the `protoc` command:

```bash
protoc \
	--plugin=$HOME/.julia/packages/TYEdo/ProtoBuf/plugin/protoc-gen-julia \
	-I=src/Protobuf3 --julia_out=src/ src/Protobuf3/*.proto
```