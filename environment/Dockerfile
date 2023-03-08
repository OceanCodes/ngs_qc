# hash:sha256:4518d9069926874e2cac13779c6877c13507da1226c6b7437f5d71de55ce572e
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

RUN pip install -U --no-cache-dir \
    multiqc==1.14
