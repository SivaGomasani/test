# Use a lightweight Java runtime as base
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy your JAR file into the container
COPY target/*.jar app.jar

# Expose the port your app listens on
EXPOSE 8081

# Command to run your app
ENTRYPOINT ["java", "-jar", "app.jar"]