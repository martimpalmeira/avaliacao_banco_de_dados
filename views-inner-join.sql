#INNER JOIN 2 TABELAS
CREATE VIEW professor_materia AS
SELECT professores.Nome_Professor, materias.Nome_Materia FROM materias
INNER JOIN professores ON materias.Codigo_Professor = professores.Codigo_Professor;

SELECT * FROM professor_materia;


#INNER JOIN 2 TABELAS
CREATE VIEW materias_professorAirton AS
SELECT  materias.Nome_Materia, professores.Nome_Professor FROM materias 
INNER JOIN professores ON materias.Codigo_Professor = professores.Codigo_Professor
WHERE professores.Nome_Professor = 'Lúcio';

SELECT * FROM materias_professorAirton;


#INNER JOIN 3 TABELAS
CREATE VIEW aluno_materia_turma AS  
SELECT alunos.Nome_Aluno, materias.Nome_Materia, turmas.Nome_Turma FROM alunos_turmas
INNER JOIN alunos ON alunos_turmas.Codigo_Aluno = alunos.Codigo_Aluno
INNER JOIN materias ON alunos_turmas.Codigo_Materia = materias.Codigo_Materia
INNER JOIN turmas ON alunos_turmas.Codigo_Turma = turmas.Codigo_Turma;

SELECT * FROM aluno_materia_turma;



#INNER JOIN 3 TABELAS
CREATE VIEW quantidade_alunos_turma AS
SELECT turmas.Turno_Turma, COUNT(alunos.Codigo_Aluno) AS Quant_Alunos FROM alunos_turmas
INNER JOIN turmas ON alunos_turmas.Codigo_Turma = turmas.Codigo_Turma
INNER JOIN alunos ON alunos_turmas.Codigo_Aluno = alunos.Codigo_Aluno
GROUP BY turmas.Turno_Turma;

SELECT * FROM quantidade_alunos_turma;



#INNER JOIN 5 TABELAS
CREATE VIEW aluno_turma_materia_professorCristina AS
SELECT alunos.Nome_Aluno, turmas.Nome_Turma, materias.Nome_Materia, professores.Nome_Professor FROM materias
INNER JOIN alunos_turmas ON alunos_turmas.Codigo_Materia = materias.Codigo_Materia
INNER JOIN alunos ON alunos_turmas.Codigo_Aluno = alunos.Codigo_Aluno
INNER JOIN turmas ON alunos_turmas.Codigo_Turma = turmas.Codigo_Turma
INNER JOIN professores ON materias.Codigo_Professor = professores.Codigo_Professor
WHERE professores.Nome_Professor = 'Cristina';

SELECT * FROM aluno_turma_materia_professorCristina;



