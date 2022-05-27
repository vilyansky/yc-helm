#!/bin/sh -l
set -e
echo "Logging into yandex cloud managed k8s and execute a command \"helm $INPUT_HELM_ARGS\""
if ! [[ "$INPUT_K8S_CLUSTER_ID" ]]; then
	echo "ERROR. No yandex cloud cluster id has been provided or got the empty one. Please check action arg \"K8S_CLUSTER_ID\""
	exit 1
fi
if ! [[ "$INPUT_SA_KEY" ]]; then
	echo "ERROR. No yandex cloud service account private key has been provided or got the empty one. Please check action arg \"SA_KEY\""
	exit 1
fi
yc config set service-account-key <(echo "$INPUT_SA_KEY") 
yc managed-kubernetes cluster get-credentials $INPUT_K8S_CLUSTER_ID --external --force
helm $INPUT_HELM_ARGS
