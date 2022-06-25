USE SUCOS;

-- PK na tbcliente
ALTER TABLE tbcliente ADD PRIMARY KEY (CPF);

-- Adiciona nova coluna
ALTER TABLE tbcliente ADD COLUMN (DATA_NASCIMENTO DATE);

-- Inserindo registro
INSERT INTO tbcliente (
CPF, 
NOME, 
ENDERECO1, 
ENDERECO2, 
BAIRRO, 
CIDADE, 
ESTADO, 
CEP, 
IDADE, 
SEXO, 
LIMITE_CREDITO, 
VOLUME_COMPRA, 
PRIMEIRA_COMPRA, 
DATA_NASCIMENTO) VALUES (
'00388934505', 
'João da Silva', 
'Rua projetada A número 10', 
'', 
'Vila Roman', 
'CARATINGA', 
'Amazonas', 
'2222222', 
30, 
'M', 
10000.00, 
2000, 
0, 
'1989-10-05');

-- Excluindo tabela de vendedores
DROP TABLE tbVendedores;

-- Criando novamente tabela vendedores
CREATE TABLE tbvendedores (
MATRICULA INT NOT NULL PRIMARY KEY,
NOME VARCHAR(150),
PERCENTUAL_COMISSAO FLOAT,
DATA_ADMISSAO DATE,
DE_FERIAS BIT(1)
);

-- Inserindo valores na tabela tbvendedores
INSERT INTO tbvendedores (MATRICULA, NOME, COMISSAO, DATA_ADMISSAO, DE_FERIAS) VALUES ('00235','Márcio Almeida Silva', 0.08, '2014-08-15', 0), ('00236', 'Cláudia Morais', 0.08, '2013-09-17', 1), ('00237', 'Roberta Martins', 0.11, '2017-03-18', 1), ('00238', 'Péricles Alves', 0.11, '2016-08-21', 0);

-- Filtrando registros
SELECT * FROM tbproduto WHERE PRODUTO = '544931';

SELECT * FROM tbcliente WHERE CIDADE = 'Rio de Janeiro';

SELECT * FROM tbproduto WHERE SABOR = 'Cítricos';


-- Atualizando registro
UPDATE tbproduto SET SABOR = 'Cítricos' WHERE SABOR = 'Limão';

-- Filtrando mais registros com maior, menor, diferente e between, year, month e filtro composto

SELECT * FROM tbvendedores WHERE NOME = 'Cláudia Morais';

SELECT * FROM tbcliente;

SELECT * FROM tbcliente WHERE IDADE = 22;

SELECT * FROM tbcliente WHERE IDADE > 22;

SELECT * FROM tbcliente WHERE IDADE < 22;

SELECT * FROM tbcliente WHERE IDADE <= 22;

SELECT * FROM tbcliente WHERE IDADE <> 22;

SELECT * FROM tbcliente WHERE NOME >= 'Fernando Cavalcante';

SELECT * FROM tbcliente WHERE NOME <> 'Fernando Cavalcante';

SELECT * FROM tbproduto;

SELECT * FROM tbproduto WHERE PRECO_LISTA > 16.008;

SELECT * FROM tbproduto WHERE PRECO_LISTA < 16.008;

SELECT * FROM tbproduto WHERE PRECO_LISTA <> 16.008;

SELECT * FROM tbproduto WHERE PRECO_LISTA BETWEEN 16.007 AND 16.009;

SELECT * FROM tbvendedores WHERE PERCENTUAL_COMISSAO > 0.10;

SELECT * FROM tbcliente;

SELECT * FROM tbcliente WHERE DATA_NASCIMENTO = '1995-01-13';

SELECT * FROM tbcliente WHERE DATA_NASCIMENTO > '1995-01-13';

SELECT * FROM tbcliente WHERE DATA_NASCIMENTO <= '1995-01-13';

SELECT * FROM tbcliente WHERE YEAR(DATA_NASCIMENTO) = 1995;

SELECT * FROM tbcliente WHERE MONTH(DATA_NASCIMENTO) = 10;

SELECT * FROM tbvendedores WHERE YEAR(DATA_ADMISSAO) >= 2016;

SELECT * FROM tbcliente WHERE (IDADE >= 18 AND IDADE <= 22 AND SEXO = 'M')
 OR (cidade = 'Rio de Janeiro' OR BAIRRO = 'Jardins');

SELECT * FROM tbvendedores WHERE DE_FERIAS = 1 AND YEAR(DATA_ADMISSAO) < 2016;