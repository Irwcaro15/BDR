 # **Evidencia 5 y 6** 

# **Evidencia 5: Generar datos**

Se generan datos de prubea de un grupo de estudiantes, para crear datos ficticios, se utiliza la aplicación de Mokaroot.

La aplicación es muy amigable, debido a su interfaz se genera la base de datos de los estudiantes.

En base a la tarea 5 podemos seguir con la tarea 6, debido a que, se busca calcular frecuencia o media, mínimos o máximos, cuartil cuyo resultado se diferente a la media, moda y reportar anomalias, hallazgos, dificultades y impletación de soluciones.

```SQL
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

```
Por lo cual, concluimos la tarea 5 con generar 30 datos en la aplicación Mokaroot.

## **Evidencia 6: Funciones de agregación para calcular en la base de datos**

En esta evidencia agregaremos el código desarrollado en DBeaver, en el cual se presentaran los puntos mencionados.

Se busca calcular frecuencia o media, mínimos o máximos, cuartil cuyo resultado se diferente a la media, moda y reportar anomalias, hallazgos, dificultades y impletación de soluciones.

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

```
Dentro del código se realizaron comentarios el cual se cumplen los puntos de la evidencia 6

## **Dificultades**
Se tuvo varias problemáticas con respecto al código, la más fuerte fue al hacer el ejercicio de encontrar el primer cuartil, el cual tuve que investigar con que funciones podría sacar la respuesta y el segundo punto fue el acomodo de las líneas del código para que este pudiera correr.