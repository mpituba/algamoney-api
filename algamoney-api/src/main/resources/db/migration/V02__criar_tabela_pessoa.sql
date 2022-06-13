CREATE TABLE pessoa (
	codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	logradouro VARCHAR(50),
	numero VARCHAR(30),
	complemento VARCHAR(50),
	bairro VARCHAR(30),
	cep VARCHAR(30),
	cidade VARCHAR(30),
	estado VARCHAR(30),
	ativo BOOLEAN NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo)
VALUES ('Pedro Nunes',
	'Rua Roberto Harley',
	'21',
	'',
	'Vila Sarapuí',
	'25050030',
	'Duque de Caxias',
	'Rio de Janeiro',
	1
	);

INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo)
VALUES ('Adalberto Guiar',
	'Rua Célio Augusto Guedes',
	'31',
	'Apto. 610',
	'Campo Grande',
	'23040000',
	'Rio de Janeiro',
	'Rio de Janeiro',
	1
	);

INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo)
VALUES ('Maria Almeida',
	'Rua Vereador Olinto Rosa Pimentel',
	'771',
	'Apto. 610',
	'São Cristóvão',
	'23040000',
	'Guarapuava',
	'Paraná',
	1
	);


INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo)
VALUES ('Maria Rosalina',
	'Rua Vereador Olinto Rosa Pimentel',
	'12',
	'Casa 10',
	'São Cristóvão',
	'23040000',
	'Guarapuava',
	'Paraná',
	1
	);


INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo)
VALUES ('Ronaldo Rabelo',
	'Rua Professora Celina Padilha',
	'120',
	'Fundos',
	'Campo Grande',
	'23040100',
	'Rio de Janeiro',
	'Rio de Janeiro',
	1
	);


INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo)
VALUES ('Roseli Ribas',
	'Rua Professora Celina Padilha',
	'90',
	'Apto. 100',
	'Campo Grande',
	'23040100',
	'Rio de Janeiro',
	'Rio de Janeiro',
	1
	);	
	
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo)
VALUES ('Neli Rodrigues',
	'Avenida Conselheiro Nébias',
	'200',
	'',
	'Paquetá',
	'11015000',
	'Santos',
	'São Paulo',
	1
	);	
	
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo)
VALUES ('Amaral Filho',
	'Rua Antenor da Rocha Leite',
	'50',
	'',
	'Vila Mathias',
	'11015040',
	'Santos',
	'São Paulo',
	1
	);	
	
INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo)
VALUES ('Rubens Recúpero Filho',
	'Rua Doutor Batista Pereira',
	'36',
	'lado par',
	'Macuco',
	'11015100',
	'Santos',
	'São Paulo',
	1
	);	

INSERT INTO pessoa (nome, logradouro, numero, complemento, bairro, cep, cidade, estado, ativo)
VALUES ('Lia Ribeiro Santos',
	'Rua Doutor Batista Pereira',
	'78',
	'lado par',
	'Macuco',
	'11015100',
	'Santos',
	'São Paulo',
	1
	);	