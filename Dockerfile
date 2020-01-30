FROM openjdk:11
VOLUME /tmp
ADD target/proxy-0.0.1-SNAPSHOT.jar app.jar

ADD keystore.jks keystore.jks
ADD truststore.jks truststore.jks
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
