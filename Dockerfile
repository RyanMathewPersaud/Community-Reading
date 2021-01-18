FROM golang:buster

WORKDIR /app
COPY . /app

# Install nodejs and build frontend
RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y nodejs npm

ENV VERSION="1.0.0"
ENV ENV="DEV"

EXPOSE 5001
CMD ["sh", "/app/bin/startApp.sh"]

