FROM alpine:edge
RUN apk add --no-cache --virtual .base \
                                 bash
RUN apk add --no-cache tzdata && ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime