# Use the official OpenJDK image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the pom.xml and install dependencies
COPY pom.xml .
RUN ./mvnw dependency:go-offline -B

# Copy the application code
COPY src ./src

# Package the application
RUN ./mvnw package -DskipTests

# Expose the application port
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "target/hr-portal-0.0.1-SNAPSHOT.jar"]
