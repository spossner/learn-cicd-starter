#!/bin/bash

# build host version
go build -o notely

# build linux version for docker
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o notely-linux
