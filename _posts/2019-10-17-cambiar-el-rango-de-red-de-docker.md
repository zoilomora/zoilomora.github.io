---
layout: post
title: "Cambiar el rango de red de Docker"
categories: [docker]
tags: [docker, rango, red, cambiar, conflicto]
---

Debido a que en algunas empresas y [portales cautivos](https://es.wikipedia.org/wiki/Portal_cautivo){:target="_blank"} se utilizan redes de [Clase B](https://es.wikipedia.org/wiki/Direcci%C3%B3n_IP){:target="_blank"}, a veces he tenido problemas con mis contenedores [docker](https://www.docker.com/){:target="_blank"}.

La [configuración de docker](https://docs.docker.com/engine/reference/commandline/dockerd/#on-linux){:target="_blank"} nos permite cambiar el rango de direcciones IP que se dan a los contenedores.

<!--more-->

1. Editar o crear el fichero de configuración del daemon de docker:

    ```shell
    sudo nano /etc/docker/daemon.json
    ```

2. Añadir la nueva configuración (red de [Clase A](https://es.wikipedia.org/wiki/Direcci%C3%B3n_IP){:target="_blank"}) al fichero JSON:

    ```json
    {
        "default-address-pools": [
            {
                "base": "10.10.0.0/16",
                "size": 24
            }
        ]
    }
    ```

3. Restart docker:

    ```shell
    sudo service docker restart
    ```
