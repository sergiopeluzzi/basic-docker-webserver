#Basic Docker Webserver Image

###1. Webserver contains:
+ Ubuntu 16.04
+ Apache2.4
+ PHP7

###2. Requirements:
+ [Docker](https://www.docker.com/products/docker "Docker") or [Docker Toolbox](https://www.docker.com/products/docker-toolbox "Docker ToolBox")

###3. Usage:
+ Access clonned folder and build an image
```
docker build -t yourname/basewebserver .
```

+ Run the image
```
docker run -it --rm -p 8080:80 yourname/basewebserver
```

At this point your web server is online
Available on [localhost:8080](http://127.0.0.1:8080)

###4. Bonus
+ If you want to copy your project files to the Image
```
docker run -it --rm -v local-php-project-path:/var/www/html -p 8080:80 yourname/basewebserver
```
Available on [localhost:8080](http://127.0.0.1:8080)


+ or you can do this:
	* Create a **Dockerfile** file in your project folder
	* Import **basewebserver** image and ADD project files.
```
FROM yourname/basewebserver

ADD . /var/www/html
```
	* Now build a new image and run
```
docker build -t yourname/projectname .

docker run -it --rm -p 8080:80 yourname/projectname
```
Available on [localhost:8080](http://127.0.0.1:8080)


####I will add more features like mysql soon!