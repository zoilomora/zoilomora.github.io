start: stop background

start-trace: stop foreground

stop:
		docker-compose down -v

background:
		docker-compose up -d

foreground:
		docker-compose up
