FROM ubuntu:16.04

RUN apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    apt-get install -y maven && \
    apt-get install -y git && \
    apt-get install -y vim && \
    apt-get install -y openssh-server && \
    apt-get clean;

RUN apt-get update && \
    # It will search java packages using ca-certificates-java
    apt-get install ca-certificates-java && \
    apt-get clean && \
    # update package (-f)forcefully
    update-ca-certificates -f;

RUN apt-get install -y tomcat8
RUN echo "JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64" >> /etc/default/tomcat8

EXPOSE 8080

CMD service tomcat8 start

ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME
