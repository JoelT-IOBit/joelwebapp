FROM devopsedu/webapp
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git
RUN git --version && mkdir -p /mygitrepo/ && cd /mygitrepo && git init
RUN cd /mygitrepo && git remote add origin https://github.com/edureka-devops/projCert.git
RUN cd /mygitrepo && git pull origin master
