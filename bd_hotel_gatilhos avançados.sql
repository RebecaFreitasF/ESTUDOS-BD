drop database if exists bd_hotel_2;
create database bd_hotel_2;
use bd_hotel_2;

create table Endereco (
cod_end integer not null primary key auto_increment,
rua_end varchar (300),
numero_end integer,
bairro_end varchar (100),
cidade_end varchar (100),
estado_end varchar (100)
); 

insert into Endereco values (null, 'Av. Brasil', 111, 'Nova Brasília', 'Ji-Paraná', 'Rondônia');
insert into Endereco values (null, 'Av. Marechal Rondon', 1245, 'Centro', 'Ji-Paraná', 'Rondônia');
insert into Endereco values (null, 'Rua Dr. Telma Rios', 1174, 'Colina Park I', 'Ji-Paraná', 'Rondônia');
insert into Endereco values (null, 'Av. Aracaju', 911, 'BNH', 'Ji-Paraná', 'Rondônia');
insert into Endereco values (null, 'Rua 07 de Setembro', 121, 'Dom Bosco', 'Ji-Paraná', 'Rondônia');
insert into Endereco values (null, 'Rua Mato Grosso', 887, 'Jardim dos Migrantes', 'Ji-Paraná', 'Rondônia');
insert into Endereco values (null, 'Av. Jorge Teixeira', 1589, 'Centro', 'Porto Velho', 'Rondônia');
insert into Endereco values (null, 'Av. Paulista', 989, 'Centro', 'São Paulo', 'São Paulo');
insert into Endereco values (null, 'Travessa dos Mineiros', 456, 'Centro', 'Ariquemes', 'Rondônia');
insert into Endereco values (null, 'Av. Monte Castelo', 555, 'Jardim dos Migrantes', 'Ji-Paraná', 'Rondônia');

create table Cliente (
cod_cli integer not null primary key auto_increment,
nome_cli varchar (200) not null,
estadocivil_cli varchar (50),
cpf_cli varchar (20) not null,
rg_cli varchar (30),
sexo_cli varchar (30),
datanasc_cli date,
rendafamiliar_cli double,
telefone_cli varchar (50) not null,
celular_cli varchar (50) not null,
cod_end integer not null,
foreign key (cod_end) references Endereco (cod_end)
);

insert into cliente values (null, 'Nick Fury', 'Casado', '111.111.111-11', '54654 sesdec', 'Masculino', '1987-06-30', 10000.00, '69 84085712', '69 84111111', 3);
insert into cliente values (null, 'Tony Stark', 'Casado', '111.111.111-22', '54654 sesdec', 'Masculino', '1965-1-1', 456454.45, '', '', 8);
insert into cliente values (null, 'Steve Rogers', 'Solteiro', '111.111.111-33', '48877 sesdec', 'Masculino', '1950-05-30', 0.00, '11 454546511', '', 1);
insert into cliente values (null, 'Bruce Banner', 'Casado', '222.222.222-88', '8888888 spp', 'Masculino', '1990-11-12', 900.00, '69 88998899', '69 4444 4444', 4);
insert into cliente values (null, 'Natasha Romanoff', 'Solteira', '554.454.444-99', '99999 sesdec', 'Feminino', '1993-06-21', 3000.00, '69 3421 5511', '69 99111111', 3);
insert into cliente values (null, 'Janet van Dyne', 'Casada', '987.123.654-55', '8889999 sesdec', 'Feminino', '2000-12-12', 5450.00, '69 3421 1122', '69 9999 7788', 10);
insert into cliente values (null, 'Petter Parker', 'Casado', '654.789.123-88', '998877 sesdec', 'Masculino', '1970-01-01', 6845.00, '69 84085712', '69 84111111', 9);
insert into cliente values (null, 'Clint Barton', 'Solteiro', '321.111.222-44', '1234312 sesdec', 'Masculino', '1982-07-30', 4199.00, '69 3421 2211', '69 84118811', 2);
insert into cliente values (null, 'Carol Danvers', 'Solteira', '988.235.654-54', '12345 sesdec', 'Feminino', '1978-11-11', 3250.00, '69 3421 9999', '69 84118811', 5);
insert into cliente values (null, 'Bucky Barnes', 'Solteiro', '123.445.888-99', '999992 sesdec', 'Masculino', '1989-12-30', 9600.00, '69 3421 1123', '69 84118811', 3);

create table Funcionario (
cod_func integer not null primary key auto_increment,
nome_func varchar (200) not null,
cpf_func varchar (20) not null,
rg_func varchar (20),
sexo_func varchar (30),
datanasc_func date,
salário_func double not null,
telefone_func varchar (50),
celular_func varchar (50) not null,
função_func varchar (50) not null,
cod_end integer not null,
foreign key (cod_end) references Endereco (cod_end)
);

insert into funcionario values (null, 'Clark Kent', '123.544.311-99', '22222 sesdec', 'Masculino', '1988-10-30', 5000.00, '', '69 84111155', 'Atendente', 2);
insert into funcionario values (null, 'Diana Prince', '565.888.988-88', '64444 sesdec', 'Feminino', '1965-1-20', 45000.00, '', '', 'Atendente', 1);
insert into funcionario values (null, 'Bruce Wayne', '998.999.789-55', '46666 sesdec', 'Masculino', '1990-05-23', 15000.00, '11 454546511', '', 'Gerente', 5);

create table Produto (
cod_prod int primary key not null auto_increment,
descrição_prod varchar (200) not null,
estoque_prod int,
valor_prod float,
dataValidade_prod date
);

insert into produto values (null, 'Agua Mineral Sem Gás 500ml', 50, 3.50, '2020-01-01');
insert into produto values (null, 'Chocolate em Barra 200gr', 30, 4.80, '2018-06-30');
insert into produto values (null, 'Cerveja Skol 350ml', 30, 4.50, '2019-01-01');
insert into produto values (null, 'Vinho Tinto 700ml', 20, 50.50, '2019-01-01');

create table Quarto (
cod_qua int primary key not null auto_increment,
descricao_qua varchar (200) not null,
numero_qua int not null,
tipo_qua varchar (100) not null,
valor_qua float,
disponibilidade_qua varchar (100)
);

insert into quarto values (null, 'Apartamento Duplo', 100, 'Luxo', 200.00, 'Livre');
insert into quarto values (null, 'Apartamento Duplo', 101, 'Simples', 100.00, 'Livre');
insert into quarto values (null, 'Apartamento Individual', 201, 'Simples', 50.00, 'Ocupado');
insert into quarto values (null, 'Apartamento Tripo', 202, 'Simples', 150.00, 'Ocupado');
insert into quarto values (null, 'Apartamento Duplo', 301, 'Luxo', 200.00, 'Ocupado');
insert into quarto values (null, 'Apartamento Duplo', 302, 'Simples', 100.00, 'Livre');
insert into quarto values (null, 'Apartamento Individual', 401, 'Simples', 50.00, 'Livre');
insert into quarto values (null, 'Apartamento Tripo', 402, 'Simples', 150.00, 'Livre');

create table Hospedagem (
cod_hosp int primary key not null auto_increment,
dataCheckin_hosp date,
dataCheckout_hosp date,
valorConsumo_hosp float,
valorDiárias_hosp float,
valorTotal_hosp float,
cod_cli int not null,
cod_func int not null,
foreign key (cod_cli) references Cliente (cod_cli),
foreign key (cod_func) references Funcionario (cod_func)
);

insert into Hospedagem values (null, '2018-08-29', null, 0, 0, 0, 4, 1);
insert into Hospedagem values (null, '2018-08-29', null, 0, 0, 0, 8, 2);

create table produtos_hospedagem (
cod_ph int primary key not null auto_increment,
cod_hosp int not null,
cod_prod int not null,
quant_ph int,
foreign key (cod_hosp) references Hospedagem (cod_hosp),
foreign key (Cod_prod) references Produto (cod_prod)
);

create table quartos_hospedagem (
cod_qh int primary key not null auto_increment,
cod_hosp int not null,
cod_qua int not null,
quantDiárias_ph int,
foreign key (cod_hosp) references Hospedagem (cod_hosp),
foreign key (Cod_qua) references Quarto (cod_qua)
);

-- Exercício 01

delimiter $$
create procedure inserirProdutos_Hospedagem (codh int, codp int, quant int)
begin
	
    declare nome varchar(200);
	declare estoque int;
    select estoque_prod into estoque from produto where cod_prod = codp;
    select descrição_prod into nome from produto where cod_prod = codp;
    
	if (estoque >= quant) then
		insert into produtos_hospedagem values (null, codh, codp, quant);
        select concat('O produto ', nome, ' foi inserido na hospedagem!') as 'Aviso!!!';
	else
		select concat('ERRO - O produto ', nome, ' NÃO POSSUI ', quant, ' unidades de estoque!') as 'Aviso!!!';
	end if;
end;
$$ delimiter ;

select*from produtos_hospedagem;
select*from produto;
-- Exercício 02

delimiter $$
create trigger ajustarProvenda after insert on produtos_hospedagem for each row
begin
	declare valor float;
    set valor = (select valor_prod from produto where cod_prod = new.cod_prod);
	update produto set estoque_prod = estoque_prod-new.quant_ph where cod_prod= new.cod_prod; 
    update hospedagem set valorConsumo_hosp = valorConsumo_hosp = valorConsumo_hosp + (new.quant_ph* valor);
  
end;
$$ delimiter ;


-- Exercício 03
call inserirProdutos_Hospedagem(1,1,10);
call inserirProdutos_Hospedagem(1,2,5);
call inserirProdutos_Hospedagem(1,2,9);
call inserirProdutos_Hospedagem(2,3,3);
call inserirProdutos_Hospedagem(2,3,1);
call inserirProdutos_Hospedagem(2,4,5);

select*from produtos_hospedagem;
select*from produto;


-- Exercício 04
delimiter $$
create procedure registrar_Quartos (hosp int, quart int, quant int)
begin
	declare d varchar (100);
	set d = (select disponibilidade_qua from quarto where cod_qua = quart);
	if (d = 'Livre') then
		insert into quartos_hospedagem values (null, hosp, quart, quant);
		select 'Quarto inserido com sucesso em hospedagem' as 'Aviso!!!';
	else
		select 'ERRO - Quarto indisponível!' as 'Aviso!!!';
	end if;
end;
$$ delimiter

select*from quartos_hospedagem;
select*from quarto;
select*from hospedagem;
-- Exercício 05
delimiter $$
create trigger atualizar_Quarto after insert on quartos_hospedagem
for each row
begin
declare valorquart float;
   set valorquart = (select valor_qua from quarto where cod_qua = new.cod_qua);
   
   update quarto set disponibilidade_qua = 'Ocupado' where cod_qua = new.cod_qua;
   update hospedagem set valorDiárias_hosp = valorDiárias_hosp +(new.quantDiárias_ph * valorquart);
end;
$$ delimiter ;

-- Exercício 06
call registrar_Quartos (1, 1, 5);
call registrar_Quartos (2, 2, 4);
call registrar_Quartos (2, 6, 6);


select*from quartos_hospedagem;
select*from quarto;
select*from hospedagem;