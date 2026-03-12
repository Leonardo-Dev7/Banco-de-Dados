CREATE DATABASE Leonardo;
USE Leonardo;

CREATE TABLE Alunos (
    Id_Aluno INT AUTO_INCREMENT NOT NULL PRIMARY KEY,                     
    Nome VARCHAR(50) NOT NULL,
    Curso VARCHAR(50) NOT NULL,
    Email VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE Sala (
    Id_Sala INT AUTO_INCREMENT NOT NULL PRIMARY KEY,               
    Numero_Sala VARCHAR(50) NOT NULL UNIQUE,  
    Capacidade VARCHAR(50) NOT NULL,                   
    Professor VARCHAR(50) NOT NULL
);

CREATE TABLE Cursos (
    Id_Curso INT AUTO_INCREMENT NOT NULL PRIMARY KEY, 
    Id_Aluno INT NOT NULL,
    Id_Sala INT NOT NULL,
    Nome_Curso VARCHAR(50) NOT NULL,    
    FOREIGN KEY (Id_Aluno) REFERENCES Alunos(Id_Aluno),
    FOREIGN KEY (Id_Sala) REFERENCES Sala(Id_Sala)
);

INSERT INTO Alunos (Nome, Curso, Email) VALUES
('Marcos Silva', 'Banco de Dados', 'marcos.silva@email.com'),
('Ana Paula', 'Redes de Computadores', 'ana.paula@email.com'),
('João Pedro', 'Segurança da Informação', 'joao.pedro@email.com'),
('Beatriz Costa', 'Desenvolvimento Mobile', 'beatriz.costa@email.com'),
('Lucas Almeida', 'Inteligência Artificial', 'lucas.almeida@email.com'),
('Fernanda Souza', 'Engenharia de Software', 'fernanda.souza@email.com');

INSERT INTO Sala (Numero_Sala, Capacidade, Professor) VALUES
('D101', '45', 'Carla Mendes'),
('E202', '30', 'Rafael Gomes'),
('F303', '60', 'Rodrigo Silva');

INSERT INTO Cursos (Id_Aluno, Id_Sala, Nome_Curso) VALUES
(1, 1, 'Banco de Dados'),
(2, 1, 'Redes de Computadores'),
(3, 2, 'Segurança da Informação'),
(4, 2, 'Desenvolvimento Mobile'),
(5, 3, 'Inteligência Artificial'),
(6, 3, 'Engenharia de Software');


