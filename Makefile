PROPIS=./lib/propis.js

all:
	pegjs src/propis.pegjs $(PROPIS)

test: all
	node test/runtests.js
