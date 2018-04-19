FROM centos:7

RUN yum -y install httpd git git-daemon git-all

RUN mkdir /var/lib/git
ADD ./httpd.conf /etc/httpd/conf/httpd.conf
ADD ./repo-create.sh /var/www/html/
RUN chmod 777 /var/www/html/repo-create.sh

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
