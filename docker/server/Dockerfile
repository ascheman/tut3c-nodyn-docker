# Pull base image.
FROM ascheman/vert.x:latest

MAINTAINER Gerd Aschemann <gerd@aschemann.net>

# Add app
RUN mkdir -p /app
COPY tictactoe-server.js /app/

WORKDIR /app

# Run
CMD ["vertx", "run", "tictactoe-server.js", "-cluster"]
