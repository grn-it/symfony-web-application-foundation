# Symfony Web Application Install Way

Fast way to install Symfony Web Application.  

After installation in docker container will be available:
- Symfony Web Application
- Built-in Symfony Web server
- Symfony CLI developer tool
- PHP
- Composer
- Curl

## How to Install
- Copy these files to your new repository: `Dockerfile`, `docker-compose.dev.yml`, `Makefile`
- Run installation of Symfony Web Application:  
```bash
make install
```
Open in browser [http://127.0.0.1:8000](http://127.0.0.1:8000) to see installed Symfony Web Application  

<br>

## How to Use

Up docker containers:
```bash
make up
```

Down docker containers:

```bash
make down
```

Run Bash in Symfony Web Application container:
```bash
make symfony
```
<br>

All commands can be viewed and new ones can be added to the [Makefile](Makefile).
