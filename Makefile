SHELL := /bin/bash
BRANCH_NAME ?= $(shell git branch | grep \* | cut -d ' ' -f2)
PROJECT_NAME ?= networkit-docker
GIT_COMMIT ?= $(shell git rev-parse HEAD)

REGISTRY_URL ?= nielsborie
DOCKER_TAG_NAME = $(BRANCH_NAME)
export REGISTRY_URL

.DEFAULT_GOAL:=help

help:  ## Display this help
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n\nTargets:\n"} /^[a-zA-Z_-]+:.*?##/ { printf "  \033[36m%-10s\033[0m %s\n", $$1, $$2 }' $(MAKEFILE_LIST)

docker-build: ## Build networkit-docker docker image
	docker build --force-rm -t ${REGISTRY_URL}/${PROJECT_NAME}:${DOCKER_TAG_NAME} .
	docker tag ${REGISTRY_URL}/${PROJECT_NAME}:${DOCKER_TAG_NAME} ${REGISTRY_URL}/${PROJECT_NAME}:latest

docker-push: ## Push networkit-docker image to registry
	docker push ${REGISTRY_URL}/${PROJECT_NAME}:${DOCKER_TAG_NAME}
	if [ "${BRANCH_NAME}" = "master" ]; then \
        docker push ${REGISTRY_URL}/${PROJECT_NAME}:latest; \
    fi;

docker-run: ## Run networkit-docker using docker image
	docker run --name network-env -d -p 8887:8888 ${REGISTRY_URL}/${PROJECT_NAME}:latest

start: ## Start the networkit-docker container
	docker start network-env

stop: ## Stop the networkit-docker container
	docker start network-env

### RELEASE ###
generate-changelog: ## Generate/Update CHANGELOG.md file
	gitmoji-changelog

### GitHub action test ###
test_github_actions:
	act --job create_release --eventpath tests/resources/trigger-release.event