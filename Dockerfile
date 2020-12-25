FROM centos:7
LABEL maintainer="John Oshikoya (john.oshi44@gmail.com)"
RUN  yum -y install epel-release 2>/dev/null && yum install fortune-mod -y 2>/dev/null
EXPOSE 80
WORKDIR /html/
COPY fortune.sh  .
CMD ["sh", "fortune.sh"]
