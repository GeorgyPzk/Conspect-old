# PRIMARY, FOREGIN KEYS

PRIMARY KEY (Первичный ключ) — уникальный Id для записи в БД.

FOREIGN KEY - это ключ, используемый для соединения двух таблиц вместе. При создании надо сослаться на Id в другой таблице.

`CREATE TABLE Orders (OrderID int NOT NULL, PersonID int, PRIMARY KEY (OrderID), FOREIGN KEY (PersonID) REFERENCES Persons(PersonID));`

# SELECT

`SELECT name FROM lampdb2.Musicboxs WHERE dep_id IN ('1','5') ORDER BY id DESC;`

Удалит повторяющиеся данные:

`SELECT DISTINCT`

# INSERT

Добавить данные в в таблицу:

`INSERT INTO <table_name> (<col_name1>, <col_name2>) VALUES (<value1>, <value2>);`

# JOIN

## (INNER) JOIN 
Join — оператор для объединения данных из нескольких таблиц с общим ключом.

Table Orders: OrderID CustomerID OrderDate
Table Customers: CustomerID	CustomerName ContactName
`SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate`
`FROM Orders`
`JOIN Customers` или `INNER JOIN Customers`
`ON Orders.CustomerID=Customers.CustomerID;`




JOIN используется для связи двух или более таблиц с помощью общих атрибутов внутри них. На изображении ниже показаны различные способы объединения в SQL. Обратите внимание на разницу между левым внешним объединением и правым внешним объединением:

SELECT <col_name1>, <col_name2>, …
  FROM <table_name1>
  JOIN <table_name2>
  ON <table_name1.col_namex> = <table2.col_namex>;

(INNER) JOIN: возвращает записи, которые имеют совпадающие значения в обеих таблицах.
LEFT (OUTER) JOIN: возвращает все записи из левой таблицы и совпадающие записи из правой таблицы.
RIGHT (OUTER) JOIN: Возвращает все записи из правой таблицы и совпадающие записи из левой таблицы.

SQL-инъекция (SQLi) - это уязвимость веб-безопасности, которая позволяет злоумышленнику вмешиваться в запросы, которые приложение делает к своей базе данных. Обычно это позволяет злоумышленнику просматривать данные, которые он обычно не может получить.
