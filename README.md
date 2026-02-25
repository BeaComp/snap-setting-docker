# Exemplo Simplificado de Snap com Docker

Este é um exemplo simplificado de snap que utiliza o snap Docker para executar um container simples.

## Construindo

Você precisa de `git`, `snap`, `snapcraft` e o snap `docker`.

```
$ git clone <repo>
$ cd snap-setting-docker
$ snapcraft pack
$ snap install --dangerous ./setting-docker-smartlight_*_amd64.snap
```

Conecte as interfaces e execute:

```
$ snap connect setting-docker-smartlight:docker docker:docker-daemon
$ snap connect setting-docker-smartlight:docker-executables docker:docker-executables
$ setting-docker-smartlight.simple
```

Isso executará um container mongoDB simples.
