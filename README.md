# node-chromium
Docker container to run tests in node environment with chromium installed.

## Run the container

You can fetch the image from [dockerhub](https://hub.docker.com/r/hiorgserver/node-chromium/) and run the container with:

    docker run -it --rm -v "$PWD":/usr/src/myapp hiorgserver/node-chromium /bin/sh

