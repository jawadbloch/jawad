#for Linux x64 
#FROM alpine
FROM alpine:latest

RUN apk add --update nodejs nodejs-npm

RUN npm install -g http-server 

#copy app to /src
COPY . /src

WORKDIR /src

EXPOSE 8080

ENTRYPOINT [ "http-server","-p","8080" ]

#ENTERYPOINT ["http-server","-p","8080"]