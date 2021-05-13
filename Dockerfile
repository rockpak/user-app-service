FROM openjdk:8-jdk-alpine
RUN mkdir /app
COPY target/api-user-0.1.0.jar /app
COPY Monolith.db /app
WORKDIR /app
EXPOSE 5000
CMD ["java", "-jar", "api-user-0.1.0.jar"]
