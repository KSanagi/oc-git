FROM centos:7.6.1810

RUN yum -y update && yum clean all
RUN yum -y install httpd git git-daemon git-all
ADD ./httpd.conf /root/httpd.conf
RUN cat /root/httpd.conf >> /etc/httpd/conf/httpd.conf
ADD ./repo-create.sh /usr/bin/
ADD ./repo-delete.sh /usr/bin/
RUN chmod 777 /usr/bin/repo-create.sh
RUN chmod 777 /usr/bin/repo-create.sh

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
