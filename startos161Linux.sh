#!/bin/sh
# Ubuntu 20.04LTS headless noVNC
# Connect to http://localhost:6080/
REPO=kourtnee/
IMAGE=os161-novnc
TAG=latest
URL=http://localhost:6080

if [ -z "$SUDO_UID" ]
then
  # not in sudo
  USER_ID=`id -u`
  USER_NAME=`id -n -u`
else
  # in a sudo script
  USER_ID=${SUDO_UID}
  USER_NAME=cse4001
fi

docker run --detach \
  --publish 6080:80 \
  --volume "${PWD}":/home/cse4001/workspace:rw \
  --env USERNAME=cse1001 --env PASSWORD=java --env USERID=${USER_ID} \
  --env VNC_PASSWORD=changeme \
  --env RESOLUTION=1400x900 \
  --name ${IMAGE} \
  ${REPO}${IMAGE}:${TAG}

sleep 5

if [ -z "$SUDO_UID" ]
then
     open -a firefox http://localhost:6080 \
  || xdg-open http://localhost:6080 \
  || echo "Point your web browser at http://localhost:6080"
else
     su cse1001 -c 'open -a firefox http://localhost:6080' \
  || su cse1001 -c 'xdg-open http://localhost:6080' \
  || echo "Point your web browser at http://localhost:6080"
fi
