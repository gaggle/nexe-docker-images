FROM node:10-alpine
RUN apk update && apk upgrade && apk --update \
  add \
  bash \
  binutils-gold \
  curl \
  g++ \
  gcc \
  gnupg \
  libgcc \
  libstdc++ \
  linux-headers \
  make \
  python \
  upx
RUN npm install -g nexe
RUN cd /opt && echo "console.log('hello world')" >> hello-world.js
RUN cd /opt && nexe --build --temp /opt/.nexe --input hello-world.js --output hello-world
RUN cd /opt && ./hello-world && rm hello-world.*
