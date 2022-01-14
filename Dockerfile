FROM jenkins/jenkins:lts

USER root

RUN     apt-get update \
	&& apt-get install -y apt-utils \
	&& apt-get install -y apt-transport-https \
	&& apt-get install -y sudo \
	&& apt-get install -y docker.io \
	&& rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
USER jenkins	

