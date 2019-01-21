FROM centos:7.6.1810

RUN yum -y install httpd git git-daemon git-all
#ADD ./httpd.conf /root/httpd.conf
#RUN cat /root/httpd.conf >> /etc/httpd/conf/httpd.conf
RUN echo 'our $projectroot = "/var/www/git";' >> /etc/gitweb.conf
#RUN mkdir /var/www/git
ADD ./repo-create.sh /root/
RUN chmod 777 /root/repo-create.sh

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
