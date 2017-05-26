FROM registry.access.redhat.com/jboss-eap-6/eap64-openshift
EXPOSE 8080 8888
RUN curl https://raw.githubusercontent.com/VeerMuchandi/ps/master/deployments/ROOT.war -o $JBOSS_HOME/standalone/deployments/ROOT.war

FROM frolvlad/alpine-oraclejdk8:slim






FROM openjdk:7

FROM registry.access.redhat.com/jboss-eap-6/eap-openshift:6.4

EXPOSE 8080 8888

RUN curl https://raw.githubusercontent.com/VeerMuchandi/ps/master/deployments/ROOT.war -o $JBOSS_HOME/standalone/deployments/ROOT.war




$ oc new-project petstore


$ oc new-app https://github.com/VeerMuchandi/dockrbld-bin-dep.git  --name=petstore


$ oc expose service petstore --hostname=petstore.testv3.osecloud.com


$ oc start-build petstore

$ oc build-logs petstore-1

$ oc get pods




FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD gs-spring-boot-docker-0.1.0.jar app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]



FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp