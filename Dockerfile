
# Dependencies Cache and Compilation
FROM maven:3.9.0-eclipse-temurin-17-alpine AS maven-build
WORKDIR /usr/src/discovery-system
COPY ./pom.xml ./
COPY ./src ./src
RUN export DOCKER_BUILDKIT=1
RUN --mount=type=cache,target=/root/.m2 mvn clean package -DskipTests

# Run
FROM eclipse-temurin:17-jre-alpine AS app-runtime
WORKDIR /app
COPY --from=maven-build /usr/src/discovery-system/target/*.jar ./discovery-system.jar
ENTRYPOINT ["java", "-jar", "discovery-system.jar"]
