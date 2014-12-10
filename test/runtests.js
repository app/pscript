assert = require("assert");
парсер = require('../lib/propis.js');
файлы = require('fs');
файлДляПарсинга = "./test/random_code1-test.prp";

обработатьВходныеДанные = function(входныеДанные) {
		программа = входныеДанные.toString();
		return парсер.parse(программа);
}

describe('Проверяем результат парсинга '+файлДляПарсинга, function() {
		it('description', function() {
				assert.equal(5,5);
		});
		файлы.readFile(файлДляПарсинга, function(ошибки,данныеИзФайла){
				// входныеДанные = данныеИзФайла;
				if (ошибки != null) { 
						console.log(ошибки);
						return;
				}
				describe('Проверяем AST Tree', function() {
						it('Присваивание значений переменным', function () {
								ast=обработатьВходныеДанные(данныеИзФайла);
								assert.equal('число',ast[0].assignee);
								assert.equal(12,ast[0].expression.Int);
						});
				});

		});

		
});
