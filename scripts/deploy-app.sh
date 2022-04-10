sed -i "s/TLS_CRT/${{ secrets.TLS_CRT }}/" kubernetes-ingress/tyler-dev-secret.yaml
sed -i "s/TLS_KEY/${{ secrets.TLS_KEY }}/" kubernetes-ingress/tyler-dev-secret.yaml
kubectl apply -f kubernetes-ingress/common/ns-and-sa.yaml
kubectl apply -f kubernetes-ingress/common/tyler-dev-secret.yaml
kubectl apply -f kubernetes-ingress/common/nginx-config.yaml
kubectl apply -f kubernetes-ingress/rbac/rbac.yaml
kubectl apply -f kubernetes-ingress/common/ingress-class.yaml
kubectl apply -f kubernetes-ingress/deployment/nginx-ingress.yaml
kubectl apply -f kubernetes-ingress/service/loadbalancer-aws-elb.yaml
kubectl apply -f kubernetes-ingress/apache-app-svc.yaml
kubectl apply -f kubernetes-ingress/micro-ingress.yaml
kubectl get svc --namespace=nginx-ingress