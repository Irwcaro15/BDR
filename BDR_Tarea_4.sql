CREATE TABLE AGENTE(
id_agente INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
apellido_paterno VARCHAR(50),
apellido_materno VARCHAR(50)
);

INSERT INTO Agente (id_agente, nombre, apellido_paterno, apellido_materno) VALUES (1, 'Pascual', 'Salvador', 'Tormo');
INSERT INTO Agente (id_agente, nombre, apellido_paterno, apellido_materno) VALUES (2, 'Amancio','Estrada' ,'Huertas');
INSERT INTO Agente (id_agente, nombre, apellido_paterno, apellido_materno) VALUES (3, 'Morena','Uribe' , 'Castañeda');
INSERT INTO Agente (id_agente, nombre, apellido_paterno, apellido_materno) VALUES (4, 'Felix', 'Mora' ,'Galán');
INSERT INTO Agente (id_agente, nombre, apellido_paterno, apellido_materno) VALUES (5, 'Camilo' ,'Barreda', 'Bustamante');
INSERT INTO Agente (id_agente, nombre, apellido_paterno, apellido_materno) VALUES (6, 'Crescencia', 'Milla' ,'Requena');
INSERT INTO Agente (id_agente, nombre, apellido_paterno, apellido_materno) VALUES (7, 'Aurelio' ,'Ferreras' ,'Valero');
INSERT INTO Agente (id_agente, nombre, apellido_paterno, apellido_materno) VALUES (8, 'Enrique', 'Mosquera', 'Batalla');
INSERT INTO Agente (id_agente, nombre, apellido_paterno, apellido_materno) VALUES (9, 'Alejo', 'Sainz' ,'Benítez');
INSERT INTO Agente (id_agente, nombre, apellido_paterno, apellido_materno) VALUES (10, 'Maximiliano', 'Tena' ,'Villalobos');
INSERT INTO Agente (id_agente, nombre, apellido_paterno, apellido_materno) VALUES (11, 'Liliana', 'Sureda' ,'Meléndez');
INSERT INTO Agente (id_agente, nombre, apellido_paterno, apellido_materno) VALUES (12, 'Azucena' ,'Uribe' ,'Franco');
INSERT INTO Agente (id_agente, nombre, apellido_paterno, apellido_materno) VALUES (13, 'Marciano' ,'Alberdi', 'Santamaria');
INSERT INTO Agente (id_agente, nombre, apellido_paterno, apellido_materno) VALUES (14, 'Dani', 'Barrio', 'Prat');
INSERT INTO Agente (id_agente, nombre, apellido_paterno, apellido_materno) VALUES (15, 'Teo' , 'Ocaña' , 'Montoya');
INSERT INTO Agente (id_agente, nombre, apellido_paterno, apellido_materno) VALUES (16, 'Osvaldo' , 'Cortina' , 'Palmer');
INSERT INTO Agente (id_agente, nombre, apellido_paterno, apellido_materno) VALUES (17, 'Marcelo' , 'Llopis' , 'Priego');

INSERT INTO Agente (id_agente, nombre, apellido_paterno, apellido_materno) VALUES 
(18, 'Julio', 'Cabrera' ,'Bermejo'),
(19, 'Maria' , 'Montero' , 'Almagro'),
(20, 'Felisa' , 'Barral' , 'Tudela');

select * from  Agente;


CREATE TABLE NOMBRE_DE_LA_CUENTA(
id_agente INT PRIMARY KEY,
nombre_cliente VARCHAR(50) NOT NULL,
apellido_paterno VARCHAR(50),
apellido_materno VARCHAR(50),
folio_fecha DATE,
FOREIGN KEY (id_agente) REFERENCES AGENTE(id_agente)
);

CREATE TABLE PROPUESTA(
fecha_fin DATE,
observaciones VARCHAR(200),
prima_neta DECIMAL(10,2),
FOREIGN KEY (id_agente) REFERENCES AGENTE(id_agente),
FOREIGN KEY (nombre_cliente) REFERENCES NOMBRE_DE_LA_CUENTA(nombre_cliente)
);