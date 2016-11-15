# Arrakis

Arrakis is a proof-of-concept project to develop a microservice application.

The project is composed by:

| Project | Technology | Description |
| --- | :---: | --- |
[Arrakis](https://github.com/lucasmauricio/arrakis) | Shell | The container project with info and configuration.
[Collection API](https://github.com/lucasmauricio/wallach-ix) | Python | API for collections data manipulation.
[User API](https://github.com/lucasmauricio/balut) | Python | API for user data manipulation.
[Service Discovery](https://github.com/lucasmauricio/service-discovery) | Java | API for register services (and discovery existing services).

All the project is glued with [Docker Compose](https://docs.docker.com/compose/).

## Configuring the project

```shell
git clone https://github.com/lucasmauricio/arrakis.git
sh install.sh
mvn -f api/registrator/pom.xml clean package
docker-compose build
```

## Running the project

```shell
docker-compose up -d
docker-compose stop
```


## About tje project's name

The projct's name (the main repository and its sub-repositories) are inspired in [Dune universe](https://en.wikipedia.org/wiki/Dune_(franchise))
