CREATE DATABASE SUCOS;

USE SUCOS;

-- Criando as tabelas cliente, produtos e vendedores
CREATE TABLE tbCliente (
CPF VARCHAR(11),
NOME VARCHAR(100),
ENDERECO1 VARCHAR(150),
ENDERECO2 VARCHAR(150),
BAIRRO VARCHAR(50),
CIDADE VARCHAR(50),
ESTADO VARCHAR(50),
CEP VARCHAR(8),
IDADE SMALLINT,
SEXO VARCHAR(1),
LIMITE_CREDITO FLOAT,
VOLUME_COMPRA FLOAT,
PRIMEIRA_COMPRA BIT(1)
);

CREATE TABLE tbProduto (
PRODUTO VARCHAR(20),
NOME VARCHAR(150),
EMBALAGEM VARCHAR(50),
TAMANHO VARCHAR(50),
SABOR VARCHAR(50),
PRECO_LISTA FLOAT
);

CREATE TABLE tbVendedores (
MATRICULA VARCHAR(5),
NOME VARCHAR(100),
PERCENTUAL_COMISSAO FLOAT
);

-- Inserindo dados na tabelas
INSERT INTO tbVendedores (
MATRICULA, NOME, PERCENTUAL_COMISSAO) VALUES (
'00233', 'João Geraldo da Fonseca', 0.10);

INSERT INTO tbvendedores (
MATRICULA, NOME, PERCENTUAL_COMISSAO) VALUES (
'00235', 'Márcio Almeida Silva', 0.08),
('00236', 'Cláudia Morais', 0.08);

INSERT INTO tbproduto (
PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES (
'1037797', 'Clean - 2 Litros - Laranja', 'PET', '2 Litros', 'Laranja', 16.01);

INSERT INTO tbproduto (
PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES (
'1000889', 'Sabor da Montanha - 700ml - Uva', 'Garrafa', '700ml', 'Uva', 6.31);

INSERT INTO tbproduto (
PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA) VALUES (
'1004327', 'Vidreira do Campo - 1,5 Litros - Melancia', 'PET', '1,5 Litros', 'Melancia', 19.51);

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('544931', 'Frescor do Verão - 350 ml - Limão', 'PET', '350 ml','Limão',3.20);

INSERT INTO tbproduto (
PRODUTO,  NOME, EMBALAGEM, TAMANHO, SABOR,
PRECO_LISTA) VALUES
('1078680', 'Frescor do Verão - 470 ml - Manga', 'Lata', '470 ml','Manga',5.18);

-- Atualizando registros existentes nas tabelas
UPDATE tbproduto SET EMBALAGEM = 'Lata', PRECO_LISTA = 2.46
WHERE PRODUTO = '544931';

UPDATE tbproduto SET EMBALAGEM = 'Garrafa'
WHERE PRODUTO = '1078680';

UPDATE tbvendedores SET PERCENTUAL_COMISSAO = 0.11
WHERE MATRICULA = '00236';

UPDATE tbvendedores SET NOME = 'José Geraldo da Fonseca Júnior'
WHERE MATRICULA = '00233';

-- Deletando registros 
-- Obs: DROP deleta objetos como bancos de dados, tabelas, índices e PK
DELETE FROM tbproduto WHERE PRODUTO = '1078680';

DELETE FROM tbvendedores WHERE MATRICULA = '00233';

-- Incluindo PK em uma tabela já existente
-- Obs: PK evita registros duplicados
ALTER TABLE tbproduto ADD PRIMARY KEY (PRODUTO);

-- Verificando os registros nas tabelas
SELECT * FROM tbproduto;
SELECT * FROM tbVendedores;


