/* Criar tabela de cursos */
CREATE TABLE cursos(
	id_curso INT,
    nome_curso VARCHAR(50),
    valor_curso DECIMAL(10, 2)
);

SELECT * FROM cursos;

/* Criar tabela de alunos */
CREATE TABLE alunos(
	id_aluno INT,
    nome_aluno VARCHAR(50),
    email VARCHAR(50)
);

SELECT * FROM alunos;

/* Criar tabela de vendas */
CREATE TABLE vendas(
	id_venda INT,
    data_venda DATE,
    id_curso INT,
    id_aluno INT
);

SELECT * FROM vendas;

/*Adicionando valores na tabela*/
INSERT INTO cursos(id_curso, nome_curso, valor_curso)
VALUES
	(1, 'Inglês', 1200),
    (2, 'Espanhol', 1000),
    (3, 'Francês', 900);
    
SELECT * FROM cursos;

/*Adicionando valores na tabela*/
INSERT INTO alunos(id_aluno, nome_aluno, email)
VALUES
	(1, 'Laura', 'laurinha@gmail.com'),
    (2, 'João', 'joao@hotmail.com'),
    (3, 'Jose', 'ze@gmail.com');
    
SELECT * FROM alunos;

/*Adicionar valores na tabela de vendas*/

INSERT INTO vendas
VALUES
	(1, '2022-01-10', 1, 1),
    (2, '2022-01-10', 2, 1),
    (3, '2022-01-10', 3, 1),
    (4, '2022-01-13', 1, 2),
    (5, '2022-01-21', 2, 3);

SELECT * FROM vendas;

/*Atualizando valores na tabela*/
SELECT * FROM cursos;

UPDATE cursos
SET valor_curso = 750
WHERE id_curso = 3;

/*Excluir valores da tabela*/
SELECT * FROM vendas;

DELETE FROM vendas
WHERE id_venda = 5;

/*Excluir tabela de vendas e em seguida o banco de dados*/
DROP TABLE vendas;

DROP DATABASE curso_idiomas;