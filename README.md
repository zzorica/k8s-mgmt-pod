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
* postgresql-client
* mariadb-client

## prompt
When in shell bash promt will show user@localIP
```
root@172.17.0.2 $ 
```
## extra scripts

* myip

Will get you your outside public IP which is usefull when you are not sure if your k8s cluster goes through correct gateway etc.

```
root@172.17.0.2 $ myip
173.12.4.123
```
You can just call it without getting into container shell as well:
```
kubectl run mgmt-pod --rm -i --tty --restart=Never --image zzorica/k8s-mgmt-pod:latest -- myip
```
* db_alive

Check if your mysql or postgresql db is alive. Need only type of db and its address. It will get you exit code 0 if db is alive and 1|2 if not.
```
root@172.17.0.2 $ db_alive mysql -h mariadb; echo $?
/usr/bin/mysqladmin: connect to server at 'mariadb' failed
error: 'Access denied for user 'root'@'10.244.0.33' (using password: NO)'
0
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
