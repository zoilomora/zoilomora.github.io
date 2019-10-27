---
layout: post
title: "Comprimir y descomprimir ficheros en Linux"
categories: [linux]
tags: [linux, comprimir, descomprimir, fichero, consola, shell]
---

Hay diversas herramientas para empaquetar y comprimir ficheros, este articulo es una guía rápida para comprimir y descomprimir ficheros en Linux.
A continuación os muestro un resumen de los comandos necesarios para los ficheros más comunes.

<!--more-->

## .zip (zip)
```shell
# Comprimir
zip archivo.zip /mayo/archivos

# Descomprimir
unzip archivo.zip
```

## .rar (rar)
```shell
# Comprimir
rar -a archivo.rar /mayo/archivos

# Descomprimir
unrar archivo.rar
```

## .tar (tar)
```shell
# Empaquetar
tar -cvf archivo.tar /archivo/mayo/*

# Desempaquetar
tar -xvf archivo.tar
```

## .gz (gzip)
```shell
# Comprimir
gzip -q archivo

# Descomprimir
gzip -d archivo.gz
```

## .tar.gz - .tar.z - .tgz (tar con gzip)
```shell
# Empaquetar y comprimir
tar -czvf archivo.tar.gz /archivo/mayo/*

# Desempaquetar y descomprimir
tar -xzvf archivo.tar.gz
```

## .bz2 (bzip2)
```shell
# Comprimir
bzip2 archivo

# Descomprimir
bzip2 -d archivo.bz2
```

## .tar.bz2 (tar con bzip2)
```shell
# Comprimir
tar -c archivos | bzip2 > archivo.tar.bz2

# Descomprimir
bzip2 -dc archivo.tar.bz2 | tar -xv
```
