FROM openjdk:8-jdk-alpine

# Install maven
# RUN apt-get update
# RUN apt-get install -y maven

# Adding springboot-elk app to container
# ADD . /usr/config-client
# WORKDIR /usr/config-client
# RUN ["mvn", "package"]

# The application's jar file
ARG JAR_FILE=target/springboot-elk-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} springboot-elk.jar

EXPOSE 8080 
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/springboot-elk.jar"]
