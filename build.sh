#! /bin/bash
mvn clean package
docker build -t boldfaced7/configserver:0.0.1 --build-arg JAR_FILE=target/configserver-0.0.1-SNAPSHOT.jar ./configserver
docker build -t boldfaced7/eurekaserver:0.0.1 --build-arg JAR_FILE=target/eurekaserver-0.0.1-SNAPSHOT.jar ./eurekaserver
docker build -t boldfaced7/gatewayserver:0.0.1 --build-arg JAR_FILE=target/gatewayserver-0.0.1-SNAPSHOT.jar ./gatewayserver
docker build -t boldfaced7/licensing-service:0.0.3 --build-arg JAR_FILE=target/licensing-service-0.0.3-SNAPSHOT.jar ./licensing-service
docker build -t boldfaced7/organization-service:0.0.1 --build-arg JAR_FILE=target/organization-service-0.0.1-SNAPSHOT.jar ./organization-service