FROM alpine:3.3
MAINTAINER jsonfry
RUN adduser -D sftp &&\
    passwd -d sftp &&\
    chown -R sftp:sftp /home/sftp
RUN mkdir /etc/dropbear
RUN apk add --update openssh-sftp-server dropbear &&\
    rm -rf /var/cache/apk/*
CMD ["dropbear", "-RFEBmw", "-p", "22"]
