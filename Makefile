DOCKER_USERNAME = grover101
IMAGE_NAME = mongo-alpine
VERSION = 0.0.1

TAG = latest

build:
	docker build -t $(DOCKER_USERNAME)/$(IMAGE_NAME):$(VERSION) .

push-latest:
	docker tag $(DOCKER_USERNAME)/$(IMAGE_NAME):$(VERSION) $(DOCKER_USERNAME)/$(IMAGE_NAME):$(TAG)
	docker push $(DOCKER_USERNAME)/$(IMAGE_NAME):$(TAG)

push-version:
	docker tag $(DOCKER_USERNAME)/$(IMAGE_NAME):$(VERSION) $(DOCKER_USERNAME)/$(IMAGE_NAME):$(VERSION)
	docker push $(DOCKER_USERNAME)/$(IMAGE_NAME):$(VERSION)

push-all: push-latest push-version

clean:
	docker rmi $(DOCKER_USERNAME)/$(IMAGE_NAME):$(VERSION) || true
	docker rmi $(DOCKER_USERNAME)/$(IMAGE_NAME):$(TAG) || true

help:
	@echo "Uso del Makefile:"
	@echo "  make build           Construir la imagen con la versión especificada."
	@echo "  make push-latest     Etiquetar y subir la imagen a Docker Hub con la etiqueta 'latest'."
	@echo "  make push-version    Etiquetar y subir la imagen a Docker Hub con la versión especificada."
	@echo "  make push-all        Subir todas las versiones de la imagen a Docker Hub (etiqueta 'latest' y versión específica)."
	@echo "  make clean           Eliminar la imagen local."

.DEFAULT_GOAL := help
