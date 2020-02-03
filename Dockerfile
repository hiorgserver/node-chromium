FROM node:10.16.0-alpine

# Install chromium, some dependnecies, node and dumb-init
RUN apk add --no-cache \
      chromium nss freetype freetype-dev harfbuzz ca-certificates ttf-freefont \
      nodejs npm \
      dumb-init

# Add Chrome as a user
RUN mkdir -p /usr/src/app \
    && adduser -D chrome \
    && chown -R chrome:chrome /usr/src/app
# Run Chrome as non-privileged
USER chrome
WORKDIR /usr/src/app

ENV CHROME_BIN=/usr/bin/chromium-browser \
    CHROME_PATH=/usr/lib/chromium/
