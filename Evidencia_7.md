 # **Evidencia 7** 

# **Inconsistencias en la base de datos**

Para la evidencia No. 7, nos apoyaremos con el código que se desarrollo en la evidencia No. 5 y 6.

El código muestra la frecuencia o media, mínimos o máximos, cuartil cuyo resultado se diferente a la media y moda, por el cual, haremos subconsultas para resolver preguntas.

Dentro de la tabla de Estudiantes, al poner los datos, se duplicaron algunas filas, para corregir esas inconsistencias, podemos utilizar la siguiente parte.

```SQL
DELETE FROM Estudiantes
WHERE Nombre = "Kaiser";
```

Ahora dentro del siguiente código hicimos las siguientes consultas.

### **Subconsulta Calificación**

Obtenemos estudiantes con calificación superior a la media:

```SQL
SELECT * FROM Estudiantes
WHERE Calificacion > (
    SELECT AVG(Calificacion) FROM Estudiantes
);
```

### **Subconsulta altura máxima por género**

Obtenemos una vista temporal para que muestre la altura máxima por género:

```SQL
SELECT gender, MAX(Altura) AS MaxAltura
FROM (
    SELECT gender, Altura FROM Estudiantes
) AS sub
GROUP BY gender;
```

### **Subconsulta géneros con más de 3 estudiantes**

Obtenemos una vista temporal para filtrar grupos, por ejemplo, obtener géneros con más de 3 estudiantes:

```SQL
SELECT gender, COUNT(*) AS Total
FROM Estudiantes
GROUP BY gender
HAVING COUNT(*) > 3;
```

Con esta parte concluimos las Subconsultas y respondemos algunas prenguntas respecto al código de la Evidencia No. 6 

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
```
