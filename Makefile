.DEFAULT_GOAL=help

.PHONY: build
build: ## build site
	./scripts/build

.PHONY: clean
clean: ## remove build artefacts
	./scripts/clean

.PHONY: help
.SILENT: help
help: ## show make targets
	awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {sub("\\\\n",sprintf("\n%22c"," "), $$2);printf " \033[36m%-20s\033[0m  %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.PHONY: serve
serve: ## locally serve site
	./scripts/serve

.PHONY: tidy
tidy: 
	./scripts/tidy
