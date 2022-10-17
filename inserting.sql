INSERT INTO professores (Nome_Professor)
VALUES 
('Larissa'),
('Daniel'),
('Gustavo'),
('Carla'),
('Guilherme'),
('Carina'),
('Lúcio'),
('Cristina'),
('Felipe'),
('Bianca');

INSERT INTO alunos (Nome_Aluno)
VALUES
('Alessandra'),
('Emanuela'),
('Cíntia'),
('Diego'),
('Eduardo'),
('Larissa'),
('Jonathan'),
('Cleber'),
('Jéssica'),
('Lucas'),
('Murilo'),
('Marcelo'),
('Rebeca'),
('Tatiana'),
('Taís'),
('Gabriel'),
('Felipe'),
('Eliza'),
('Sarah'),
('Patrícia');

INSERT INTO materias (Codigo_Professor, Nome_Materia) 
VALUES
(1, 'Matemática'),
(2, 'Geografia'),
(7, 'Química'),
(6, 'Filosofia'),
(1, 'Física'),
(3, 'Português'),
(3, 'Inglês'),
(6, 'Sociologia'),
(5, 'Português'),
(4, 'História'),
(4, 'Sociologia'),
(5, 'Espanhol'),
(8, 'Biologia'),
(8, 'Química');

INSERT INTO turmas (Nome_Turma, Turno_Turma)
VALUES
('4A', 'Matutino'),
('4B', 'Vespertino'),
('5A', 'Matutino'),
('5B', 'Vespertino'), 
('6A', 'Matutino'),
('6B', 'Vespertino'),
('7A', 'Matutino'),
('7B', 'Vespertino'),
('8A', 'Matutino'),
('8B', 'Vespertino'),
('9A', 'Matutino'),
('9B', 'Vespertino');

INSERT INTO alunos_turmas(Codigo_Aluno, Codigo_Materia, Codigo_Turma)
VALUES
(1, 1, 1),
(2, 5, 1),
(3, 10, 2),
(4, 14, 1),
(5, 1, 1),
(6, 2, 6),
(7, 3, 2),
(8, 6, 3),
(9, 5, 4),
(10, 4, 4),
(11, 1, 5),
(12, 5, 2),
(13, 8, 3),
(14, 13, 6),
(15, 6, 5),
(16, 14, 3),
(17, 9,5),
(18, 3, 1),
(19, 8, 4),
(20, 5, 6); 

INSERT INTO salas (Nome_Sala)
VALUES
('Sala 1'),
('Sala 2'),
('Sala 3'),
('Sala 4'),
('Sala 5'),
('Sala 6'),
('Sala 7'),
('Sala 8'),
('Laboratório de informática'),
('Laboratório de química');

INSERT INTO funcionarios (Nome_Funcionario, Cargo_Funcionario, Salario_Funcionario)
VALUES
('José', 'Porteiro', 1300.00),
('Samara', 'Coordenadora', 5200.00),
('Rosângela', 'Diretora', 7200.00),
('Lurdes', 'Cozinheira', 1300.00),
('Josiane', 'Faxineira', 1400.00),
('Fátima', 'Secretária', 1500.00),
('Jaime', 'Segurança', 1400.00),
('Larissa', 'Professor', 2200.00),
('Daniel', 'Professor', 2200.00),
('Gustavo', 'Professor', 2200.00),
('Carla', 'Professor', 2200.00),
('Guilherme', 'Professor', 2200.00),
('Carina', 'Professor', 2200.00),
('Lúcio', 'Professor', 2200.00),
('Cristina', 'Professor', 2200.00),
('Felipe', 'Professor', 2200.00),
('Bianca', 'Professor', 2200.00);


INSERT INTO aulas (Codigo_Turma, Codigo_Materia, Codigo_Sala, Horario_Inicio, Horario_Termino)
VALUES
(1,4,1, '07:00:00', '08:00:00'),
(2,5,2, '08:00:00', '09:00:00'),
(3,6,3, '11:00:00', '12:00:00'),
(4,8,5,'10:00:00', '11:00:00'),
(5,9,9, '13:00:00', '14:00:00'),
(6,4,8, '16:00:00', '17:00:00'),
(7,8,2, '14:00:00', '15:00:00'),
(8,7,4, '08:00:00', '09:00:00'),
(9,2,6, '17:00:00', '18:00:00'),
(10,3,7, '19:00:00', '20:00:00');



INSERT INTO escola (Numero_Funcionarios)
VALUES (17);
