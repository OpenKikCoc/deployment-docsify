# deployment-docsify
Docker deployment for docsify.binacs.cn




## 搭配 Kubernetes 配置使用

[binacs.cn](https://github.com/OpenKikCoc/deployment-binacs-cn)





## 构建跨平台的应用容器镜像

Docker 拓展: `buildx`


```shell
$ export DOCKER_CLI_EXPERIMENTAL=enabled
$ docker buildx version

# 启用 binfmt_misc
$ docker run --rm --privileged docker/binfmt:66f9012c56a8316f9244ffd7622d7c21c1f6f28d

$ docker buildx create --use --name mut-arc-builder

$ docker buildx inspect mut-arc-builder --bootstrap

# 已经 login
$ docker buildx build -t binacslee/docsify --platform=linux/amd64,linux/arm64,linux/368,linux/arm/v7 . --push

$ docker buildx imagetools inspect binacslee/docsify
```

