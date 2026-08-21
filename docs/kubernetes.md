# Kubernetes

## kubectl

* [Cheat sheet](https://kubernetes.io/docs/reference/kubectl/quick-reference/)

```bash
# Contexts (clusters)
kubectl config get-contexts
kubectl config use-context ${context}

# Set the default namespace for the current context, to avoid repeating -n
kubectl config set-context --current --namespace=${namespace}

kubectl get pods
kubectl get pods --all-namespaces -o wide
kubectl describe pod ${pod}

# Logs, including from the previous container of a pod that keeps restarting
kubectl logs -f ${pod}
kubectl logs --previous ${pod}

kubectl exec -it ${pod} -- bash

# Forward a local port to a pod or service
kubectl port-forward ${pod} 8080:80

# Sorted events, which are usually the first place to look when a pod won't start
kubectl get events --sort-by=.metadata.creationTimestamp
```

## Minikube

* [Minikube docs](https://minikube.sigs.k8s.io/docs/)
* [Ansible tasks](https://github.com/andornaut/ansible-ctrl/blob/main/roles/docker/tasks/kubernetes.yml)

```bash
minikube start

# Access the Kubernetes Dashboard
minikube dashboard
```
