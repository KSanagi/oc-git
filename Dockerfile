FROM centos:7.4.1708

RUN yum -y install httpd git git-daemon git-all
ADD ./httpd.conf /root/httpd.conf
RUN cat /root/httpd.conf >> /etc/httpd/conf/httpd.conf
#RUN mkdir /var/www/git
ADD ./repo-create.sh /root/
RUN chmod 777 /root/repo-create.sh

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
