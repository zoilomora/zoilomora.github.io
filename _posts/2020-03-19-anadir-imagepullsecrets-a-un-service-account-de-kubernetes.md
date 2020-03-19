---
layout: post
title: "Añadir ImagePullSecrets a un Service Account de Kubernetes"
categories: [kubernetes]
tags: [kubernetes, k8s, registry, docker, credentials]
---

Si estas usando **[Kubernetes](https://kubernetes.io/es/){:target="_blank"}** seguramente has tenido la necesidad de utilizar un [registry de docker](https://docs.docker.com/registry/){:target="_blank"} privado.

Para estos casos la [documentación de kubernetes](https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/){:target="_blank"} te explica como configurar un **Secret** y usarlo en tus **Pods**.
Sin embargo, hay una forma de configurar un **Namespace** para no tener que aplicar dicha configuración en cada **Pod**.

<!--more-->

## Procedimiento
>Se contempla tener el **Secret** previamente creado según la documentación antes mencionada.

1. Comprobar que el **Secret** existe en nuestro namespace:

    ```shell
    kubectl get secrets myregistrykey --namespace=<example>
    ```

2. Añadir **imagePullSecrets** al **Service Account**: 

    ```shell
    kubectl patch serviceaccount default -p '{"imagePullSecrets": [{"name": "myregistrykey"}]}' --namespace=<example> 
    ```

Ahora, todos los **Pods** que se creen en el namespaces tendrán el **imagePullSecrets**.

## Fuentes:
- [Add ImagePullSecrets to a service account (Kubernetes)](https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/#add-imagepullsecrets-to-a-service-account){:target="_blank"}
