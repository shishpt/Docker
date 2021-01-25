#retreive image
FROM centos:latest

#maintained by:
MAINTAINER Shishir Patel

# We're installing httpd and -y means that we accept any options during setup.
RUN yum -y install httpd

#Add and index.html page that will be accessible.
ADD index.html /var/www/html/

# Run echo allows us to add a welcome message.
RUN echo "Welcome to the staging web server"

# This will open port 80 on the container
EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
