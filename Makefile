NAME=mlcollege/time-series-analysis

all: pull build run

run:
	docker run -ti --rm -p 9996:8888 -v $(shell pwd)/src:/src -v $(shell pwd)/data:/data $(NAME)

build:
	docker build -t $(NAME) .

push:
	docker push $(NAME)

pull:
	docker pull $(NAME)
