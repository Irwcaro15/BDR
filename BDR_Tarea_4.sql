DROP database if exists tarea_4;
 
create database tarea_4;
 
use tarea_4;
 
drop table if exists AGENTE;
CREATE TABLE AGENTE(
id_agente INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
apellido_paterno VARCHAR(50),
apellido_materno VARCHAR(50)
);
 
INSERT INTO Agente (nombre, apellido_paterno, apellido_materno) VALUES ('Pascual', 'Salvador', 'Tormo');
INSERT INTO Agente (nombre, apellido_paterno, apellido_materno) VALUES ('Pascual', 'Salvador', 'Tormo');
INSERT INTO Agente (nombre, apellido_paterno, apellido_materno) VALUES ('Amancio','Estrada' ,'Huertas');
INSERT INTO Agente (nombre, apellido_paterno, apellido_materno) VALUES ('Morena','Uribe' , 'Castañeda');
INSERT INTO Agente (nombre, apellido_paterno, apellido_materno) VALUES ('Felix', 'Mora' ,'Galán');
INSERT INTO Agente (nombre, apellido_paterno, apellido_materno) VALUES ('Camilo' ,'Barreda', 'Bustamante');
INSERT INTO Agente (nombre, apellido_paterno, apellido_materno) VALUES ('Crescencia', 'Milla' ,'Requena');
INSERT INTO Agente (nombre, apellido_paterno, apellido_materno) VALUES ('Aurelio' ,'Ferreras' ,'Valero');
INSERT INTO Agente (nombre, apellido_paterno, apellido_materno) VALUES ('Enrique', 'Mosquera', 'Batalla');
INSERT INTO Agente (nombre, apellido_paterno, apellido_materno) VALUES ('Alejo', 'Sainz' ,'Benítez');
INSERT INTO Agente (nombre, apellido_paterno, apellido_materno) VALUES ('Maximiliano', 'Tena' ,'Villalobos');
INSERT INTO Agente (nombre, apellido_paterno, apellido_materno) VALUES ('Liliana', 'Sureda' ,'Meléndez');
INSERT INTO Agente (nombre, apellido_paterno, apellido_materno) VALUES ('Azucena' ,'Uribe' ,'Franco');
INSERT INTO Agente (nombre, apellido_paterno, apellido_materno) VALUES ('Marciano' ,'Alberdi', 'Santamaria');
INSERT INTO Agente (nombre, apellido_paterno, apellido_materno) VALUES ('Dani', 'Barrio', 'Prat');
INSERT INTO Agente (nombre, apellido_paterno, apellido_materno) VALUES ('Teo' , 'Ocaña' , 'Montoya');
INSERT INTO Agente (nombre, apellido_paterno, apellido_materno) VALUES ('Osvaldo' , 'Cortina' , 'Palmer');
INSERT INTO Agente (nombre, apellido_paterno, apellido_materno) VALUES ('Marcelo' , 'Llopis' , 'Priego');
 
INSERT INTO Agente (nombre, apellido_paterno, apellido_materno) VALUES
('Julio', 'Cabrera' ,'Bermejo'),
('Maria' , 'Montero' , 'Almagro'),
('Felisa' , 'Barral' , 'Tudela');
 
select * from  Agente;
 
drop table if exists CUENTA;
CREATE TABLE CUENTA(
id_cuenta INT PRIMARY KEY AUTO_INCREMENT,
nombre_cliente VARCHAR(50) NOT NULL,
apellido_paterno VARCHAR(50),
apellido_materno VARCHAR(50),
folio_fecha DATE,
fk_agente INT,
FOREIGN KEY (fk_agente) REFERENCES AGENTE(id_agente)
);
 
drop table if exists PROPUESTA;
CREATE TABLE PROPUESTA(
id_propuesta INT PRIMARY KEY AUTO_INCREMENT,
fecha_fin DATE,
observaciones VARCHAR(200),
prima_neta DECIMAL(10,2),
fk_agente INT,
FOREIGN KEY (FK_agente) REFERENCES AGENTE(id_agente),
fk_cliente INT,
FOREIGN KEY (fk_cliente) REFERENCES CUENTA(id_cuenta)
);