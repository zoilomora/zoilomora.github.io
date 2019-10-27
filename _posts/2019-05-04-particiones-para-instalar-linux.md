---
layout: post
title: "Particiones para instalar Linux"
categories: [linux]
tags: [linux, particiones, instalar, uefi, efi, bios, mbr, gpt]
---

A la hora de instalar una distribución Linux el asistente suele preparar el dispositivo de forma automática donde se va a instalar el sistema operativo.

Si prefieres tener un mayor control, aquí tienes unos sencillos pasos con los que puedes conseguirlo.

<!--more-->

## Particionar el dispositivo
1. Localizar el dispositivo que vamos a preparar:

```shell
sudo fdisk -l
```

2. Crear la tabla de particiones y particiones que requiramos en nuestro caso:

```shell
sudo fdisk /dev/sdX
```

<table>
    <thead>
        <tr>
            <th colspan="4">BIOS con MBR</th>
        </tr>
        <tr>
            <th>Montaje</th>
            <th>Partición</th>
            <th>Tipo</th>
            <th>Tamaño sugerido</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>/</code></td>
            <td><code>/dev/sdX1</code></td>
            <td>Linux</td>
            <td>Resto del dispositivo</td>
        </tr>
    </tbody>
</table>

<table>
    <thead>
        <tr>
            <th colspan="4">UEFI con GPT</th>
        </tr>
        <tr>
            <th>Montaje</th>
            <th>Partición</th>
            <th>Tipo</th>
            <th>Tamaño sugerido</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><code>/efi</code></td>
            <td><code>/dev/sdX1</code></td>
            <td>Partición del sistema EFI</td>
            <td>100 MiB</td>
        </tr>
        <tr>
            <td><code>/</code></td>
            <td><code>/dev/sdX2</code></td>
            <td>Linux</td>
            <td>Resto del dispositivo</td>
        </tr>
    </tbody>
</table>

## Formatear las particiones
Una vez tengamos las particiones, no podemos olvidar darle un formato para que tengan sistema de ficheros:

**BIOS con MBR**
```shell
sudo mkfs.ext4 /dev/sdX1
```

**UEFI con GPT**

```shell
sudo mkfs.vfat -F 32 /dev/sdX1
sudo mkfs.ext4 /dev/sdX2
```

### Nota Importante
Puede parecer un paso omisible (ya que en el propio asistente de la instalación te da la opción de formatear las particiones) pero en el caso de **UEFI con GPT**, no se le dará el formato correcto a la **Partición del sistema EFI** y el sistema operativo no arrancara tras reiniciar el equipo.
