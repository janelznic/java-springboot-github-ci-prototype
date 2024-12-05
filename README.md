# java-springboot-github-ci-prototype

## Build
* Create WAR package ```mvn clean package```

## Run with CLI
* java -jar target/demo.war
* Open browser at ```http://localhost:8080```

## Run with Docker image
* Build Docker image ```docker build -t demo-app .```
* Run Docker container ```docker run -p 8080:8080 demo-app```
* Open browser at ```http://localhost:8080```

## Deployment to JBoss server
WAR package ```demo.war``` upload to ```standalone/deployments``` folder in JBoss server.

<sub>Author: Jan Elznic</sub>
