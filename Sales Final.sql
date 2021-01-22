CREATE DATABASE [Sales]


GO

Use [Sales]

GO

CREATE TABLE Clientes (
  idClientes INTEGER NOT NULL,
  nome VARCHAR(80) NULL,
  sexo VARCHAR(30) NULL,
  idade INTEGER NULL,
  cpf INTEGER NULL,
  pais VARCHAR(80) NULL,
  estado VARCHAR(80) NULL,
  cidade VARCHAR(80) NULL,
  bairro VARCHAR(80) NULL,
  rua VARCHAR(80) NULL,
  cep INTEGER NULL,
  PRIMARY KEY(idClientes)
);

CREATE TABLE Fornecedores (
  idFornecedores INTEGER NOT NULL,
  nome VARCHAR(80) NULL,
  cargo VARCHAR(30) NULL,
  ano_contratacao INTEGER  NULL,
  salario FLOAT NULL,
  pais VARCHAR(80) NULL,
  estado VARCHAR(80) NULL,
  cidade VARCHAR(80) NULL,
  rua VARCHAR(80) NULL,
  bairro VARCHAR(80) NULL,
  cep INTEGER NULL,
  PRIMARY KEY(idFornecedores)
);

CREATE TABLE Funcionários (
  idFuncionários INTEGER NOT NULL,
  nome VARCHAR(80) NULL,
  sexo VARCHAR(30) NULL,
  idade INTEGER NULL,
  salario FLOAT NULL,
  pais VARCHAR(80) NULL,
  estado VARCHAR(80) NULL,
  cidade VARCHAR(80) NULL,
  bairro VARCHAR(80) NULL,
  cep INTEGER NULL,
  rua VARCHAR(80) NULL,
  PRIMARY KEY(idFuncionários)
);

CREATE TABLE Pedidos (
  idPedidos INTEGER NOT NULL,
  Funcionários_idFuncionários INTEGER  NOT NULL,
  Transportadora_idTransportadora INTEGER NOT NULL,
  Produtos_idProdutos INTEGER NOT NULL,
  Clientes_idClientes INTEGER NOT NULL,
  valor_unitario FLOAT NULL,
  data_pedido DATE NULL,
  qtde_pedidos INTEGER NULL,
  preco_transporte FLOAT NULL,
  PRIMARY KEY(idPedidos),
  INDEX Pedidos_FKIndex1(Clientes_idClientes),
  INDEX Pedidos_FKIndex2(Produtos_idProdutos),
  INDEX Pedidos_FKIndex3(Transportadora_idTransportadora),
  INDEX Pedidos_FKIndex4(Funcionários_idFuncionários)
);
CREATE TABLE Produtos (
  idProdutos INTEGER NOT NULL,
  Fornecedores_idFornecedores INTEGER NOT NULL,
  categoria VARCHAR(80) NULL,
  pais_fabricacao VARCHAR(80) NULL,
  ano_fabricacao INTEGER NULL,
  descricao VARCHAR(80) NULL,
  preco FLOAT NULL
  PRIMARY KEY(idProdutos),
  INDEX Produtos_FKIndex1(Fornecedores_idFornecedores)
);

CREATE TABLE Transportadora (
  idTransportadora INTEGER NOT NULL ,
  nome VARCHAR(80) NULL,
  email VARCHAR(80) NULL,
  telefone INTEGER  NULL,
  pais VARCHAR(30) NULL,
  estado VARCHAR(30) NULL,
  cidade VARCHAR(80) NULL,
  bairro VARCHAR(80) NULL,
  rua VARCHAR(80) NULL,
  cep INTEGER  NULL,
  PRIMARY KEY(idTransportadora)
);




-- Tabela Transportadora

USE [Sales]

GO


INSERT INTO Transportadora VALUES(1,  'Transportadora 1',  'transportadora1@gmail.com', 999911111, 'Brasil', 'Minas Gerais', 'Belo Horizonte',  'Barreiro', 'José Brandão', 30640020); 
INSERT INTO Transportadora VALUES(2,  'Transportadora 2',  'transportadora2@gmail.com', 99992222, 'Brasil','Minas Gerais', 'Belo Horizonte', 'Nova Vista', 'José Silva Passos', 31070026); 	
INSERT INTO Transportadora VALUES(3,  'Transportadora 3',  'transportadora3@gmail.com', 9999333, 'Brasil', 'Minas Gerais', 'Belo Horizonte', 'Santa Efigênia', 'Rio Pardo', 31070023);	
INSERT INTO Transportadora VALUES(4,  'Transportadora 4',  'transportadora4@gmail.com', 99994444, 'Brasil', 'Minas Gerais', 'Belo Horizonte', 'Santo Antonio', 'Viçosa', 31070021);	
INSERT INTO Transportadora VALUES(5,  'Transportadora 5',  'transportadora4@gmail.com', 9999555, 'Brasil', 'São Paulo', 'São Paulo', 'Pinheiros', 'Butantã', 31070025);	


-- Fornecedores


-- Bebida -> Código 1
-- Comida -> Código 2
-- Brinquedo -> Código 3
-- Eletrodoméstico -> Código 4
-- Eletrônico -> Código 5


INSERT INTO Fornecedores VALUES(1,  'José',  'Entregador', 2015, 2500, 'Brasil', 'Minas Gerais', 'Belo Horizonte', 'José Brandão', 'Barreiro', 30640020)	
INSERT INTO Fornecedores VALUES(2, 'Camila', 'Entregador', 2016, 3200, 'Brasil', 'Minas Gerais', 'Belo Horizonte', 'Benedito Santos', 'Barreiro', 30640140)
INSERT INTO Fornecedores VALUES(3, 'Otávio', 'Entregador', 2012, 6000, 'Brasil', 'Minas Gerais', 'Belo Horizonte', 'Euclásio', 'Santa Efigênia', 3060055)
INSERT INTO Fornecedores VALUES(4, 'Maria', 'Motorista', 2010, 5800, 'Brasil', 'São Paulo', 'São Paulo', 'Domingos de Morais', 'Vila Mariana', 04010000)
INSERT INTO Fornecedores VALUES(5, 'Gabriel', 'Motorista', 2008, 6000, 'Brasil', 'Minas Gerais', 'Belo Horizonte', 'Carangola', 'Santo Antonio', 30330240)

-- Funcionários 


INSERT INTO Funcionários VALUES(1,'Maura Soares','F',33,3452.12,'Brasil','Pernambuco','Caruaru','Jaboatao',18112331,'Carangola');
INSERT INTO Funcionários VALUES(2,'Tulio Soares','M',19,1891.19,'Portugal','Braga','Braga','Paneleiros',13456,'Rua');
INSERT INTO Funcionários VALUES(3,'Saulo Matheus','M',56,1234.78,'Argentina','Cordoba','Serron','Sure',54622, 'Frei');
INSERT INTO Funcionários VALUES(4,'Rubio Matthews','M',35,2290,'Ilha da Madeira','Galhos','Pele','Vigo',44171,'Cabo');
INSERT INTO Funcionários VALUES(5,'Alana Cozin','F',45,8399,'Estados Unidos','Texas','Paris','London',52447,'Johnson');
INSERT INTO Funcionários VALUES(6,'Jair Matheus','M',36,2309,'Brasil','Ceara','Fortaleza','Castanhola',15995115,'Brasil');
INSERT INTO Funcionários VALUES(7,'Sergio Soares','M',35,1190,'Espanha','Vigo','Peleja','Anden',44171,'Cabo');
INSERT INTO Funcionários VALUES(8,'Hanna Hoch','F',27,11190,'Alemanha','Munique','Bulk','Alfen',18304,'Huss');
INSERT INTO Funcionários VALUES(9,'Leivina Hickman','F',51, 1190, 'Argentina','Sol','Suarez','Molina',2248,'Olinda');
INSERT INTO Funcionários VALUES(10,'Sandra Rodrigues','F',62,5000, 'Brasil','Rio de Janeiro','Niteroi','Molina',21248222,'Beco do Bom Negócio');
INSERT INTO Funcionários VALUES(11,'Davi Josias','M',46,6000, 'Suriname','Avexanga','Remy','Astrid',231167,'Recife');
INSERT INTO Funcionários VALUES(12,'Walter Thatcher','M',22,7000, 'Estados Unidos','California','Pannam','Fox',23456,'Lobster');
INSERT INTO Funcionários VALUES(13,'Silene Seagal','F',67,1520.3, 'Holanda','Amsterdam','Hore','McMunnan',08174,'8 South');
INSERT INTO Funcionários VALUES(14,'Telemaco Geraldo Marques','M',25,6530.3, 'Portugal','Porto','Cais','Eletrico',23390,'Pombal');


-- Produtos


INSERT INTO Produtos VALUES(1, 1, 'Bebida', 'Brasil', 2019, 'Coca Cola', 8.00);
INSERT INTO Produtos VALUES(2,1, 'Bebida', 'Brasil', 2020, 'Suco del Valle', 5.50);
INSERT INTO Produtos VALUES(3,1, 'Bebida', 'Argentina', 2020, 'Suco de Uva Salton Integral', 8.99);
INSERT INTO Produtos VALUES(4,1, 'Bebida', 'Colômbia', 2020, 'Café Corsini', 19.90);
INSERT INTO Produtos VALUES(5,1, 'Bebida', 'Chile', 2020, 'Vinho Castigo del Lago', 16.39);
INSERT INTO Produtos VALUES(6,2, 'Comida', 'Brasil', 2020, 'Feijão Kicaldo', 4.99);
INSERT INTO Produtos VALUES(7,2, 'Comida', 'Brasil', 2019, 'Arroz Tio João', 6.25);
INSERT INTO Produtos VALUES(8,2, 'Comida', 'Uruguai', 2020, 'Morango', 0.60);
INSERT INTO Produtos VALUES(9,2, 'Comida', 'Argentina', 2020, 'Maçã', 0.50);
INSERT INTO Produtos VALUES(10,2, 'Comida', 'Brasil', 2020, 'Macarrão Santa Amália', 3.49);
INSERT INTO Produtos VALUES(11,3, 'Brinquedo', 'Estados Unidos', 2010, 'Boneco Ben 10', 125.30);
INSERT INTO Produtos VALUES(12,3, 'Brinquedo', 'Estados Unidos', 2018, 'Barbie', 150);
INSERT INTO Produtos VALUES(13,3, 'Brinquedo', 'Brasil', 1985, 'Boneco Fofão', 1500);
INSERT INTO Produtos VALUES(14,3, 'Brinquedo', 'China', 2018, 'Carrinho Hot Wheels', 45);
INSERT INTO Produtos VALUES(15,3, 'Brinquedo', 'Brasil', 2016, 'Perfil 5', 94.90);
INSERT INTO Produtos VALUES(16,4, 'Eletrodoméstico', 'Brasil', 2020, 'Geladeira Brastemp', 2329);
INSERT INTO Produtos VALUES(17,4, 'Eletrodoméstico', 'Brasil', 2019, 'Microondas', 350);
INSERT INTO Produtos VALUES(18,5, 'Eletrônico', 'China', 2020, 'iPhone 10', 4000);
INSERT INTO Produtos VALUES(19,5, 'Eletrônico', 'China', 2014, 'Playstation 4', 1800);
INSERT INTO Produtos VALUES(20,5, 'Eletrônico', 'Coréia do Sul', 2020, 'Samsung Galaxy S20', 7200);


-- Pedidos


INSERT INTO Pedidos VALUES(1,1,1,20,18,200,'13-03-2020',17, 15);
INSERT INTO Pedidos VALUES(2,2,2,19,19,400,'23-06-2020',24, 25);
INSERT INTO Pedidos VALUES(3,3,5, 18,20,1000,'02-09-2019', 3, 10.5);
INSERT INTO Pedidos VALUES(4,4,  1,  17,01,334,'03-09-2019',4, 8.5);
INSERT INTO Pedidos VALUES(5,5,   2, 16,02,100,'21-07-2019',24, 10.5);
INSERT INTO Pedidos VALUES(6,5,   3, 15,03,546,'12-02-2020',18, 9.7);
INSERT INTO Pedidos VALUES(7,4,   4, 14,04,80,'16-05-2020',5, 6.4);
INSERT INTO Pedidos VALUES(8,3,   5, 13,05,77,'20-08-2019',21, 7.5);
INSERT INTO Pedidos VALUES(9,2,  2,  12,06,250,'13-03-2020',17, 6.5);
INSERT INTO Pedidos VALUES(10,1,  3, 11,07,60,'23-06-2020',60, 8.9);
INSERT INTO Pedidos VALUES(11,1, 4,  10,08,650,'23-06-2020',12, 12.3);
INSERT INTO Pedidos VALUES(12,2,  1, 9,09,1390,'23-06-2020',44, 10.5);
INSERT INTO Pedidos VALUES(13,3, 2,  8,10,18967,'02-09-2019',1, 14.3);
INSERT INTO Pedidos VALUES(14,4, 3,  7,11,2345,'03-09-2019',109, 8.9);
INSERT INTO Pedidos VALUES(15,5, 4,  6,12,223,'21-07-2019',72, 7.3);
INSERT INTO Pedidos VALUES(16,4, 5,  5,13,440,'12-02-2020',1802, 10.5);
INSERT INTO Pedidos VALUES(17,14, 2, 4,14,68,'16-05-2020',18050, 8.5);
INSERT INTO Pedidos VALUES(18,1, 3,  3,15,5315,'20-08-2020',21, 9.7);
INSERT INTO Pedidos VALUES(19,1, 1,  2,16,9159,'13-03-2020',29, 6.4);
INSERT INTO Pedidos VALUES(20,5, 2,  1,17,6321,'23-06-2019',200, 12.3);


-- Clientes


INSERT INTO Clientes VALUES(1,'Jandira Soares', 'F', 27, 2036894567,'Brasil','Minas Gerais', 'Belo Horizonte', 'Nova Vista', 'José Silva Passos', 31070022);
INSERT INTO Clientes VALUES(2,'Andre Soares', 'M', 52,5561521,'Brasil','Minas Gerais', 'Belo Horizonte', 'Santo Antonio', 'São Romão', 31075000);
INSERT INTO Clientes VALUES(3,'Alex Matheus','M', 34, 2255713,'Brasil','Minas Gerais', 'Belo Horizonte', 'Santo Antonio', 'Viçosa', 31070021);
INSERT INTO Clientes VALUES(4,'Matheus Madeira', 'M', 19, 664721,'Brasil','Minas Gerais', 'Belo Horizonte', 'Santo Antonio', 'Rua da Bahia', 31070012);
INSERT INTO Clientes VALUES(5, 'Simone Cozin','F',75, 5242890,'Brasil','Minas Gerais', 'Belo Horizonte', 'Santa Efigênia', 'Rio Pardo', 31070023);
INSERT INTO CLIENTES VALUES(6,'Neil Matheus', 'M', 55, 225573,'Brasil','Minas Gerais', 'Belo Horizonte', 'Funcionários', 'Piauí', 31070024);
INSERT INTO Clientes VALUES(7,'Ricardo Soares', 'M',23, 181234,'Brasil','São Paulo', 'São Paulo', 'Pinheiros', 'Butantã', 31070025);
INSERT INTO Clientes VALUES(8,'Anna Soares','F', 61, 18112234,'Brasil', 'Minas Gerais', 'Belo Horizonte', 'Nova Vista', 'José Silva Passos', 31070026);
INSERT INTO Clientes VALUES(9,'Christina Hickman','F', 65, 128964,'Brasil', 'Minas Gerais', 'Belo Horizonte', 'Nova Vista', 'José Silva Passos', 31070022);
INSERT INTO CLIENTES VALUES(10,'Marcelo Rodrigues','M',78, 117100,'Brasil','Minas Gerais', 'Belo Horizonte', 'Santo Antonio', 'Rua da Bahia', 31070012);
INSERT INTO CLIENTES VALUES(11,'Davi Jodaias', 'M', 23, 025267,'Brasil','Minas Gerais', 'Belo Horizonte', 'Santo Antonio', 'Rua da Bahia', 31070012);
INSERT INTO CLIENTES VALUES(12,'Ricardo Ney Thatched', 'M', 19, 003612,'Brasil','Minas Gerais', 'Belo Horizonte', 'Santa Efigênia', 'Rio Pardo', 31070023);
INSERT INTO CLIENTES VALUES(13,'Luana Martins', 'F', 88, 081702, 'Brasil', 'Minas Gerais', 'Belo Horizonte', 'Funcionários', 'Piauí', 31070024);
INSERT INTO CLIENTES VALUES(14,'Bill Neill','M', 45,181550,'Brasil', 'São Paulo', 'São Paulo', 'Pinheiros', 'Butantã', 31070025);
INSERT INTO CLIENTES VALUES(15,'Davi Hudson Miranda','M', 18, 1053335,'Brasil', 'Minas Gerais', 'Belo Horizonte', 'Santo Antonio', 'Viçosa', 31070021);
INSERT INTO Clientes VALUES(16,'Dexgerina Jander','F',27, 102376,'Brasil', 'Minas Gerais', 'Belo Horizonte', 'Santo Antonio', 'Viçosa', 31070021);
INSERT INTO Clientes VALUES(17,'Andre Paranhos','M', 62, 008677, 'Brasil','Minas Gerais', 'Belo Horizonte', 'Nova Vista', 'José Silva Passos', 310700022);
INSERT INTO CLIENTES VALUES(18,'Ravi Kauffman','M',38, 081502,'Brasil','Minas Gerais', 'Belo Horizonte', 'Nova Vista', 'José Silva Passos', 310700022);
INSERT INTO Clientes VALUES(19,'Maicon Santos Vieira','F', 37, 699567,'Brasil','Minas Gerais', 'Belo Horizonte', 'Nova Vista', 'José Silva Passos', 310700022);
INSERT INTO Clientes VALUES(20,'Zulindre Bolsas Carapina', 'M', 22,95014,'Brasil','Minas Gerais', 'Belo Horizonte', 'Nova Vista', 'José Silva Passos', 310700022);


--Faturamento diário por categoria de produtos, como bebidas, alimentos, etc, além de identificar
--quais clientes tiveram o maior volume de compras e de quais fornecedores foram os produtos
--que mais venderam.


-- CLientes que tiveram o maior volume de compras

SELECT TOP (3) nome, qtde_pedidos
FROM Clientes c
INNER JOIN Pedidos p on c.idClientes = p.Clientes_idClientes
order by qtde_pedidos DESC

-- Faturamento diário por categoria de produtos

SELECT categoria, preco, qtde_pedidos
FROM Produtos p
INNER JOIN Pedidos pe on p.idProdutos = pe.Produtos_idProdutos
