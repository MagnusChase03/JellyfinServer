tag = jellyfin

all: build
build:
	docker build . -t $(tag)
	docker volume create jellfinData
	docker volume create jellfinCache
	docker volume create jellfinConfig
	docker volume create jellfinLog

run:
	docker run -d -p 8096:8096 \
	-v jellfinData:/opt/jellyfin/data \
	-v jellfinCache:/opt/jellyfin/cache \
	-v jellfinConfig:/opt/jellyfin/config \
	-v jellfinLog:/opt/jellyfin/log $(tag)