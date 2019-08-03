FROM continuumio/miniconda3

ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility

RUN apt-get update && \
    apt-get install -y --no-install-recommends --allow-unauthenticated \
    zip \
    gzip \
    make \
    automake \
    gcc \
    build-essential \
    g++ \
    cpp \
    libc6-dev \
    man-db \
    autoconf \
    pkg-config \
    unzip \
    libffi-dev \
    software-properties-common

WORKDIR /workdir

COPY requirements.txt /workdir/
RUN pip install -r requirements.txt
COPY . /workdir

