FROM ubuntu:20.04
RUN apt update && apt install -y -q maven tomcat9 \
    && git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git \
    && cd ~/boxfuse-sample-java-war-hello \
    && mvn package \
    && cp -i ~/boxfuse-sample-java-war-hello/*war /var/lib/tomcat9/webapps
EXPOSE 8080