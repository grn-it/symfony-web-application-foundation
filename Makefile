install:
	mkdir ~/app && cp -r /app/. ~/app
	rm -rf /app/* /app/.* || true
	symfony new --webapp . || true
	rm -r .git
	cp -r ~/app/. /app
	chown -R 1000:1000 .
