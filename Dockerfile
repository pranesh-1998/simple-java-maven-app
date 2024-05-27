# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY /var/lib/jenkins/workspace/Java-Maven-pipeline/target/my-app-1.0-SNAPSHOT.jar /app/my-app.jar

# Expose port 8080 in the container (the port your application listens on)
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "my-app.jar"]
