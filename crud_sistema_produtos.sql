CREATE DATABASE sistema_produtos;
USE sistema_produtos;

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    vendedor_id INT,
    FOREIGN KEY (vendedor_id) REFERENCES vendedores(id)
);

INSERT INTO produtos (nome, categoria, preco, estoque, vendedor_id) VALUES
('Mouse Gamer', 'Eletrônicos', 89.90, 25, 1),
('Teclado Mecânico', 'Eletrônicos', 199.90, 15, 2),
('Caderno 200 folhas', 'Papelaria', 12.50, 80, 1);

select * from produtos;

SELECT * FROM produtos WHERE categoria = 'Eletrônicos';

UPDATE produtos
SET preco = 99.90, estoque = 30
WHERE id = 1;

DELETE FROM produtos
WHERE id = 3;

CREATE TABLE vendedores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20)
);

INSERT INTO vendedores (nome, telefone) VALUES
('Romário', '11988887777'),
('Bebeto', '11999996666');

CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100)
);

INSERT INTO clientes (nome, email) VALUES
('Robson', 'robson@gmail.com'),
('Douglas', 'douglas@gmail.com');

CREATE TABLE compras (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    produto_id INT,
    quantidade INT NOT NULL,
    data_compra DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id),
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

INSERT INTO compras (cliente_id, produto_id, quantidade, data_compra) VALUES
(1, 1, 2, '2025-01-10'),
(2, 3, 1, '2025-02-05');