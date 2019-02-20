FROM livingobjects/jre8
ADD  target/eureka-0.0.1-SNAPSHOT.jar app.jar
RUN bash -c 'touch /app.jar'
RUN bash -c 'ls'
RUN bash -c 'ls target'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
EXPOSE 8761
