	--	Etapa 1: Criar o Banco de Dados
	
	--	Etapa 2: Criar as tabelas
	
-- ##  Tabela Ator	
CREATE TABLE Ator(
	cod_Ator INT,
	nome_ator VARCHAR(50) NOT NULL,
	cidade_ator	VARCHAR(50) NOT NULL,
	pais_ator VARCHAR(10) NOT NULL,
	genero_ator VARCHAR(1) NOT NULL,
	PRIMARY KEY(cod_ator)
);

-- ##  Tabela Diretor
CREATE TABLE Diretor(
	cod_diretor INT,
	nome_diretor VARCHAR(50) NOT NULL,
	cidade_diretor VARCHAR(50) NOT NULL,
	pais_diretor VARCHAR(10) NOT NULL,
	PRIMARY KEY(cod_diretor)
);

-- ##  Tabela Filme
CREATE TABLE Filme(
	cod_filme INT,
	titulo VARCHAR(50) NOT NULL,
	cod_diretor INT NOT NULL,
	PRIMARY KEY(cod_filme),
	FOREIGN KEY(cod_diretor) REFERENCES Diretor(cod_diretor)
);

-- ##  Tabela Premio
CREATE TABLE Premio(
	cod_premio INT,
	descricao_premio VARCHAR(50) NOT NULL,
	PRIMARY KEY(cod_premio)
);

-- ##  Tabela Participacao
CREATE TABLE Participacao(
	a_cod_ator INT,
	f_cod_filme INT,
	PRIMARY KEY(a_cod_ator, f_cod_filme),
	FOREIGN KEY(a_cod_ator) REFERENCES Ator(cod_ator),
	FOREIGN KEY(f_cod_filme) REFERENCES Filme(cod_filme)
);

-- ##  Tabela Premiacao
CREATE TABLE Premiacao(
	f_cod_filme INT,
	p_cod_premio INT,
	ano INT NOT NULL,
	PRIMARY KEY(f_cod_filme, p_cod_premio),
	FOREIGN KEY(f_cod_filme) REFERENCES Filme(cod_filme),
	FOREIGN KEY(p_cod_premio) REFERENCES premio(cod_premio)
);


 
