IMAGE_NAME= iras-docker-container

build: 
	@echo building image
	docker build --tag ${IMAGE_NAME} .

run: 
	@echo creating container
	docker run --publish 5001:80 ${IMAGE_NAME}