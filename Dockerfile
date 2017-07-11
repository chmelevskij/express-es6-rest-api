FROM node:8

# File Author / Maintainer
LABEL authors="Tomche T.Chmelevskij@gmail.com"

# Install app dependencies
COPY package.json /www/package.json
RUN cd /www; NODE_ENV=development yarn install

# Copy app source
COPY . /www

# Set work directory to /www
WORKDIR /www

# set your port
ENV PORT 8080

# expose the port to outside world
EXPOSE  8080

# start command as per package.json
CMD ["yarn", "dev"]
