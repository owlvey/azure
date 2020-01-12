
docker pull microsoft/azure-cli
docker run -it --rm --mount src=$PWD/infrastructure,target=/scripts/infrastructure,type=bind microsoft/azure-cli
docker volume rm infrastructure

