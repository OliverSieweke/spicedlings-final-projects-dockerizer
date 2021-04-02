# Buildtime --------------------------------------------------------------------
FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies:
COPY package.json ./
COPY package-lock.json ./
RUN ["npm", "ci", "--only=production"]

# Build app:
COPY . .
RUN ["npm", "run", "build"]

# Bundle app source
COPY . .

# Runtime ----------------------------------------------------------------------
EXPOSE 8080
ENV NODE_ENV=production
CMD ["npm", "run" , "start" ]
