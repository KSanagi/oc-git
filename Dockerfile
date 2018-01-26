FROM centos:7

RUN yum -y install httpd git git-deamon git-all

ADD ./httpd.conf /etc/httpd/conf/httpd.conf

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]