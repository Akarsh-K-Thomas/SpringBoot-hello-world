# Use an official OpenJDK runtime as a base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/firstboot-0.0.1-SNAPSHOT.jar /app/app.jar  # Adjust the filename if necessary

# Expose the port the app will run on
EXPOSE 8081

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

