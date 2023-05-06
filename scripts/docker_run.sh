#!/bin/bash
echo the parameters wrote in the script invocation are used in the docker run command
mkdir -p data
docker run $@ -p 8888:8888 -p 7860:7860 -p 11214:11214 --name jupyter-ar4k --rm -v $(pwd):/home/jovyan/work \
       rossonet/jupyter-ar4k:latest 
