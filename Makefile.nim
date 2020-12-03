INPUT ?= input
%: %.nim
	@docker run --rm -it -v ${PWD}:${PWD} -w ${PWD} nimlang/nim nim c -r $< ${INPUT}
	rm -f $@
