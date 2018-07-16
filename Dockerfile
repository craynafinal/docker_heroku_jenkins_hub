FROM jenkins/jenkins:lts
RUN /usr/local/bin/install-plugins.sh gitlab-plugin
ENV JAVA_OPTS -Xms256m -Xmx512m
ENTRYPOINT []
CMD /usr/local/bin/jenkins.sh --httpPort=$PORT
