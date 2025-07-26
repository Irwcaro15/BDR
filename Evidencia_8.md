 # **Evidencia 8** 

# **Vistas View sobre consultas significativas**

### **1.Join**

Una función JOIN en MYSQL se usa para combinar filas de dos o más tablas en una sola consulta, basándose en una relación entre ellas, generalmente una columna común.

Con esto, se obtendra una lista de estudiantes  donde se indique el curso en el que están inscritos.

```SQL
SELECT E.Matricula, E.Nombre, E.Apellido, C.NombreCurso
FROM Estudiantes E
JOIN Cursos C ON E.CursoID = C.CursoID;
```
### **2.Left Join**

La función Left Join se utiliza para combinar filas de dos tablas de manera que se muestren todos los registros de la tabla izquierda, aunqueno no tengan coincidencia en la tabla derecha.

```SQL
SELECT E.Matricula, E.Nombre, E.Apellido, C.NombreCurso
FROM Estudiantes E
LEFT JOIN Cursos C ON E.CursoID = C.CursoID;
```
### **3.Right Join**

La función Right Join se utiliza para devolver todos los registros de la tabla de la derecha,aunque no haya coincidencias en la tabla izquierda.

```SQL
SELECT E.Matricula, E.Nombre, E.Apellido, C.NombreCurso
FROM Estudiantes E
RIGHT JOIN Cursos C ON E.CursoID = C.CursoID;
```
### **4.Subconsulta**
La subconsulta devuelve a los estudiantes cuyo CursoID corresponde al curso más popular.

```SQL
SELECT Nombre, Apellido
FROM Estudiantes
WHERE CursoID = (
    SELECT CursoID
    FROM Estudiantes
    GROUP BY CursoID
    ORDER BY COUNT(*) DESC
    LIMIT 1
);
```
### **Trigger**

Un trigger o disparador en bases de datos es un objeto que ejecuta automáticamente una acción como una instrucción INSERT, UPDATE o DELETE en respuesta a un evento que ocurre en una tabla o vista.

Mi trigger indica que se generara un registro cada que se incluya un nuevo estudiante

```SQL
Drop table if exists AuditoriaEstudiantes;

CREATE TABLE AuditoriaEstudiantes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Matricula INT,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    FechaRegistro DATETIME,
    Accion VARCHAR(20)
);

DELIMITER $$

ALTER TABLE Estudiantes ADD COLUMN CursoID INT;

CREATE TRIGGER trg_insert_estudiante
AFTER INSERT ON Estudiantes
FOR EACH ROW
BEGIN
    INSERT INTO AuditoriaEstudiantes (Matricula, Nombre, Apellido, FechaRegistro, Accion)
    VALUES (NEW.Matricula, NEW.Nombre, NEW.Apellido, NOW(), 'INSERT');
END$$

DELIMITER ;

DROP TRIGGER IF EXISTS trg_insert_estudiante;

INSERT INTO Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion, CursoID)
VALUES (31, 'Nuevo', 'Estudiante', 'Male', 180, 170, 8, 1);

SELECT * FROM AuditoriaEstudiantes;
SELECT * FROM Estudiantes;
SELECT Matricula FROM AuditoriaEstudiantes;
SELECT * FROM AuditoriaEstudiantes
WHERE Matricula = 20210001;

INSERT INTO AuditoriaEstudiantes (Matricula, Nombre, Apellido, FechaRegistro, Accion)
VALUES
(20210001, 'Juan', 'Pérez', '2025-07-25 10:15:00', 'INSERT'),
(20210002, 'María', 'López', '2025-07-25 10:17:30', 'INSERT'),
(20210001, 'Juan', 'Pérez', '2025-07-26 09:00:00', 'UPDATE'),
(20210003, 'Carlos', 'Ramírez', '2025-07-26 11:45:00', 'INSERT'),
(20210002, 'María', 'López', '2025-07-26 12:10:00', 'DELETE'),
(20210004, 'Ana', 'Martínez', '2025-07-26 13:05:20', 'INSERT');
```
## **Código completo**
```SQL
Drop table if exists Estudiantes;

create table Estudiantes (
	Matricula INT,
	Nombre VARCHAR(50),
	Apellido VARCHAR(50),
	gender VARCHAR(50),
	Altura INT,
	Peso INT,
	Calificacion INT
);


insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (1, 'Phyllida', 'Le Grand', 'Female', 182, 194, 9);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (2, 'Codee', 'Eacott', 'Female', 194, 171, 7);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (3, 'Edward', 'Mosley', 'Male', 159, 193, 8);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (4, 'Derwin', 'St. Leger', 'Male', 152, 188, 5);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (5, 'Iggie', 'Taile', 'Male', 155, 161, 8);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (6, 'Farr', 'Feveryear', 'Male', 199, 173, 7);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (7, 'Felicle', 'McEttigen', 'Female', 171, 183, 6);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (8, 'Wendell', 'Gerding', 'Male', 194, 182, 6);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (9, 'Kore', 'Bramwell', 'Female', 173, 150, 9);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (10, 'Delia', 'Egar', 'Female', 167, 174, 5);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (11, 'Emmott', 'Dassindale', 'Male', 172, 196, 7);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (12, 'Alfredo', 'Vannoni', 'Male', 174, 172, 7);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (13, 'Christos', 'Armal', 'Male', 182, 177, 10);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (14, 'Llywellyn', 'Rean', 'Male', 158, 161, 7);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (15, 'Wendell', 'Bulfield', 'Male', 195, 181, 8);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (16, 'Lucias', 'Jolin', 'Agender', 193, 173, 9);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (17, 'Bing', 'Charrington', 'Male', 150, 182, 10);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (18, 'Dennet', 'Lindmark', 'Male', 169, 186, 7);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (19, 'Reinhold', 'Goede', 'Genderfluid', 159, 182, 9);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (20, 'Sheree', 'Lattimer', 'Female', 187, 197, 10);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (21, 'Angelita', 'Mackiewicz', 'Female', 197, 194, 7);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (22, 'Ferdie', 'Siggins', 'Male', 192, 164, 6);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (23, 'Dick', 'Wissby', 'Male', 180, 167, 5);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (24, 'Buck', 'Braxay', 'Male', 196, 168, 5);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (25, 'Darb', 'McColley', 'Male', 176, 182, 6);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (26, 'Morena', 'Mintrim', 'Female', 152, 189, 5);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (27, 'Rupert', 'Durtnel', 'Male', 196, 157, 9);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (28, 'Goldie', 'Persence', 'Female', 152, 167, 5);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (29, 'Agace', 'Jentgens', 'Genderqueer', 176, 197, 7);
insert into Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion) values (30, 'Kaiser', 'Dybbe', 'Male', 170, 165, 9);

DELETE FROM Estudiantes
WHERE Nombre = "Kaiser";

SELECT * FROM Estudiantes;

SELECT Calificacion, COUNT(*) AS Frecuencia_calificacion ## Frecuencia
FROM Estudiantes
GROUP BY Calificacion
ORDER BY Frecuencia_calificacion DESC;

SELECT Nombre, MAX(Altura) AS maxima_altura,Min(Altura) as minima_altura  ## Máximo,Mínimo
FROM Estudiantes
GROUP BY Nombre
ORDER BY minima_altura, maxima_altura DESC;

SELECT Peso, COUNT(*) AS Moda  ## Moda
FROM Estudiantes
GROUP BY Peso
ORDER BY Moda DESC
LIMIT 1;

SELECT ## Primer_Cuartil
    AVG(Altura) AS primer_cuartil
FROM (
    SELECT 
        Altura,
        ROW_NUMBER() OVER (ORDER BY Altura) AS fila,
        COUNT(*) OVER () AS total_filas
    FROM Estudiantes
    WHERE Altura IS NOT NULL AND Altura > 0
) AS sub
WHERE 
    fila IN (
        CEIL(0.25 * total_filas),
        FLOOR(0.25 * total_filas)
    );



SELECT * FROM Estudiantes
WHERE Calificacion > (
    SELECT AVG(Calificacion) FROM Estudiantes
);


SELECT gender, MAX(Altura) AS MaxAltura
FROM (
    SELECT gender, Altura FROM Estudiantes
) AS sub
GROUP BY gender;

SELECT gender, COUNT(*) AS Total
FROM Estudiantes
GROUP BY gender
HAVING COUNT(*) > 3;

CREATE TABLE Cursos (
    CursoID INT,
    NombreCurso VARCHAR(50)
);

INSERT INTO Cursos (CursoID, NombreCurso) VALUES
(1, 'Matemáticas'),
(2, 'Historia'),
(3, 'Ciencias');

select * from cursos

ALTER TABLE Estudiantes ADD COLUMN CursoID INT;
UPDATE Estudiantes SET CursoID = 1 WHERE Matricula IN (1, 3, 5,10,13,16,19,22,25,28);
UPDATE Estudiantes SET CursoID = 2 WHERE Matricula IN (2, 4, 6,11,14,17,20,23,26,29);
UPDATE Estudiantes SET CursoID = 3 WHERE Matricula IN (7, 8, 9,12,15,18,21,27,30);


SELECT E.Matricula, E.Nombre, E.Apellido, C.NombreCurso
FROM Estudiantes E
JOIN Cursos C ON E.CursoID = C.CursoID;


SELECT E.Matricula, E.Nombre, E.Apellido, C.NombreCurso
FROM Estudiantes E
LEFT JOIN Cursos C ON E.CursoID = C.CursoID;

SELECT E.Matricula, E.Nombre, E.Apellido, C.NombreCurso
FROM Estudiantes E
RIGHT JOIN Cursos C ON E.CursoID = C.CursoID;

SELECT Nombre, Apellido
FROM Estudiantes
WHERE CursoID = (
    SELECT CursoID
    FROM Estudiantes
    GROUP BY CursoID
    ORDER BY COUNT(*) DESC
    LIMIT 1
);

Drop table if exists AuditoriaEstudiantes;

CREATE TABLE AuditoriaEstudiantes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Matricula INT,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    FechaRegistro DATETIME,
    Accion VARCHAR(20)
);

DELIMITER $$

ALTER TABLE Estudiantes ADD COLUMN CursoID INT;

CREATE TRIGGER trg_insert_estudiante
AFTER INSERT ON Estudiantes
FOR EACH ROW
BEGIN
    INSERT INTO AuditoriaEstudiantes (Matricula, Nombre, Apellido, FechaRegistro, Accion)
    VALUES (NEW.Matricula, NEW.Nombre, NEW.Apellido, NOW(), 'INSERT');
END$$

DELIMITER ;

DROP TRIGGER IF EXISTS trg_insert_estudiante;

INSERT INTO Estudiantes (Matricula, Nombre, Apellido, gender, Altura, Peso, Calificacion, CursoID)
VALUES (31, 'Nuevo', 'Estudiante', 'Male', 180, 170, 8, 1);

SELECT * FROM AuditoriaEstudiantes;
SELECT * FROM Estudiantes;
SELECT Matricula FROM AuditoriaEstudiantes;
SELECT * FROM AuditoriaEstudiantes
WHERE Matricula = 20210001;

INSERT INTO AuditoriaEstudiantes (Matricula, Nombre, Apellido, FechaRegistro, Accion)
VALUES
(20210001, 'Juan', 'Pérez', '2025-07-25 10:15:00', 'INSERT'),
(20210002, 'María', 'López', '2025-07-25 10:17:30', 'INSERT'),
(20210001, 'Juan', 'Pérez', '2025-07-26 09:00:00', 'UPDATE'),
(20210003, 'Carlos', 'Ramírez', '2025-07-26 11:45:00', 'INSERT'),
(20210002, 'María', 'López', '2025-07-26 12:10:00', 'DELETE'),
(20210004, 'Ana', 'Martínez', '2025-07-26 13:05:20', 'INSERT');
```

