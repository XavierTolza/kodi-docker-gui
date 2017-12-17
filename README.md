# kodi-docker-gui
Runs kodi GUI from a docker container. Please note that this is a remarke from [leandrocostasouza](https://github.com/leandrocostasouza/mydockers/tree/master/kodi)

## Building
```
docker build -t kodi-docker-gui .
```


## First run
Prior first start, allow xhost:
```bash
xhost +local:docker
```

## Docker Compose
```yaml
version: "2.0"
services:
  kodi:
    image: xtolza/kodi-docker-gui
    environment:
      - DISPLAY
    ports:
      - 8080:8080
    volumes:
      - <path to your storage>:/home/$USER
      - /etc/group:/etc/group:ro
      - /etc/passwd:/etc/passwd:ro
      - /etc/shadow:/etc/shadow:ro
      - /etc/sudoers.d:/etc/sudoers.d:ro
      - /tmp/.X11-unix:/tmp/.X11-unix:rw
```
A `docker-compose.yml` file is provided, check and edit the `.env` file when using it.

## Command-line
```bash
docker run -it --env="DISPLAY" --volume="<path to your storage>:/home/$USER" --volume="/etc/group:/etc/group:ro" --volume="/etc/passwd:/etc/passwd:ro" --volume="/etc/shadow:/etc/shadow:ro" --volume="/etc/sudoers.d:/etc/sudoers.d:ro" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" xtolza/kodi-docker-gui
```