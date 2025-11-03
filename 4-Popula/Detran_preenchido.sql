USE detran;

-- ============================
-- Tabela: categoria
INSERT INTO categoria (id_categoria, nome_categoria) VALUES
(12, 'Carro'),
(32, 'Moto'),
(35, 'Caminhão'),
(45, 'Ônibus'),
(54, 'Van');

-- ============================
-- Tabela: modelo
INSERT INTO modelo (id_modelo, nome_modelo) VALUES
(114533, 'Fiat Uno'),
(145372, 'Honda CG 160'),
(175293, 'Volvo FH'),
(127864, 'Mercedes-Benz Sprinter'),
(175285, 'Volkswagen Gol');

-- ============================
-- Tabela: proprietario
INSERT INTO proprietario (cpf, nome, endereco, bairro, cidade, estado, telefone, sexo, data_nascimento, idade) VALUES
('12345678901', 'Carlos Silva', 'Rua das Flores, 123', 'Centro', 'Brasília', 'DF', '(61)99999-1111', 'M', '1985-06-10', 40),
('23456789012', 'Ana Souza', 'Av. Goiás, 45', 'Jardim América', 'Goiânia', 'GO', '(62)98888-2222', 'F', '1990-03-25', 35),
('34567890123', 'João Pereira', 'Rua 7, QD 8', 'Setor Oeste', 'Anápolis', 'GO', '(62)97777-3333', 'M', '1978-12-15', 46),
('45678901234', 'Mariana Lima', 'Rua A, LT 9', 'Centro', 'Águas Lindas', 'GO', '(61)96666-4444', 'F', '1998-09-05', 27),
('56789012345', 'Pedro Alves', 'Rua B, 25', 'Vila Nova', 'Luziânia', 'GO', '(61)95555-5555', 'M', '2000-01-20', 25);

-- ============================
-- Tabela: veiculo
INSERT INTO veiculo (placa, chassi, cor, ano, categoria_id_categoria, modelo_id_modelo, proprietario_cpf) VALUES
('ABC1D23', '9BWZZZ377VT004251', 'Prata', '2015-01-01', 12, 114533, '12345678901'),
('XYZ9K87', '93RZZZ377VT004252', 'Preta', '2020-01-01', 32, 145372, '23456789012'),
('JKL3P56', '8AWZZZ377VT004253', 'Branca', '2018-01-01', 35, 175293, '34567890123'),
('MNO7Q12', '7HWZZZ377VT004254', 'Cinza', '2019-01-01', 54, 127864, '45678901234'),
('PQR2S45', '6QWZZZ377VT004255', 'Vermelha', '2022-01-01', 12, 175285, '56789012345');

-- ============================
-- Tabela: local
INSERT INTO local (id_local, latitude, longitude, velocidade_permitida) VALUES
(1, -15.7942, -47.8822, 60.0),
(2, -16.6869, -49.2648, 80.0),
(3, -16.3333, -48.9534, 50.0),
(4, -15.9333, -48.2833, 40.0),
(5, -15.8000, -47.9000, 70.0);

-- ============================
-- Tabela: infracao
INSERT INTO infracao (id_infracao, veiculo_placa, local_id_local, data_infracao) VALUES
(1, 'ABC1D23', 1, '2024-03-10'),
(2, 'XYZ9K87', 3, '2024-05-22'),
(3, 'JKL3P56', 2, '2024-06-18'),
(4, 'MNO7Q12', 4, '2024-07-05'),
(5, 'PQR2S45', 5, '2024-09-12');


