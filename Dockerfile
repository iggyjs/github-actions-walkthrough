FROM node:12-stretch

WORKDIR /home/node/code

# Move dep files first, so that if nothing changes, Docker will just use
# the cached layer
COPY --chown=node:node package-lock.json package.json ./

# Install deps on the machine
RUN npm ci

# Copy our files into the image we're creating
COPY --chown=node:node . .

# Switch users
USER node

# Set a default command
CMD ["node", "index.js"]