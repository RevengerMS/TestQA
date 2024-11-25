﻿#language: ru

@tree
@ExportScenarios
@IgnoreOnCIMainBuild

Функционал: Заполнение шапки Заказа

Как Администартор я хочу
заполнить шапку документа Заказ 
чтобы протестировать создание документа   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Заполнение шапки Заказа
И В командном интерфейсе я выбираю "Продажи" "Заказы"
Тогда открылось окно "Заказы товаров"
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно "Заказ (создание)"
И из выпадающего списка с именем 'Организация' я выбираю точное значение 'ООО "1000 мелочей"'
И из выпадающего списка с именем 'Покупатель' я выбираю точное значение "Мосхлеб ОАО"
И из выпадающего списка с именем 'Склад' я выбираю точное значение "Малый"
