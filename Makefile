.DEFAULT_GOAL := check

RUBY_IMAGE := ruby:$(shell cat .ruby-version)
MARKDOWN_IMAGE := node:24.22.2
SHELLCHECK_IMAGE := koalaman/shellcheck:v0.11.0

export RUBY_IMAGE MARKDOWN_IMAGE SHELLCHECK_IMAGE
export CHECK_TIMEOUT_SECONDS CHECK_MEMORY CHECK_SCRATCH_SIZE CHECK_WORK_SIZE CHECK_TMP_SIZE

.PHONY: check lint

check lint:
	@./tests/container/check-stock $@
