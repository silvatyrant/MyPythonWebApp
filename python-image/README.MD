**Base image sourced in app Dockerfile**

- [OS] Debian 6 
  - [User] `appusr`
  - [Group] `appgrp`
  - [Home] `/usr/src/app`
- [Platform] Python 3.11.3


Built as follows:
```shell
docker build --allow network.host --label name=python-base,author=simpletim,version=3.11.3,base-os=debian -t python-base:3.11.3 .
```