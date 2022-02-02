# FROM cirrusci/flutter as source
# WORKDIR /src
# COPY . .
# RUN git fetch --all
# RUN flutter channel master
# RUN flutter upgrade
# RUN flutter pub get
# RUN flutter build web

FROM debian:stretch as source
RUN apt-get update && apt-get -y install git curl unzip
RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
RUN mkdir /home/codespace
WORKDIR /home/codespace
ENV PUB_CACHE=/home/codespace/.pub_cache
ENV PATH="/home/codespace/flutter/bin:$PATH"
RUN git clone https://github.com/flutter/flutter && \
    /home/codespace/flutter/bin/flutter config --enable-web

FROM source as build

WORKDIR /src
COPY mertgul .
RUN flutter pub get
RUN flutter build web

FROM nginx as serve
COPY --from=build /src/build/web /usr/share/nginx/html