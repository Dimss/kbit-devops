FROM busybox:1.28
RUN mkdir -p /usr/local/bin
RUN PATH=$PATH:/usr/local/bin
ADD run.sh /usr/local/bin
WORKDIR /var/lib/jenkins
CMD run.sh