#!/bin/bash

NAMESPACE=synapse

kubectl create namespace "${NAMESPACE}"
kubectl -n "${NAMESPACE}" apply -f ./homeserverConfigMap.yaml
kubectl -n "${NAMESPACE}" apply -f ./homeserverDeployment.yaml

watch "echo 'PRESS CTRL-C TO EXIT'; kubectl -n "${NAMESPACE}" get all,cm,pvc,pv"

