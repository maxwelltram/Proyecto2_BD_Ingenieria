USE PROBD2
GO

CREATE PROC InsertEstudiante
	(@CARNET				AS BIGINT,
	@NOMBRE				AS VARCHAR(150),
	@APELLIDO			AS VARCHAR(150),
	@FECHANAC			AS DATE,
	@CORREO				AS VARCHAR(150),
	@TELEFONO			AS INT,
	@DIRECCION			AS VARCHAR(150),
	@DPI				AS BIGINT,
	@CARRERA			AS INT)
AS
BEGIN
	SET NOCOUNT ON;

		INSERT INTO dbo.ESTUDIANTES (CARNE,NOMBRE,APELLIDOS,FECHANAC,CORREO,TELEFONO,DIRECCION,DPI,CARRERA)
			VALUES
		       (@CARNET		,
		       @NOMBRE		, 
		       @APELLIDO	, 
		       @FECHANAC	, 
		       @CORREO		, 
		       @TELEFONO	, 
		       @DIRECCION	, 
		       @DPI			, 
		       @CARRERA	)
END
GO


CREATE PROC InsertCarrera
	(
	@ID					AS INT,
	@NOMBRE				AS VARCHAR(150)
	)
AS
BEGIN
	SET NOCOUNT ON;

		INSERT INTO dbo.CARRERA (ID,NOMBRE)
			VALUES
		       (
			   @ID,
			   @NOMBRE
			   )
END
GO




CREATE PROC InsertDocente
	(
	@NOMBRE				AS VARCHAR(150),
	@APELLIDO			AS VARCHAR(150),
	@FECHANAC			AS DATE,
	@CORREO				AS VARCHAR(150),
	@TELEFONO			AS INT,
	@DIRECCION			AS VARCHAR(150),
	@DPI				AS BIGINT,
	@SIIF				AS INT)
AS
BEGIN
	SET NOCOUNT ON;

		INSERT INTO dbo.DOCENTE (NOMBRE,APELLIDOS,FECHANAC,CORREO,TELEFONO,DIRECCION,DPI,REGSIIF)
			VALUES
		       (
		       @NOMBRE		, 
		       @APELLIDO	, 
		       @FECHANAC	, 
		       @CORREO		, 
		       @TELEFONO	, 
		       @DIRECCION	, 
		       @DPI			, 
		       @SIIF		)
END
GO



CREATE PROC InsertCurso
	(
	@CODIGO				AS INT,
	@NOMBRE				AS VARCHAR(150),
	@CREDINEC			AS INT,
	@CREDIOT			AS INT,
	@CARRERA			AS INT,
	@ISOBL				AS BIT)
AS
BEGIN
	SET NOCOUNT ON;

		INSERT INTO dbo.CURSO (CODIGO,NOMBRECUR,CREDITOSNEC,CREDITOSACR,CARRERA,ISOBLIGAT)
			VALUES
		       (
		       @CODIGO		, 
		       @NOMBRE		, 
		       @CREDINEC	, 
		       @CREDIOT		, 
		       @CARRERA		, 
		       @ISOBL		
		       		)
END
GO


CREATE PROC InsertCursoHab
	(
	@CODIGO				AS INT,
	@CICLO				AS VARCHAR(2),
	@DOCENTE			AS INT,
	@CUPO				AS INT,
	@SECCION			AS VARCHAR(1)
	)
AS
BEGIN
	SET NOCOUNT ON;
		SET @SECCION =(SELECT UPPER(@SECCION))
		INSERT INTO dbo.HABCURSO (CODIGOCURS,CICLO,DOCENTE,CUPOMAX,SECCION)
			VALUES
		       (
		       @CODIGO		, 
		       @CICLO		, 
		       @DOCENTE		, 
		       @CUPO		, 
		       @SECCION		
		       )
END
GO



CREATE PROC	ConsultaUno
	(
	@ID					AS INT
	--@msg				AS VARCHAR(300)	OUTPUT
	)
AS
Begin
	SET NOCOUNT ON;
	
	BEGIN TRY
		--BEGIN TRAN TranC3
		--SELECT 1/0;
		SELECT D.CODIGO			AS CODIGO_CURSO,
			D.NOMBRECUR			AS NOMBRE_CURSO,
			CASE	ISOBLIGAT
			WHEN 1	THEN 'SI'
			WHEN 0	THEN 'NO'
			END AS OBLIGATORIO,
			D.CREDITOSNEC		AS CREDITOS_NECESARIOS
		FROM  CURSO D
		WHERE D.CARRERA =@ID;
		IF (XACT_STATE())=0
			PRINT 'Ocurrio un Error:	' +ERROR_MESSAGE() + ' en la
			línea	'  + CONVERT(NVARCHAR(300), ERROR_LINE()) +'.'
			ROLLBACK TRAN TranC3
		IF (XACT_STATE())=1
			PRINT 'El pensum se encontro correctamente.'
		--COMMIT TRAN TranC3
	END	TRY
	BEGIN CATCH
	--	
	--	SELECT		ERROR_NUMBER(),
	--				ERROR_MESSAGE(),
	--				ERROR_LINE(),
	--				ERROR_PROCEDURE(),
	--				HOST_NAME()
	--	--IF (XACT_STATE())=-1
	--	--	PRINT 'Ocurrio un Error:	' +ERROR_MESSAGE() + ' en la 
	--	--	línea	'  + CONVERT(NVARCHAR(300), ERROR_LINE()) +'.'
	--	--	ROLLBACK TRAN TranC3
	--	--IF (XACT_STATE())=1
	--	--	PRINT 'El docente se encontro correctamente.'
	--	--	COMMIT TRAN TranC3
	END	CATCH
end
GO






CREATE PROC	ConsultaDos
	(
	@CARNE			AS BIGINT
	--@msg				AS VARCHAR(300)	OUTPUT
	)
AS
Begin
	SET NOCOUNT ON;
	
	BEGIN TRY
		--BEGIN TRAN TranC3
		--SELECT 1/0;
		SELECT CARNE,
			(D.NOMBRE +' '+ D.APELLIDOS) AS NOMBRE,
			D.FECHANAC					 AS FECHA_NACIMIENTO,
			D.CORREO										,
			D.TELEFONO										,
			D.DIRECCION										,
			D.DPI											,
			D.CARRERA
		FROM ESTUDIANTES D
		WHERE D.CARNE =@CARNE;
		IF (XACT_STATE())=0
			PRINT 'Ocurrio un Error:	' +ERROR_MESSAGE() + ' en la
			línea	'  + CONVERT(NVARCHAR(300), ERROR_LINE()) +'.'
			ROLLBACK TRAN TranC3
		IF (XACT_STATE())=1
			PRINT 'El docente se encontro correctamente.'
		--COMMIT TRAN TranC3
	END	TRY
	BEGIN CATCH
	--	
	--	SELECT		ERROR_NUMBER(),
	--				ERROR_MESSAGE(),
	--				ERROR_LINE(),
	--				ERROR_PROCEDURE(),
	--				HOST_NAME()
	--	--IF (XACT_STATE())=-1
	--	--	PRINT 'Ocurrio un Error:	' +ERROR_MESSAGE() + ' en la 
	--	--	línea	'  + CONVERT(NVARCHAR(300), ERROR_LINE()) +'.'
	--	--	ROLLBACK TRAN TranC3
	--	--IF (XACT_STATE())=1
	--	--	PRINT 'El docente se encontro correctamente.'
	--	--	COMMIT TRAN TranC3
	END	CATCH
end
GO


CREATE PROC	ConsultaTres
	(
	@REGSIIF			AS INT--,
	--@msg				AS VARCHAR(300)	OUTPUT
	)
AS
Begin
	SET NOCOUNT ON;
	
	BEGIN TRY
		--BEGIN TRAN TranC3
		--SELECT 1/0;
		SELECT 
			(D.NOMBRE +' '+ D.APELLIDOS) AS NOMBRE,
			D.FECHANAC					 AS FECHA_NACIMIENTO,
			D.CORREO										,
			D.TELEFONO										,
			D.DIRECCION										,
			D.DPI											,
			D.REGSIIF
		FROM DOCENTE D
		WHERE D.REGSIIF =@REGSIIF
		IF (XACT_STATE())=0
			PRINT 'Ocurrio un Error:	' +ERROR_MESSAGE() + ' en la
			línea	'  + CONVERT(NVARCHAR(300), ERROR_LINE()) +'.'
			ROLLBACK TRAN TranC3
		IF (XACT_STATE())=1
			PRINT 'El docente se encontro correctamente.'
		--COMMIT TRAN TranC3
	END	TRY
	BEGIN CATCH
	--	
	--	SELECT		ERROR_NUMBER(),
	--				ERROR_MESSAGE(),
	--				ERROR_LINE(),
	--				ERROR_PROCEDURE(),
	--				HOST_NAME()
	--	--IF (XACT_STATE())=-1
	--	--	PRINT 'Ocurrio un Error:	' +ERROR_MESSAGE() + ' en la 
	--	--	línea	'  + CONVERT(NVARCHAR(300), ERROR_LINE()) +'.'
	--	--	ROLLBACK TRAN TranC3
	--	--IF (XACT_STATE())=1
	--	--	PRINT 'El docente se encontro correctamente.'
	--	--	COMMIT TRAN TranC3
	END	CATCH
end
GO
