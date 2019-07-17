#!/bin/bash -e
#
# Arguments:
#  N/A

echo '-[ Jakarta Web Services Metadata Specification Build ]--------------------------'
(cd spec && mvn -U -C -Psnapshots,oss-release clean install deploy)
echo '-[ Jakarta Web Services Metadata API Build ]------------------------------------'
(cd api && mvn -U -C -Psnapshots,oss-release clean install spotbugs:spotbugs deploy)
