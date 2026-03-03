FROM n8nio/n8n:latest

USER root

RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    apt-get clean

RUN ln -sf /usr/bin/python3 /usr/bin/python

RUN pip3 install requests pandas numpy

USER node
