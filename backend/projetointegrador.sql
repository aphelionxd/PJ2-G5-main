CREATE DATABASE projetointegrador;

USE projetointegrador;

CREATE TABLE usuarios (
    id INT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    email VARCHAR(200) NOT NULL,
    senha VARCHAR(45) NOT NULL,
    token VARCHAR(45)
);

CREATE TABLE cliente (
    id INT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL, 
    saldo DECIMAL(10, 2) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    cadastrado_usuario_id INT PRIMARY KEY,
    FOREIGN KEY (cadastrado_usuario_id) REFERENCES usuarios(id)
); INSERT INTO cliente (id, nome, saldo, cpf, cadastrado_usuario_id)
VALUES (1, 'Sergio', 100, '123.456.789-01', 4);

CREATE TABLE linha (
    id INT PRIMARY KEY,
    inicio DATETIME,
    fim DATETIME,
    localinicio VARCHAR(45),
    localfim VARCHAR(45)
);

CREATE TABLE viagem (
    id INT PRIMARY KEY,
    data DATETIME,
    linha_id INT,
    motorista_id INT,
    onibus_id INT,
    FOREIGN KEY (linha_id) REFERENCES linha(id),
    FOREIGN KEY (motorista_id) REFERENCES motorista(id),
    FOREIGN KEY (onibus_id) REFERENCES onibus(id)
);

CREATE TABLE motorista (
    id INT PRIMARY KEY,
    nome VARCHAR(200) NOT NULL,
    foto VARCHAR(200) NOT NULL
);INSERT INTO motorista (id, nome, foto)
VALUES
    (1, 'João da Silva', 'foto_joao.jpg'),
    (2, 'Maria Souza', 'foto_maria.jpg'),
    (3, 'Pedro Santos', 'foto_pedro.jpg');

CREATE TABLE onibus (
    id INT PRIMARY KEY,
    placa VARCHAR(8)
);

