# Copyright 2020 Alex Woroschilow (alex.woroschilow@gmail.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
FROM ubuntu:20.04

ARG TOKEN
ENV TOKEN=${TOKEN}

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV DEBIAN_FRONTEND=noninteractive 

RUN apt-get update -y --fix-missing  && \
    apt-get install -y apt-utils

RUN apt-get update -y  && \
    apt-get upgrade -y 

RUN apt-get install -y kmod make gcc wget xz-utils  && \
    apt-get install -y fuse && \
    apt-get install -y file
