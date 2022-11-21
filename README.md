# docker-clang-tools

A Docker image with clang tools (clang-format, clang-tidy etc)

## Build the image

```
docker build -t gaetan/clang-tools:17.0.6 -f ./Dockerfile .
```

## Push the image on the Docker Hub

```
docker push gaetan/clang-tools:17.0.6
```

## Specify the ARCH

```shell
docker build --platform=linux/amd64 -t gaetan/clang-tools:17.0.6 -f ./Dockerfile .
docker push gaetan/clang-tools:17.0.6

docker build --platform=linux/arm64 -t gaetan/clang-tools:17.0.6 -f ./Dockerfile .
docker push gaetan/clang-tools:17.0.6
```

## Usage

```
docker run --rm -v $(pwd):/workdir clang-tools clang-format -style=file -i ./ci/C/*.cpp

docker run --rm -v $(pwd):/workdir clang-tools find ./ci/C -regex '.*\.\(cpp\|hpp\|c\|h\)' -exec clang-format -style=file -i {} \;
```


## Multi-architecture image build + push

```shell
# This might be needed
docker buildx create --name mybuilder --use
```

```shell
docker buildx build \
-f ./Dockerfile \
--push \
--platform linux/arm64,linux/amd64 \
--tag gaetan/clang-tools:17.0.6 \
--tag gaetan/clang-tools:latest \
.
```