default:
	@echo build push

build:
	docker build -f node-nexe:10-alpine.Dockerfile -t node-nexe:10-alpine .
	docker tag node-nexe:10-alpine jonlauridsen/node-nexe:10-alpine

push:
	docker push jonlauridsen/node-nexe:10-alpine
