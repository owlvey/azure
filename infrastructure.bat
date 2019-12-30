SET mypath=%~dp0

docker pull microsoft/azure-cli
docker run -it --rm --mount src=%mypath%/infrastructure,target=/scripts/infrastructure,type=bind microsoft/azure-cli
docker volume rm infrastructure

