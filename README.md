# Arrakis

Arrakis is a proof-of-concept project to develop a microservice application.

## The project and its dependencies

| Project | Technology | Description |
| --- | :---: | --- |
[Arrakis](https://github.com/lucasmauricio/arrakis) | Shell | The container project with info and configuration.
[Wallach IX - Collection API](https://github.com/lucasmauricio/wallach-ix) | Python | API for collections data manipulation.
[IX - Item API](https://github.com/lucasmauricio/ix) | PHP | API for items data manipulation.
[Balut - User API](https://github.com/lucasmauricio/balut) | Python | API for user data manipulation.
[Service Discovery](https://github.com/lucasmauricio/service-discovery) | Java | API for register services (and discovery existing services).

All the project is glued with [Docker Compose](https://docs.docker.com/compose/).

## Project's pre-requirements

The project is supported by the technologies and tools listed below:

* Shell Script
* [Git](https://git-scm.com/)
* [Docker](https://www.docker.com/what-docker) and [Docker Compose](https://docs.docker.com/compose/)
* [Apache Maven](https://maven.apache.org/)

:heavy_exclamation_mark: Make sure you have at least one JDK installed in you system because Maven needs it to build a Java application.

## Configuring the project

```shell
git clone https://github.com/lucasmauricio/arrakis.git
sh arrakis/install.sh
mvn -f arrakis/api/registrator/pom.xml clean package
docker-compose build
```

## Running the project

```shell
docker-compose up -d
docker-compose stop
```

## [Smoke test](https://en.wikipedia.org/wiki/Smoke_testing_(software))

With all images running, you can just access any service to check if they are working.
This is one way to do that:

* `curl http://localhost:7070/users`
* `curl http://localhost:7575/enterprise`
* `curl http://localhost:8080/assets`

## About the project's name

Thanks to @teseu, the names in the project (the main repository and its sub-repositories) are inspired in [Dune universe](https://en.wikipedia.org/wiki/Dune_(franchise)).
