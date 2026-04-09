


=======for ubuntu =====================

export DOCKER_API_VERSION=1.43
docker compose up -d
=======end for ubuntu =====================

docker network create shared_services

docker compose --profile build_only up -d
