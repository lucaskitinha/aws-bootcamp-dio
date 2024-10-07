echo "criando imagens"

docker build -t lucaskitinha/backend:1.0 backend/ .
docker build -t lucaskitinha/database:1.0 database/ .

echo "push imagens"

docker push lucaskitinha/backend:1.0
docker push lucaskitinha/database:1.0

echo "criando serviços"

kubectl apply -f ./services.yml

echo "criando deployments"

kubectl apply -f ./deployment.yml