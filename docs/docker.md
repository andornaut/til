# Docker

## List containers by image name

```bash
docker ps -qa --filter=ancestor=example.com/image
```

## Print volumes

```bash
# List volumes mapped to /data
$ docker inspect --format '{{ range .Mounts }}{{ if eq .Destination "/data" }}{{ .Source }}{{ end }}{{ end }}' $(docker ps -aq)
```

## Remove all volumes

```bash
docker volume rm $(docker volume ls -q)
```

## Follow logs

```bash
docker logs -f --tail 100 ${container}
```

## Run a shell in a running container

```bash
$ docker exec -it ${container} bash

# ... or in an image, without starting its entrypoint
$ docker run --rm -it --entrypoint bash ${image}
```

## Show disk usage

```bash
docker system df
```

See [./Ubuntu](./ubuntu.md#reclaim-disk-space) for pruning.
