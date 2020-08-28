--- Fazer um algoritmo que calcule os 15 primeiros termos da série de Fibonacci e a soma dos 15 primeiros termos
--- Série de Fibonacci: 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89...


DECLARE @num		INT,
		@numant		INT,
		@proxnum	INT,
		@soma		INT,
		@cont		INT

SET @num = 1
SET @numant = 0
SET @soma = 0
SET @cont = 0

WHILE (@cont <15)
BEGIN
	SET @cont = @cont + 1
	SET @soma = @soma + @num
	PRINT 'Número (' + CAST(@cont AS VARCHAR(2)) + '): ' + 
	CAST(@num AS VARCHAR(3)) + '. Soma: ' + 
	CAST(@soma AS VARCHAR(5)) + '.'
	SET @proxnum = @num + @numant
	SET @numant = @num
	SET @num = @proxnum
END