
drop table if exists Cuenta;
CREATE TABLE AGENTE(
id_agente INT PRIMARY KEY,
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


CREATE TABLE Cuenta (
    id_cuenta INT PRIMARY KEY,
    id_agente INT,
    nombre_cliente VARCHAR(50),
    apellido_paterno VARCHAR(50),
    fecha DATE,
    FOREIGN KEY (id_agente) REFERENCES AGENTE(id_agente)
);

select * from  Cuenta;


insert into Cuenta (id_cuenta, nombre_cliente, apellido_paterno, fecha) values (1, 'Christoper', 'Buckby', '05/31/2025');
insert into Cuenta (id_cuenta, nombre_cliente, apellido_paterno, fecha) values (2, 'Shaylynn', 'Jessep', '08/18/2024');
insert into Cuenta (id_cuenta, nombre_cliente, apellido_paterno, fecha) values (3, 'Abagael', 'Gallear', '11/17/2024');
insert into Cuenta (id_cuenta, nombre_cliente, apellido_paterno, fecha) values (4, 'Tootsie', 'Prescote', '05/16/2025');
insert into Cuenta (id_cuenta, nombre_cliente, apellido_paterno, fecha) values (5, 'Sutherland', 'Eaglestone', '03/08/2025');
insert into Cuenta (id_cuenta, nombre_cliente, apellido_paterno, fecha) values (6, 'Shep', 'Finnes', '04/13/2025');
insert into Cuenta (id_cuenta, nombre_cliente, apellido_paterno, fecha) values (7, 'Dennison', 'Christy', '08/03/2024');
insert into Cuenta (id_cuenta, nombre_cliente, apellido_paterno, fecha) values (8, 'Huey', 'Skeermer', '11/30/2024');
insert into Cuenta (id_cuenta, nombre_cliente, apellido_paterno, fecha) values (9, 'Leila', 'Stares', '12/05/2024');
insert into Cuenta (id_cuenta, nombre_cliente, apellido_paterno, fecha) values (10, 'Nikolia', 'McNutt', '07/19/2025');
insert into Cuenta (id_cuenta, nombre_cliente, apellido_paterno, fecha) values (11, 'Nick', 'Comelini', '07/08/2025');
insert into Cuenta (id_cuenta, nombre_cliente, apellido_paterno, fecha) values (12, 'Remington', 'Braybrooke', '08/19/2024');
insert into Cuenta (id_cuenta, nombre_cliente, apellido_paterno, fecha) values (13, 'Jeniece', 'Cluett', '03/20/2025');
insert into Cuenta (id_cuenta, nombre_cliente, apellido_paterno, fecha) values (14, 'Moria', 'Jzhakov', '07/03/2025');
insert into Cuenta (id_cuenta, nombre_cliente, apellido_paterno, fecha) values (15, 'Gill', 'Allinson', '11/02/2024');
insert into Cuenta (id_cuenta, nombre_cliente, apellido_paterno, fecha) values (16, 'Rhianon', 'Semble', '09/14/2024');
insert into Cuenta (id_cuenta, nombre_cliente, apellido_paterno, fecha) values (17, 'Dewitt', 'Benninck', '08/13/2024');
insert into Cuenta (id_cuenta, nombre_cliente, apellido_paterno, fecha) values (18, 'Joshia', 'Filipchikov', '07/27/2024');
insert into Cuenta (id_cuenta, nombre_cliente, apellido_paterno, fecha) values (19, 'Charlotta', 'Tovey', '10/10/2024');
insert into Cuenta (id_cuenta, nombre_cliente, apellido_paterno, fecha) values (20, 'Morgun', 'Tearney', '05/16/2025');

create table propuesta (
	fecha_fin DATE,
	prima VARCHAR(50)
);

select * from  propuesta;

insert into propuesta (fecha_fin, prima) values ('28/07/2024', '$653368.80');
insert into propuesta (fecha_fin, prima) values ('16/04/2025', '$730274.57');
insert into propuesta (fecha_fin, prima) values ('29/12/2024', '$276407.75');
insert into propuesta (fecha_fin, prima) values ('10/02/2025', '$810996.36');
insert into propuesta (fecha_fin, prima) values ('06/02/2025', '$416917.97');
insert into propuesta (fecha_fin, prima) values ('26/10/2024', '$132054.32');
insert into propuesta (fecha_fin, prima) values ('24/08/2024', '$205430.09');
insert into propuesta (fecha_fin, prima) values ('20/06/2025', '$959363.46');
insert into propuesta (fecha_fin, prima) values ('05/07/2025', '$430015.13');
insert into propuesta (fecha_fin, prima) values ('24/10/2024', '$658250.00');
insert into propuesta (fecha_fin, prima) values ('27/09/2024', '$752039.09');
insert into propuesta (fecha_fin, prima) values ('12/09/2024', '$839659.95');
insert into propuesta (fecha_fin, prima) values ('09/02/2025', '$355886.23');
insert into propuesta (fecha_fin, prima) values ('08/01/2025', '$622308.71');
insert into propuesta (fecha_fin, prima) values ('16/02/2025', '$832660.18');
insert into propuesta (fecha_fin, prima) values ('09/07/2025', '$526635.87');
insert into propuesta (fecha_fin, prima) values ('20/12/2024', '$771789.77');
insert into propuesta (fecha_fin, prima) values ('06/04/2025', '$915110.93');
insert into propuesta (fecha_fin, prima) values ('04/07/2025', '$664080.09');
insert into propuesta (fecha_fin, prima) values ('05/05/2025', '$664605.69');
