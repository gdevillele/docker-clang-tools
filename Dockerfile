# Basic Alpine image with Clang tools
# 
# clang-format
# clang-tidy
# 
# and more...

FROM alpine:3.16.2

RUN apk update && apk add clang-extra-tools

# =================================================

# FROM alpine:3.16.2

# RUN apk update && apk add bash clang-extra-tools

# COPY ./entrypoint.sh /entrypoint.sh
# RUN chmod +x /entrypoint.sh

# WORKDIR /workdir

# ENTRYPOINT [ "/entrypoint.sh" ]
# # CMD ash
