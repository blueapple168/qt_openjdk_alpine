FROM blueapple/alpine35_glibc_basicimage
MAINTAINER blueapple <blueapple1120@qq.com>
RUN apk add --no-cache \
    bash \
    cmake \
    doxygen \
    g++ \
    gcc \
    git \
    graphviz \
    make \
    musl-dev \
    qt \
    qt5-qtbase-dev \
    sudo \
    && ln -s /usr/bin/qmake-qt5 /usr/bin/qmake \
    && adduser -D -h /home/qt qt \
    && echo 'qt ALL=(ALL) NOPASSWD: ALL' >/etc/sudoers.d/qt

USER qt
ENV HOME /home/qt
WORKDIR /home/qt
CMD ["/bin/bash"]
