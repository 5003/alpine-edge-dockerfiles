FROM 5003/builder:curl
RUN apk add --no-cache --virtual .builder \
                                 bzr \
                                 git \
                                 mercurial \
                                 openssh-client \
                                 procps \
                                 subversion