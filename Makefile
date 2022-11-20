all: build

build:
	docker compose build

run:
	docker compose up -d

stop:
	docker compose down

clean:
	docker system prune
	docker volume prune