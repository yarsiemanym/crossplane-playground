kubectl create secret generic aws -n crossplane-system --from-file=credentials=$HOME/.aws/credentials
kubectl apply -f ../manifests/aws-provider-config.yaml