# Install Linux tools and libs

FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install --no-install-recommends --yes \
  curl \
  ca-certificates \
  openjdk-11-jre

# Install node.js and yarn

RUN curl -sSL https://deb.nodesource.com/setup_14.x | bash \
  && apt-get install -y nodejs
RUN npm install --global yarn

# Install openapi-generator-cli

RUN npm install --global @openapitools/openapi-generator-cli
RUN openapi-generator-cli version
