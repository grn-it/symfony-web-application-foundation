install:
	docker-compose -f docker-compose.dev.yml -p app build --force-rm
	docker-compose -f docker-compose.dev.yml -p app up -d
	until [ ! -z "`curl -s -I http://127.0.0.1:8000 | grep HTTP/1.1`" ]; do sleep 1; done;
	docker-compose -f docker-compose.dev.yml -p app exec symfony-web-application make install-symfony uid=$(shell id -u)
	make down
	make up

install-symfony:
	@if [ ! -f symfony.lock ]; \
	then \
		git config --global user.email "app@app.com"; \
		symfony new --webapp --debug tmp; \
		rm -r tmp/.git; \
		cp -r /app/tmp/. /app; \
		rm -r tmp; \
		setfacl -dR -m u:$(uid):rwX .; \
		setfacl -R -m u:$(uid):rwX .; \
		if [ -f docker-compose.yml ]; \
		then \
			yq eval-all '. as $$item ireduce ({}; . * $$item )' docker-compose.dev.yml docker-compose.yml > docker-compose.yml.tmp; \
			mv docker-compose.yml.tmp docker-compose.yml; \
			rm docker-compose.dev.yml; \
		else \
			mv docker-compose.dev.yml docker-compose.yml; \
		fi \
	fi

build:
	@docker-compose -p app build --force-rm

up:
	@docker-compose -p app up -d
	
down:
	@docker-compose -p app down

symfony:
	@docker-compose -p app exec symfony-web-application bash
