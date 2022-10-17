CREATE VIEW professores_quant_alunos AS 
SELECT professores.Nome_Professor, COUNT(alunos.Codigo_Aluno) AS Quant_Alunos FROM professores
LEFT JOIN materias ON professores.Codigo_Professor = materias.Codigo_Professor
LEFT JOIN alunos_turmas ON materias.Codigo_Materia = alunos_turmas.Codigo_Materia
LEFT JOIN alunos ON alunos_turmas.Codigo_Aluno = alunos.Codigo_Aluno
GROUP BY professores.Codigo_Professor;

SELECT * FROM professores_quant_alunos;



