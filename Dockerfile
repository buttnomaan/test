FROM java:8
VOLUME /tmp
ADD eureka-service-0.0.1-SNAPSHOT.jar app.jar
#EXPOSE 8090
RUN bash -c 'touch /app.jar'
#ENTRYPOINT ["java","-Dserver.port=8090", "-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
