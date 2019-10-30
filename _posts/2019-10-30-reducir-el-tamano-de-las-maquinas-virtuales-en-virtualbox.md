---
layout: post
title: "Reducir el tamaño de las máquinas virtuales en VirtualBox"
categories: [virtualization, windows]
tags: [virtualizacion, windows, virtualbox, reducir, disco, maquina]
---

Una de las principales ventajas que nos ofrece [VirtualBox](https://www.virtualbox.org/){:target="_blank"} es la capacidad de crear discos virtuales reservados de forma dinámica, los cuales van incrementando su tamaño a medida que se agrega información hasta el tamaño que hemos definido al momento de la creación del disco.

El problema con esta función es que cuando eliminamos información de dicho disco no vemos que el tamaño del disco sea reducido y seguirá ocupando el mismo tamaño.

<!--more-->

Para reducir el tamaño del disco virtual seguiremos los siguientes pasos:

1. Borrar archivos innecesarios con [CCleaner](https://www.ccleaner.com/){:target="_blank"}.

2. Desfragmentar disco con [Defraggler](https://www.ccleaner.com/defraggler){:target="_blank"}.

3. Escribir ceros en el espacio que ha sido liberado con [SDelete](https://docs.microsoft.com/en-us/sysinternals/downloads/sdelete){:target="_blank"}:
```shell
sdelete.exe -z C:
```

4. Apagar la máquina virtual.

5. Crear un nuevo disco virtual con el tamaño deseado:
```shell
VBoxManage createhd --filename "/path/New.vdi" --size 100000
```

6. Clonar el disco antiguo en el disco recién creado:
```shell
VBoxManage clonehd "/path/Old.vdi" "/path/New.vdi" --existing
```
