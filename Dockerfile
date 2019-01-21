FROM centos:7.6.1810

RUN yum -y install httpd git git-daemon git-all
ADD ./httpd.conf /root/httpd.conf
RUN cat /root/httpd.conf >> /etc/httpd/conf/httpd.conf
# git.conf comes from gitweb and this prevent us from using our git alias
RUN mv /etc/httpd/conf.d/git.conf /root
ADD ./repo-create.sh /root/
RUN chmod 777 /root/repo-create.sh

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
