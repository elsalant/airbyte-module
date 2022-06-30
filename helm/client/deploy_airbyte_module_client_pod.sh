#!/bin/sh

<<<<<<< HEAD
kubectl run my-shell --image ghcr.io/fybrik/airbyte-module-client:main --image-pull-policy=Always -n default --wait
=======
docker build --tag airbyte_module_client:latest .
kind load docker-image airbyte_module_client:latest --name sm-read
kubectl run my-shell --image airbyte_module_client:latest --image-pull-policy=IfNotPresent -n default --wait
>>>>>>> vault-support
kubectl wait pod --for=condition=ready my-shell -n default
