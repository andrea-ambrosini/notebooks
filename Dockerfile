FROM jupyter/base-notebook:notebook-6.5.4
ARG MAINTAINER="Andrea Ambrosini <andrea.ambrosini@rossonet.org>"
USER root
RUN apt update && \
  DEBIAN_FRONTEND=noninteractive apt install texlive-latex-base -y && \
  DEBIAN_FRONTEND=noninteractive apt-get upgrade -y && \
  apt-get clean && rm -rf /var/lib/apt/lists/*
COPY ./examples /home/jovyan/examples
RUN chown -R jovyan /home/jovyan && chmod -R g+rw /home/jovyan
USER jovyan
ENV JUPYTER_ENABLE_LAB=yes
