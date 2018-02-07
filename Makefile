test:
	@echo "Running tests ..."
	@go test ./...

watch:
	ag -l -g "go$$" | grep -i -v vendor | entr make test
