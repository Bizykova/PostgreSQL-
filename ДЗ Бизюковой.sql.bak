create database homework;
create sequence shop_id;
create table shop(
id int not null default nextval ('shop_id') primary key,
name varchar,
provider varchar,
provider_address varchar,
amount int,
payment_type varchar,
customer varchar,
customer_address varchar,
amount_customer int
);
insert into shop (name, amount, provider_id, customer_id, payment_type_id) values
('Зубная паста', 100, 1, 1, 1),
('Зубная нить', 34, 2, 2, 2), 
('Ручки шариковые', 55, 3, 3, 3),
('Вода минеральная', 2, 4, 4, 4),
('Вода минеральная', 300, 5, 5, 5);
create sequence provider_id;
create table provider (
id int not null default nextval ('provider_id') primary key,
provider varchar,
provider_address varchar
);
alter table shop drop column provider, drop column provider_address;
alter table shop add column provider_id int references provider(id);

insert into provider (provider,provider_address) values 
('ООО Ромашка', 'г. Буржуев, ул Пушкина, д. 8'),
('ООО Ромашка', 'г. Буржуев, ул Пушкина, д. 8'),
('ООО Ромашка', 'г. Буржуев, ул Пушкина, д. 8'),
('ООО Березка', 'г. Буржуев, ул Пушкина, д. 8'),
('ООО Березка', 'г. Буржуев, ул Пушкина, д. 8');
create sequence customer_id;
create table customer (
id int not null default nextval ('customer_id') primary key,
customer varchar,
customer_address varchar,
amount_customer int
);
alter table shop drop column customer, drop column customer_address,  drop column amount_customer;
alter table shop add column customer_id int references customer(id);
insert into customer (customer, customer_address, amount_customer) values 
('ООО Рога и Копыта','г. Деревянный, ул. Смирнова, д. 4',100),
('ООО Рога и Копыта','г. Деревянный, ул. Смирнова, д. 4',34),
('ООО Рога и Копыта','г. Деревянный, ул. Смирнова, д. 4',55),
('ООО Рога и Копыта','г. Деревянный, ул. Смирнова, д. 4', 2),
('ООО Рога и Копыта','г. Деревянный, ул. Смирнова, д. 4',300);
create sequence payment_type_id;
create table payment_type (
id int not null default nextval ('payment_type_id') primary key,
name varchar
);
alter table shop drop column payment_type;
alter table shop add column payment_type_id int references payment_type(id);


--insert into payment_type (name) values
--('Наложенный пдатеж'),
--('Безналичный платеж'),
--('Наличный платеж'),
--('Наличный платеж'),
--('Безналичный платеж');
















