FROM alpine/git
WORKDIR /app
RUN git clone https://github.com/hwshin16/pcf-articulate-code


FROM maven:3.5-jdk-8-alpine
WORKDIR /app
COPY --from=0 /app/pcf-articulate-code /app/pcf-articulate-code
RUN cd pcf-articulate-code; mvn clean install -DskipTests=true -Dmaven.repo.local=/app/m2


FROM java:8
WORKDIR /app
COPY --from=1  /app/m2/  /app/m2


