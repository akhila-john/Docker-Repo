FROM alpine:3.13.5

RUN apk --no-cache add ca-certificates wget
RUN wget -q -O /etc/apk/keys/sgerrand.rsa.pub https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub
RUN wget https://github.com/sgerrand/alpine-pkg-glibc/releases/download/2.28-r0/glibc-2.28-r0.apk
RUN apk add glibc-2.28-r0.apk


RUN mkdir /usr/java
#RUN mkdir /usr/java/jdk-8u271
COPY jre-8u291-linux-x64.tar.gz /
RUN tar -zxvf jre-8u291-linux-x64.tar.gz --strip-components 1 --directory /usr/java

RUN mkdir /usr/local/tomcat
COPY apache-tomcat-8.5.66.tar.gz /
RUN tar xvzf apache-tomcat-8.5.66.tar.gz --strip-components 1 --directory /usr/local/tomcat

COPY WebAPI.war /usr/local/tomcat/webapps/
ENV dbDriver=com.mysql.jdbc.Driver dbConnectionUrl=jdbc:mysql://sql-database/institution dbUsername=root dbPassword=akhila8mysql
EXPOSE 8080

ENV JAVA_HOME="/usr/java"
ENV PATH="${JAVA_HOME}/bin:${PATH}"
ENV PATH="/usr/local/tomcat/bin:${PATH}"

CMD ["catalina.sh", "run"]

