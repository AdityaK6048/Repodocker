FROM ubantu: latest 
RUN apt update -y
RUN apt install openjdk-11-jdk -y
ADD  https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.113/bin/apache-tomcat-9.0.113.tar.gz
WORKDIR /opt
RUN tar -xzf apache-tomcat-9.0.98.tar.gz
COPY student.war  /opt/apache-tomcat-9.0.98/webapps/student.war
EXPOSE 8080
CMD ["/opt/apache-tomcat-9.0.98/bin/catalina.sh", "run"]
