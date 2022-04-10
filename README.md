# interview

Quick example of building docker image, pushing to ECR and deploying to EKS cluster

### Deploy EKS Cluster
`cd eks/`  
`terraform apply`

### Deploy ingress controller and app
`./scripts/deploy.sh`

Once the load balancer has been created, update the Route53 A record to point at this alias.  

### Destroy ingress controller and app
`./scripts/destroy.sh`  
