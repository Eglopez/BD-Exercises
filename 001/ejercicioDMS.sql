
-- En caso de no haberse creado nuevas tablas
TRUNCATE Gerencia;
TRUNCATE Departamento;
TRUNCATE Usuario;
TRUNCATE Lista;
TRUNCATE Tarea;

-- Se agregan datos de pruebas a las tablas
INSERT INTO Gerencia(nombre) VALUES
    ('Tecnologias de Informacion'),
    ('Mercadeo')
;

INSERT INTO Departamento(id_gerencia,nombre) VALUES
    (1,'Desarrollo Web'),
    (2,'Desarrollo Movil'),
    (3,'Diseño Digital')
;

INSERT INTO Usuario(id_departamento,nombre) VALUES
    (1,'Eduardo Lopez'),
    (2,'Ashly Mariel'),
    (3,'Scarlett Johnson')
;

INSERT INTO Lista(id_usuario,nombre) VALUES
    (1,'Bases de datos 1'),
    (2,'Sistemas Operativos 1'),
    (3,'Sistemas de Informacion'),
    (4,'Circuitos Electricos')
;

INSERT INTO Tarea(id_lista,descripcion) VALUES
    (1,'Lectura caps 1-3'),
    (1,'Diagramas ER'),
    (1,'Lectura caps 4-9'),
    (2,'Interrupciones'),
    (4,'Super Mallas')
;    

-- Actualización
-- UPDATE TABLA SET CAMPO = VALOR WHERE CONDICIONAL
UPDATE Tarea SET estado = "completada" WHERE id = 1;

-- Consultas
SELECT Lista.id AS "Identificador de Usuario", Tarea.estado AS "Estado de la tarea", COUNT(*) AS "Cantidad de tareas" FROM Tarea JOIN Lista ON Tarea.id_lista = 
Lista.id GROUP BY Lista.id_usuario, Tarea.estado;

-- Subconsulta
SELECT Lista.id_usuario AS "Identificador de Usuario", Tarea.estado AS "Estado de la tarea", COUNT(*) AS "Cantidad de tareas", (SELECT COUNT(*) FROM Tarea JOIN 
Lista ON Tarea.id_lista = Lista.id WHERE Lista.id_usuario = Usuario.id) AS "Total de registros del usuario", CONCAT(COUNT(*)/(SELECT COUNT(*) FROM Tarea JOIN
Lista ON Tarea.id_lista = Lista.id WHERE Lista.id_usuario = Usuario.id)*100," %") AS "Porcentaje" FROM Tarea JOIN Lista ON Tarea.id_lista = Lista.id JOIN
Usuario ON Lista.id_usuario = Usuario.id GROUP BY Lista.id_usuario, Tarea.estado; 


