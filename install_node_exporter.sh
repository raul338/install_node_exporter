#!/bin/bash
version=0.18.1
folder=/srv/node_exporter

tmpfile="$folder/node_exporter.tar.gz"

mkdir -p "$folder"
if [ -f $tmpfile ]; then
	gzip -t $tmpfile 2>1& > /dev/null
	if [ ! $0 -eq 0 ]; then
		rm $tmpfile
	fi
fi
wget -q --show-progress -O $tmpfile "https://github.com/prometheus/node_exporter/releases/download/v${version}/node_exporter-${version}.linux-amd64.tar.gz"
tar -xf $tmpfile -C $folder
if [ -f $folder/node_exporter ]; then
	rm $folder/node_exporter
fi
ln "$folder/node_exporter-${version}.linux-amd64/node_exporter" $folder/node_exporter
rm $tmpfile
supervisorctl restart node_exporter

