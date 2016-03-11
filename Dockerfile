FROM jenkinsci/jenkins:2.0-alpha-2
# if we want to install via apt
USER root
RUN curl -sSL https://get.docker.com/ | sh

ENV JAVA_OPTS="-Djava.util.logging.config.file=/var/jenkins_home/log.properties"

COPY log.properties /var/jenkins_home/
USER jenkins