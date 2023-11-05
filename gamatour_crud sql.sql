CREATE DATABASE gamatour_crud;

USE gamatour_crud;

CREATE TABLE cliente(
id int primary key auto_increment,
nome varchar (50) not null,
login varchar(50) not null unique,
senha varchar(50) not null,
cpf varchar(50) not null unique,
email varchar (50) not null
)

SELECT * FROM cliente;

