TAG=v0.0.1

# compile binary
build:
	GO111MODULE=on GOOS=linux \
		go build -o svr cmd/main.go

# build image
build-image: build
	docker build -t ahilaly/svr:$(TAG) .

# push image. need login
push-image:
	docker push ahilaly/svr