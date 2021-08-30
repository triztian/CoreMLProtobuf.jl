#!/bin/zsh

# A script that downloads the protobuf files from Apple's repositories

VERSION=4.1
DOWNLOAD_TOOL=curl
GH_REPO_SRC_TAR=https://github.com/apple/coremltools/archive/refs/tags/$VERSION.tar.gz

function download_source {
	echo "Downloading archive source" >&2
	local tmpdir=$(mktemp -d)
	local tarfile=$VERSION.tar.gz

	pushd $tmpdir
	$DOWNLOAD_TOOL -OL "$GH_REPO_SRC_TAR" -o $tarfile
	ls -la >&2
	tar -xf $tarfile
	popd

	echo $tmpdir
}

function copy_proto_files {
	echo "Copying proto files"
	[ -d "$2" ] || { echo "Directory '$2' does not exist" && return 1 }

	for file in $(find "$1" -name '*.proto' -not -name '*test*' -exec grep -il proto3 {} +); do
		cp -vf "$file" "$2/"
	done

	for file in $(find src/Protobuf3 -name '*.proto' -exec grep -il 'package CoreML\..*' {} +); do
		sed -i '' 's/package CoreML/package CoreMLProtobuf/g' $file
	done

	local well_known_excludes=(proto3 addressbook benchmark_messages_proto3 \
		descriptor any anys api benchmarks ruby_generated_code default_value \
		conformance oneofs duration maps struct empty type source_context \
		json_format_proto3 wrappers generated_code timestamp_duration timestamp field_mask sentinel\
		)
	for name in $well_known_excludes; do
		rm -v $2$name.proto
	done
}


rm -rf ./src/Protobuf3/*.proto
cleanup_generated src/
workdir=$(download_source) 
copy_proto_files $workdir src/Protobuf3/
