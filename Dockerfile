FROM centos:7

RUN yum -y install httpd git git-deamon git-all

#CMD tail -f /dev/null
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
