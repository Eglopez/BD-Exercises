
-- En caso de no haberse creado nuevas tablas
TRUNCATE Gerencia;
TRUNCATE Departamento;
TRUNCATE Usuario;
TRUNCATE Lista;
TRUNCATE Tarea;

-- Se agregan datos de pruebas a las tablas
INSERT TO Gerencia(nombre) VALUES
    ('Tecnologias de Informacion'),
    ('Mercadeo')
;

INSERT TO Departamento(id_gerencia,nombre) VALUES
    (1,'Desarrollo Web'),
    (2,'Desarrollo Movil'),
    (3,'Diseño Digital')
;

INSERT TO Usuario(id_departamento,nombre) VALUES
    (1,'Eduardo Lopez'),
    (2,'Ashly Mariel'),
    (3,'Scarlett Johnson')
;

INSERT TO Lista(id_usuario,nombre) VALUES
    (1,'Bases de datos 1'),
    (2,'Sistemas Operativos 1'),
    (3,'Sistemas de Informacion')
    (4,'Circuitos Electricos')
;

INSERT TO Tarea(id_lista,descripcion) VALUES
    (1,'Lectura caps 1-3'),
    (1,'Diagramas ER'),
    (1,'Lectura caps 4-9'),
    (2,'Interrupciones'),
    (4,'Super Mallas')
;    


