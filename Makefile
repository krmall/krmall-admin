.PHONY: default generate

default: generate

generate:
	-rm -f portal/portal_gen.go
	go generate ./portal/portal.go
	gofmt -s -w dist
