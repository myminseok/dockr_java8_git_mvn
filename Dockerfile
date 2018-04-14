FROM alpine/git
WORKDIR /app
RUN git clone https://github.com/myminseok/articulate


FROM maven:3.5-jdk-8-alpine
WORKDIR /app
COPY --from=0 /app/articulate /app/articulate
RUN cd articulate; mvn clean install -DskipTests=true -Dmaven.repo.local=/app/m2


FROM java:8
WORKDIR /app
COPY --from=1  /app/m2/  /app/m2


