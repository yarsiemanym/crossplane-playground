 minikube start \
    --driver='docker' \
    --disk-size='10gb' \
    --cpus='4' \
    --memory='8gb' \
    --delete-on-failure='true' \
    --profile='crossplane-playground'

kubectl config set-context crossplane-playground