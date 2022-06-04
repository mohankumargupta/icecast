ARG BUILD_FROM
FROM $BUILD_FROM

RUN apt -qq -y update
RUN apt -qq -y install icecast2 ffmpeg
RUN apt -y autoclean
RUN apt clean

EXPOSE 8000
#COPY run.sh /
COPY icecast.xml /etc/icecast2
#RUN chmod a+x /run.sh
RUN chown -R icecast2 /etc/icecast2
RUN mkdir -p /var/log/icecast2 && chown -R icecast2 /var/log/icecast2 && chown -R icecast2 /usr/share/icecast2
COPY rootfs /
#RUN find /etc/services.d -name "*.sh" -exec chmod a+x {} \;
RUN find /etc/cont-init.d -name "*.sh" -exec chmod a+x {} \;
#RUN find /etc/s6-overlay -name run -exec chmod a+x {} \;
#CMD ["/run.sh"]

