# Docker

## List containers by image name
```
$ docker ps -qa --filter=ancestor=example.com/image
```
## Print volumes
```
# List volumes mapped to /data
$ docker inspect --format '{{ range .Mounts }}{{ if eq .Destination "/data" }}{{ .Source }}{{ end }}{{ end }}' $(docker ps -aq)
```

## Remove all volumes
```
$ docker volume rm $(docker volume ls -q)
```
