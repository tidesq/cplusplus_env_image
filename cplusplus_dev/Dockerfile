FROM centos7-gcc-5.3.1:0.1.1
LABEL authors="tidesq@163.com"


##########################
# 1. centos7-gcc-5.3.1:  centos:7.6.1810, gcc-5.3.1
# 2. 增加开发工具：编译，性能测试工具
# 3. 增加通用基础库： protobuf,brpc 等
##########################

# Copy extra files to the image.
COPY ./root/ /

RUN groupadd -r admin -f -g 500 \
    && useradd -u 500 -g 500 -m -s /bin/bash admin \
    && chown -R 500:500 /home/admin \
    && yum clean all -y \
    && yum install -y bazel \
    && yum install -y rpm-build \
    && yum install -y gperftools-devel \
    && yum install -y leveldb \
    && yum install -y leveldb-devel \
    && yum install -y git \
    && yum install  -y sudo \
    && yum clean all -y 


ENV HOME=/home/admin 
ENV PATH=/home/admin/bin:${PATH}


USER 500

WORKDIR ${HOME}


RUN cd /home/admin/thirdparty/ && tar -xzf protobuf-3.6.1.tar.gz && cd protobuf-3.6.1 \
    && ./autogen.sh && ./configure --prefix=/usr/local && make -j 4 && sudo make install

    