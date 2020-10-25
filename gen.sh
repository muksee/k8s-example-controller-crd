#! /bin/sh

# Work Dir
ROOT_PACKAGE="github.com/muksee/k8s-example-controller-crd"

# API Group
CUSTOM_RESOURCE_NAME="samplecrd"

# API Version
CUSTOM_RESOURCE_VERSION="v1"

/var/lib/go/src/k8s.io/code-generator/generate-groups.sh \
all \
"$ROOT_PACKAGE/pkg/client" \
"$ROOT_PACKAGE/pkg/apis" \
"$CUSTOM_RESOURCE_NAME:$CUSTOM_RESOURCE_VERSION"
