CREATE VIEW materias_salas AS
SELECT materias.Nome_Materia, salas.Nome_Sala FROM aulas
RIGHT JOIN salas ON aulas.Codigo_Sala = salas.Codigo_Sala
RIGHT JOIN materias ON aulas.Codigo_Materia = materias.Codigo_Materia;

SELECT * FROM materias_salas ;

