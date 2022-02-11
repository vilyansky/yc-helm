Образ helm для деплоя в яндекс-облако.

перед использованием helm инициализируем креды командой:
yc config set service-account-key <(echo $SA_KEY) && yc managed-kubernetes cluster get-credentials $K8S_CLUSTER_ID --external
