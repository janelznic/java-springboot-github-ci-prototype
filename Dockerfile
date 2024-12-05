# Use Alpine Linux with JDK 11
FROM openjdk:11-jdk-alpine as builder

WORKDIR /app

# Copy project
COPY . .

# Build WAR package with Maven
RUN apk add --no-cache maven && mvn clean package -DskipTests

# Run app
FROM openjdk:11-jre-alpine

WORKDIR /app

# Copy WAR package
COPY --from=builder /app/target/prototype.war /app/prototype.war

# Expose port
EXPOSE 8080

# Run app
CMD ["java", "-jar", "prototype.war"]
