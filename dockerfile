# Use Maven image to build the application
FROM maven:3.9.4-eclipse-temurin-17 AS build

# Set the working directory in the container
WORKDIR /app

# Copy the Maven project files to the container
COPY . .

# Build the application
RUN mvn clean package -DskipTests

# Use a lightweight OpenJDK image to run the application
FROM eclipse-temurin:17-jdk

# Set the working directory in the container
WORKDIR /app

# Copy the built JAR file from the build stage
COPY --from=build /app/target/HelloApp-0.0.1-SNAPSHOT.jar app.jar

# Expose the port the application runs on
EXPOSE 8082

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]