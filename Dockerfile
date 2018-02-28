FROM openjdk:8-jre-alpine
## using alpine image for openjdk 8
MAINTAINER Ankit Bisaria (ankitb@exzeo.com)
EXPOSE 8910
COPY . /mnt/
WORKDIR /mnt/geodb/v0.0.5-PREP/
CMD ["java","-Xms1000m","-Xmx1000m","-jar","lib/exzeo-geodb-0.0.5.jar","server","conf/geodb-conf.yml"]
