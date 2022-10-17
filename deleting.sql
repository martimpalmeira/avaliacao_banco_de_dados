#Delete de alunos, turmas e funcionários foram feitos no arquivo de procedures

#DELETE PROFESSORES
DELETE FROM professores WHERE Codigo_Professor = 1;
SELECT * FROM professores;

#DELETE MATERIAS
DELETE FROM materias WHERE Codigo_Materia = 7;
SELECT * FROM materias;

#DELETE ALUNOS_TURMAS
DELETE FROM alunos_turmas WHERE Codigo_Materia = 1;
SELECT * FROM alunos_turmas;

#DELETE AULAS
DELETE FROM aulas WHERE Codigo_Aula = 1;
SELECT * FROM aulas;

#DELETE SALAS
DELETE FROM salas WHERE Codigo_Sala = 1;
SELECT * FROM salas;

#DELETE ESCOLA
DELETE FROM escola;
SELECT * FROM escola;