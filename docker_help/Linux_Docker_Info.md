# Docker setup for Linux:

## 1. Download and install docker
Follow the directions for your version of linux or for debian/ubuntu you can do the following:

* remove existing install if it exists
```
sudo apt-get remove docker docker-engine docker.io containerd runc
```

* update and get deps
```
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
```

 * Add Docker’s official GPG key
```
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```

* set up the repository
```
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
```

* Install Docker Engine
```
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
```

* Fedora: https://docs.docker.com/engine/install/fedora/  
* RHEL: https://docs.docker.com/engine/install/rhel/  
* SLES: https://docs.docker.com/engine/install/sles/

<p>&nbsp;</p>

*** If you are going to use the Auto Run script you may not even need this step (although it’s pretty  useful to linux users regardless)  

## 2. Install git with:  
Check to see if you have the git command by simply typing git into the command line. If it’s not on your system install with:   
```sudo apt install git```  

<p>&nbsp;</p>

## 3. Configure docker group  
* DO NOT RUN DOCKER AS ROOT BEFORE THIS STEP (or preferably at all)  
* ```sudo groupadd docker``` (it might say that docker already exists which is fine)  
* Add your user to the docker group:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - ```sudo usermod -aG docker $USER```  

Use the following command to make the change effective, if for some reason it doesn’t work, try logging out and back in.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - ```newgrp docker```

<p>&nbsp;</p>

## 4. Verify docker:  
* Check that the daemon is running with this command:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - ```systemctl status docker```  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - If for some reason it isn’t run:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * ```systemctl start docker```  
* Make sure your user was successfully added (make sure the output includes docker):  
```groups```   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - If there is an error try the previous command with your username.   
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - If your user isn’t in the group, go back to step 3  
