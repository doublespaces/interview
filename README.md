# interview

Quick example of building docker image, pushing to ECR and deploying to EKS cluster

### Deploy EKS Cluster
`cd eks/`
`terraform apply`

### Deploy ingress controller and app
`./scripts/deploy.sh`

### Destroy ingress controller and app
`./scripts/destroy.sh`  
