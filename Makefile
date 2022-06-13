DOCKER_COMPOSE := $(shell which docker-compose)
DOCKER := $(shell which docker)

# Start development
up:
	$(DOCKER_COMPOSE) up

# Start development (detached mode)
upd:
	$(DOCKER_COMPOSE) up -d

# Down containers
down:
	$(DOCKER_COMPOSE) down

# Stop containers
stop:
	$(DOCKER_COMPOSE) stop

# Force build of docker
build:
	$(DOCKER_COMPOSE) build

# Delete containers
rm:
	$(DOCKER_COMPOSE) rm

# Pull docker images
pull:
	$(DOCKER_COMPOSE) pull

# Run unit tests
test:
	$(DOCKER_COMPOSE) run --rm app ./manage.py test

# Run code linter
lint:
	$(DOCKER_COMPOSE) run --rm app flake8

# Access to container bash
bash:
	$(DOCKER) exec -it app bash