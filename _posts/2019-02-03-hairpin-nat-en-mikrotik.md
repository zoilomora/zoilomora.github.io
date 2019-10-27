---
layout: post
title: "Hairpin NAT en MikroTik"
categories: [mikrotik]
tags: [mikrotik, nat, puertos, conexion, dns]
---

Si usas un [MikroTik](https://mikrotik.com/){:target="_blank"} y as abierto los puertos para acceder desde el exterior a algun servicio de tu red interna, quizas te has encontrado con el problema que me encontre este fin de semana.

Al intentar acceder por un DNS que apuntaba a la IP externa del router desde la red interna no se establecia la conexion.

<!--more-->

Solemos estar acostumbrados a que los routers (de las compañias telefonicas) lo hagan todo por nosotros.
Cuando adquieres un [Routerboard](https://es.wikipedia.org/wiki/Routerboard){:target="_blank"} lo haces a sabiendas de que te va a tocar investigar y aprender mucho sobre gestion de redes.

Si estas en la misma posición que estaba yo, [aqui tienes la explicación de por que no estaba funcionando y que es lo que tiense que hacer para solucionarlo](https://wiki.mikrotik.com/wiki/Hairpin_NAT){:target="_blank"}.
