install:
	symfony new --webapp tmp || true
	rm -r tmp/.git
	cp -r /app/tmp/. /app
	rm -r tmp
	chown -R 1000:1000 .
