<!--
TODO (quien crea la actividad, antes de publicarla a los alumnos):
  - Reemplazar el título y completar el enunciado acá abajo.
  - Borrar este bloque de TODO cuando esté listo.
  - Revisar el Makefile: asume código + tests de gtest en la raíz sin
    main() propio. Si la actividad es distinta (ejercicio de caja negra,
    proyecto con GUI + tests separados, etc.) hay que ajustarlo -- ver los
    comentarios del Makefile.
  - Si la actividad no tiene GUI, borrar esa sección de este README.
-->

# [Nombre de la actividad]

[Enunciado acá.]

## Entorno

Esta actividad se resuelve dentro del **dev container** del curso — no hace
falta instalar g++, googletest, SFML ni nada más a mano.

1. Instalá [Docker Desktop](https://www.docker.com/products/docker-desktop/)
   y la extensión **Dev Containers** de VS Code (una sola vez, para todo el
   cuatrimestre).
2. Abrí esta carpeta en VS Code.
3. Cuando aparezca el aviso *"Reopen in Container"*, aceptalo (o `Cmd/Ctrl+Shift+P`
   → `Dev Containers: Reopen in Container`).
4. La primera vez se descarga la imagen del curso (~1-1.5 GB, hacelo con
   buena conexión). Las siguientes actividades reusan la misma imagen y
   arrancan en segundos.

## Compilar y testear

```sh
make        # compila
make test   # compila y corre los tests
make clean
```

## Si la actividad tiene interfaz gráfica (SFML)

Corré el ejecutable normalmente (`./nombre_del_programa`) y abrí
`http://localhost:6080` en el navegador (contraseña `vscode`) — ahí vas a ver
la ventana. El mouse y el teclado funcionan como siempre; lo único distinto
es que el renderizado es por software, así que no esperes 60fps, esperá que
funcione.

## Debug

`gdb` y `valgrind` están instalados y configurados. Antes de usar F5, editá
`.vscode/launch.json` y reemplazá `NOMBRE_DEL_EJECUTABLE` (aparece dos
veces) por el nombre real de tu binario — es un placeholder a propósito,
F5 no va a andar hasta que lo cambies.

Con eso hecho: poné un breakpoint clickeando a la izquierda del número de
línea y apretá **F5** (compila con `make build` antes de arrancar).

Para memory checks:

```sh
make valgrind
```
