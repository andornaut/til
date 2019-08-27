.DEFAULT_GOAL := update

.PHONY: find, index, pull, update

%:
	@:

find:
	@grep --color=always -i -R -A20 $(filter-out $@,$(MAKECMDGOALS)) t/ \
		|| echo "-- no matches --"

index: node_modules
	./node_modules/markdown-index/index.js t > README.md

node_modules:
	npm install

pull:
	@git pull

update: pull index
	@if [ -n "$$(git diff --name-only --diff-filter=U)" ]; then \
		echo "Error: conflicts exist" >&2 \
		exit 1; \
	fi
	@git add \*.md
	@git commit -m "Update README.md: re-index." || true
	@git push

