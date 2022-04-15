FROM node:12-stretch

WORKDIR /home/node/code

COPY --chown=node:node package-lock.json package.json ./

RUN npm ci

# Copy everything into the image
COPY --chown=node:node . .

# Switch users
USER node

# Execute the command
CMD ["node", "index.js"]