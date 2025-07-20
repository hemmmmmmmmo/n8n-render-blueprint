FROM node:18-slim

# Create app directory
WORKDIR /usr/src/app

# Install n8n globally
RUN npm install -g n8n

# Create folders for n8n config
RUN mkdir -p /home/node/.n8n

# Expose default port
EXPOSE 5678

# Start n8n
CMD ["n8n", "start"]

