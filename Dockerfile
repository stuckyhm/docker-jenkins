ARG BASE_IMAGE_TAG=2.319.1-lts-jdk11

FROM jenkins/jenkins:${BASE_IMAGE_TAG}

# if we want to install via apt
USER root

RUN apt-get update && apt-get install -y wget jq

# drop back to the regular jenkins user - good practice
USER jenkins
