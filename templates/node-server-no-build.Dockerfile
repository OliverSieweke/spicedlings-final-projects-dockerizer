# Buildtime --------------------------------------------------------------------
FROM node:14
ENV NODE_ENV=production

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies:
COPY package.json ./
COPY package-lock.json ./
RUN ["npm", "ci", "--only=production"]

# Bundle app source
COPY . .

# Runtime ----------------------------------------------------------------------
EXPOSE 8081
CMD ["npm", "run" , "start" ]
