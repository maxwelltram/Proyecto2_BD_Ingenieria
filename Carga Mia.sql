
-----------EJECUTA PROCEDIMIENTOS PARA ESTUDIANTES
EXECUTE InsertEstudiante 201709326,'MAXWELLT JOEL$','RAMIREZ RAMAZZINI','2022-01-05','maxwellt@gmail.com',56211427,'barcenas 123',3046025070115,1
EXECUTE InsertEstudiante 201709329,'LAURA SOFIA','HERNANDEZ RODRIGUEZ','2022-10-31','maxwellt@gmail.com',56211427,'zona 10 por las americas',3046025070300,1
EXECUTE InsertEstudiante 201709330,' JOEL ALBERTO','RAMIREZ RAMAZZINI','2022-01-05','JOEL@gmail.com',56211427,'villa nueva 123',3046025070116,1
EXECUTE InsertEstudiante 201709345,' JUAN PEDRO','GONZALEZ PEREZ','2022-05-05','pedropedor@gmail.com',56211418,'villa nueva POR ANTIGUA',3046025070118,1
EXECUTE InsertEstudiante 201709333,' ESTUDIANTE 5','USAC INGENIERO','2022-07-13','ESTUDIANTE5@gmail.com',56211430,'usac usac',3046025070200,1
EXECUTE InsertEstudiante 201709333,' ESTUDIANTE 6','USAC DERECHO','2022-06-21','ESTUDIANTE5@gmail.com',56211430,'usac usac',3046025070201,1
EXECUTE InsertEstudiante 201709333,' ESTUDIANTE 7','USAC FARMACIA','2022-01-18','ESTUDIANTE5@gmail.com',56211430,'usac usac',3046025070202,1
EXECUTE InsertEstudiante 201709333,' ESTUDIANTE 8','USAC AGRONOMIA','2022-02-12','ESTUDIANTE5@gmail.com',56211430,'usac usac',3046025070203,1
EXECUTE InsertEstudiante 201709333,' ESTUDIANTE 9','USAC ODONTOLOGIA','2022-03-2','ESTUDIANTE5@gmail.com',56211430,'usac usac',3046025070204,1
EXECUTE InsertEstudiante 201709333,' ESTUDIANTE 10','USAC ,MEDICINA','2022-04-18','ESTUDIANTE5@gmail.com',56211430,'usac usac',3046025070205,1



-----------EJECUTA PROCEDIMIENTOS PARA DOCENTES
EXECUTE	InsertDocente 'MAXWELLT$ ','RAMIREZ ','2022-01-05','maxwelltjr99@gmail.com',56211425,'barcenas 123544',3046025070100,123889 

-----------EJECUTA PROCEDIMIENTOS PARA CARRERAS
EXECUTE InsertCarrera 1 ,'ING SISTEMAS'
EXECUTE InsertCarrera 2 ,'ING QUIMICA'
EXECUTE InsertCarrera 3 ,'ING AMBIENTAL'
EXECUTE InsertCarrera 4  ,'ING INDUSTRIAL'
EXECUTE InsertCarrera 0 ,'AREA COMUN'


-----------EJECUTA PROCEDIMIENTOS PARA CURSOS
EXECUTE InsertCurso 1,'BASES DE DATOS',10,12,1,1
EXECUTE InsertCurso 2,'COMPILADORES 1',10,15,1,1 
EXECUTE InsertCurso 3,'COMPILADORES 2',30,10,1,1
EXECUTE InsertCurso 4,'TEORIA DE SISTEMAS 1',1,1,1,0
EXECUTE InsertCurso 5,'COMPILADORES 1',10,15,1,1 
EXECUTE InsertCurso 6,'QUIMICA 1',1,20,2,1
EXECUTE InsertCurso 7,'QUIMICA 2',15,10,2,0
EXECUTE InsertCurso 8,'DROGAS 1',1,15,2,1
EXECUTE InsertCurso 9,'DROGAS 2',2,25,2,1
EXECUTE InsertCurso 10,'BEBIDAS ESPIRITUOSAS',3,15,2,1
EXECUTE InsertCurso 11,'ARBOLITOS 1',1,5,3,1
EXECUTE InsertCurso 12,'ARBOLITOS 2',3,15,3,1
EXECUTE InsertCurso 13,'CHAPEAR 1',1,10,3,1
EXECUTE InsertCurso 14,'RIEGO DE PLANTAS 1',3,15,3,1
EXECUTE InsertCurso 15,'CUIDADO DE ARBOLES',5,20,3,0
EXECUTE InsertCurso 16,'SUPERVISION 1',1,5,4,1
EXECUTE InsertCurso 17,'SUPERVISION 2',2,10,4,0
EXECUTE InsertCurso 18,'HACER NADA 1',3,15,4,0
EXECUTE InsertCurso 19,'PROCESOS 1',12,5,4,0
EXECUTE InsertCurso 20,'ADMINISTRADOR 2.0',10,5,4,0
EXECUTE InsertCurso 21,'MATE 1',1,15,0,1
EXECUTE InsertCurso 22,'MATE 2',10,15,0,1
EXECUTE InsertCurso 23,'DEPORTES 1',100,25,0,1
EXECUTE InsertCurso 24,'DEPORTES 2',150,25,0,1
EXECUTE InsertCurso 25,'FISICA 1',3,5,0,1

-----------EJECUTA CONSULTA UNO PENSUM
EXECUTE ConsultaUno 1

-----------EJECUTA CONSULTA DOS ESTUDIANTES
EXECUTE ConsultaDos 201709328

-----------EJECUTA CONSULTA TRES DOCENTE
EXECUTE ConsultaTres 12345



SELECT * FROM HISTORIAL

SELECT * FROM DOCENTE
CARRERA


DELETE FROM CARRERA

SELECT * FROM CARRERA

SELECT * FROM HABCURSO
DELETE FROM HABCURSO

DELETE FROM CURSO
SELECT * FROM CURSO

