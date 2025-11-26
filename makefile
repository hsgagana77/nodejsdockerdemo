#theIMAGE_NAMEvariableiswhatyouwantyourDockerimagenametobe.
#WhateveryouputinIMAGE_NAMEistheimagenameusedindockerbuild.
# Variables
IMAGE_NAME ?= nodeapp
IMAGE_TAG ?= latest
CONTAINER ?= nodeapp-container
PORT ?= 8080

# Help
help:
	@echo "Usage:"
	@echo " make install     - Install npm dependencies"
	@echo " make run         - Run the app locally"
	@echo " make image       - Build Docker image"
	@echo " make push        - Push Docker image"
	@echo " make clean       - Clean node_modules"

install:
	npm install

run:
	node server.js

image:
	docker build -t $(IMAGE_NAME):$(IMAGE_TAG) .

push:
	docker push $(IMAGE_NAME):$(IMAGE_TAG)

clean:
	rm -rf node_modules
