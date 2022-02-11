# ghcr.io/okar1/yc-helm:3.8.0
FROM alpine/helm:3.8.0
RUN apk update --no-cache && apk add curl
# RUN curl https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl -o /bin/kubectl && chmod a+x /bin/kubectl
RUN curl https://storage.yandexcloud.net/yandexcloud-yc/release/`curl -s https://storage.yandexcloud.net/yandexcloud-yc/release/stable`/linux/amd64/yc -o /bin/yc && chmod a+x /bin/yc
