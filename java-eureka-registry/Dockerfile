FROM hareeshrao4839/java:1.8-latest 
VOLUME /tmp
ARG JAR_FILE=target/eureka-service-1.0.0.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT exec java $JAVA_OPTS -Xverify:none -Djava.security.egd=file:/dev/./urandom -jar /app.jar
