FROM openjdk:17-jdk-slim
COPY target/book-1.0.jar book.jar
#book-1.0 is in this local PC
#book.jar => name of jarfile that will store on container
EXPOSE 8090
#port
ENTRYPOINT ["java","-jar","/book.jar"]
#after using docker run command it will call java -jar which is run java and the input will be jarFile

# infrastructure as code #

#FROM - what to use as a base image/system
#COPY - copy from this directory to the container directory
#WORKDIR - define the working directory of a Docker container
#RUN - bash command that runs on system (at build time)
#ENV - create environment variables
#EXPOSE - which ports open on the container
#ENTRYPOINT - run this command in container (at run time)
