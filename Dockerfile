FROM openjdk:11 as BUILDER
WORKDIR /app
COPY ./src .
RUN javac ./main/Main.java && echo "java compiled"
FROM openjdk-11-jre
COPY --from=BUILDER /app /app
WORKDIR /app
CMD ["java","main.Main"]
