---
layout: post
title: "Calcular tiempo de ejecución en PHP"
categories: [php]
tags: [php, script, tiempo]
---

En PHP existe la función **[microtime()](https://www.php.net/manual/es/function.microtime.php){:target="_blank"}** que nos da el tiempo en milisegundos, ahora bien, existen diferencias en la función de PHP4 y PHP5. Os dejo los ejemplos de las 2 versiones para que no tengáis problemas.

<!--more-->

## PHP4
```php
function microtime_float() {
    list($useg, $seg) = explode(' ', microtime());
    return floatval($useg) + floatval($seg);
}

$tiempo_inicio = microtime_float();
/* Mi Script */
$tiempo_fin = microtime_float();
$tiempo = bcsub($tiempo_fin, $tiempo_inicio, 4);
echo 'Tiempo empleado: ' . $tiempo;
```

## PHP5 y superior
```php
$tiempo_inicio = microtime(true);
/* Mi Script */
$tiempo_fin = microtime(true);
$tiempo = bcsub($tiempo_fin, $tiempo_inicio, 4);
echo 'Tiempo empleado: ' . $tiempo;
```
