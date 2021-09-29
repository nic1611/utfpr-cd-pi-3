
create schema jardim;

create table jardim.jardim_info
(
	id_jardim_info serial primary key,
	nome VARCHAR,
	telefone VARCHAR,
	email VARCHAR,
	site VARCHAR
);

create table jardim.localizacao
(
	id_localizacao serial primary key,
	continente varchar,
	pais VARCHAR,
	estado varchar,
	cidade VARCHAR
);

create table jardim.flor
(
	id_flor serial primary key,
	nome varchar,
	quantidade INTEGER,
	caracteristicas FLOAT[]
);

create table jardim.jardim
(
	id_jardim serial primary key,
	id_jardim_info INTEGER,
	id_localizacao INTEGER,
	id_flor INTEGER,
	CONSTRAINT fk_jardim_info
      FOREIGN KEY(id_jardim) 
	  REFERENCES jardim.jardim_info(id_jardim_info),
	CONSTRAINT fk_localizacao
      FOREIGN KEY(id_localizacao) 
	  REFERENCES jardim.localizacao(id_localizacao),
	CONSTRAINT fk_flor
      FOREIGN KEY(id_flor) 
	  REFERENCES jardim.flor(id_flor)
);

insert into jardim.jardim(id_jardim_info, id_localizacao, id_flor) values
(1,30,15),
(2,29,16),
(3,28,17),
(4,27,18),
(5,26,19),
(6,25,20),
(7,24,21),
(8,23,22),
(9,22,23),
(10,21,24),
(11,20,25),
(12,19,26),
(13,18,27),
(14,17,28),
(15,16,29),
(16,15,30),
(17,14,1),
(18,13,2),
(19,12,3),
(20,11,4),
(21,10,5),
(22,9,6),
(23,8,7),
(24,7,8),
(25,6,9),
(26,5,10),
(27,4,11),
(28,3,12),
(29,2,13),
(30,1,14);

select * from jardim.jardim_info;
select * from jardim.localizacao;
select * from jardim.flor;
select * from jardim.jardim;


