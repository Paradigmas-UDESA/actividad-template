# Actividad — Paradigmas de Programación (UDESA)

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

`gdb` y `valgrind` están instalados y configurados (breakpoints funcionan
desde la UI de VS Code). Para memory checks:

```sh
make valgrind
```
