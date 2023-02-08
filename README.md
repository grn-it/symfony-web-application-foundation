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
Run this command in an empty project directory:  
```bash
curl -s "https://raw.githubusercontent.com/grn-it/symfony-web-application-install-way/main/install.sh?$(date +%s)" -o install.sh && chmod +x install.sh && ./install.sh
```

Open in browser [http://127.0.0.1:8000](http://127.0.0.1:8000) to see installed Symfony Web Application  

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
