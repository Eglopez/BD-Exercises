-- @author eglopezl@unah.hn
-- @date 22/10/2020

-- Creación de Bases de Datos
CREATE DATABASE IF NOT EXISTS GameCatalogue;

-- Seleccionar la base para su uso
USE GameCatalogue;

-- Se crean las tablas de la base de datos
CREATE TABLE IF NOT EXISTS Player(
    id INT AUTO_INCREMENT PRIMARY KEY,
    tex_name TEXT NOT NULL,
    time_creation TIMESTAMP DEFAULT NOW(),
    cod_state ENUM('active','blocked','inactive') DEFAULT 'active'
)CHARACTER SET utf8;

CREATE TABLE IF NOT EXISTS Game(
    id Int AUTO_INCREMENT PRIMARY KEY,
    tex_name TEXT NOT NULL,
)Character SET utf8;

-- Aplicarla restricción de Integridad Relacional
CREATE TABLE IF NOT EXISTS GamePlayer(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_game INT NOT NULL,
    id_player INT NOT NULL,
    time_lastPlayed TIMESTAMP NULL,
    cod_state ENUM('on-progress','not-played','beated') DEFAULT 'not-played'
) CHARACTER SET utf8;

-- Eliminar Tablas
/*
DROP TABLE Player;
DROP TABLE Game;
DROP TABLE GamePlayer;
*/

-- Eliminar BAse de DAtos
-- DROP DATABASE GameCatalogue;