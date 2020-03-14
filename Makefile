.PHONY: help setup release changelog tag doc
.DEFAULT_GOAL := help

help: ## List of help for this repository
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

setup: ## Setup pre-commit hook
	@pre-commit install

tag: ## Get current tags
	@./semtag get

majortag: ## Release major tags
	@./semtag final -s major

minortag: ## Release minor tags
	@./semtag final -s minor

patchtag: ## Release patch tags
	@./semtag final -s patch

changelog: ## Create or update changelog.md files
	@git-chglog --output CHANGELOG.md
