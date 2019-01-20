FROM centos:7

RUN yum -y install httpd git git-daemon git-all
ADD ./httpd.conf /etc/httpd/conf/httpd.conf
ADD ./repo-create.sh /root/
RUN chmod 777 /root/repo-create.sh

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
