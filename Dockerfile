# FROM node:latest

# ENV APP_HOME /app

# WORKDIR $APP_HOME

# COPY . ./

# COPY /package.json .

# COPY requirements.txt requirements.txt

# RUN apt-get update && apt-get upgrade -y && apt-get install -y nodejs npm 

# CMD npm start


FROM node:latest
WORKDIR /app
RUN chown -R "$USER" /app
USER "$USER"
RUN chmod 777 /app
ENV PATH /app/node_modules/.bin:$PATH
COPY ./package.json ./
COPY ./package-lock.json ./
# RUN apt-get -y install \
#     curl \
#     default-jdk \
#     git \
#     libcurl4-openssl-dev \
#     libpq-dev \
#     libmcrypt-dev \
#     libpq5 \
#     npm \
#     node \
#     zlib1g-dev \
#     libfreetype6-dev \
#     libjpeg62-turbo-dev \
#     libpng12-dev
# RUN rm -rf node_modules
# RUN npm install -g npm@latest
# RUN apt install -y npm
# RUN npm install --no-progress --ignore-optional --legacy-peer-deps
# RUN npm install --save --force final-form react-final-form
RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --slient
RUN chmod +x node_modules/.bin/react-scripts
# RUN  npm run build
COPY . .
EXPOSE 8000
CMD npm start
