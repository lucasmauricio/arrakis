# Useful tips to work in the project

## Computer open ports

nmap -v localhost

Source: https://www.vivaolinux.com.br/dica/Listando-as-portas-abertas



## Computer open collections

netstat -tl
netstat -t -l -p --numeric-ports

Source: https://www.vivaolinux.com.br/artigo/Como-verificar-conexoes-abertas-no-Linux



## Connecting in a Docker image's console

docker exec -it aldebaran_collection-service_1 ash

Source: http://stackoverflow.com/questions/35297093/links-between-containers-not-working-with-docker-compose-version-2



## Docker run tips

### Adding some host

--add-host=host_name:host_address

### Volume

-v path_in_host_machine:path_in_container_machine

### ports

-p host_machine_port:container_machine_port
