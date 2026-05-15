#!/bin/bash

host_volume_path=/mnt/c/Users/wolfr/icpc/gen-Wolfram158

docker run --gpus all -p 8888:8888 -it --rm --shm-size=8g \
  -v $host_volume_path:/workspace \
  pytorch/pytorch:2.11.0-cuda12.8-cudnn9-devel
