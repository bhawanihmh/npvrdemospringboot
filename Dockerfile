FROM openjdk:8
EXPOSE 8080 8888
RUN pwd
RUN mkdir bhawani
RUN ls
RUN curl http://10.67.186.41/npvrdemospringboot-1.0.jar -o /bhawani/npvrdemospringboot-1.0.jar
CMD java -jar /bhawani/npvrdemospringboot-1.0.jar
