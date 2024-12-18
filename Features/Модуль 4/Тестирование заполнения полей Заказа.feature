﻿#language: ru

@tree

Функционал: <описание фичи>

Как Тестировщик я хочу
заполнить шапку документа Заказ
чтобы проверить заполнение полей  

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: проверка заполнения полей Партнер и Соглашение; блокировка поля Контрагент, если не выбран Партнер
* Открытие формы Заказа
	И В командном интерфейсе я выбираю "Продажи" "Заказы покупателей"
	Тогда открылось окно "Заказы покупателей"
	И я нажимаю на кнопку с именем 'FormCreate'
	Тогда открылось окно "Заказ покупателя (создание)"
* Проверка блокировки поля Контрагент (партнер еще не выбран)
	И элемент формы "Контрагент" не доступен	
* Проверка заполнения полей Партнер и Соглашение
	И я нажимаю кнопку выбора у поля с именем 'Partner'
	Тогда открылось окно "Партнеры"
	И в таблице 'List' я перехожу к строке:
		| "Код" | "Наименование"            |
		| "2"   | "Клиент 2 (2 соглашения)" |
	И в таблице 'List' я активизирую поле с именем 'Description'
	И в таблице 'List' я выбираю текущую строку
	Тогда открылось окно "Заказ покупателя (создание) *"
	И в таблице 'ItemList' я активизирую поле с именем 'ItemListLineNumber'
	И я нажимаю кнопку выбора у поля с именем 'Agreement'
	Тогда открылось окно "Соглашения"
	И в таблице 'List' я перехожу к строке:
		| "Вид"     | "Вид взаиморасчетов" | "Код" | "Наименование"                                        |
		| "Обычное" | "По соглашениям"     | "3"   | "Индивидуальное соглашение 2 (расчет по соглашениям)" |
	И в таблице 'List' я активизирую поле с именем 'Description'
	И в таблице 'List' я выбираю текущую строку
	Тогда открылось окно "Заказ покупателя (создание) *"
	И в таблице 'ItemList' я активизирую поле с именем 'ItemListLineNumber'
	И я нажимаю на кнопку с именем 'FormWrite'
	Тогда элемент формы с именем 'Partner' стал равен 'Клиент 2 (2 соглашения)'
	Тогда элемент формы с именем 'Agreement' стал равен 'Индивидуальное соглашение 2 (расчет по соглашениям)'
	И я запоминаю значение поля с именем 'Number' как "НомерДокумента"
	И я нажимаю на кнопку "Провести и закрыть"
	Когда открылось окно "Заказы покупателей"
	И в таблице 'List' я перехожу к строке:
		| "Номер" |
		| "$НомерДокумента$"    |
	И в таблице 'List' я активизирую поле с именем 'Number'
	И в таблице 'List' я выбираю текущую строку
	Тогда элемент формы с именем 'Partner' стал равен 'Клиент 2 (2 соглашения)'
	Тогда элемент формы с именем 'Agreement' стал равен 'Индивидуальное соглашение 2 (расчет по соглашениям)'	
	И я закрываю все окна клиентского приложения
	