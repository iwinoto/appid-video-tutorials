#!/bin/sh

if [[ -z "${REGISTRY_NAMESPACE}" ]]; then
    REGISTRY_NAMESPACE=iwinoto_ibm
fi
if [[ -z "${REGISTRY}" ]]; then
    REGISTRY=registry.au-syd.bluemix.net
fi
if [[ -z "${IMAGE_NAME}" ]]; then
    IMAGE_NAME=appid-testapp
fi
if [[ -z "${TAG}" ]]; then
    TAG="$(git rev-parse --short HEAD)"
fi

echo Build Docker image to local docker with namespace = $REGISTRY_NAMESPACE
docker build -t $REGISTRY/$REGISTRY_NAMESPACE/$IMAGE_NAME:$TAG .
echo Push to IBM Cloud Container Registry
docker push $REGISTRY/$REGISTRY_NAMESPACE/$IMAGE_NAME:$TAG
