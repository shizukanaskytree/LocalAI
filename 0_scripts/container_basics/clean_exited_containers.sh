# List Exited Containers: First, you can list all exited containers using:
docker ps -a -f status=exited

# Remove Exited Containers: To remove all containers with the "exited" status, use:
docker rm $(docker ps -a -f status=exited -q)
