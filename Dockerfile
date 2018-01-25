FROM centos:7

RUN yum -y install httpd git

CMD tail -f /dev/null
