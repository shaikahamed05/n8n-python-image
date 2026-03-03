FROM n8nio/n8n:latest

USER root

# Install Python
RUN apk add --no-cache python3 py3-pip

# Create symlink for python
RUN ln -sf python3 /usr/bin/python

USER node
