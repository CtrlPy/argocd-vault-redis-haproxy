install-nginx-ingress:
	helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
	helm repo update
	helm install ingress-nginx ingress-nginx/ingress-nginx \
		--create-namespace \
		--namespace ingress-nginx \
		--set controller.service.type=NodePort \
		--set controller.service.nodePorts.http=30080 \
		--set controller.service.nodePorts.https=30443
