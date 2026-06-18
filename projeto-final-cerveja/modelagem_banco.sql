-- =============================================================
-- MODELAGEM INICIAL DE TABELAS - CERVEJARIA MESTRE ALEIJADINHO
-- Disciplina: PRO725 / PRO920
-- =============================================================

-- 1. TABELA DE MATÉRIA-PRIMA
-- Armazena os ingredientes utilizados na produção das cervejas.
CREATE TABLE Materia_Prima (
    id_materia_prima INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    fornecedor VARCHAR(100),
    unidade_medida VARCHAR(20), -- kg, g, L, etc.
    estoque_atual DECIMAL(10, 2),
    custo_unitario DECIMAL(10, 2)
);

-- Inserção de dados de teste (Insumos)
INSERT INTO Materia_Prima (nome, fornecedor, unity_medida, estoque_atual, custo_unitario) VALUES
('Malte de Cevada Base', 'Agrária Malte', 'kg', 500.00, 7.50),
('Lúpulo Citra', 'BarthHaas', 'kg', 25.00, 180.00),
('Levedura Ale', 'Fermentis', 'unidade', 15.00, 45.00),
('Grãos de Café Maturados', 'Produtor Local Ouro Preto', 'kg', 10.00, 35.00);


-- 2. TABELA DE RECEITA / PRODUTO
-- Define os estilos de cerveja artesanal produzidos.
CREATE TABLE Receita_Cerveja (
    id_receita INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL, -- Ex: Mestre Aleijadinho Stout
    estilo VARCHAR(50),                 -- Pilsen, IPA, Stout, etc.
    percentual_abv DECIMAL(4, 2),       -- Teor alcoólico
    peso_unitario_litros DECIMAL(5, 2), -- Volume da garrafa/barril
    tempo_producao_dias INT             -- Dias de fermentação/maturação
);

-- Inserção de dados de teste (Estilos citados no seu texto)
INSERT INTO Receita_Cerveja (nome_produto, estilo, percentual_abv, peso_unitario_litros, tempo_producao_dias) VALUES
('Mestre Aleijadinho Pilsen', 'Pilsen', 4.50, 0.50, 14),
('Mestre Aleijadinho Stout', 'Stout', 6.20, 0.50, 21),
('Mestre Aleijadinho IPA', 'IPA', 6.50, 0.50, 18),
('Mestre Aleijadinho Cream Ale', 'Cream Ale', 4.80, 0.50, 15);