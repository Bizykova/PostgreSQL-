
--create database shop;

--create table client (
--uuid  uuid,
--first_name varchar,
--last_name varchar,
--phone varchar,
--email varchar,
--address varchar, 
--create_at date,
--primary key (uuid)
--);

--CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
-- insert into client 
-- (uuid, first_name, last_name, phone, email, address, create_at) values
-- (uuid_generate_v4(), 'Masha', 'Puchkova', '7919282345', 'masha@test.com', 'ylica Petra pervogo', now()),
-- (uuid_generate_v4(), 'Gosha', 'Rustamov', '7918734643', 'gosha@test.com', 'ylica Vernadskogo', now()),
-- (uuid_generate_v4(), 'Dima', 'Starichko', '7916728956', 'dima@test.com', 'ylica Krasnodarskogo', now()),
-- (uuid_generate_v4(), 'Mascha', 'Birycha', '7919287456', 'mascha@test.com', 'ylica Plevickay', now()),
-- (uuid_generate_v4(), 'Micha', 'Potapkin', '7967347456', 'michaa@test.com', 'ylica Sumckay', now()),
-- (uuid_generate_v4(), 'David', 'Skovbi', '7919256782', 'dev@test.com', 'prjspect Kylacova', now()),
-- (uuid_generate_v4(), 'Samypay', 'Smsyrsik', '797923416', 'samyrtest.com', 'pereyloc Komsomolskiy', now()),
-- (uuid_generate_v4(), 'Alekseq', 'Belayk', '7985342712', 'alex@test.com', 'ylica Krasnekogo', now()),
-- (uuid_generate_v4(), 'Vladimir', 'Vladimirov', '7564321908', 'Vladimir@test.com', 'pepeylok Zvezda', now()),
--(uuid_generate_v4(), 'Migfha', 'Htapkin', '7678347456', 'michga@test.com', 'ylica Sumckay', now());

--create sequence country_id;
--create table country (
--id int not null default nextval ('country_id') primary key,
--name varchar,
--short_code varchar(2)
--);
--insert into country (name, short_code) values
--('Russian', 'RU'),
--('Ukraine', 'UA'),
--('Austria', 'AT'),
--('Australia', 'AU'),
--('Abkhazia', 'AB'),
--('Argentina', 'AR'),
--('Ghana', 'GH'),
--('Guam', 'GU'),
--('China', 'CN'),
--('Cuba', 'CU');


--create sequence product_id;
--create table product (
--id int not null default nextval ('product_id') primary key,
--name_product varchar,
--description_product text,
--amount money,
--price money,
--provider varchar,
--address_provider varchar,
--country_provider int references country (id)
--);

--insert into product (name_product, description_product, amount, price, provider, address_provider, country_provider) values
--('Tomato', 'Red ripe tomato', 22, 45, 'Petay', 'Per.Symscaya', 1),
--('Chocolate', 'real bittersweet chocolate made from cocoa beans', 209, 5, 'Sergey', 'Per. Madonna', 2),
--('Potatoes', 'delicious sweet homemade potatoes', 562, 75, 'Ivana', 'ylica.Symscaya', 3),
--('Milk', 'fresh milk from domestic cows', 302, 40, 'Yana', 'Per. Plevickoy', 4),
--('Nuts', 'Delicious candy contains nuts', 200, 34, 'Masha', 'ylica. Dpuzbi', 5),
--('Water', 'tasty sweet clear clean drinking water', 80, 78, 'Dasha', 'Per.Komsomolski', 6),
--('Bino', 'light natural grape seed wine', 30, 4534, 'Mapusay', 'ylica. Dereglszovo', 7),
--('Klubnika', 'ripe red strawberries', 200, 34, 'Klubhika', 'ylica. Dpghhi', 8),
--('Yogurt', 'yogurt for children', 200, 34, 'Opel', 'ylica. Belogo', 9),
--('orange', 'orange', 200, 34, 'Kula', 'ylica. Tverdovskay', 10);




--create sequence basket_id;
--create table basket (
--id int not null default nextval ('basket_id') primary key,
--id_client uuid references client (uuid),
--id_product int references product (id)
--);

--insert into basket (id_client, id_product) values
--('a8abe2b6-c954-44b6-a046-7894aee692f7', 1),
--('a1122790-38b9-44b0-b2af-712da77ac873', 2),
--('22ea0185-9757-44c1-b927-1108f7ee6fff', 3),
--('cf0b9494-da14-499f-913a-43b8b00428a4', 4),
--('3afd73a9-7cb9-408a-8c4c-cc797a8e8b16', 5),
--('82b97169-67b4-4462-916b-efc6e0c7baef', 6),
--('30844e53-774c-4f5f-9e74-3249f42d4055', 7),
--('c1bea561-44f2-4c7d-8c6a-a7611f17351e', 8),
--('10d370a3-2315-4f9c-b400-1068468d9b2d', 9),
--('d56fd029-5684-467f-a409-2e4fd4b9a7ab', 10);





select b.* from basket b 
left join client c on b.id_client = c.uuid; 






















