DELIMITER $

CREATE TRIGGER Tgr_numeroFuncionarios_insert AFTER INSERT ON funcionarios
FOR EACH ROW
BEGIN
	UPDATE escola SET Numero_Funcionarios = Numero_Funcionarios + 1;
END $$

DELIMITER ;



DELIMITER $
CREATE TRIGGER Tgr_numeroFuncionarios_delete AFTER DELETE ON funcionarios
FOR EACH ROW
BEGIN
	UPDATE escola SET Numero_Funcionarios = Numero_Funcionarios - 1;
END $$

DELIMITER ;


#Testando Tgr_numeroFuncionarios_insert
INSERT INTO funcionarios(Nome_Funcionario, Cargo_Funcionario, Salario_Funcionario)
VALUES('Luciana', 'Faxineira', 1200.00);
SELECT * FROM escola;

#Testando Tgr_numeroFuncionarios_delete
DELETE FROM funcionarios WHERE Nome_Funcionario = 'Luciana';
SELECT * FROM escola;






