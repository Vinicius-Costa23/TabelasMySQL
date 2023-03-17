CREATE DATABASE ast;
USE ast;

-- Tabela de cadastro 
CREATE TABLE cadastro(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome_fantasia VARCHAR(100) NOT NULL,
    cnpj CHAR(14) NOT NULL,
    contato VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL
);

INSERT INTO cadastro VALUES

(NULL,'empresa1', '12345678000190', '(11)98888-8888', 'empresa1@gmil.com', '123senha'),
(NULL,'empresa2','12345678000170', '(11)97777-7777', 'empresa2@gmail.com','123senha'),
(NULL,'empresa3', '12345678000188', '(11)96666-6666','empresa3@gmail.com','123senha'),
(NULL,'empresa4','12345678000199', '(11)95555-5555', 'empresa4@gmail.com', '123senha'),
(NULL,'empresa5','12345678000129','(11)92222-2222','empresa5@gmail.com','123senha'),
(NULL,'empresa6','12345678000100','(11)93333-3333','empresa6@gmail.com','123senha');

select * from cadastro;

-- Tabela dos sensores

CREATE TABLE sensor(
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(100),
    valor DOUBLE,
    modelo VARCHAR(100)
);

INSERT INTO sensor VALUES
(NULL, 'temperatura', 20, 'LM35'),
(NULL, 'umidade e temperatura', 15, 'DHT11'),
(NULL, 'luminosidade', 23, 'LDR5'),
(NULL, 'bloqueio', 10, 'TCRT5000');

select * from sensor;

-- Tabela de registros

CREATE TABLE registro(
    id INT PRIMARY KEY AUTO_INCREMENT,
    sensor_id INT,
    temperatura DOUBLE,
    local varchar(100),
    data_hora DATETIME
);

INSERT INTO registro VALUES
(DEFAULT, 1, 22.0, 'caminhão','2023-01-01 15:00:00'),
(DEFAULT, 1, 22.0, 'caminhão','2023-01-01 15:05:00'),
(DEFAULT, 1, 21.0, 'caminhão','2023-01-01 15:10:00'),
(DEFAULT, 1, 21.5, 'caminhão','2023-01-01 15:15:00'),
(DEFAULT, 1, 22.5, 'caminhão','2023-01-01 15:20:00'),
(DEFAULT, 1, 21.0, 'caminhão','2023-01-01 15:25:00');

select * from registro;