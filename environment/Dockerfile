# hash:sha256:8361889675fc7528a2cd62495eb33ecc20d8db7f95a01afd9571bf7f8f960de7
FROM registry.poc-astrazeneca.codeocean.io/codeocean/jupyterlab:3.0.9-miniconda4.9.2-vscode4.0.2-python3.8-ubuntu20.04

ARG DEBIAN_FRONTEND=noninteractive

ARG GIT_ASKPASS
ARG GIT_ACCESS_TOKEN
COPY git-askpass /

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        libfontconfig1=2.13.1-2ubuntu3 \
    && rm -rf /var/lib/apt/lists/*

RUN conda install -y --channel=bioconda \
        fastqc==0.11.8 \
    && conda clean -ya
