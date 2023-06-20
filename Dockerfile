FROM openjdk:8
ADD target/ .
ENTRYPOINT ["java", "-jar","mavenproject4docker.jar"]
