FROM amazoncorretto:17-alpine

ARG JAR_FILE=target/paymybuddy.jar

ENV SPRING_DATASOURCE_USERNAME=""

ENV SPRING_DATASOURCE_PASSWORD=""

ENV SPRING_DATASOURCE_URL=""

WORKDIR /app

COPY ${JAR_FILE} paymybuddy.jar

CMD ["java", "-jar" , "paymybuddy.jar"]