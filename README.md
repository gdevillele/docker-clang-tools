# docker-clang-tools
A Docker image with clang tools (clang-format, clang-tidy etc)

## Build the image

```
docker build -t gaetan/clang-tools -f ./Dockerfile .
```

## Push the image on the Docker Hub

```
docker push gaetan/clang-tools
```

## Usage

```
docker run --rm -v $(pwd):/workdir clang-tools clang-format -style=file -i ./common/VXNetworking/*.cpp

docker run --rm -v $(pwd):/workdir clang-tools find ./ci/C -regex '.*\.\(cpp\|hpp\|cu\|c\|h\)' -exec clang-format -style=file -i {} \;
```
