--CALIFICACIÓN PROYECTO 2
-- ########################### INGRESAR CARRERA ###########################
EXECUTE InsertCarrera 1 ,'ING SISTEMAS'
EXECUTE InsertCarrera 2 ,'ING QUIMICA'
EXECUTE InsertCarrera 0 ,'AREA COMUN'
EXECUTE InsertCarrera 100,'Sistem@s'; -- nombre inválido
EXECUTE InsertCarrera 101,'Sistemas Calificación'; -- ok
EXECUTE InsertCarrera 104,'Sistemas Calificación'; -- error duplicado

SELECT * FROM CARRERA

DELETE FROM CARRERA WHERE ID=101

-- ########################### CREAR ESTUDIANTE ###########################
EXECUTE InsertEstudiante  202004765, 'Javier!', 'Gutierrez?', '2001-03-14', 'javier@gmail.com', 42543549, '29 avenida', 3024021520101, 1 ; -- nombre inválido
EXECUTE InsertEstudiante  202004765, 'Javier', 'Gutierrez', '2001-03-14', 'javiergmail.com', 42543549, '29 avenida', 3024021520101, 1 ; -- correo inválido
EXECUTE InsertEstudiante  201409335, 'Fabian', 'Reyna', '2001-6-13', 'Fabian@gmail.com', 9502001, '7 avenida', 53620010101, 99 ; -- no existe carrera
EXECUTE InsertEstudiante  201409335, 'Fabian', 'Reyna', '2001-6-13', 'Fabian@gmail.com', 9502001, '7 avenida', 53620010101, -5 ; -- número inválido / no existe carrera
EXECUTE InsertEstudiante  201506554, 'Angel', 'Marroquin', '1996-1-6', 'Angel@gmail.com', 6401996, '19 avenida', 45119960101, 1 ; -- ok
EXECUTE InsertEstudiante  201506554, 'Angel', 'Marroquin', '1996-1-6', 'Angel@gmail.com', 6401996, '19 avenida', 45119960101, 1 ; -- error duplicado
EXECUTE InsertEstudiante  201818477, 'Diego', 'Arriaga', '2012-12-19', 'Diego@gmail.com', 8712012, '8 avenida', 741220120101, 2 ; -- ok
EXECUTE InsertEstudiante  201902238, 'Luis', 'Castellanos', '2001-01-25', 'luis@gmail.com', 42141631, '2 EXECUTEe', 3006251851047, 1 ; -- ok

-- ########################### REGISTRAR DOCENTE ###########################
EXECUTE InsertDocente  'Lui$', '_Espino', '2000-12-1', 'Luis@gmail.com', 7812000, '12 avenida', 861220000101, 150 ; -- nombre inválido
EXECUTE InsertDocente  'Jorge', 'Alvarez', '1994-10-16', 'Jorgegmail.com', 4501994, '20 avenida', 531019940101, 151 ; -- correo inválido
EXECUTE InsertDocente  'Arturo', 'Samayoa', '2003-5-4', 'Arturo@gmail.com', 1412003, '4 avenida', 48520030101, 152 ; -- ok
EXECUTE InsertDocente  'Arturo', 'Samayoa', '2003-5-4', 'Arturo@gmail.com', 1412003, '4 avenida', 48520030101, 152 ; -- error duplicado
EXECUTE InsertDocente  'William', 'Escobar', '2012-7-10', 'willy@gmail.com', 1512012, '24 avenida', 55720120101, 153 ; -- ok

-- ########################### CREAR CURSO ###########################
    -- Area común
    EXECUTE InsertCurso 1112, 'Mate 1', 0, 3, 0, 1 ; -- ok
    EXECUTE InsertCurso 1112, 'Mate 1', 0, 3, 0, 1 ; -- error duplicado
    EXECUTE InsertCurso 1113, 'Mate 2', 3, 5, 0, 1 ; -- ok
    EXECUTE InsertCurso 1114, 'Error 1', -25, 3, 0, 1 ; -- número inválido
    EXECUTE InsertCurso 1115, 'Error 2', 0, -50, 0, 1 ; -- número inválido
    EXECUTE InsertCurso 1116, 'Error 3', 1, 1, 99, 1 ; -- no existe carrera
    EXECUTE InsertCurso 1117, 'Error 4!!!!', 1, 1, 0, 1 ; -- nombre inválido

    -- Sistemas
    EXECUTE InsertCurso 41, 'IPC 1', 0, 3,1, 1 ; -- ok
    EXECUTE InsertCurso 42, 'Logica de sistemas', 0, 2, 1, 0 ; -- ok
    EXECUTE InsertCurso 43, 'Archivos', 10, 3,1, 1 ; -- ok
    EXECUTE InsertCurso 44, 'Compi 1', 9, 3, 1, 1 ; -- ok
    EXECUTE InsertCurso 45, 'Bases 1', 12, 3, 1, 1 ; -- ok


	-- ########################### HABILITAR CURSO PARA ASIGNACIÓN 
	EXECUTE InsertCursoHab 1112, 'VD', 152, 2, 'A' ; -- Habilita Mate 1 con Samayoa con cupo 2 ok
	EXECUTE InsertCursoHab 1112, 'VD', 152, 2, 'A' ; -- Habilita Mate 1 con Samayoa con cupo 2 ok
	EXECUTE InsertCursoHab 1113, '2S', 152, 2, 'A' ; -- Habilita Mate 2 con Samayoa con cupo 2 ok
	EXECUTE InsertCursoHab 41, 'VD', 153, 2, 'A'   ; -- Habilita IPC 1 con William con cupo 2 ok
	EXECUTE InsertCursoHab 41, 'VD', 153, 2, 'A'   ; -- error duplicado
	EXECUTE InsertCursoHab 41, 'VD', 153, 2, '@'   ; -- sección inválida
	EXECUTE InsertCursoHab 41, 'VD', 153, -32, 'A' ; -- cupo inválido
	EXECUTE InsertCursoHab 41, '', 153, 30, 'A'	   ; -- ciclo vacío
	EXECUTE InsertCursoHab 999, '1S', 153, 25, 'A' ; -- curso no existe



	-- PENSUM
	EXECUTE ConsultaUno 95959 ; -- error no existe carrera
	EXECUTE ConsultaUno 1 ; -- ok
	
	
	-- ESTUDIANTE
	EXECUTE ConsultaDos 988989 ; -- error no existe estudiante
	EXECUTE ConsultaDos 201902238 ; -- ok
	
	
	-- DOCENTE
	EXECUTE ConsultaTres 988989 ; -- error no existe docente
	EXECUTE ConsultaTres 152 ; -- ok


