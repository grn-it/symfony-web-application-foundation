install:
	docker-compose -f docker-compose.dev.yml up -d
	docker-compose -f docker-compose.dev.yml exec symfony-web-application make install-symfony uid=$(id -u)

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
		yq eval-all '. as $$item ireduce ({}; . * $$item )' docker-compose.dev.yml docker-compose.yml > docker-compose.yml.tmp || true; \
		mv docker-compose.yml.tmp docker-compose.yml; \
		rm docker-compose.dev.yml; \
	fi

up:
	@docker-compose up -d
	
down:
	@docker-compose down

symfony:
	@docker-compose exec symfony-web-application bash
