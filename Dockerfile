FROM node:20-slim

# Create app directory
WORKDIR /usr/src/app

# Install n8n globally (latest version)
RUN npm install -g n8n@1.103.1

# Create folders for n8n config
RUN mkdir -p /home/node/.n8n

# Expose default port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]
