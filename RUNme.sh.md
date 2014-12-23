### Read this file as UTF-8 Russian text  
: ' Run this file in bash to view its content formatted
<!--
'
pandoc -s -f markdown -t man $0 | man -l - ; exit
: '
-->
'

# Общая информация  
Код разрабатывается и отлаживается под Linux (Ubuntu 14.04 LTS)  

# Зависимости  
npm install 

# Запуск тестов  
make test  

