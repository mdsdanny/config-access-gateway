FROM adoptopenjdk/openjdk12:latest
VOLUME /tmp
RUN mkdir /build
WORKDIR /build
COPY . /build
RUN ./gradlew build
ENTRYPOINT ["java","-jar","./build/libs/futbol-league-gateway-1.0.0.jar"]
