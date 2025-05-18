# Variables
IMAGE_NAME = asm-hello
CONTAINER_NAME = asm-hello-container

# Default target
run:  ## Build for x86_64 and run
	docker buildx build --platform linux/amd64 -t $(IMAGE_NAME) . --load
	docker run --rm --name $(CONTAINER_NAME) $(IMAGE_NAME)

clean:  ## Remove Docker image
	docker rmi -f $(IMAGE_NAME)