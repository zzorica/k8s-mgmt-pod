# k8s-mgmt-pod
Container image based on debian-slim with all management tools needed to test in-cluster network, dns and other quick and simple checks.

Tools installed:
* curl 
* dnsutils
* iputils-ping
* vim
* traceroute
* iproute2
* wget2
* telnet

## prompt
When in shell bash promt will show user@localIP
```
root@172.17.0.2 $ 
```
## extra scripts
There is one extra script for now that will get you your outside public IP which is usefull when you are not sure if your k8s cluster goes through correct gateway etc.

```
root@172.17.0.2 $ myip
173.12.4.123
```
You can just call it without getting into container shell as well:
```
kubectl run mgmt-pod --rm -i --tty --restart=Never --image zzorica/k8s-mgmt-pod:latest -- myip
```

## use
To quickly use container and jump into shell:
- docker
```
docker run -it --rm zzorica/k8s-mgmt-pod:latest
```
- kubernetes
```
kubectl run mgmt-pod --rm -i --tty --restart=Never --image zzorica/k8s-mgmt-pod:latest
```

After you exit the pod/container it will get deleted in both envs.
