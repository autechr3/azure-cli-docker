FROM microsoft/azure-cli

# Install Docker
ENV DOCKER_VERSION 17.12.0
RUN apt-get update -qq && apt-get install -qy \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
RUN apt-get update -qq && apt-get install -qqy docker-ce=${DOCKER_VERSION}~ce-0~ubuntu