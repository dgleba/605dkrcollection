# Filename: Dockerfile

FROM node:14

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive


#install dependencies

# RUN apt-get update && apt-get install -y curl
# RUN curl -fsSL https://deb.nodesource.com/setup_14.x |  bash -
# RUN apt-get install -y nodejs    

# RUN apt-get update && apt-get install -y nano && rm -rf /var/lib/apt/lists/*  \
#     && node -v

#Add non-root user, add installation directories and assign proper permissions
WORKDIR /meshcentral
#RUN mkdir -p /opt/meshcentral
RUN chmod 777 -R /meshcentral
RUN chown 1000:1000 -R /meshcentral

# adduser --quiet meshserver 
# ARG UNAME=meshuser
# ARG UID=1000
# ARG GID=1000
# RUN groupadd -g $GID -o $UNAME
# RUN useradd -m -u $UID -g $GID -o -s /bin/bash $UNAME
# USER $UNAME

# USER root

#meshcentral installation

RUN whoami && ls -la  &&  ls -la /meshcentral
RUN cd /meshcentral && npm install meshcentral

COPY config.json.template /meshcentral/config.json.template
COPY startup.sh startup.sh

#environment variables

EXPOSE 80 443

#volumes
VOLUME /meshcentral/meshcentral-data
VOLUME /meshcentral/meshcentral-files

RUN npm -v


# CMD ["bash","/opt/meshcentral/startup.sh"]

