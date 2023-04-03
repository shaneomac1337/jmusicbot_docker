FROM openjdk:8-jre-slim

RUN mkdir -p /opt/jmusicbot
WORKDIR /opt/jmusicbot

RUN apt-get update && \
    apt-get install -y curl && \
    curl -L https://github.com/jagrosh/MusicBot/releases/download/0.3.9/JMusicBot-0.3.9.jar --output JMusicBot.jar

COPY /opt/jmusicbot/config.txt

CMD ["java", "-jar", "JMusicBot.jar"]
tell