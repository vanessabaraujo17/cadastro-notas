create database if not exists cadastro_notas;

use cadastro_notas;

create table usuarios(
  id int auto_increment NOT NULL primary key,
  nome varchar(100) NOT NULL,
  email varchar(150) NOT NULL,
  senha varchar(100) NOT NULL,
  tipo_usuario int(5) NOT NULL,
  created_at datetime NOT NULL
);

create table tipos_usuarios(
  id int (11) NOT NULL primary key,
  tipo_usuario varchar (100) NOT NULL
);

create table resultados(
  id int (11) NOT NULL primary key,
  estudante_id int (100) NOT NULL,
  professor_id int (100) NOT NULL
);

create table data_resultado(
  id int (100) NOT NULL primary key,
  resultado_id int (100) NOT NULL,
  materia_id int (100) NOT NULL,
  notas varchar (100)
);

create table estudante(
  id int (100) NOT NULL primary key,
  nome_materia int (100) NOT NULL
);

create table materias(
  `id` int(11) NOT NULL,
  `nome_materia` varchar(100) NOT NULL
);

INSERT INTO
  `usuarios` (
    `id`,
    `nome`,
    `email`,
    `senha`,
    `tipo_usuario`,
    `created_at`
  )
VALUES
  (
    1,
    'Professor 1',
    'professor1@gmail.com',
    '25d55ad283aa400af464c76d713c07ad',
    2,
    '2024-11-04 00:00:00'
  ),
  (
    2,
    'Estudante 1',
    'estudante1@gmail.com',
    '124bd1296bec0d9d93c7b52a71ad8d5b',
    1,
    '2024-11-04 08:15:45'
  ),
  (
    3,
    'Estudante 2',
    'estudante2@gmail.com',
    '25f9e794323b453885f5181f1b624d0b',
    1,
    '2024-11-04 08:17:09'
  );

INSERT INTO
  `tipos_usuarios` (`id`, `tipo_usuario`)
VALUES
  (1, 'Estudante'),
  (2, 'Professor');

INSERT INTO
  `materias` (`id`, `nome_materia`)
VALUES
  (1, 'Ingles'),
  (2, 'Portugues'),
  (3, 'Matematica'),
  (4, 'Ciencias'),
  (5, 'Biologia');

INSERT INTO
  `resultados` (`id`, `estudante_id`, `professor_id`)
VALUES
  (1, 2, 1),
  (2, 3, 1);

INSERT INTO
  `data_resultado` (`id`, `resultado_id`, `materia_id`, `notas`)
VALUES
  (1, 2, 1, '9'),
  (2, 2, 2, '8'),
  (3, 2, 3, '7'),
  (4, 2, 4, '9'),
  (5, 2, 5, '10'),
  (6, 3, 1, '10'),
  (7, 3, 2, '8'),
  (8, 3, 3, '6'),
  (9, 3, 4, '7'),
  (10, 3, 5, '8');