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
}

rm -rf ./src/Protobuf3/*.proto
workdir=$(download_source) 
copy_proto_files $workdir src/Protobuf3/
