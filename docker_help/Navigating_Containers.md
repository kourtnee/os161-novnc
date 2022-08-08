# Commands:

Once your container is open, you might decide that you don’t like the resolution or you want a custom password. 
## 1. Stop the container you have running.   
You can see the running containers with the command:  
* ```docker ps -a```
Stop the container with the command (name is found in NAMES column):
* ```docker stop <name>```

Example:  
<p align="center">
  <img src="https://github.com/kourtnee/cse1001-novnc/blob/master/images/nav1.png" />
</p>

## 2. Remove the container you no longer want  
You can see your containers with the command:  
* ```docker container ls```  
Remove the container with the command (name should be the same as the previous):  
* ```docker rm <name>```  

Example:
<p align="center">
  <img src="https://github.com/kourtnee/cse1001-novnc/blob/master/images/nav2.png" />
</p>

## 3. Edit the start script for your platform, and rerun the script.  
You can also see all the images you have to use as a base for containers with the command:  
* ```docker images```  

Example:
<p align="center">
  <img src="https://github.com/kourtnee/cse1001-novnc/blob/master/images/nav3.png" />
</p>

If the container shows up in for the “docker ps -a” command and not the “docker container ls” command, or you try to connect to the novnc session in your browser and it fails, 
that means the container is stopped and you can restart it with:  
* ```docker start <name>```
