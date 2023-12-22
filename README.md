# 6156-project-userinfo-flask


docker ps

docker build -t userinfoms:latest .

docker run userinfoms:latest

# bind ports
docker run -p 5001:5001 userinfoms:latest

# stop all running containers
docker stop $(docker ps -q)

