# dockerstudio3t

### docker build
- docker build image `docker build -t studio-3t:install .`
- docker run image `docker run -e DISPLAY=host.docker.internal:0 -it --name s3t studio-3t:install /bin/bash`
    - running the script install sutdio 3t `/opt/studio-3t-linux-x64.sh`
    - remove install file
- create a new image from container `docker commit s3t studio-3t:app`
- docker push new image

### mac
- brew install socat
- brew cask install xquartz
- setting XQuartz
    - open XQuartz or run command `open -a Xquartz`
    - open up the `Preferences` from the top menu and go to the last tab `security`
    - choose `Allow connections from network clients`
- rebot computer
- run command `socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"`
- run command `docker run -e DISPLAY=host.docker.internal:0 -it --name s3t studio-3t:app /opt/studio3t/Studio-3T`
