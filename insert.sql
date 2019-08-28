create database ETEC_HAS_FUNC;
use ETEC_HAS_FUNC;

create table cargo
(
	cd_cargo		int				not null primary key,
	ds_cargo		varchar(40),
);

create table departamento
(
	cd_depto		int				not null primary key,
	nm_depto		varchar(30),
	sg_depto		varchar(5),
);

create table funcionario
(
	cd_func			int				not null primary key,
	cd_cargo		int				constraint cargo_fk foreign key (cd_cargo) references cargo (cd_cargo),
	cd_depto		int				constraint depto_fk foreign key (cd_depto) references departamento (cd_depto),
	nm_pnome_func	varchar(50),
	nm_unome_func	varchar(30),
	dt_inicio		date,
	vl_salario		numeric(9,2),
	end_func		varchar(150),
	
);

/*INSERT's*/


/*Inserção de dados na tabela 'cargo'*/
insert into cargo
			values
			(1, 'Analista'),
			(2, 'Programador');

insert into cargo
			values
			(3, 'Contador'),
			(4, 'Analista RH'),
			(5, 'Vendedor'),
			(6, 'Analista Financeiro'),
			(7, 'Assistente administrativo');


/*Inserção de dados na tabela 'departamento'*/
insert into departamento
			values
			(10, 'Contabilidade', 'CT'),
			(20, 'Informática', 'INF'),
			(30, 'Recursos Humanos', 'RH'),
			(40, 'Administrativo', 'ADM'),
			(50, 'Vendas', 'VDA'),
			(60, 'Financeiro', 'FIN'),
			(70, 'Pessoal', 'PES');


/*Inserção de dados na tabela 'funcionario'*/
insert into funcionario
			values
			(1, 4, 50, 'Antônio', 'Isaias', '2015-05-01', 3000, 'Rua A, 115'),
			(2, 1, 50, 'Maria', 'Santos', '2015-06-01', 2500, 'Av X, 30'),
			(3, 4, 50, 'João', 'Silveira', '2015-06-02', 3000, 'Av E, 20'),
			(4, 4, 50, 'José', 'Silva', '2015-06-02', 3000, 'Rua B, 4'),
			(5, 1, 30, 'Amélia', 'Caitano', '2015-06-03', 2800, 'Av Y, 10'),
			(6, 3, 20, 'Analícia', 'Silveira', '2015-06-03', 3200, 'Av M, 15'),
			(7, 2, 20, 'Ana', 'Silva', '2015-06-10', 5530, 'Av J, 24'),
			(8, 2, 60, 'Joana', 'Araújo', '2015-06-30', 4200, 'Rua S, 10'),
			(9, 5, 40, 'Carlos', 'Oliveira', '2015-06-30', 6000, 'Rua N, 15'),
			(10, 6, 60, 'Oséias', 'Santos', '2015-07-01', 1200, 'Rua T, 20'),
			(11, 5, 10, 'Otacílio', 'Cristo', '2015-07-01', 6320, 'Av Q, 3'),
			(12, 1, 10, 'Vinícius', 'Marcelino', '2015-08-01', 2900, 'Rua K, 12');

select * from funcionario
select * from departamento
select * from cargo