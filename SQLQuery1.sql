--- Fazer um algoritmo que, dados 3 números, mostre o maior e o menor

DECLARE @num1		INT,
		@num2		INT,
		@num3		INT,
		@maior		INT,
		@menor		INT

SET @num1 = 37
SET @num2 = 100
SET @num3 = 200

IF(@num1>@num2)
BEGIN
	SET @maior = @num1
	SET @menor = @num2
END
ELSE
BEGIN
	SET @maior = @num2
	SET @menor = @num1
END

IF(@maior < @num3)
BEGIN
	SET @maior = @num3
END
IF(@menor > @num3)
BEGIN
	SET @menor = @num3
END

PRINT 'O maior dos números são ' + CAST(@maior  AS VARCHAR(3)) + '.'
PRINT 'O menor dos números são ' + CAST(@menor  AS VARCHAR(3)) + '.'
