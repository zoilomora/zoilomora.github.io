---
layout: post
title: "Algunas aplicaciones en Ubuntu 19.10 tardan mucho en abrir"
categories: [linux]
tags: [filezilla, keepassxc, anydesk]
---

Tras formatear [mi workstation](https://github.com/zoilomora/my-workstation){:target="_blank"} e instalar **Ubuntu 19.10** hace unos días, note que algunas de las aplicaciones que suelo usar tardaban mucho en abrir **(15 segundos)**.

Al buscar en internet encontré la solución.

<!--more-->

Un usuario publicó la pregunta en [Ask Ubuntu](https://askubuntu.com/questions/1184774/some-applications-on-ubuntu-19-10-very-slow-to-start){:target="_blank"} y [Stefan Iancu](https://askubuntu.com/questions/1184774/some-applications-on-ubuntu-19-10-very-slow-to-start#answer-1187377){:target="_blank"} nos dio la respuesta:

¡Instalando este paquete se soluciona el problema!:

```shell
sudo apt install appmenu-gtk2-module
```
