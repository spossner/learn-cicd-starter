all: run

build:
	go build -o notely

run: build
	./notely

up:
	cd sql/schema; goose turso $DATABASE_URL up
