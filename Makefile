.DEFAULT_GOAL = up

AT    := @
ARCH  := $(shell uname -m | tr '[:upper:]' '[:lower:]')
OS    := $(shell uname -s | tr '[:upper:]' '[:lower:]')
DATE  := $(shell date +%Y-%m-%dT%T%Z)
SHELL := /usr/bin/env bash -euo pipefail -c
VENV  := .virtenv/bin

todo:
	$(AT) grep \
		--exclude=Makefile \
		--exclude-dir={.virtenv,docs} \
		--color \
		--text \
		-nRo -E ' TODO:.*|SkipNow' . || true
.PHONY: todo

up: venv
	$(AT) $(VENV)/mkdocs serve
.PHONY: up

venv:
	# TODO:implement init .virtenv with requirements
	# see https://github.com/sio/Makefile.venv
	$(AT) echo $(VENV)/activate >/dev/null
.PHONY: venv

verbose:
	$(eval AT :=) $(eval MAKE := $(MAKE) verbose) @true
.PHONY: verbose
