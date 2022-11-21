# Basic Alpine image with Clang tools
# 
# clang-format
# clang-tidy
# 
# and more...

FROM alpine:3.20.1

RUN apk update && apk add clang-extra-tools
