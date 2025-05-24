CREATE TABLE livros(
    id INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    ano_publicacao INT,
    editora VARCHAR(255),
    isbn VARCHAR(20),
    quantidade INT DEFAULT 1
    
);
INSERT INTO livros
    (titulo, autor, ano_publicacao, editora, isbn, quantidade)
VALUES 
('Dom Casmurro', 'Machado de Assis', '1899', 'Livraria Garnier', '978-85-359-0277-1', 3);

SELECT * FROM livros;

CREATE TABLE categorias(
    id INT KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL UNIQUE
);

ALTER TABLE livros ADD COLUMN categorias_id INT;
ALTER TABLE livros ADD FOREIGN KEY (categorias_id) REFERENCES categorias(id);

INSERT INTO categorias (nome)
VALUES ('Ficção'),
('Romance'),
('Ciência'),
('História');

SELECT * FROM categorias;

INSERT INTO livros (titulo, autor, ano_publicacao, editora, isbn, quantidade, categorias_id)
VALUES('Dom Casmurro', 'Machado de Assis', 1899, 'Editora XYZ', '978-85-359-0277-1', 3, 7);
