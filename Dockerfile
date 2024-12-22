# FROM ubuntu:latest
# WORKDIR /app
# COPY script.sh .
# RUN chmod +x script.sh
# CMD ["./script.sh"]

FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY . .
RUN javac Sum.java
CMD ["java", "Sum"]
