create database livraria;
use livraria;
create table editora(nomeeditora varchar(15) primary key,
cidade varchar(30),
pais varchar(20),
telefone varchar(20),
anofundacao year(4));

create table autor(numautor decimal(4) primary key,
nomeautor varchar(30),
anonascimento year(4),
anofalecimento year(4));

create table livro(numlivro decimal(4) primary key,
nomelivro varchar(50),
anopub year(4),
paginas decimal(3),
nomeeditora varchar(15),
constraint fk_nome_editora foreign key(nomeeditora) references editora(nomeeditora));

create table cliente(numcli decimal(5) primary key,
nomecli varchar(50),
rua varchar(40),
cidade varchar(30),
estado varchar(25),
pais varchar(20));

create table autoria(numlivro decimal(4),
numautor decimal(4),
constraint pk_autoria primary key(numlivro,numautor),
constraint fk_numlivro foreign key(numlivro) references livro(numlivro),
constraint fk_numautor foreign key(numautor) references autor(numautor));

create table vendas(numlivro decimal(4),
numcli decimal(5),
data date,
preco real,
quantidade decimal(4),
constraint pk_vendas primary key(numlivro,numcli,data),
constraint fk_numlivroVendas foreign key(numlivro) references livro(numlivro),
constraint fk_numcli foreign key(numcli) references cliente(numcli));

INSERT INTO editora VALUES('Campus', 'Rio de Janeiro','Brasil', '0800-026-5340','1976'),
('Pearson','São Paulo','Brasil','(11)2178-8686','1901'),
('Grupo GEN','São Paulo','Brasil','(11)5080-0770','2007'),
('Sagra Luzzatto','Porto Alegre','Brasil','(51)3013-8121','2003'),
('Alta Books','Rio de Janeiro','Brasil','(21)3278-8159','2012');

insert into autor values(1234, 'Shamkant Navathe','1948',null),(4567,'Henry F.Silberschatz','1950',null),
(8901,'Mark L. Gillenson','1954',null),(2345,'Carlos Heuser','1951',null),(3456,'C.J.Date','1948',null),
(5678,'Michael Morrison','1960',null),(6789,'Eric Freeman', '1970',null),(7890,'Elisabeth Freeman','1956',null),
(9012,'Paul Barry','1957',null);

insert into livro values(1111,'Sistema de Banco de Dados','2011',770,'Pearson'),
(2222,'Sistema de Banco de Dados','2006',781,'Campus'),(3333,'Introdução À Gerência De Bancos De Dados',
'2009',228,'Grupo Gen'),(4444,'Projeto de Banco de Dados','1998',205,'Sagra Luzzatto'),
(5555,'INTRODUÇÃO A BANCO DE DADOS','2004',975,'Campus'),(6666,'Use a Cabeça!JavaScript','2010',640,'Alta Books'),
(7777,' Use a Cabeça!Programação em Html 5','2014',608,'Alta Books'),
(8888,'Use a Cabeça!Html com Css e Xhtml','2008',616,'Alta Books'),
(9999,'Use a Cabeça! Programação','2010',440,'Alta Books');

insert into cliente values(11111,'Carla Soares','Moraes Sarmento','Juiz de Fora','MG','Brasil'),
(11112,'Angela Silveira','Av. Sete de Setembro','Juiz de Fora','MG','Brasil'),
(11122,'Marcelo Souza','Padre Frederico','Juiz de Fora','MG','Brasil'),
(11223,'Raimundo Oliveira','Av. Itamar Franco','Juiz de Fora','MG','Brasil'),
(22222,'Alicia Rosa','Moraes e Castro','Juiz de Fora','MG','Brasil'),
(22223,'Sandra Alvarenga','Rei Alberto','Juiz de Fora','MG','Brasil'),
(22233,'José Castilho','Oscar Freire','Juiz de Fora','MG','Brasil'),
(33333,'Alice Ferreira','Ibitiguaia','Juiz de Fora','MG','Brasil'),
(33334,'Maria Tereza','Av. Santa Luzia','Juiz de Fora','MG','Brasil'),
(33344,'Silvio Albuquerque','Oscar Vidal','Juiz de Fora','MG','Brasil'),
(33445,'Margarida de Jesus','Pasteur','Juiz de Fora','MG','Brasil'),
(44445,'Iara Cristina','Porto das Flores','Juiz de Fora','MG','Brasil'),
(44455,'Alex Alves','Manoel Honório','Juiz de Fora','MG','Brasil'),
(55556,'Adriane Santana','Av. Deusdedith Salgado','Juiz de Fora','MG','Brasil'),
(55566,'Matheus Reis','Padre Café','Juiz de Fora','MG','Brasil'),
(55667,'Argemiro Braga','Oswaldo Aranha','Juiz de Fora','MG','Brasil'),
(66666,'Tamara Jesus','Mariano Procópio','Juiz de Fora','MG','Brasil'),
(66667,'Laura Leme','Av. Itamar Franco','Juiz de Fora','MG','Brasil'),
(66677,'Gisele Almeida','Av. Costa e Silva','Juiz de Fora','MG','Brasil'),
(66778,'Joice Leite','Gil Horta','Juiz de Fora','MG','Brasil'),
(77777,'Adriana Alves','Olípio Costa','Juiz de Fora','MG','Brasil'),
(77778,'Luisa Antunes','Braz Bernardino','Juiz de Fora','MG','Brasil'),
(77889,'Luiz de Paula','Av. Barão do Rio Branco','Juiz de Fora','MG','Brasil'),
(88889,'Romero Santos','Av. Juscelino Kubitschek','Juiz de Fora','MG','Brasil');


insert into autoria values(1111,1234),(2222,4567),(3333,8901),(4444,2345),(5555,3456),(6666,5678),(7777,6789),
(8888,7890),(9999,9012);

insert into vendas values
(1111,11112,'2013-09-11',230,1),
(1111,11122,'2014-01-02',230,10),
(2222,22223,'2014-01-03',180,2),
(2222,22222,'2014-03-04',180,8),
(3333,11111,'2013-09-23',250,3),
(3333,33334,'2014-11-12',250,1),
(4444,33445,'2014-05-19',80,15),
(4444,33344,'2014-05-21',80,2),
(5555,44445,'2014-09-09',120,5),
(5555,55556,'2014-10-10',120,3),
(6666,22223,'2014-01-03',150,4),
(6666,55566,'2014-08-23',150,1),
(7777,55667,'2014-11-13',180,3),
(7777,11122,'2014-05-14',18,7),
(8888,66667,'2014-11-11',220,6),
(8888,33344,'2014-08-27',220,9),
(8888,77777,'2014-03-22',220,2),
(9999,77889,'2014-11-14',140,6),
(9999,88889,'2014-11-05',140,3);

create table estoque(idestoque INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
numlivro decimal(4),
quantidade decimal(4),constraint fk_estoque_livro foreign key(numlivro)
references livro(numlivro));


insert into estoque(numlivro,quantidade) values
(1010,800),
(1111,380),
(2222,409),
(3333,650),
(4444,120),
(5555,948),
(6666,991),
(7777,1000),
(8888,720),
(9999,553);
