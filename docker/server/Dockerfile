# Pull base image.
FROM dockerfile/java

MAINTAINER Gerd Aschemann <gerd@aschemann.net>

ADD vert.x-2.1.5 /vertx
# Add app
RUN mkdir -p /app
COPY tictactoe-server.js /app/

WORKDIR /app

ENV PATH :/vertx/bin:$PATH:

# Run
CMD ["vertx", "run", "tictactoe-server.js", "-cluster"]
