---
layout: post
title: "Migrar perfil de usuario local a dominio"
categories: [windows]
tags: [migrar, perfil, usuario, local, dominio, active-directory, windows]
---

![placeholder](/assets/images/2014-04-14-migrar-perfil-de-usuario-local-a-dominio/user-profile-wizard.jpg)

Cuando queremos migrar una red de **Grupo de Trabajo** a **Dominio**, lo que nos suele dar mas dolores de cabeza no es la configuración del Servidor, sino la de todos los puestos de trabajo.
Tenemos que transferir ficheros, correos electrónicos, configuraciones, etc.

Existe una sencilla aplicación con la que podemos migrar todo el perfil de un usuario local al dominio.
Se trata de **[User Profile Wizard](https://www.forensit.com/domain-migration.html)** una aplicación de [ForensiT](https://www.forensit.com/).

<!--more-->

## Guía de uso

**Nota:** Necesitamos, antes de nada, tener privilegios de Administrador Local.

1. Iniciamos la aplicación.

2. Información de la cuenta:
- **Enter domain:** Especificamos el dominio al cual uniremos el PC.
- **Join domain:** Seleccionamos la opción para que nos una al dominio.
- **Enter the account name:** Especificamos la cuenta a la cual vamos a asociar el perfil local.
- **Set as default logon:** Seleccionamos la opción para que al reiniciar el PC veamos la cuenta a la cual asociamos nuestro perfil local.

3. Seleccionar el perfil local que se desea migrar al dominio.

4. Ingresar en esta etapa un usuario (con privilegios de administrador de dominio) y contraseña, continuamos con la migración.

5. El programa inicia la migración del perfil, luego presionamos ```Finish``` y nos pedirá reiniciar.

6. Listo, iniciamos la cuenta de dominio con el perfil que antes era local.
