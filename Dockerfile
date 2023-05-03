FROM maven:3.6.3-jdk-11-slim

WORKDIR /app/

COPY pom.xml /app/pom.xml
RUN mvn dependency:go-offline

CMD ["mvn", "clean", "install"]
