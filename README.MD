# My Python Web App

Test app for k8s cluster.

## build

```docker
docker build --allow network.host --label name=mpwa,author=simpletim,version=1.0.0,base-os=debian -t mpwa:1.0.0 .
```
##  run

```docker
docker run -it --rm -p 127.0.0.1:9876:9876/tcp mpwa:1.0.0
```