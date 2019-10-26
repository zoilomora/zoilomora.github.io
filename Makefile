.PHONY: start
start: stop background

.PHONY: start-trace
start-trace: stop foreground

.PHONY: stop
stop:
		docker-compose down -v

.PHONY: background
background:
		docker-compose up -d

.PHONY: foreground
foreground:
		docker-compose up
