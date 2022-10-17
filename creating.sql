CREATE DATABASE avaliacao_banco_de_dados;

CREATE TABLE professores(
	Codigo_Professor INT PRIMARY KEY AUTO_INCREMENT,
    Nome_Professor VARCHAR(20)
    
);

CREATE TABLE alunos(
	Codigo_Aluno INT PRIMARY KEY AUTO_INCREMENT,
    Nome_Aluno VARCHAR(30)
);

CREATE TABLE materias(
	Codigo_Materia INT PRIMARY KEY AUTO_INCREMENT,
    Codigo_Professor INT,
    Nome_Materia VARCHAR(20),
    FOREIGN KEY(Codigo_Professor) REFERENCES professores(Codigo_Professor) 
    
);




CREATE TABLE turmas(
	Codigo_Turma INT PRIMARY KEY AUTO_INCREMENT,
    Nome_Turma VARCHAR(2),
    Turno_Turma VARCHAR(10)
);

CREATE TABLE alunos_turmas(
	Codigo_Aluno INT,
    Codigo_Materia INT,
    Codigo_Turma INT,
    FOREIGN KEY(Codigo_Aluno) REFERENCES alunos(Codigo_Aluno),
    FOREIGN KEY(Codigo_Materia) REFERENCES materias(Codigo_Materia),
    FOREIGN KEY(Codigo_Turma) REFERENCES turmas(Codigo_Turma)
    
);

CREATE TABLE salas(
	Codigo_Sala INT PRIMARY KEY AUTO_INCREMENT,
    Nome_Sala VARCHAR(50)
);

CREATE TABLE aulas(
	Codigo_Aula INT PRIMARY KEY AUTO_INCREMENT,
    Codigo_Turma INT,
    Codigo_Materia INT,
    Codigo_Sala INT,
    Horario_Inicio TIME,
    Horario_Termino TIME,
    FOREIGN KEY(Codigo_Materia) REFERENCES materias(Codigo_Materia),
    FOREIGN KEY(Codigo_Turma) REFERENCES turmas(Codigo_Turma),
    FOREIGN KEY(Codigo_Sala) REFERENCES salas(Codigo_Sala)
   
    
);

CREATE TABLE funcionarios (
	Codigo_Funcionario INT PRIMARY KEY AUTO_INCREMENT,
    Nome_Funcionario VARCHAR(20),
    Cargo_Funcionario VARCHAR(30),
    Salario_Funcionario DOUBLE
);

CREATE TABLE escola (
	Numero_Funcionarios INT
);








