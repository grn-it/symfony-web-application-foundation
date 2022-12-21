install:
	@make up
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
	fi

up:
	@docker-compose -f docker-compose.dev.yml up -d
	
down:
	@docker-compose -f docker-compose.dev.yml down

symfony:
	@docker-compose -f docker-compose.dev.yml exec symfony-web-application bash
