CREATE TABLE CARRERA 
(
   ID int  int IDENTITY(1,1),
   NOMBRE varchar(150)			   NOT NULL,
   PRIMARY KEY (ID)
)

CREATE TABLE CREDITOS
(
	CARNE BIGINT,
	CREDITO		INT
	PRIMARY KEY (CARNE)
)


CREATE TABLE HISTORIAL
   (
      ID int IDENTITY(1,1) PRIMARY KEY,
      FECHA DATE							NOT NULL,
	  DESCRIPCION varchar(300)				NOT NULL,
      ACCION	varchar(100)				NOT NULL
   )
CREATE TABLE CURSO
(
	CODIGO			INT ,
	NOMBRECUR		varchar(150)		NOT NULL,
	CREDITOSNEC		INT					NOT NULL,
	CREDITOSACR		INT					NOT NULL,
	CARRERA			INT					NOT NULL,
	ISOBLIGAT		BIT					NOT NULL 
	PRIMARY KEY (CODIGO)
)
CREATE TABLE ASIGMATERIA
(
	CODIGOCURS			INT						NOT NULL,
	CICLO				varchar(2)				NOT NULL,
	SECCION				CHAR(1)					NOT NULL,
	CARNET				bigint	
	PRIMARY KEY (CARNET)
	FOREIGN KEY (CODIGOCURS) REFERENCES CURSO(CODIGO)
)
CREATE TABLE ESTUDIANTES
(
   CARNE  BIGINT					NOT NULL,
   NOMBRE varchar(150)				NOT NULL,
   APELLIDOS varchar(150)			NOT NULL,
   FECHANAC  date					NOT NULL,
   CORREO	 varchar(150)			NOT NULL,
   TELEFONO  INT					NOT NULL,
   DIRECCION varchar(200)			NOT NULL,
   DPI		 bigint	,
   CARRERA	 int					NOT NULL
   PRIMARY KEY (CARNE),
   --FOREIGN KEY (CARNE)   REFERENCES ASIGMATERIA(CARNET),
   --FOREIGN KEY (CARRERA) REFERENCES CARRERA(ID)
)
CREATE TABLE HORCURSO
(
	IDHABCURSO				INT					NOT NULL,
	DIA						INT					NOT NULL,
	HORARIO					varchar(12)			NOT NULL
	PRIMARY KEY (IDHABCURSO),
)
CREATE TABLE DOCENTE 
(
   ID int IDENTITY(1,1) ,
   NOMBRE varchar(150)				NOT NULL,
   APELLIDOS varchar(150)			NOT NULL,
   FECHANAC  date					NOT NULL,
   CORREO	 varchar(150)			NOT NULL,
   TELEFONO  numeric(18,0)			NOT NULL,
   DIRECCION varchar(200)			NOT NULL,
   DPI		 bigint					NOT NULL,
   REGSIIF	 int					NOT NULL
   	PRIMARY KEY (ID),
)
CREATE TABLE HABCURSO
(
	ID				INT IDENTITY(1,1) ,
	CODIGOCURS		INT					NOT NULL,
	CICLO			varchar(2)			NOT NULL,
	DOCENTE			INT					NOT NULL,
	CUPOMAX			INT					NOT NULL,
	SECCION			CHAR(1)				NOT NULL
	PRIMARY KEY (ID),
	FOREIGN KEY (CODIGOCURS) REFERENCES CURSO(CODIGO),
	--FOREIGN KEY (ID) REFERENCES HORCURSO(IDHABCURSO),
--	FOREIGN KEY (DOCENTE) REFERENCES DOCENTE(ID)
)






