FROM python:latest

ENV APP_HOME /app

WORKDIR $APP_HOME

COPY . ./

# COPY requirements.txt requirements.txt

RUN apt-get update && apt-get upgrade -y && apt-get install -y nodejs npm 

CMD npm start
