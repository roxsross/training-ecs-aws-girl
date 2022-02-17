# CONSTRUYENDO EL ECOSISTEMA DE CONTENEDORES EN AWS

_AWS ECS & AWS ECR LEVEL 100_

## Comenzando 🚀

_Amazon ECS es un servicio de orquestación de contenedores completamente administrado que le permite implementar, administrar y escalar aplicaciones en contenedores de manera sencilla._

### Instalación 🔧

* Necesitas ya tener instalado el Node y en caso de que lo tengas lo puedes descargar desde [aqui.](https://nodejs.org/es/download/)
* Te recomiendas que tengas instalado el [VSCode](https://code.visualstudio.com/download) pero puedes trabajar donde te sientas más comodo.

### Instalar las dependencias

```
npm install
```

### Iniciar servidor

```
npm run start
```

## Dockerizando un Node.js 

### Para construir la imagen de Docker

    $ docker build -t app-node .

### Para ver la imagen creada 🔩

    $ docker images

    # Example
    REPOSITORY   TAG             IMAGE ID       CREATED              SIZE
    app-node     latest          788c4df096da   About a minute ago   92.9MB

## Para correr la imagen

    $ docker run -d app-node

## Y para ver el log de la imagen corriendo

    # Get container ID
    $ docker ps

    # Print app output
    $ docker logs <container id>

    # Example
    Running on http://localhost:3000

## Si necesitas ir dentro del contenedor usa:

    # Enter the container
    $ docker exec -it <container id> /bin/bash

## Para hacer Test

    $ docker ps

    # Example
    CONTAINER ID   IMAGE      COMMAND                  CREATED         STATUS         PORTS      NAMES
    8a3a40bb3139   app-node   "docker-entrypoint.s…"   3 minutes ago   Up 2 seconds   3000/tcp   app

## Para pinchar la app funcionando

    $ curl -i localhost:3000

    HTTP/1.1 200 OK
    X-Powered-By: Express
    Content-Type: text/html; charset=utf-8
    Content-Length: 12
    Date: Sun, 17 Feb 2022 03:53:22 GMT
    Connection: keep-alive

## O bien desde el navegador

    $ localhost:3000

## Si estas usando Docker en Mac OS o Windows reemplaza el localhost por la ip que da en un comienzo.


⌨️ con ❤️ por [roxsross](https://github.com/roxsross) 😊

No olvides revisar mi blog [roxsross](https:/blog.295devops.com) 😊

y mi linktree [roxsross](https:/roxs.295devops.com) 😊

"No se trata de cambiar el mundo, creo que creas un cambio pequeño, pero que te importe estás cambiando las cosas".