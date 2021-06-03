#FROM ubuntu:trusty-20191217
#FROM jrei/systemd-ubuntu
FROM ubuntu:20.04

#RUN apt-get update && apt-get install -y curl 
RUN apt-get -qq update && \
    apt-get -y install build-essential autoconf libtool && \
    apt-get -y install curl &&\
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

#RUN add-apt-repository universe multiverse
#RUN apt-get update \
#  && apt-get install -y curl 
#RUN apt-get -y install curl
#RUN apt-get purge vsftpd
#RUN apt-get install -y vsftpd
#RUN y | wget http://c.vestacp.com/0.9.8/debian/vsftpd.conf -O  /etc/vsftpd.conf
#RUN service vsftpd restart
 
RUN curl -O http://vestacp.com/pub/vst-install.sh

#RUN vst-install.sh

#RUN bash vst-install.sh --nginx yes --apache yes --phpfpm no --named yes --remi yes --vsftpd yes --proftpd no --iptables yes --fail2ban yes --quota yes --exim yes --dovecot yes --spamassassin yes --clamav yes --softaculous yes --mysql yes --postgresql yes --hostname test.example.com --email your@email.com --password Password!

ENTRYPOINT ["tail"]

CMD ["-f","/dev/null"]
