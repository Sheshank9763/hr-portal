# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the application JAR file into the container
COPY target/hr-portal-0.0.1-SNAPSHOT.jar hr-portal.jar

# Run the JAR file
ENTRYPOINT ["java", "-jar", "hr-portal.jar"]
