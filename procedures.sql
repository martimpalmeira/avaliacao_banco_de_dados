#PROCEDURES INSERT
DELIMITER $$
 CREATE PROCEDURE pInserirAluno(IN novoAluno VARCHAR(30))
 BEGIN
  INSERT INTO alunos(Nome_Aluno)
  VALUES(novoAluno);
 END $$
DELIMITER ;

DELIMITER $$
 CREATE PROCEDURE pInserirTurma(IN novaTurmaNome VARCHAR(2), IN novaTurmaTurno VARCHAR(10))
 BEGIN
  INSERT INTO turmas(Nome_Turma, Turno_Turma)
  VALUES(novaTurmaNome, novaTurmaTurno);
 END $$
DELIMITER ;

DELIMITER $$
 CREATE PROCEDURE pInserirFuncionario(IN novoFuncionarioNome VARCHAR(20), IN novoFuncionarioCargo VARCHAR(30),
 IN novoFuncionarioSalario DOUBLE)
 BEGIN
  INSERT INTO funcionarios(Nome_Funcionario, Cargo_Funcionario, Salario_Funcionario)
  VALUES(novoFuncionarioNome, novoFuncionarioCargo, novoFuncionarioSalario);
 END $$
DELIMITER ;



#PROCEDURES UPDATE
DELIMITER $$
 CREATE PROCEDURE pAlterarAluno(IN codigoInformado INT, IN novoNome VARCHAR(30))
 BEGIN
  UPDATE alunos SET Nome_Aluno = novoNome WHERE Codigo_Aluno = codigoInformado;
 END $$
DELIMITER ;

DELIMITER $$
 CREATE PROCEDURE pAlterarTurma(IN codigoInformado INT, IN novoNome VARCHAR(2), IN novoTurno VARCHAR(10))
 BEGIN
  UPDATE turmas SET Nome_Turma = novoNome, Turno_Turma = novoTurno WHERE Codigo_Turma = codigoInformado;
 END $$
DELIMITER ;

DELIMITER $$
 CREATE PROCEDURE pAlterarFuncionario(IN codigoInformado INT, IN novoNome VARCHAR(20), IN novoCargo VARCHAR(30),
 IN novoSalario DOUBLE)
 BEGIN
  UPDATE funcionarios SET Nome_Funcionario = novoNome, Cargo_Funcionario = novoCargo, Salario_Funcionario = novoSalario
  WHERE Codigo_Funcionario = codigoInformado;
 END $$
DELIMITER ;



#PROCEDURES DELETE
DELIMITER $$
 CREATE PROCEDURE pRemoverAluno(IN codigoInformado INT)
 BEGIN
  DELETE FROM alunos_turmas WHERE Codigo_Aluno = codigoInformado;
  DELETE FROM alunos WHERE Codigo_Aluno = codigoInformado;
 END $$
DELIMITER ;

DELIMITER $$
 CREATE PROCEDURE pRemoverTurma(IN codigoInformado INT)
 BEGIN
  DELETE FROM alunos_turmas WHERE Codigo_Turma = codigoInformado;
  DELETE FROM aulas WHERE Codigo_Turma = codigoInformado;
  DELETE FROM turmas WHERE Codigo_Turma = codigoInformado;
 END $$
DELIMITER ;

DELIMITER $$
 CREATE PROCEDURE pRemoverFuncionario(IN codigoInformado INT)
 BEGIN
  DELETE FROM funcionarios WHERE Codigo_Funcionario = codigoInformado;
 END $$
DELIMITER ;




#TESTANDO PROCEDURES

#SELECTS
SELECT * FROM alunos;
SELECT * FROM turmas;
SELECT * FROM funcionarios;

#TEST PROCEDURES INSERT
CALL pInserirAluno('Martim');
CALL pInserirTurma('1A', 'Matutino');
CALL pInserirFuncionario('João', 'Professor', 2000);

#TEST PROCEDURES UPDATE 
CALL pAlterarAluno(1,'Mariana');
CALL pAlterarTurma(1,'3A', 'Noturno');
CALL pAlterarFuncionario(1, 'Alexandre', 'Porteiro', 1300);

#TEST PROCEDURES DELETE 
CALL pRemoverAluno(1);
CALL pRemoverTurma(1);
CALL pRemoverFuncionario(1);




