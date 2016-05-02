#!/usr/bin/env bash
# Repeatable failure with pip install ansible on Centos 6.7

echo "Building image"
img=$(docker build -q .)

echo "Running pip install ansible"
docker run -i -t ${img}

echo "Running bash without pip install ansible. To repeat, run 'pip install ansible'."
docker run -i -t ${img} bash
