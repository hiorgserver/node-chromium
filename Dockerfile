FROM node:8.11.1

# Install chromium, some dependnecies, node and dumb-init
RUN apk add --no-cache \
      chromium nss freetype freetype-dev harfbuzz ca-certificates ttf-freefont \
      nodejs npm \
      dumb-init

ENV CHROME_BIN=/usr/bin/chromium-browser \
    CHROME_PATH=/usr/lib/chromium/
