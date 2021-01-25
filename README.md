#DOCKERFILE

##Description

The Dockerfile that has been created contains a CentOS build that installs the httpd app (similar to apache).  

An html file is added to the location /var/www/html

A welcome message is then displayed

We set a networking rule to make sure port 80 is set

Then the httpd service is enabled.

##Instructions

In order to run the image in a container it is best have 2 terminal windows available.

run the following command to build image we will call it "webserver".

docker build -t webserver .

The following command starts the container (the terminal window will be in use, to kill the session use control-c)

With -p we're mapping port 80 of the contianer to port 80 of the device.

docker run -p 80:80 centoshttpdimage

To see this working we will launch a browser and type following:

http://localhost:80

We should see a page that reads "Staging Server"
