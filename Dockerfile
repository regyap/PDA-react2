FROM python:latest

ENV APP_HOME /app

WORKDIR $APP_HOME

COPY . ./

# COPY requirements.txt requirements.txt

RUN npm install 

CMD npm start
