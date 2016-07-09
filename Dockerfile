FROM 5003/base
RUN apk add --no-cache openssh
ADD scripts/ /srv/
RUN . /srv/sshd.sh
EXPOSE 22
ENTRYPOINT ["/bin/bash", "/srv/setup.sh"]
CMD ["/usr/sbin/sshd", "-D"]