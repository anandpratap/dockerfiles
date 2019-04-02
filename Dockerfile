# Base docker image
FROM ubuntu
LABEL maintainer "Anand Pratap Singh <anandps.aero@gmail.com>"

USER root

RUN apt-get update && apt-get install -y wget bzip2 ca-certificates \
	git mercurial subversion sudo byobu curl tar less gnupg

RUN apt-get install -y \
	build-essential \
	emacs \
	vim \
	git \
	openssh-server \
	--no-install-recommends \
	&& apt-get purge --auto-remove -y curl \
	&& rm -rf /var/lib/apt/lists/*


USER anandps
WORKDIR /home/anandps
# Autorun chrome
CMD [ "/bin/bash" ]
