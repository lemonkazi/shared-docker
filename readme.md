
docker network create shared_services

docker compose --profile build_only up -d
