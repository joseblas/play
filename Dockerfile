FROM openjdk:latest
WORKDIR /workspace/opt/docker
ADD --chown=daemon:daemon opt /opt
USER daemon
ENTRYPOINT ["/opt/docker/bin/simpleplay"]
CMD []