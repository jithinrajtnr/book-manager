FROM java:8
VOLUME /tmp
EXPOSE 8080
ADD /target/book-manager-1.0-SNAPSHOT.jar book-manager-1.0-SNAPSHOT.jar
RUN ["mvn", "clean", "install"]
ENTRYPOINT ["java","-jar","book-manager-1.0-SNAPSHOT.jar"]
