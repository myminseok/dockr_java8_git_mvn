
# build docker maven image 
https://dzone.com/articles/a-dockerfile-for-maven-based-github-projects
https://docs.docker.com/docker-cloud/builds/push-images/
https://hub.docker.com/_/maven/

```
docker build -t imagebuildinginprocess .

docker run -ti  imagebuildinginprocess

docker login (https://hub.docker.com/)

docker tag imagebuildinginprocess myminseok/java8_git_mvn:v2

docker push myminseok/java8_git_mvn:v2
```

