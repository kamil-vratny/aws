FROM redhat/ubi8
RUN yum -y install python38
RUN mkdir -p  /opt/www
RUN echo "Hello World!" > /opt/www/index.html
CMD python3 -m http.server 80 --directory /opt/www
