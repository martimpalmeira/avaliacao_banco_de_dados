#Quantidade de funcionários com salário entre 1000 e 1500
SELECT COUNT(*) AS Quantidade FROM funcionarios WHERE Salario_Funcionario BETWEEN 1000 AND 1500 ; 

#Todas as aulas que estão acontecem nesse horário
SELECT * FROM aulas WHERE DATE_FORMAT(Horario_Inicio, '%H') = DATE_FORMAT(NOW(), '%H');

#Funcionário com o maior salário
SELECT * FROM funcionarios WHERE Salario_Funcionario = (SELECT MAX(Salario_Funcionario) FROM funcionarios);

#Funcionários com o menor salário
SELECT * FROM funcionarios WHERE Salario_Funcionario = (SELECT MIN(Salario_Funcionario) FROM funcionarios);

#Número de alunos agrupados por turma
SELECT turmas.Nome_Turma, count(alunos.Codigo_Aluno) AS Quant_Alunoa FROM alunos_turmas 
RIGHT JOIN alunos ON alunos_turmas.Codigo_Aluno = alunos.Codigo_Aluno
RIGHT JOIN turmas ON alunos_turmas.Codigo_Turma = turmas.Codigo_Turma
GROUP BY turmas.Codigo_Turma HAVING COUNT(alunos.Codigo_Aluno) > 2;

/*Todos os professores ordenados em ordem alfabética, se o nome começa com D a 
coluna Nome exibe uma mensagem, se não, exibe outra mensagem*/
SELECT Nome_Professor, 
CASE 
	WHEN professores.Nome_Professor LIKE ('D%') THEN "Começa com D"
    ELSE "Não começa com D"
END AS Nome
FROM professores ORDER BY Nome_Professor ASC;

#Seleciona todos os funcionários e diz se é coordenador/diretor ou não
SELECT Nome_Funcionario, IF(Cargo_Funcionario = 'Coordenadora' OR Cargo_Funcionario = 'Diretora' , "YES", "NO") AS Diretor_ou_Coordernador FROM funcionarios;



