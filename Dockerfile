FROM centos:7

RUN yum -y install httpd git git-deamon git-all
RUN cat ./httpd-gitset.conf >> /etc/httpd/conf/httpd.conf

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
