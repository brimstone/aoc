.PHONY: test
test:
	docker run --rm -it -v ${PWD}:${PWD} -w ${PWD} nimlang/nim testament p "tests/*.nim"
