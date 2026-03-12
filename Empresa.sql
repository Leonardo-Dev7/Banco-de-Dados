CREATE DATABASE Empresa;
USE Empresa;

CREATE TABLE funcionarios (
  Id_Funcionarios INT(11) NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(50) DEFAULT NULL,
  Data_Nasc DATE DEFAULT NULL,
  CPF DECIMAL(11,0) DEFAULT NULL,
  Cargo VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (Id_Funcionarios)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

CREATE TABLE departamentos (
    Id_Departamentos INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(20),
    Supervisor INT,
    Gerente INT,
    Telefone VARCHAR(8),
    FOREIGN KEY (Supervisor) REFERENCES funcionarios(Id_Funcionarios),
    FOREIGN KEY (Gerente) REFERENCES funcionarios(Id_Funcionarios)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE custos (
  Id_Custos INT(11) NOT NULL AUTO_INCREMENT,
  Id_Funcionario INT(11) DEFAULT NULL,
  Salario DECIMAL(10,2) DEFAULT NULL,
  Beneficios DECIMAL(10,2) DEFAULT NULL,
  Descontos DECIMAL(10,2) DEFAULT NULL,
  Bonus DECIMAL(10,2) DEFAULT NULL,
  PRIMARY KEY (Id_Custos),
  KEY Id_Funcionario (Id_Funcionario),
  CONSTRAINT custos_ibfk_1 FOREIGN KEY (Id_Funcionario) REFERENCES funcionarios(Id_Funcionarios)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE produtos (
  Id_Produtos INT(11) NOT NULL AUTO_INCREMENT,
  Nome VARCHAR(50) DEFAULT NULL,
  Descricao VARCHAR(100) DEFAULT NULL,
  Valor DECIMAL(10,2) DEFAULT NULL,
  Placa_de_Video VARCHAR(30) DEFAULT NULL,
  Id_Departamento INT(11) DEFAULT NULL,
  PRIMARY KEY (Id_Produtos),
  KEY Id_Departamento (Id_Departamento),
  CONSTRAINT produtos_ibfk_1 FOREIGN KEY (Id_Departamento) REFERENCES departamentos(Id_Departamentos)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE impostos (
  Id_Impostos INT(11) NOT NULL AUTO_INCREMENT,
  Id_Produto INT(11) DEFAULT NULL,
  Nome_Imposto VARCHAR(50) DEFAULT NULL,
  Valor DECIMAL(10,2) DEFAULT NULL,
  Data_Emissao DATE DEFAULT NULL,
  PRIMARY KEY (Id_Impostos),
  KEY Id_Produto (Id_Produto),
  CONSTRAINT impostos_ibfk_1 FOREIGN KEY (Id_Produto) REFERENCES produtos(Id_Produtos)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE ferias (
  Id_Ferias INT(11) NOT NULL AUTO_INCREMENT,
  Id_Funcionario INT(11) DEFAULT NULL,
  Ferias_Acumuladas INT(11) DEFAULT NULL,
  Ferias_Utilizadas INT(11) DEFAULT NULL,
  Folga_Acumuladas INT(11) DEFAULT NULL,
  Folga_Utilizadas INT(11) DEFAULT NULL,
  PRIMARY KEY (Id_Ferias),
  KEY Id_Funcionario (Id_Funcionario),
  CONSTRAINT ferias_ibfk_1 FOREIGN KEY (Id_Funcionario) REFERENCES funcionarios(Id_Funcionarios)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

























INSERT INTO funcionarios (Nome, Data_Nasc, CPF, Cargo) VALUES
('Quico', '1998-01-12', '18692363156', 'Logistica'),
('Chavo', '1997-02-21', '35243319198', 'Marketing'),
('Don Ramón', '1995-09-02', '15131720129', 'Vendas'),
('Chilindrina', '1998-12-22', '44400501902', 'RH'),
('Ñoño', '1997-12-28', '76813224213', 'TI');

INSERT INTO departamentos (Nome, Supervisor, Gerente, Telefone) VALUES
('Logística', 16, 20, '99167105'),
('TI', 20, 20, '19101671'),
('Marketing', 17, 17, '27098768'),
('Vendas', 18, 18, '34872781'),
('RH', 19, 19, '29334009');

INSERT INTO produtos (Nome, Descricao, Valor, Placa_de_Video, Id_Departamento) VALUES
('RTX 5090', 'Placa de vídeo de última geração', 10000.00, 'RTX 5090', 1),
('RX 7600', 'Placa de vídeo de médio desempenho', 3500.00, 'RX 7600', 1),
('Intel Core I9', 'Processador de alta performance', 3200.00, 'Intel Core I9', 2),
('Ryzen 5500', 'Processador de custo acessível', 1200.00, 'Ryzen 5500', 2),
('GTX 1650', 'Placa de vídeo básica', 1200.00, 'GTX 1650', 1);

INSERT INTO custos (Id_Funcionario, Salario, Beneficios, Descontos, Bonus) VALUES
(16, 10000.00, 1000.00, 500.00, 200.00),
(17, 3500.00, 500.00, 200.00, 100.00),
(18, 3200.00, 400.00, 150.00, 150.00),
(19, 1200.00, 100.00, 50.00, 50.00),
(20, 1200.00, 150.00, 70.00, 70.00);

INSERT INTO impostos (Id_Produto, Nome_Imposto, Valor, Data_Emissao) VALUES
(1, '10%', 1000.00, '2025-09-05'),
(2, '7%', 245.00, '2025-09-05'),
(3, '8%', 256.00, '2025-09-05'),
(4, '5%', 60.00, '2025-09-05'),
(5, '6%', 72.00, '2025-09-05');

INSERT INTO ferias (Id_Funcionario, Ferias_Acumuladas, Ferias_Utilizadas, Folga_Acumuladas, Folga_Utilizadas) VALUES
(16, 0, 20, 1, 4),
(17, 20, 0, 3, 2),
(18, 10, 10, 0, 5),
(19, 10, 10, 1, 4),
(20, 0, 20, 2, 3);




select * from 


