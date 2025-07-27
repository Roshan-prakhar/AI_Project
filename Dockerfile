# Use OpenJDK 17 slim as base image
FROM openjdk:17-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy the JAR file from the target directory
COPY target/ghibli-api.jar app.jar

# Expose the port used by the Spring Boot app
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]
