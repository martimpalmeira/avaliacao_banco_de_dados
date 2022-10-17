#Update de alunos, turmas e funcionários foram feitos no arquivo de procedures

#UPDATE PROFESSORES
UPDATE professores SET Nome_Professor = 'Nicolas' WHERE Codigo_Professor = 1;
SELECT * FROM professores;

#UPDATE MATERIAS
UPDATE materias SET Nome_Materia = 'Artes' WHERE Codigo_Professor = 1;
SELECT * FROM materias;

#UPDATE ALUNOS_TURMAS
UPDATE alunos_turmas SET Codigo_Turma = 4 WHERE Codigo_Materia = 1;
SELECT * FROM alunos_turmas;

#UPDATE AULAS
UPDATE aulas SET Horario_Inicio = '14:00:00', Horario_Termino = '15:00:00' WHERE Codigo_Aula = 1;
SELECT * FROM aulas;

#UPDATE SALAS
UPDATE salas SET Nome_Sala = 'Laboratório de Biologia' WHERE Codigo_Sala = 1;
SELECT * FROM salas;

#UPDATE ESCOLA
UPDATE escola SET Numero_Funcionarios = 17;
SELECT * FROM escola;


