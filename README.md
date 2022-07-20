# Symfony Web Application Install Way

Fast way to install Symfony Web Application.  

After installation will be available in docker container:
- Symfony Web Application
- Built-in Symfony Web server
- Symfony CLI developer tool
- PHP
- Composer
- Curl

## How to Use
1. Clone this repository
```bash
git clone https://github.com/grn-it/symfony-web-application-install-way.git
```
2. Copy these files to your new repository: `Dockerfile`, `docker-compose.yml`, `Makefile`
3. Run the container in your repository:  
```bash
docker-compose up -d
```
4. Run installation of Symfony Web Application:  
```bash
docker-compose exec symfony-web-application make install uid=$(id -u)
```
5. Open in browser `http://127.0.0.1:8000` to see installed Symfony Web Application
