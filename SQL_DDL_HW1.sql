--SQL_DDL
--Первая часть.

--Таблица employees

--Создать таблицу employees
-- id. serial,  primary key,
--employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.

create table employees(
id serial primary key,
employee_name varchar (50) not null
);

select * from employees;

insert into employees(employee_name)
values
    ('Ivan'),
	('Snow'),
	('Karik'),
	('Dima'),
	('Chiushescu'),
	('Robinho'),
	('Lautaro'),
	('Maicon'),
	('Balotelli'),
	('Rooney'),
	('Veratti'),
	('Vadim'),
	('Chris'),
	('Tolik'),
	('Paulo'),
	('Alejandro'),
	('Denis'),
	('Baron'),
	('Romelu'),
	('Foden'),
    ('Kevin'),
	('Diego'),
	('Neymar'),
	('Messi'),
	('Frank'),
	('Kahn'),
	('Hoffman'),
	('Devich'),
	('Osimhen'),
	('Kolya'),
	('Ronaldinho'),
	('Ronaldo'),
	('Rivaldo'),
	('Romario'),
	('Gilberto'),
	('Walker'),
	('Zinchenko'),
	('Zhorik'),
	('Rick'),
	('Porik'),
	('Firmino'),
    ('Suarez'),
	('Helena'),
	('Pavel'),
	('Afrodita'),
	('Daryo'),
	('Razvan'),
	('Mitya'),
	('Theodor'),
	('Paraska'),
	('Paulina'),
	('Larin'),
	('Lola'),
	('Maks'),
	('Karya'),
	('Scb'),
	('Cysec'),
	('Asik'),
	('Dulia'),
	('Varya'),
	('Federico'),
	('Luchano'),
	('Limka'),
	('Alik'),
	('Edvard'),
	('Adriano'),
	('Lelu'),
	('Forik'),
	('Liman'),
	('Toto'),
	('Aimar');

--проверить
select * from employees;

--удалить строку
delete from employees
where id=71;

--проверить
select * from employees;

--Таблица salary

--Создать таблицу salary
--id. Serial  primary key,
--monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками

create table salary(
	id serial primary key,
	monthly_salary int not null
);

--проверить
select * from salary;

--Наполнить таблицу salary 15 строками:
--1100, 1200, 1300, 1400, 1500, 1600, 1700, 1800, 1900, 
--2000, 2100, 2200, 2300, 2400, 2500

insert into salary(monthly_salary) 
values
(1100), 
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500);

--Создать таблицу employee_salary
--id. Serial  primary key,
--employee_id. Int, not null, unique
--salary_id. Int, not null

create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null);

--проверить
select * from employee_salary;

--Наполнить таблицу employee_salary 40 строками:
--в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id)
values
(5, 1),
(6, 2),
(7, 3),
(8, 4),
(9, 5),
(10, 6),
(11, 7),
(12, 8),
(13, 9),
(14, 10),
(15, 11),
(16, 12),
(17, 13),
(18, 14),
(19, 15),
(20, 2),
(21, 5),
(22, 2),
(23, 13),
(24, 14),
(25, 1),
(26, 9),
(27, 7),
(28, 15),
(29, 11),
(30, 9),
(31, 3),
(32, 12),
(33, 7),
(34, 5),
(100, 10),
(101, 8),
(150, 15),
(185, 6),
(230, 6),
(279, 4),
(136, 14),
(132, 7),
(193, 3),
(167, 8);

select * from employee_salary;

--Создать таблицу roles
-- id. Serial  primary key,
--role_name. int, not null, unique

create table roles(
id serial primary key,
role_name int not null unique);

--Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30); 

--проверить
select * from roles;

--Наполнить таблицу roles 20 строками
insert into roles(role_name)
values
    ('Junior QA engineer'),
	('Middle QA engineer'),
	('Senior QA engineer'),
	('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JS developer'),
	('Middle JS developer'),
	('Senior JS developer'),
	('Project Manager'),
	('HR'),
	('CEO'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer'),
	('Sales manager'),
	('Data engineer');

--проверить
select * from roles;

--Создать таблицу roles_employee
--id. Serial  primary key,
--employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--role_id. Int, not null (внешний ключ для таблицы roles, поле id

create table roles_employee
(id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
references employees (id),
foreign key(role_id)
references roles (id));

-- Наполнить таблицу roles_employee 40 строками
insert into roles_employee(employee_id, role_id)
values
(6, 8),
(60, 2),
(24, 19),
(5, 13),
(68, 1),
(29, 7),
(65, 14),
(59, 3),
(55, 6),
(56, 19),
(62, 8),
(34, 20),
(10, 1),
(11, 10),
(2, 2),
(1, 19),
(40, 3),
(70, 17),
(18, 18),
(19, 1),
(33, 5),
(20, 15),
(3, 9),
(43, 10),
(4, 2),
(51, 4),
(52, 1),
(8, 16),
(7, 5),
(48, 13),
(61, 2),
(13, 2),
(39, 9),
(9, 11),
(44, 8),
(47, 3),
(54, 12),
(38, 4),
(69, 19),
(12, 1);

--проверить
select * from roles_employee;
