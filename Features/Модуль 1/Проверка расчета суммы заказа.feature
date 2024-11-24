﻿#language: ru

@tree

Функционал: Проверка расчета суммы заказа покупателя при изменении цены и количества

Как Администартор я хочу
создать документ Заказ покупателя 
чтобы проверить расчет суммы

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание заказа покупателя и проверка суммы при изменении цены или количества
И В командном интерфейсе я выбираю "Продажи" "Заказы"
Тогда открылось окно "Заказы товаров"
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно "Заказ (создание)"
И из выпадающего списка с именем 'Организация' я выбираю точное значение 'ООО "Все для дома"'
И из выпадающего списка с именем 'Покупатель' я выбираю точное значение "Мосхлеб ОАО"
И из выпадающего списка с именем 'Склад' я выбираю точное значение "Склад отдела продаж"
И в таблице 'Товары' я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице 'Товары' я нажимаю кнопку выбора у реквизита с именем 'ТоварыТовар'
Тогда открылось окно "Товары"
И в таблице 'Список' я перехожу к строке:
	| "Код"       | "Наименование" |
	| "000000005" | "Тапочки"      |
И в таблице 'Список' я выбираю текущую строку
Тогда открылось окно "Заказ (создание) *"
И в таблице 'Товары' я завершаю редактирование строки
И в таблице 'Товары' я активизирую поле с именем 'ТоварыКоличество'
И в таблице 'Товары' я выбираю текущую строку
И в таблице 'Товары' в поле с именем 'ТоварыКоличество' я ввожу текст "2"
И в таблице 'Товары' в поле с именем 'ТоварыЦена' я ввожу текст "700"
И в таблице 'Товары' я завершаю редактирование строки
И реквизиты формы имеют значение:
	| 'Имя'                  | 'Значение'            | 'КакИскать' |
	| 'ТоварыИтогСумма'      | "1 400"               | ''          |	