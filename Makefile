PROPIS=./lib/propis.js

pnodes.js: src/pnodes.coffee
	coffee -c -o lib/ src/pnodes.coffee

all: pnodes.js
	pegjs src/propis.pegjs $(PROPIS)

test: all
	node_modules/.bin/mocha  -u tdd -R dot test/*.js
