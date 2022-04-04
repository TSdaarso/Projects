#FROM tomcat:9.0.60
#FROM registry.eulen.com/eulen-tomcat:9-jre11-b31
FROM registry.eulen.com/eulen-tomcat:9-jre17-b31
#ADD demo.war /usr/local/tomcat/webapps/
COPY demo.war /usr/local/tomcat/webapps/demo.war
RUN cp -a /usr/local/tomcat/webapps.dist/. /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
