FROM 5003/base
RUN apk add --no-cache --virtual .builder \
                                 curl \
                                 wget