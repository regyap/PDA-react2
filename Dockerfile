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
RUN chmod 755 /app
ENV PATH /app/node_modules/.bin:$PATH
COPY ./package.json ./
# COPY ./package-lock.json ./
RUN rm -rf node_modules
RUN npm install -g npm@latest
RUN apt install -y npm
RUN npm install --no-progress --ignore-optional --legacy-peer-deps
RUN npm install --save --force final-form react-final-form
RUN sudo chmod +x node_modules/.bin/react-scripts
COPY . .
# EXPOSE 3000
CMD npm start
