#Lista 01
#Exercício 01

1:
DROP DATABASE IF EXISTS ex01;
CREATE DATABASE ex01;

2:
	USE ex01;
	CREATE TABLE pessoas(
		nome VARCHAR(100),
		cpf VARCHAR(14),
		rg VARCHAR(12),
		data_de_nascimento Date,
		idade TINYINT
	);

3:
	INSERT INTO pessoas (nome, cpf, rg, data_de_nascimento, idade)
	VALUES
	('Erick Bryan Enrico Vieira', '699.734.958-70', '90.745.276-0', '1989-05-28', 29),
	('Samuel Ruan Dias', '802.790.194-40', '55.318.691-7', '1988-02-08', 30),
	('Fábio Benjamin Souza', '522.445.349-60', '54.715.232-2', '1970-03-22', 48),
	('Elias Miguel Aparicio', '293.928.821-65', '12.680.444-8', '1986-06-07', 32),
	('Alexandre Gustavo Cardoso', '617.408.878-24', '8.888.574-4', '2003-04-15', 15),
	('Kauê Lucca Duarte', '943.163.990-47', '46.977.509-9', '1989-05-28', 29),
	('Marcos Bryan Guilherme Mendes', '955.129.235-95', '84.050.077-4', '2015-02-06', 3),
	('Benedito Pedro Carlos da Mota', '510.505.472-50', '43.588.124-3', '1981-04-19', 37),
	('Luís Igor Barbosa', '370.570.311-06', '40.651.407-0', '2013-05-06', 5),
	('José Heitor Ramos', '675.624.925-81', '83.962.258-2', '1965-04-11', 53),
	('Lucca Tiago Galvão', '788.124.508-57', '3.293.335-6', '1977-06-17', 41),
	('Tiago Edson Oliveira', '389.969.352-39', '8.198.446-9', '1977-06-09', 41),
	('Enrico Julio Fábio Martins', '529.078.166-83', '99.886.242-3', '2017-03-11', 53),
	('Oliver Victor Benjamin da Mota', '798.556.805-02', '5.103.578-9', '1985-03-27', 33),
	('Bryan Caio Lopes', '213.217.201-30', '12.949.454-9', '1970-06-18', 48)

4:
SELECT * FROM pessoas;

#Lista 01
#Exercício 02

1:
	CREATE TABLE endereços(
		estado CHAR(2),
		cidade VARCHAR(140),
		bairro VARCHAR(120),
		cep CHAR(10),
		logradouro VARCHAR(250),
		numero SMALLINT,
		complemento TEXT
	);

2:
	INSERT INTO endereços(estado, cidade, bairro, cep, logradouro, numero, complemento)
	VALUES
	('AC', 'Rio Branco', 'Ayrton Senna', '69.911-866', 'Estrada Deputado José Rui da Silveira Lino', 282, 'Casa'),
	('SC', 'Biguaçu', 'Fundos', '88.161-400', '', 995, ''),
	('MG', 'Santa Luzia', 'Padre Miguel', '33.082-050', 'Rua Buenos Aires', 371, 'Apartamento'),
	('BA', '', 'São Tomé de Paripe', '40.800-361', 'Travessa Luís Hage', 685, ''),
	('MG', 'Ipatinga', 'Vila Celeste', '', 'Rua Antônio Boaventura Batista', 645, ''),
	('RS', 'Passo Fundo', 'Nenê Graeff', '99.030-250', '', 154, ''),
	('AM', 'Manaus', 'Petrópolis', '69.079-300', 'Rua Coronel Ferreira Sobrinho', 264, 'Fundos'),
	('TO', 'Gurupi', 'Muniz Santana', '77.402-130', 'Rua Adelmo Aires Negri', 794, ''),
	('AC', '', 'Preventório', '', 'Beco da Ligação II', 212, 'Bloco B'),
	('AP', 'Santana', 'Comercial', '68.925-073', 'Rua Calçoene', 648, ''),
	('PB', 'Cabedelo', 'Camalaú', '58.103-052', 'Rua Siqueira Campos', 249, '')

#Lista 01
#Exercício 03

1:
	CREATE TABLE champions(
		nome VARCHAR(100),
		descricao VARCHAR(1000),
		habilidade1 VARCHAR(100),
		habilidade2 VARCHAR(100),
		habilidade3 VARCHAR(100),
		habilidade4 VARCHAR(100),
		habilidade5 VARCHAR(100)
);

2:
	INSERT INTO champions(nome, descricao, habilidade1, habilidade2, habilidade3, habilidade4, habilidade5)
	VALUES
	('Katarina', 'a Lâmina Sinistra', 'Voracidade', 'Lâmina Saltitante', 'Preparação', 'Shunpo', 'Lótus da Morte'),
	('Yasuo', '', 'Estilo do Errante', 'Tempestade de Aço', 'Parede de Vento', 'Espada Ágil', 'Último Suspiro'),
	('Master Yi', 'o Espadachim Wuju', 'Ataque Duplo', '', '', '', ''),
	('Vayne', 'a Caçadora Noturna', 'Caçadora Noturna', 'Rolamento', 'Dardos de Prata', 'Condenar', 'Hora Final'),
	('Lee Sin', 'o Monge Cego', 'Agitação', 'Onda Sônica/Ataque Ressonante', 'Proteger/Vontade de Ferro', 'Tempestade/Mutilar', ''),
	('Vi', 'a Defensora de Piltover', 'Blindagem', '', 'Pancada Certeira', 'Força Excessiva', 'Saque e Enterrada'),
	('Diana', 'o Escárnio da Lua', 'Espada de Prata Lunar', 'Golpe Crescente', 'Cascata Lívida', 'Colapso Minguante', 'Zênite Lunar'),
	('Annie', 'a Criança Sombria', 'Piromania', 'Desintegrar', 'Incinerar', 'Escudo Fundido', 'Invocar: Tibbers'),
	('Aatrox', '', 'Poço de Sangue', 'Voo Sombrio', 'Sede de Sangue/Preço em Sangue', 'Lâminas da Aflição', 'Massacre')

#Lista 02
#Exercício 01

1:
	SELECT id, nome, codigo, categoria, altura, peso, hp, ataque, defesa, especial_ataque, especial_defesa, velocidade, descricao 
		FROM pokemons;

2:
	SELECT ataque, especial_ataque, defesa, especial_defesa FROM pokemons;

3:
	SELECT nome 'Nome', categoria 'Categoria', ataque 'Ataque' 
		FROM pokemons 
		ORDER BY nome ASC, categoria ASC, ataque ASC;

4:
	SELECT altura 'Altura', peso 'Peso', (peso / (altura * altura)) 'IMC' FROM pokemons;

5:
	SELECT altura 'Altura', peso 'Peso', (peso / (altura * altura)) 'IMC' FROM pokemons ORDER BY (peso / (altura * altura)) DESC;

6:
	SELECT nome 'Nome', LENGTH(nome) 'Tamanho do nome' 
		FROM pokemons 
		ORDER BY LENGTH(nome);

7:
	SELECT nome, descricao FROM pokemons WHERE LENGTH(nome) > 10;

8:
	SELECT nome 'Nome', categoria 'Categoria', ataque 'Ataque' FROM pokemons
		WHERE ataque = (SELECT MIN(ataque) FROM pokemons);

9:
	SELECT ataque, especial_ataque, nome, defesa, especial_defesa FROM pokemons ORDER BY ataque ASC;

10:
	SELECT AVG(ataque) 'Média dos ataques' FROM pokemons;

11:
	SELECT AVG(especial_ataque) 'Média dos ataques' FROM pokemons WHERE nome LIKE 'P%';

#Lista 02
#Exercício 02

1:
	SELECT estado 'Estado', cidade 'Cidade' FROM cidades;

2:
	SELECT cidade FROM cidades WHERE cidade LIKE 'A%';

3:
	SELECT cidade 'Cidade' FROM cidades WHERE cidade LIKE '%apar%';

4:
	SELECT cidade 'Cidade' FROM cidades WHERE cidade LIKE 'W%';

5:
	SELECT estado 'Estado', cidade 'Cidade' FROM cidades WHERE cidade LIKE '%tuba' ORDER BY estado DESC;

6:
	SELECT cidade 'Cidade' FROM cidades WHERE LENGTH(cidade) > 15 ORDER BY LENGTH(cidade) ASC;

7:
	SELECT COUNT(estado) 'Quantidade de cidades no estado de SC' FROM cidades WHERE estado = 'SC';

8:
	SELECT COUNT(estado) 'Quantidade de cidades no estado de SP' FROM cidades WHERE estado = 'SP';

9:
	SELECT cidade 'Cidade', LENGTH(cidade) 'Quantidade de caracteres' FROM cidades WHERE LENGTH(cidade) = 10;

#Lista 02
#Exercício 03

1:
	SELECT nome 'Nome', cpf 'CPF', nick 'Nick', signo 'Signo', numero_favorito 'Número favorito', cor_preferida 'Cor Preferida', nota_1 'Nota 1', nota_2 'Nota 2', nota_3 'Nota 3', nota_4 'Nota 4', data_nascimento 'Data de nascimento' 
	FROM alunos;

2:
	SELECT nome 'Nome' FROM alunos WHERE nota_1 > 9.0;

3:
	SELECT nome 'Nome', nota_1 'Nota 1', nota_2 'Nota 2', nota_3 'Nota 3', nota_4 'Nota 4', (nota_1 + nota_2 + nota_3 + nota_4) /4 'Média' FROM alunos;

4:
	SELECT COUNT(nome) 'Quantidade de alunos com o signo \'Peixes\'' FROM alunos WHERE signo = 'Peixes';

5:
	SELECT SUM(nota_1) 'Soma da nota 1' FROM alunos;

6:
	SELECT SUM(nota_2) 'Soma da nota 2' FROM alunos;

7:
	SELECT nome 'Nome', MIN(nota_1) 'Menor nota 1' FROM alunos;

8:
	SELECT nome 'Nome', nota_1 'Nota 1', nota_2 'Nota 2', nota_3 'Nota 3', nota_4 'Nota 4' 
		FROM alunos 
		WHERE nome = (SELECT MAX(nome) FROM alunos);

9:
	SELECT cor_preferida 'Cor', COUNT(cor_preferida) 'Quantidade de cores com a cor Gelo' 
		FROM alunos 
		WHERE cor_preferida 
		LIKE '%Gelo%';

10:
	SELECT COUNT(nome) 'Quantidade de nomes' FROM alunos WHERE nome LIKE 'Francisco%';

11:
	SELECT COUNT(nome) 'Quantidade de nomes' FROM alunos WHERE nome LIKE '%Luc%';

12:
	SELECT nome 'Nome', signo 'Signo', data_nascimento 'Data de nascimento' FROM alunos WHERE signo = 'Áries';

13:
	SELECT nome 'Nome do aluno com maior média', nota_1 'Nota 1 dele', nota_2 'Nota 2 dele', nota_3 'Nota 3 dele', nota_4 'Nota 4 dele'		FROM alunos
		 WHERE ((nota_1 + nota_2 + nota_3 + nota_4) / 4) = (
		 (SELECT MAX(((nota_1 + nota_2 + nota_3 + nota_4) / 4)) FROM alunos));

14:
	SELECT nome 'Nome', (nota_1 + nota_2 + nota_3 + nota_4) / 4 'Média', 
		IF ((nota_1 + nota_2 + nota_3 + nota_4) / 4 < 5, 'Reprovado', 
		IF((nota_1 + nota_2 + nota_3 + nota_4) / 4 < 7, 'Em exame', 'Aprovado')) 
		AS Estado FROM alunos;

15:
	SELECT nome 'Nome do aluno com maior média', nota_1 'Nota 1 dele', nota_2 'Nota 2 dele', nota_3 'Nota 3 dele', nota_4 'Nota 4 dele'		FROM alunos
		WHERE ((nota_1 + nota_2 + nota_3 + nota_4) / 4) = (
		 (SELECT MIN(((nota_1 + nota_2 + nota_3 + nota_4) / 4)) FROM alunos));

16:
	SELECT COUNT(nome) 'Quantidade de alunos' FROM alunos WHERE (nota_1 + nota_2 + nota_3 + nota_4) / 4 > 7;

17:
	SELECT nome 'Nome', nick 'Nick' FROM alunos WHERE LENGTH(nick) = 5;

18:
	SELECT nome 'Nome do aluno', cor_preferida 'Cor preferida' 
		FROM alunos 
		WHERE cor_preferida = 'Ouro' OR cor_preferida = 'Amarelo-torrado';

19:
	SELECT nome 'Nome', EXTRACT(YEAR FROM data_nascimento) 'Ano de nascimento' FROM alunos; 

20:
	SELECT nome 'Nome', EXTRACT(MONTH FROM data_nascimento) 'Mês de nascimento' 
		FROM alunos 
		WHERE EXTRACT(MONTH FROM data_nascimento) > 6;

21:
	SELECT COUNT(nome) 'Quantidade de pessoas que nasceram em 1996' FROM alunos WHERE EXTRACT(YEAR FROM data_nascimento) = 1996;

22:
	SELECT COUNT(nome) 'Quantidade de pessoas que nasceram em 02/02/1964'
		FROM alunos 
		WHERE EXTRACT(DAY FROM data_nascimento) = 02 
			AND EXTRACT(MONTH FROM data_nascimento) = 02
			AND EXTRACT(YEAR FROM data_nascimento) = 1964;

23:
	SELECT nick 'Nick', nota_4 'Nota 4' FROM alunos WHERE nota_2 >= 5.0 AND nota_2 <= 5.99;

24:
	SELECT (nota_1 + nota_2 + nota_3 + nota_4) / 4 'Média da aluna Josefina' FROM alunos WHERE nome LIKE '%Josefina%';

25:
	SELECT nome 'Nick', nota_1 'Nota 1', nota_2 'Nota 2', nota_3 'Nota 3', nota_4 'Nota 4' 
		FROM alunos 
		WHERE nome LIKE '%Justino%' AND signo LIKE 'A%';

26:
	SELECT (SUM(nota_1) + SUM(nota_2) + SUM(nota_3) + SUM(nota_4)) / COUNT(nome) 'Média das médias' 
		FROM alunos;

#Lista 03
#Exercício 01

1:
	UPDATE pokemons 
		SET 
			categoria = 'Seed' 
		WHERE codigo > 50 AND codigo < 100;

2:
	UPDATE pokemons 
		SET 
			ataque = '29' 
		WHERE nome LIKE '%inj%';

3:
	UPDATE pokemons 
		SET 
			velocidade = 2 
		WHERE velocidade = 5;

4:
	UPDATE pokemons 
		SET 
			categoria = 'Manipulate' 
		WHERE codigo = 100;

5:
	UPDATE pokemons 
		SET 
			nome = REPLACE(nome, 'R', 'C') 
		WHERE nome LIKE 'R%';

6:
	UPDATE pokemons
		SET
			altura = 0.51,
			peso = 0.70
		WHERE altura = 0.5;

7:
	UPDATE pokemons
		SET
			codigo = 1,
			defesa = 1,
			ataque = 1,
			especial_ataque = 3,
			especial_defesa = 4
		WHERE especial_defesa = 3 AND especial_ataque = 4;

8:
	UPDATE pokemons
		SET
			nome = SUBSTRING(0, 11)
		WHERE LENGTH(nome) > 10;

9:
	UPDATE pokemons
		SET
			categoria = 'water'
		WHERE descricao LIKE '%flames%';

10:
	UPDATE pokemons
		SET
			codigo = 151
		WHERE codigo = 155;

11:
	UPDATE pokemons
		SET
			nome = 'Naruto',
			ataque = 1
		WHERE nome = 'Kabuto';

12:
	UPDATE pokemons
		SET
			nome = 'Sasuke',
			especial_ataque = 8002,
			ataque = 8001
		WHERE nome = 'Mewtwo' OR nome = 'Mew';

13:
	UPDATE pokemons
		SET
			descricao = 'Lorem ipsum',
			nome = 'Tyranitar',
			categoria = 'Wood Gecko'
		WHERE MOD(codigo, 2) = 0;

#Lista 03
#Exercício 02

1:
	UPDATE cidades
		SET
			estado = 'SS'
		WHERE estado = 'sc';

2:
	UPDATE cidades
		SET
			cidade = 'Brumenau',
			estado = 'SC'
		WHERE cidade = 'Blumenau';

3:
	UPDATE cidades
		SET
			cidade = 'Batata'
		WHERE cidade LIKE 'Bata%';

4:
	UPDATE cidades
		SET
			cidade = REPLACE(cidade, 'Belo', 'Lindo')
		WHERE cidade LIKE '%Belo%';

5:
	UPDATE cidades
		SET
			estado = 'SC'
		WHERE cidade LIKE 'Indaia%';

6:
	UPDATE cidades
		SET
			estado = 'SC'
		WHERE cidade LIKE '%Timbó%';

7:
	UPDATE cidades
		SET
			cidade = REPLACE(cidade, 'José', 'josué')
		WHERE cidade LIKE '%José%';

8:
	UPDATE cidades
		SET
			estado = 'PS'
		WHERE estado LIKE '%SP%';

9:
	UPDATE cidades
		SET
			cidade = 'qualquer texto'
		WHERE LENGTH(cidade) = 10;

10:
	UPDATE cidades
		SET
			cidade = 'It'
		WHERE cidade LIKE 'It%';

11:
	UPDATE cidades
		SET
			estado = 'TO'
		WHERE cidade LIKE '%ã';

#Lista 03
#Exercício 03

1:
	UPDATE alunos
		SET
			nota_1 = 9.9
		WHERE EXTRACT(YEAR FROM data_nascimento) = 1996;

2:
	UPDATE alunos
		SET
			nota_2 = 1.3
		WHERE nome LIKE 'Urbano%';

3:
	UPDATE alunos
		SET
			numero_favorito = (SELECT FLOOR(RAND()*10))
		WHERE MOD(numero_favorito, 2) <> 0;

4:
	UPDATE alunos
		SET
			signo = 'Áries',
			numero_favorito = 100,
			cor_preferida = 'Preto',
			nome = 'Marcela'
		WHERE signo = 'Peixes';

5:
	UPDATE alunos
		SET
			cor_preferida = 'azul',
			nota_2 = 9.3
		WHERE cor_preferida = 'cáqui';
6:
	UPDATE alunos
		SET
			cpf = '101.947.311-89'
		WHERE cpf = '10194731189';

7:
	UPDATE alunos
		SET
			cor_preferida = 'amarelo queimado'
		WHERE nome = '%Goes';

8:
	UPDATE alunos
		SET
			nota_1 = 1,
			nota_2 = 1,
			nota_3 = 1,
			nota_4 = 1
		WHERE (nota_1 + nota_2 + nota_3 + nota_4) /4 < 4;

9:
	UPDATE alunos
		SET
			nick = 'Ninjutsu'
		WHERE nick = 'Fueusn';

10:
	UPDATE alunos
		SET
			nick = 'Dobermann',
			cor_preferida = 'rosa'
		WHERE nick = 'Saxiol';

11:
	UPDATE alunos
		SET
			data_nascimento = EXTRACT(DAY FROM data_nascimento) = 30
		WHERE EXTRACT(DAY FROM data_nascimento) = 31;

12:
	UPDATE alunos
		SET
			cor_preferida = 'roxo',
			nick = 'Roxolandia'
		WHERE cor_preferida = 'roxo' OR cor_preferida = 'coral';

13:
	UPDATE alunos
		SET
			data_nascimento = EXTRACT(MONTH FROM data_nascimento) = 05,
			data_nascimento = EXTRACT(YEAR FROM data_nascimento) = 2018
		WHERE EXTRACT(MONTH FROM data_nascimento) = 06;

#Lista 04
#Exercício 01

1:
	DELETE FROM pokemons WHERE categoria = 'Seed';

2:
	DELETE FROM pokemons WHERE nome LIKE 'Nid%';

3:
	DELETE FROM pokemons WHERE categoria LIKE 'Snow%';

4:
	DELETE FROM pokemons WHERE ataque = 2 OR defesa = 1;

5:
	DELETE FROM pokemons WHERE especial_ataque = MOD(especial_ataque, 2) = 0;

6:
	DELETE FROM pokemons WHERE LENGTH(nome) >= 10;

7:
	DELETE FROM pokemons WHERE LENGTH(categoria) < 4;

8:
	DELETE FROM pokemons WHERE MOD(velocidade, 2) <> 0;

9:
	DELETE FROM pokemons WHERE nome LIKE 'Uno%' OR nome LIKE 'Charm%';

10:
	DELETE FROM pokemons WHERE categoria LIKE '%Flower%' AND codigo > 45 AND codigo < 200;

11:
	DELETE FROM pokemons WHERE descricao LIKE '%shell%';

12:
	DELETE FROM pokemons WHERE peso >= 100;

13:
	DELETE FROM pokemons WHERE altura < 1;

14:
	DELETE FROM pokemons WHERE especial_defesa > 3;

15:
	DELETE FROM pokemons WHERE LENGTH(descricao) > 150;

16:
	DELETE FROM pokemons WHERE descricao LIKE '%good%';

17:
	DELETE FROM pokemons WHERE MOD(codigo, 2) = 0;

18:
	DELETE FROM pokemons WHERE nome = 'Lileep';

19:
	DELETE FROM pokemons WHERE especial_ataque = 5;

20:
	DELETE FROM pokemons WHERE codigo < 100;

#Lista 04
#Exercício 02

1:
	DELETE FROM cidades WHERE estado = 'RS';

2:
	DELETE FROM cidades WHERE estado = 'AC' AND cidade LIKE 'R%';

3:
	DELETE FROM cidades WHERE cidade LIKE '%goas';

4:
	DELETE FROM cidades WHERE cidade LIKE '%irmãos%';

5:
	DELETE FROM cidades WHERE estado = 'MG';

6:
	DELETE FROM cidades WHERE cidade = 'Douradina';

#Lista 04
#Exercício 03

1:
	DELETE FROM alunos WHERE nome LIKE '%Francisco%';

2:
	DELETE FROM alunos WHERE EXTRACT(YEAR FROM data_nascimento) = 1994;

3:
	DELETE FROM alunos WHERE signo = 'Gêmeos';

4:
	DELETE FROM alunos WHERE nome LIKE '%Reinaldo%';

5:
	DELETE FROM alunos WHERE nome LIKE '%Carvalho';

6:
	DELETE FROM alunos WHERE EXTRACT(MONTH FROM data_nascimento) = 07;

7:
	DELETE FROM alunos WHERE nota_1 > nota_2 AND nota_4 < nota_3;

8:
	DELETE FROM alunos WHERE cpf LIKE '145.%';

9:
	DELETE FROM alunos WHERE cor_preferida = 'Bordo' AND signo = 'Capricórnio' OR cor_preferida = 'Cinza-claro' AND signo = 'Aquários';

10:
	DELETE FROM alunos WHERE ((nota_1 + nota_2 + nota_3 + nota_4) / 4) < 4;

11:
	DELETE FROM alunos WHERE EXTRACT(DAY FROM data_nascimento) = 28;

#Lista 05
#Exercício 01

1:
	DROP DATABASE IF EXISTS ex01;
	CREATE DATABASE IF NOT EXISTS ex01;
	USE ex01;

	DROP TABLE IF EXISTS alunos;
	CREATE TABLE alunos (
		id INT AUTO_INCREMENT PRIMARY KEY,
		nome VARCHAR(200),
		idade INT
	);

	DROP TABLE IF EXISTS caracteristicas;
	CREATE TABLE caracteristicas (
		id INT AUTO_INCREMENT PRIMARY KEY,
		id_aluno INT,
		caracteristica VARCHAR(150) NOT NULL,
		FOREIGN KEY(id_aluno) REFERENCES alunos(id)
	);

	INSERT INTO alunos (nome, idade) 
	VALUES
		('Alice', 18),
		('Sophia', 40),
		('Miguel', 9),
		('Heitor', 23),
		('Valentina', 15),
		('Joaquim', 49)
	;

	INSERT INTO caracteristicas (id_aluno, caracteristica)
	VALUES
		((SELECT id FROM alunos WHERE nome = 'Heitor'), 'Egoísta'),
		((SELECT id FROM alunos WHERE nome = 'Alice'), 'Organizado(a)'),
		((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Pontual'),
		((SELECT id FROM alunos WHERE nome = 'Miguel'), 'Criativo(a)'),
		((SELECT id FROM alunos WHERE nome = 'Heitor'), 'Proativo(a)'),
		((SELECT id FROM alunos WHERE nome = 'Alice'), 'Altruísta'),
		((SELECT id FROM alunos WHERE nome = 'Valentina'), 'Pessimista'),
		((SELECT id FROM alunos WHERE nome = 'Joaquim'), 'Flexível modelo'),
		((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Observadora'),
		((SELECT id FROM alunos WHERE nome = 'Joaquim'), 'Paciente'),
		((SELECT id FROM alunos WHERE nome = 'Heitor'), 'Indelicado(a)'),
		((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Desobediente'),
		((SELECT id FROM alunos WHERE nome = 'Miguel'), 'Intolerante'),
		((SELECT id FROM alunos WHERE nome = 'Joaquim'), 'Empático(a)'),
		((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Egoísta'),
		((SELECT id FROM alunos WHERE nome = 'Heitor'), 'Egoísta'),
		((SELECT id FROM alunos WHERE nome = 'Joaquim'), 'Altruísta'),
		((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Sensível')
	;
	/*
	SELECT alunos.nome 'Nome do aluno', caracteristicas.caracteristica 'Característica'
	FROM alunos 
		JOIN caracteristicas 
			ON(alunos.id = caracteristicas.id_aluno);
	*/

	/*
	SELECT COUNT(alunos.nome) 'Quantidade de alunos' FROM alunos 
		JOIN caracteristicas 
			ON(alunos.id = caracteristicas.id_aluno AND caracteristicas.caracteristica = 'Altruísta');
	*/

	/*
	SELECT caracteristicas.caracteristica 'Característica', COUNT(id_aluno) 'Quantidade de alunos'
	FROM alunos
		JOIN caracteristicas
			ON(alunos.id = caracteristicas.id_aluno) 
		GROUP BY caracteristicas.caracteristica
		ORDER BY caracteristicas.caracteristica;
	*/

	/*
	SELECT caracteristicas.caracteristica 'Característica'
	FROM alunos
		JOIN caracteristicas
			ON(alunos.id = caracteristicas.id_aluno AND alunos.nome = 'Sophia');
	*/

2:
DROP DATABASE IF EXISTS ex02;
CREATE DATABASE IF NOT EXISTS ex02;
USE ex02;

DROP TABLE IF EXISTS pessoas;
CREATE TABLE pessoas(
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(200),
	cpf VARCHAR(11)
);

INSERT INTO pessoas (nome, cpf)
VALUES
	('Abraão Nobre', '95232829483'),
	('Severino Braga', '87677033300'),
	('Samuel Faria', '98927203429'),
	('Florêncio Robalo', '36263517425')
;

DROP TABLE IF EXISTS carros;
CREATE TABLE carros(
	id INT AUTO_INCREMENT PRIMARY KEY,
	id_pessoa INT,
	marca VARCHAR(150) NOT NULL,
	modelo VARCHAR(150) NOT NULL,
	ano_lancamento INT NOT NULL,
	ano_fabricacao INT NOT NULL,
	motor VARCHAR(150),
	cor VARCHAR(100),
	preco DOUBLE
);

INSERT INTO carros (id_pessoa, marca, modelo, ano_lancamento, ano_fabricacao, motor, cor, preco)
VALUES
	((SELECT id FROM pessoas WHERE nome = 'Abraão Nobre'), 'Volkswagen', 'Gol', '2010', '2009', 'Bv Power Flex', 'Vermelho', 18000),
	((SELECT id FROM pessoas WHERE nome = 'Severino Braga'), 'Fiat', 'Brava', '2000', '1999', 'SX 1.6 16V', 'Cinza', 9000),
	((SELECT id FROM pessoas WHERE nome = 'Samuel Faria'), 'Renault', 'Clio', '1997', '1996', '1.0 8v', 'Verde', 5500),
	((SELECT id FROM pessoas WHERE nome = 'Florêncio Robalo'), 'Volkswagen', 'Golf', '1994', '1994', '2.0 120cv', 'Azul', 17000)
;

SELECT pessoas.nome 'Dono', carros.marca 'Marca', carros.modelo 'Modelo' FROM pessoas
	JOIN carros
		ON(pessoas.id = carros.id);
        
SELECT carros.marca 'Marca', carros.modelo 'Modelo' FROM carros
	JOIN pessoas
		ON(carros.id = pessoas.id AND (SELECT id FROM pessoas WHERE pessoas.nome = 'Samuel Faria') = carros.id);

3:
DROP DATABASE IF EXISTS ex02;
CREATE DATABASE IF NOT EXISTS ex02;
USE ex02;

DROP TABLE IF EXISTS Clientes;
CREATE TABLE Clientes(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome TEXT NOT NULL,
    sexo CHAR(1) NOT NULL
);

DROP TABLE IF EXISTS Celulares;
CREATE TABLE Celulares(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	id_cliente INT NOT NULL,
    valor TEXT NOT NULL,
    ativo boolean DEFAULT TRUE,
    FOREIGN KEY(id_cliente) REFERENCES Clientes(id)
);

DROP TABLE IF EXISTS Emails;
CREATE TABLE Emails(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    valor TEXT NOT NULL,
    ativo boolean,
    FOREIGN KEY(id_cliente) REFERENCES Clientes(id)
);

DROP TABLE IF EXISTS Contas_a_Pagar;
CREATE TABLE Contas_a_Pagar(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    valor double UNSIGNED NOT NULL,
    data_vencimento DATE NOT NULL,
    valor_pago double DEFAULT 0,
    stats TEXT,
    ativo boolean,
    FOREIGN KEY(id_cliente) REFERENCES Clientes(id)
);

DROP TABLE IF EXISTS Contas_a_Receber;
CREATE TABLE Contas_a_Receber(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    valor_a_receber DOUBLE,
    data_para_pagamento DATE,
    valor_recebido DOUBLE DEFAULT 0,
    data_recebimento DATE,
    stats TEXT,
    ativo boolean,
    FOREIGN KEY(id_cliente) REFERENCES Clientes(id)
);

INSERT INTO Clientes (nome, sexo)
VALUES
	('Germana', 'F'),
	('Salvador', 'M	'),
	('Úrsula', 'F'),
	('Aluísio', 'M')
;

INSERT INTO Celulares (id_cliente, valor)
VALUES
	(1, '(79) 99973-5114'),
    (2, '(27) 98390-6475'),
    (1, '(27) 98390-6475'),
    (4, '(14) 98387-5333'),
    (3, '(92) 98983-2809'),
    (4, '(55) 98616-2303')
;

INSERT INTO Emails (id_cliente, valor)
VALUES
	(2, 'bernardodiegoalves-77@vianetfone.com.br'),
    (1, 'a68341ef3b@emailna.life'),
    (3, 'zpgkmkem@boximail.com'),
    (1, 'ger@bol.com'),
    (2, 'gabrieldiegofernandodarocha_@uoul.com'),
    (3, 'iancauearaujo_@10clic.com.br'),
    (1, 'germana@gmail.com'),
    (2, 'salvador@hotmail.com')
;

INSERT INTO Contas_a_Pagar (id_cliente, data_vencimento, valor)
VALUES
	(1, '2018-06-15', 500.00),
	(2, '2018-06-29', 320.50),
	(3, '2018-06-07', 450.00),
	(4, '2018-08-27', 1300.00),
	(4, '2018-10-10', 777.00),
	(2, '2018-10-14', 8001.00),
	(3, '2018-11-25', 232.12),
	(3, '2018-09-13', 104.23),
	(1, '2018-07-17', 65.00),
	(4, '2018-10-06', 98.83),
	(2, '2018-12-12', 12.17),
	(2, '2018-12-23', 6.25)
;

INSERT INTO Contas_a_Receber (id_cliente, data_para_pagamento, valor_a_receber)
VALUES
	(3, '2018-12-08', 78.97),
	(2, '2018-11-24', 700.00),
	(1, '2018-10-09', 45.87),
	(1, '2019-01-04', 39.50),
	(4, '2018-11-30', 123.45),
	(3, '2018-09-07', 987.65),
	(2, '2018-07-06', 456.00)
;

--Emails
SELECT Clientes.nome 'Nome do cliente', Emails.valor 'Email' FROM Clientes
	JOIN Emails
		ON(Clientes.id = Emails.id);
        
SELECT Clientes.nome 'Nome do cliente', Emails.valor 'Email' FROM Clientes
	JOIN Emails
		ON(Clientes.id = Emails.id)
			ORDER BY Clientes.nome ASC, Emails.valor ASC;
            
SELECT Clientes.nome 'Nome do cliente', Emails.valor 'Email' FROM Clientes
	JOIN Emails
		ON(Clientes.id = Emails.id)
			ORDER BY LENGTH(Emails.valor) DESC;

--Celulares
SELECT Clientes.nome 'Nome do cliente', Celulares.valor 'Celular' FROM Clientes
	JOIN Celulares
		ON(Clientes.id = Celulares.id);

SELECT Clientes.nome 'Nome do cliente', Celulares.valor 'Celular' FROM Clientes
	JOIN Celulares
		ON(Clientes.id = Celulares.id)
			WHERE Celulares.ativo = true;

--Contas a Pagar
UPDATE Contas_a_Pagar
	SET
		Contas_a_Pagar.valor_pago = 100.00,
        Contas_a_Pagar.data_vencimento = (SELECT NOW()),
        Contas_a_Pagar.stats = 'pago'
	WHERE Contas_a_Pagar.id_cliente = 2;
    
UPDATE Contas_a_Pagar
	SET
		Contas_a_Pagar.valor_pago = 700.00,
        Contas_a_Pagar.data_vencimento = DATE_SUB((SELECT NOW()), INTERVAL 1 DAY),
        Contas_a_Pagar.stats = 'pago'
	WHERE Contas_a_Pagar.id_cliente = 2 AND valor = 700.00;

SELECT Clientes.nome 'Nome do cliente', 
	Contas_a_Pagar.valor 'Valor da conta à pagar', 
	Contas_a_Pagar.data_vencimento 'Data de vencimento', 
	Contas_a_Pagar.valor_pago 'Valor pago' 
		FROM Clientes
			JOIN Contas_a_Pagar
				ON(Clientes.id = Contas_a_Pagar.id);

SELECT Clientes.nome 'Nome do cliente', 
	Contas_a_Pagar.valor 'Valor da conta à pagar', 
	EXTRACT(MONTH FROM Contas_a_Pagar.data_vencimento) 'Mês de vencimento' 
		FROM Clientes
			JOIN Contas_a_Pagar
				ON(Clientes.id = Contas_a_Pagar.id);

SELECT 
	Clientes.nome 'Nome do cliente', 
	SUM((SELECT Contas_a_Pagar.valor 
		FROM Contas_a_Pagar 
		WHERE Contas_a_Pagar.id = Clientes.id)) 'Total à pagar' 
			FROM Clientes
				JOIN Contas_a_Pagar
					ON(Clientes.id = Contas_a_Pagar.id)
	GROUP BY Clientes.nome 
    ORDER BY Clientes.nome;

--Contas a Receber
UPDATE Contas_a_Receber
	JOIN Clientes
		ON(Clientes.id = Contas_a_Receber.id_cliente)
	SET Contas_a_Receber.valor_recebido = 1000
    WHERE Clientes.sexo = 'F';

UPDATE Contas_a_Receber
	JOIN Clientes
		ON(Clientes.id = Contas_a_Receber.id_cliente)
	SET Contas_a_Receber.data_recebimento = (SELECT CURDATE() +1)
	WHERE Clientes.nome LIKE 'A%' OR Clientes.nome LIKE 'S%';

SELECT Clientes.nome 'Nome do cliente', 
	SUM((SELECT Contas_a_Receber.valor_a_receber 
		FROM Contas_a_Receber 
        WHERE Contas_a_Receber.id = Clientes.id)) 'Total das contas à receber'
			FROM Clientes 
				JOIN Contas_a_Receber
					ON(Clientes.id = Contas_a_Receber.id_cliente)
	GROUP BY Clientes.nome;

SELECT Clientes.nome 'Nome do cliente', 
	COUNT((SELECT Contas_a_Receber.valor_a_receber 
		FROM Contas_a_Receber 
        WHERE Contas_a_Receber.id = Clientes.id)) 'Quantidade de contas à receber'
			FROM Clientes 
				JOIN Contas_a_Receber
					ON(Clientes.id = Contas_a_Receber.id_cliente)
	GROUP BY Clientes.nome;