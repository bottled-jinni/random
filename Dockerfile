FROM ubuntu:16.04
MAINTAINER BottleD JinnI
RUN apt-get update -y 
RUN apt-get install -y vim tree net-tools -y
RUN apt-get install -y netcat
RUN apt-get install -y nfdump

VOLUME ["netflow_output"]
EXPOSE 7078:7078

#Start capturing net flow data. 
#ENTRYPOINT [ "/usr/bin/nfcapd","-E","-w","-D","-l","/netflow_output","-p","7078","&"]
#ENTRYPOINT ["nfcapd", "-E", "-w", "-D", "-l", "/netflow_output", "-p", "7078","&"]
#CMD ["/bin/bash","nfcapd", "-E", "-w", "-D", "-l", "/netflow_output", "-p", "7080","&"]
#docker run -it -v netflow_output:/netflow_output -p 7078:7078  IMAGEID /bin/bash
