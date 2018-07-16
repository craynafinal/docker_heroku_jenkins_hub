FROM jenkins/jenkins:lts
RUN /usr/local/bin/install-plugins.sh gitlab-plugin publish-over-dropbox
ENV JAVA_OPTS -Xms256m -Xmx448m
ENTRYPOINT []
CMD /sbin/tini -s -- /usr/local/bin/jenkins.sh --httpPort=$PORT
