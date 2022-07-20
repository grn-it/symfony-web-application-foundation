install:
	symfony new --webapp tmp || true
	rm -r tmp/.git
	cp -r /app/tmp/. /app
	rm -r tmp
	apk add acl
	setfacl -dR -m u:$(uid):rwX .
	setfacl -R -m u:$(uid):rwX .
