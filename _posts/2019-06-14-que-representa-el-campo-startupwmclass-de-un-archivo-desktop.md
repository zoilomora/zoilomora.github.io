---
layout: post
title: "¿Qué representa el campo StartupWMClass de un archivo .desktop?"
categories: [linux]
tags: [linux, wmclass, startupwmclass, desktop, gnome, unity, docky]
---

Los entornos de escritorio modernos de Linux (Gnome 3, Ubuntu Unity, Docky) usan la propiedad **WMClass** para asociar ventanas con la aplicación propietaria.

Muchas aplicaciones basadas en Java tienen el problema de que las ventanas creadas por la aplicación no están asociadas con el acceso directo utilizado para iniciar la aplicación (por lo que el dock contiene varias copias del mismo icono).

<!--more-->

El campo llamado **StartupWMClass** es una cadena que define en qué clase se agrupa la aplicación en **Unity Launcher** al inicio.

Puedes ver que **WM_CLASS** tiene su ventana. Escribe un terminal `xprop WM_CLASS` y luego haga clic en la ventana.
En el caso del terminal gnome, la salida es la siguiente:

```shell
WM_CLASS (STRING) = "gnome-terminal", "Gnome-terminal"
```

Por lo tanto, todas las ventanas con **WM_CLASS** "gnome-terminal" y "Gnome-terminal" se agruparan en el mismo icono.
