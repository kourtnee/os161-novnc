CSE4001 Ubuntu Docker with novnc
===================

Docker image to provide HTML5 VNC interface to access a Ubuntu 20.04 XFCE desktop environment.

Available on [Dockerhub]()

The source files are available on [GitHub](https://github.com/kourtnee/os161-novnc)

Based on the work by [Doro Wu](https://github.com/fcwu), see on [Docker](https://hub.docker.com/r/dorowu/ubuntu-desktop-lxde-vnc/) and [Frederic Boulanger](https://github.com/Frederic-Boulanger-UPS), see on [Docker](https://hub.docker.com/r/fredblgr/ubuntu-novnc)

<p>&nbsp;</p>

Important
----------------

* If you plan to have more than one container running, make sure you use different ports. The run scripts for this project default to 7080. 
* Default username inside the container: cse4001
* Default password inside the container: cpp
* The auto run scripts automatically try to open the Firefox web browser. If you don't want to use that you can manually connect in the browser of your choice with: http://127.0.0.1:7080/

<p>&nbsp;</p>  

This [folder](https://github.com/kourtnee/cse1001-novnc/tree/master/docker_help) has help for the following:  
* Navigating docker containers  
* Setting up docker on Mac (Intel and M1), Windows, and Linux

<p>&nbsp;</p>

Linux and Intel Macbook Build/Run Instructions
----------------
In the terminal:
```
docker build . -t os161-novnc
```

Default run command:
```
docker run -d -p 7080:80 -v $PWD:/home/cse4001/workspace:rw -e VNC_PASSWORD=changeme --name os161 os161-novnc
```

Browse http://127.0.0.1:7080/

* You can add ```--rm``` before the -d tag to have the container automatically removed when stopped (be careful about where you save your work in this instance).
* You can also edit the screen resolution by adding ```-e RESOLUTION=preference``` before the -v tag, where preference would be replaced by your preferred resolution.

<p>&nbsp;</p>

Windows Auto Run Instructions
----------------
You will have Ubuntu 20.04 in your browser, with the current working directory mounted on /home/cse4001/workspace. The container will not be removed when it stops, but you should save your work in /home/cse4001/workspace if you want to access to it outside the docker.

Create a folder for your project, copy the ```startos161Windows.ps1``` file into it and run the command ```./startos161Windows.ps1```

You may have to allow the execution of scripts. 
Open PowerShell as Administrator (Start menu > PowerShell > right-click > Run as Administrator) and enter this command:

```Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser```

* Edit this file where it says ```VNC_PASS``` to change the password for the container to your preferred password
* If you want the container to be fresh upon every use, edit the .ps1 file and add ```--rm``` before the -d flag to remove the container automatically when stopped (be careful about where you save your work in this instance).  
* If the resolution of the novnc session is too small or large, edit this file where you find ```RESOLUTION``` to your preferred resolution.

<p>&nbsp;</p>

Linux and Intel Macbook Auto Run Instructions
----------------
You will have Ubuntu 20.04 in your browser, with the current working directory mounted on /home/cse4001/workspace. The container will not be removed when it stops, but you should save your work in /home/cse4001/workspace if you want to access to it outside the docker.

Create a folder for your project, copy the ```startos161Linux.sh``` file into it and run the command ```./startos161Linux.sh```

* Edit this file where it says ```VNC_PASSWORD``` to change the password for the container to your preferred password
* If you want the container to be fresh upon every use, edit this file and add ```--rm``` between 'run' and --detach to remove the container automatically when stopped (be careful about where you save your work in this instance).  
* If the resolution of the novnc session is too small or large, edit this file where you find ```RESOLUTION``` to your preferred resolution.

<p>&nbsp;</p>

M1 Macbook Auto Run Instructions
----------------
You will have Ubuntu 20.04 in your browser, with the current working directory mounted on /home/cse4001/workspace. The container will not be removed when it stops, but you should save your work in /home/cse4001/workspace if you want to access to it outside the docker.

Create a folder for your project, copy the ```startos161M1.sh``` file into it and run the command ```./startos161M1.sh```

* Edit this file where it says ```VNC_PASSWORD``` to change the password for the container to your preferred password
* If you want the container to be fresh upon every use, edit this file and add ```--rm``` between 'run' and --detach to remove the container automatically when stopped (be careful about where you save your work in this instance).  
* If the resolution of the novnc session is too small or large, edit this file where you find ```RESOLUTION``` to your preferred resolution.

<p>&nbsp;</p>

Additional Functionalities 
--------------------

If you're interested in some of the more intricate functionalities of this container, please see the repo this project is forked from. This project has a very specific use-case and as such was simplified for it's purpose. A lot of the functionality from the original project is still available in the source code for those who want to use it. 

<p>&nbsp;</p>

License
==================

Apache License Version 2.0, January 2004 http://www.apache.org/licenses/LICENSE-2.0

Original work by [Doro Wu](https://github.com/fcwu)

Adapted by [Frédéric Boulanger](https://github.com/Frederic-Boulanger-UPS)

Then adapted by [Kourtnee Fernalld](https://github.com/kourtnee)
