FROM thinkwrap/node-sls-pipelines:10-buster

RUN \
	apt-get update \
	&& apt-get install -y python-pip python3-pip \
	&& pip install --upgrade pip \
    && pip3 install awscli \
    && mkdir -p /root/.aws

ENTRYPOINT /bin/bash