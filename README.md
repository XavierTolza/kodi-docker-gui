# kodi-docker-gui
Runs kodi GUI from a docker container.   

## Building
```
docker build -t kodi-docker-gui.   
```


## First run
Prior first start, allow xhost:   
```bash   
xhost +local:docker   
```

## Docker Compose
Please check the `.env` file and change it at your conveniance   
Then: `docker-compose run kodi or docker-compose up`

## Command-line
```bash
docker run -i --device /dev/snd --device=/dev/dri -e DISPLAY -v /home/$USER/.kodi:/root/.kodi:rw -v /etc/group:/etc/group:ro -v /etc/passwd:/etc/passwd:ro -v /etc/shadow:/etc/shadow:ro -v /etc/sudoers.d:/etc/sudoers.d:ro -v /tmp/.X11-unix:/tmp/.X11-unix:rw kevin31/kodi-gui   
```
Please check the $USER variable.
