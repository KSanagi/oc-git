FROM centos:7

RUN yum -y install httpd git git-daemon git-all

RUN mkdir /var/www/git
ADD ./httpd.conf /etc/httpd/conf/httpd.conf
ADD ./repo-create.sh /var/www/git/
RUN chmod 777 /var/www/git/repo-create.sh

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
