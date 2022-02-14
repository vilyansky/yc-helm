# Yandex cloud helm 

## Example usage

```yaml
- name: Try to execute helm -n prod ls
  uses: okar1/yc-helm@master
  with:
    SA_KEY: <your service account private key (json form)>
    K8S_CLUSTER_ID: sdy7mdj48shjrtshk657 (you can find it at k8s cluster properties page)
    HELM_ARGS: -n prod ls
```

***(eng)*** This will log into yandex cloud managed k8s and execute a command "helm" with specified args

***(rus)*** Логинимся в k8s кластер в Яндекс-облаке и выполняем helm с указанными аргументами


## Outputs

none
