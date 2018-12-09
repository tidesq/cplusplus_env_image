FROM centos:7.6.1810
LABEL authors="tidesq@163.com"


##########################
# 1. centos:7.6.1810
# 2. devtoolset-4 for gcc 5.3.1
# 3. 
##########################


COPY yum.conf /etc/

# Copy extra files to the image.
ENV TZ=Asia/Shanghai

RUN cp /usr/share/zoneinfo/$TZ /etc/localtime \
    && yum clean all -y \
    && yum install -y epel-release \
    && yum -y -q reinstall glibc-common \
    && yum install  -y deltarpm \
    && yum install -y centos-release-scl \
    && yum install -y devtoolset-4-gcc \
    && yum install -y devtoolset-4-gcc-c++ \
    && yum install -y devtoolset-4-gcc-gfortran \
    && yum install -y devtoolset-4-gdb \
    && yum install -y devtoolset-4-binutils \
    && yum install -y gperftools \
    && yum install -y perf \
    && yum install -y wget \
    && yum install -y unzip \
    && yum install -y which \
    && yum install -y file \
    && yum install -y tcpdump \
    && yum install -y curl-devel \
    && yum install -y gflags-devel \
    && yum install -y expat-devel \
    && yum install -y gettext-devel \
    && yum install -y zlib-devel \
    && yum install -y openssl-devel \   
    && yum install -y make \
    && yum install -y cmake \
    && yum install -y autoconf \
    && yum install -y automake \
    && yum install -y libtool \
    && yum clean all -y 

ENV LANG=zh_CN.utf8
ENV LC_ALL=zh_CN.utf8
ENV PATH=/opt/rh/devtoolset-4/root/usr/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV LD_LIBRARY_PATH=/opt/rh/devtoolset-4/root/usr/lib64:/opt/rh/devtoolset-4/root/usr/lib


    