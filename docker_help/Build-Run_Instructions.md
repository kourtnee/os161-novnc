Docker technically only runs on Linux. Docker desktop for other operating systems is running docker inside of a Linux VM. Therefore, docker desktop is necessary for every operating system outside of Linux ones. 

In the case of the containers these instructions are for I would suggest running the docker Auto Run scripts 

Building from source does NOT work for:
* Windows -> the novnc session doesn’t connect in the browser so gui won’t function
* Macbook M1 -> the project fails to build, likely something to do with the fact that it’s an ARM processor unlike the others

Building from source seems to consistently work for:
* Linux distros
* Macbook Intel

Of course there’s the possibility that a resource referenced in the Dockerfile might be down or unavailable and then the build will fail. Error messages usually tell why it may have failed. 

Actual Build and Run instructions are on the github page for the images. As well as the Auto Run scripts.

[CSE1001](https://github.com/kourtnee/cse1001-novnc)  
[CSE4001](https://github.com/kourtnee/os161-novnc)  
[CSE3801](https://github.com/condor0010/FIT-kali-docker)

Related docker hub repos:  
[CSE1001](https://hub.docker.com/r/kourtnee/cse1001-novnc)  
[CSE3801](https://hub.docker.com/r/condor0010/cse3801)
