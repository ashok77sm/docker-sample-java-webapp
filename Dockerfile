FROM maven

COPY target/demo-0.0.1-SNAPSHOT.jar /app

ENTRYPOINT ["java", "-jar", "/app/demo-0.0.1-SNAPSHOT.jar"]
