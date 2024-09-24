create database livraria;
use livraria;
create table cliente (
id_cliente int auto_increment primary key,
data_cadastro date,
nome varchar (50) not null,
endereço varchar (100),
email varchar (50),
sexo varchar (10),
idade varchar (10)
);


create table pedido (
id_pedido int auto_increment,
id_cliente int (10),
id_livro int (10),
valor_livro varchar (10),
gênero varchar (20),
data_pedido varchar (20),
valor_pedido varchar (10),
primary key (id_pedido),
foreign key (id_cliente) references cliente (id_cliente)
);


create table livro (
id_livro int auto_increment,
gênero varchar (20),
nome_livro varchar (50),
valor_livro varchar (10),
editora varchar (20),
primary key (id_livro)
);

create table vendedor (
id_vendedor int auto_increment primary key,
nome_vendedor varchar (30),
email_vendedor varchar (30),
telefone_vendedor varchar (20)
);

insert into cliente (data_cadastro, nome, endereço, email, sexo, idade) 
values
("10/08/24","Márcio", "Av João dias 2400", "mcdias@gmail.com","M", "38"),
("11/07/24","Rafaela", "Rua Félix Andrades 290", "rfandrades@gmail.com","F", "25"),
("12/06/24","Gustavo", "Av Ibirapuera 438", "gvibirapuera@gmail.com","M","52"),
("13/05/24","Antônia", "Rua Geraldo Henrique 65", "athenrique@gmail.com","F", "35"),
("12/04/24","Carlos", "Rua Bartolomeu Ferrari 758", "csferrari@gmail.com","M", "36");

insert into livro (gênero, nome_livro, valor_livro, editora)
values
("Romance", "Um verão na Ítalia", "R$ 55,00", "Verus"),
("Poesia", "O meu quintal é maior que o mundo", "R$ 45,00", "Saraiva"),
("Infantis", "O menino maluquinho", "R$ 60,00", "Melhoramentos"),
("Didáticos", "Matemática", "R$ 75,00", "Moderna"),
("Contos", "Um amigo para sempre", "R$ 35,00", "FTD");

insert into pedido (valor_livro, gênero, data_pedido)
values
("R$ 55,00", "Romance", "10/09/2024"),
("R$ 45,00", "Poesia", "11/09/2024"),
("R$ 60,00", "Infantis", "12/09/2024"),
("R$ 75,00", "Didáticos", "13/09/2024"),
("R$ 35,00", "Contos", "14/09/2024");

select * from cliente where sexo ="F";