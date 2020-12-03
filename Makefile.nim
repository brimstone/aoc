.PHONY: test
test:
	docker run --rm -it -v ${PWD}:${PWD} -w ${PWD} nimlang/nim testament p "tests/*.nim"

%: %.nim
	@docker run --rm -it -v ${PWD}:${PWD} -w ${PWD} nimlang/nim nim c -r $< input
