---
layout: post
title: "Reinstalar Grub despues de instalar Windows"
categories: [linux, windows]
tags: [linux, windows, grub]
---

Cuando tenemos **Linux** como primer sistema operativo en el disco duro e instalamos **Windows** hay que regenerar el grub para poder elegir que sistema operativo arrancar.

<!--more-->

Partiendo de este esquema de particiones, habria que seguir los siguientes pasos:
```
Dispositivo Tamaño Tipo
/dev/sda1     100M Sistema EFI
/dev/sda2     300G Sistema de ficheros de Linux
/dev/sda3      16M Reservado para Microsoft
/dev/sda4   165,7G Datos básicos de Microsoft
```

1. Arrancar con un **CD Live** o **USB Live** de Linux.

2. Ejecutar los siguientes comandos:

```shell
sudo mount /dev/sd2 /mnt
sudo mount /dev/sd1 /mnt/boot/efi
for i in /dev /dev/pts /proc /sys /run; do \
    sudo mount -B $i /mnt$i; \
done
sudo chroot /mnt
grub-install /dev/sda
update-grub
```
