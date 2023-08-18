# Crossplane Playground

Mess around with using Kubernetes and Crossplane to provision AWS infrastructure.

## Setup

1. [Install Minikube](https://minikube.sigs.k8s.io/docs/start/).
   
2. [Install kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl).
   
3. [Install Helm](https://helm.sh/docs/intro/install/).
   
4. [Install the AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html).

5. [Configure the AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html).

```sh
aws configure
# Follow the prompts.
```

6. Create Minikube cluster and configure `kubectl` to talk to it by running the [1-minikube-start.sh](./scripts/1-minikube-start.sh) script.

7. Install [Crossplane](https://crossplane.io) by running the [2-crossplane-install.sh](./scripts/2-crossplane-install.sh) script. Then wait for the new pods in the `crossplane-system` namespace to initialize.

8. Install the AWS S3 provider for Crossplane by running the [3-aws-s3-provider-install.sh](./scripts/3-aws-s3-provider-install.sh) script. Then wait for the new pods in the `crossplane-system` namespace to initialize.

9. Create a Kubernetes secret with your AWS credentials and configure the AWS S3 provider to use that secret by running the [4-aws-s3-provider-configure.sh](./scripts/4-aws-s3-provider-configure.sh) script.

10. Create an S3 bucket with a single object inside it by running the [5-aws-s3-bucket-object.sh](./scripts/5-aws-s3-bucket-create.sh) script.

11.  Visit the [AWS Management Console](https://s3.console.aws.amazon.com/s3/buckets?region=us-east-1) to see your new [S3 bucket](https://s3.console.aws.amazon.com/s3/buckets/crossplane-test-fb97742a-a087-4d99-9310-9cab127ab631?region=us-east-1&tab=objects).