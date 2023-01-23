# go_docker

A simple way to enhance the GO + Docker + MariaDB development stack. 

## Description

This project is used to create an easy entry point for GO applications, web applications, and RESTful APIs. It strives to do this
by leveraging Docker and MariaDB on top of GO in an easy to understand yet hyper flexible manner.

Once a project is started via the installation process container-based development and deployment can commence and will be outlined below.

## Authors

Contributors names and contact info

Anthony Hopkins - anthony.b.hopkins@gmail.com

## Dependencies

* GO - Any current install will work. See 
https://go.dev/
* Docker - Any modern version should be fine. See 
https://docs.docker.com/get-docker/
* Git bash or WSL as a terminal to leverage if using Windows. 
* Bash if using Linux/OSX

## Getting Started

### Installing
* Ensure you are in an empty directory where you are ready to start work.
* Copy the below string and run in a bash shell:
```
curl -L -o tmp.zip https://github.com/anthony-hopkins/go_docker/archive/refs/heads/main.zip && unzip tmp.zip && cp -a ./go_docker-main/. . && bash ./go-docker-build.sh
```
* The script that is called handles building a proper docker starting point. This includes generating a MariaDB container image.
* The called script handles cleaaning the project structure up after it finished building the necessary files.

## Acknowledgments

Shout out to these guys for basically providing a sweet README.md template:
* [awesome-readme](https://github.com/matiassingers/awesome-readme)
