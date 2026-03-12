CREATE DATABASE Escola;
USE Escola;


CREATE TABLE Alunos (
    Id_Aluno INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Nome_Aluno VARCHAR(50) NOT NULL,
    Nasc_Aluno DATE NOT NULL)
DEFAULT CHARSET = utf8;


CREATE TABLE Cursos (
    Id_Curso INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    Nome_Curso VARCHAR(80) NOT NULL,
    Dura_Curso INT NOT NULL) 
DEFAULT CHARSET = utf8;

CREATE TABLE Turmas (
    Id_Turma INT NOT NULL,
    Id_Aluno INT NOT NULL,
    Id_Curso INT NOT NULL,
    Inicio_Curso DATE,
    Term_Curso DATE,
    PRIMARY KEY (Id_Turma, Id_Aluno), 
    FOREIGN KEY (Id_Aluno) REFERENCES Alunos (Id_Aluno),
    FOREIGN KEY (Id_Curso) REFERENCES Cursos (Id_Curso)) 
DEFAULT CHARSET = utf8;


INSERT INTO Alunos VALUES
(1, 'Kuki Sanban', '1998-06-01'),
(2, 'Wallabee Bettles', '1998-05-22'),
(3, 'Horácio P. Genaro', '1998-05-26'),
(4, 'Nico Uno', '1998-01-11'),
(5, 'Betty Genaro', '1998-01-17'),
(6, 'Abigail Oliveira Lincoln', '1998-09-14');


INSERT INTO Cursos VALUES
(10, 'Administração', 3000), 
(20, 'Análise e Desenvolvimento de Sistemas', 2000), 
(30, 'Mecatrônica', 3600);



INSERT INTO Turmas VALUES
(300, 6, 30, '2025-01-27', '2029-12-17'),
(300, 1, 30, '2025-01-27', '2029-12-17'),
(100, 3, 10, '2025-01-27', '2029-12-14'),
(100, 4, 10, '2025-01-27', '2029-12-14'),
(200, 2, 20, '2025-01-27', '2028-12-15'),
(200, 5, 20, '2025-01-27', '2028-12-15');

