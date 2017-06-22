# Docker

## List containers by image name
```
$ docker ps -qa --filter=ancestor=rc-docker.points.com:80/bgt-reporting_rc:150
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
