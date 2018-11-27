# Docker coomand to set a basic concourse sever
docker network create concourse-net

docker pull postgres
docker run --name concourse-db \
  --net=concourse-net \
  -h concourse-postgres \
  -p 5432:5432 \
  -e POSTGRES_USER=concourse \
  -e POSTGRES_PASSWORD=concourse \
  -e POSTGRES_DB=atc \
  -d postgres

docker pull concourse/concourse
docker run  --name concourse \
  -h concourse \
  -p 192.168.0.151:8080:8080 \
  --detach \
  --privileged \
  --net=concourse-net \
  concourse/concourse quickstart \
  --add-local-user=admin:concourse \
  --main-team-local-user=admin \
  --external-url=http://192.168.0.151:8080 \
  --postgres-user=concourse \
  --postgres-password=concourse \
  --postgres-host=concourse-db \
  --worker-garden-dns-server 8.8.8.8
