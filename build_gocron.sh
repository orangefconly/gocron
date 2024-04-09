#!/usr/bin/env bash

##########

CGO_ENABLED=0 GOOS=linux GOARCH=arm64 go build -v -o gcron_linux_arm64 -ldflags "-s -w " -gcflags="all=-trimpath=${PWD}" -asmflags="all=-trimpath=${PWD}" ./cmd/gocron

CGO_ENABLED=0 GOOS=linux GOARCH=arm go build -v -o gcron_linux_arm -ldflags "-s -w " -gcflags="all=-trimpath=${PWD}" -asmflags="all=-trimpath=${PWD}" ./cmd/gocron

CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -v -o gcron_linux_x86 -ldflags "-s -w " -gcflags="all=-trimpath=${PWD}" -asmflags="all=-trimpath=${PWD}" ./cmd/gocron

CGO_ENABLED=0 GOOS=linux GOARCH=mips64le go build -v -o gcron_linux_mips64le -ldflags "-s -w " -gcflags="all=-trimpath=${PWD}" -asmflags="all=-trimpath=${PWD}" ./cmd/gocron

CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -v -o gcron_windows_x86.exe -ldflags "-s -w " -gcflags="all=-trimpath=${PWD}" -asmflags="all=-trimpath=${PWD}" ./cmd/gocron

