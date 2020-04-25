FROM node:12 AS bundle
ENV VERSION 3.0.1
RUN npm install -g webtorrent-cli@$VERSION

FROM scratch
COPY --from=bundle /usr/local/lib/node_modules/webtorrent-cli .
