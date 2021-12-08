.PHONY: all test update-modules

all:
	env GO111MODULE=on go build -v ./...

test:
	go test -v sqlite3_test.go

update-modules:
	env GO111MODULE=on go get -u
	env GO111MODULE=on go mod tidy -v
