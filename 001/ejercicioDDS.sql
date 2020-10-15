
-- Creación de la base de datos
CREATE DATABASE IF NOT EXISTS EmpresaDB;

-- Se selecciona la base de datos para su uso
USE EmpresaDB;

-- Se crean las tablas de bases de datos
    CREATE TABLE IF NOT EXISTS Gerencia(
        id INT AUTO_INCREMENT PRIMARY KEY,
        nombre VARCHAR(250) NOT NULL
    ) CHARACTER SET utf8;
    CREATE TABLE IF NOT EXISTS Departamento(
        id INT AUTO_INCREMENT PRIMARY KEY,
        id_gerencia INT NOT NULL,
        nombre VARCHAR(250) NOT NULL
    ) CHARACTER SET utf8;
    CREATE TABLE IF NOT EXISTS Usuario(
        id INT AUTO_INCREMENT PRIMARY KEY,
        id_departamento INT NOT NULL,
        nombre VARCHAR(250) NOT NULL
    ) CHARACTER SET utf8;
    CREATE TABLE IF NOT EXISTS Lista(
        id INT AUTO_INCREMENT PRIMARY KEY,
        id_usuario INT NOT NULL
        nombre TEXT NOT NULL,
        creacion TIMESTAMP DEFAULT NOW(),
        actualizacion TIMESTAMP DEFAULT NOW() ON UPDATE NOW(),
        estado ENUM('vigente','archivada','eliminada') DEFAULT 'vigente'
    ) CHARACTER SET utf8;
    CREATE TABLE IF NOT EXISTS Tarea(
        id INT AUTO_INCREMENT PRIMARY KEY,
        id_lista INT NOT NULL,
        descripcion TEXT NOT NULL,
        creaciion TIMESTAMP DEFAULT NOW(),
        actualizacion TIMESTAMP DEFAULT NOW() ON UPDATE NOW(),
        estado ENUM('completada','incompleta')
    ) CHARACTER SET utf8;