# Has to be authorized using:
# Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser

## These set the variables to pull from the proper repo on docker hub ##
$REPO="kourtnee/"
$IMAGE="cse1001-novnc"
$TAG="latest"
$VNC_PASS="changeme"

## Sets the resolution of the desktop that pops in the browser ##
$RESOL="1440x900"

## Run command for docker ##
docker run -d -p 6080:80 -v "$(PWD):/home/cse1001/workspace:rw" -e "RESOLUTION=${RESOL}" -e "VNC_PASSWORD=${VNC_PASS}" --name "${IMAGE}-run" "${REPO}${IMAGE}:${TAG}"

# -d is for detach, this makes it so there isn't a terminal session running in you command line
# -p is for publish, this makes a port available to services outside of docker, in this case so
#	we can connect to the container in the browser (change to 127.0.0.1:6080:80 so that no 
#	no one else on the same network can connect to your container)
# -v is for volume, this is to connect a folder on your host computer to one in the container
#	$(PWD) is the path to the folder you run this command in
#	/home/cse1001/workspace is the name you choose for the folder inside the docker (you could change this name if you want)
#	rw means read/write permissions
# -e is for env or enviroment, this is to establish enviroment variables for the docker 
#	in this case it's the screen resolution, which we set before the run command, and the VNC password
# --name is for naming the container for easier identification in the event you have more than one similar container
#	in this case we're just using the image name and adding -run to the end to know it's the running version of the image
# ${REPO}${IMAGE}:${TAG} -> this tells docker where to pull the image from the repository name, the image name, and the tag 
#	to differentiate between versions of an image if they exist

Start-Sleep -s 5
Start http://localhost:6080
