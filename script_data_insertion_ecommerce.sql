USE projeto_ecommerce;

-- Persistindo os dados nas tabelas
-- Inserindo dados na tabela clients
INSERT INTO clients (Fname, Mint, Lname, Address, ClientType, Document) VALUES
('João', 'A.', 'Silva', 'Rua das Flores, 123 - São Paulo/SP', 'PF', '12345678901'),
('Maria', 'B.', 'Santos', 'Av. Paulista, 456 - São Paulo/SP', 'PF', '23456789012'),
('Pedro', 'C.', 'Oliveira', 'Rua XV de Novembro, 789 - Rio de Janeiro/RJ', 'PF', '34567890123'),
('Ana', 'D.', 'Costa', 'Av. Brasil, 101 - Belo Horizonte/MG', 'PF', '45678901234'),
('Carlos', 'E.', 'Pereira', 'Rua da Praia, 202 - Salvador/BA', 'PF', '56789012345'),
('Empresa', 'X', 'Tech Ltda', 'Av. Faria Lima, 1000 - São Paulo/SP', 'PJ', '12345678000101'),
('Comércio', 'Y', 'Varejo ME', 'Rua 7 de Setembro, 500 - Curitiba/PR', 'PJ', '23456789000102'),
('Indústria', 'Z', 'Produtos SA', 'Av. Pres. Vargas, 1500 - Rio de Janeiro/RJ', 'PJ', '34567890000103'),
('Fernanda', 'F.', 'Lima', 'Rua das Palmeiras, 303 - Porto Alegre/RS', 'PF', '67890123456'),
('Ricardo', 'G.', 'Mendes', 'Av. Amazonas, 404 - Belém/PA', 'PF', '78901234567'),
('Comércio', 'A', 'Alimentos EIRELI', 'Rua do Mercado, 600 - Fortaleza/CE', 'PJ', '45678901000104'),
('Serviços', 'B', 'Técnicos Ltda', 'Av. Getúlio Vargas, 700 - Recife/PE', 'PJ', '56789012000105'),
('Juliana', 'H.', 'Rocha', 'Rua das Acácias, 505 - Brasília/DF', 'PF', '89012345678'),
('Marcos', 'I.', 'Ferreira', 'Av. Paulista, 808 - São Paulo/SP', 'PF', '90123456789'),
('Indústria', 'C', 'Móveis ME', 'Rua Industrial, 900 - Manaus/AM', 'PJ', '67890123000106'),
('Patrícia', 'J.', 'Alves', 'Rua dos Ipês, 606 - Florianópolis/SC', 'PF', '01234567890'),
('Comércio', 'D', 'Eletrônicos Ltda', 'Av. República, 1100 - Vitória/ES', 'PJ', '78901234000107'),
('Roberto', 'K.', 'Nunes', 'Rua Central, 707 - Goiânia/GO', 'PF', '11223344556'),
('Serviços', 'E', 'Educacionais SA', 'Av. Cultura, 1200 - Campinas/SP', 'PJ', '89012345000108'),
('Tecnologia', 'F', 'Inovação Ltda', 'Rua da Inovação, 1300 - São José/SC', 'PJ', '90123456000109'),
('Sandra', 'L.', 'Martins', 'Av. Beira Mar, 1400 - Natal/RN', 'PF', '22334455667'),
('Comércio', 'G', 'Vestuário ME', 'Rua da Moda, 1500 - São Paulo/SP', 'PJ', '11223344000110'),
('Fábio', 'M.', 'Castro', 'Rua dos Coqueiros, 1600 - Maceió/AL', 'PF', '33445566778'),
('Indústria', 'H', 'Brinquedos Ltda', 'Av. das Crianças, 1700 - Joinville/SC', 'PJ', '22334455000111'),
('Luciana', 'N.', 'Dias', 'Rua das Flores, 1800 - Cuiabá/MT', 'PF', '44556677889'),
('Comércio', 'I', 'Importados SA', 'Av. Internacional, 1900 - Santos/SP', 'PJ', '33445566000112'),
('Rafael', 'O.', 'Barbosa', 'Rua do Comércio, 2000 - Londrina/PR', 'PF', '55667788990'),
('Serviços', 'J', 'Digitais ME', 'Av. Digital, 2100 - Porto Alegre/RS', 'PJ', '44556677000113'),
('Vanessa', 'P.', 'Ribeiro', 'Rua das Árvores, 2200 - João Pessoa/PB', 'PF', '66778899001'),
('Comércio', 'K', 'Natural Ltda', 'Av. Ecológica, 2300 - Campo Grande/MS', 'PJ', '55667788000114');

-- Inserindo dados na tabela client_pf
INSERT INTO client_pf (idClientPF, CPF, BirthDate) VALUES
(1, '12345678901', '1985-03-15'),
(2, '23456789012', '1990-07-22'),
(3, '34567890123', '1982-11-30'),
(4, '45678901234', '1995-05-18'),
(5, '56789012345', '1988-12-10'),
(9, '67890123456', '1992-09-25'),
(10, '78901234567', '1987-04-03'),
(13, '89012345678', '1993-08-14'),
(14, '90123456789', '1980-01-20'),
(16, '01234567890', '1996-06-08'),
(18, '11223344556', '1984-02-28'),
(21, '22334455667', '1991-10-05'),
(23, '33445566778', '1989-03-12'),
(25, '44556677889', '1994-07-19'),
(27, '55667788990', '1986-11-25'),
(29, '66778899001', '1997-04-30');

-- Inserindo dados na tabela client_pj
INSERT INTO client_pj (idClientPJ, CNPJ, TradeName) VALUES
(6, '12345678000101', 'Tech Solutions'),
(7, '23456789000102', 'Super Varejo'),
(8, '34567890000103', 'Indústria Z'),
(11, '45678901000104', 'Mercado Fresco'),
(12, '56789012000105', 'Serviços Técnicos Rápidos'),
(15, '67890123000106', 'Móveis Conforto'),
(17, '78901234000107', 'Eletro Shop'),
(19, '89012345000108', 'Educa Brasil'),
(20, '90123456000109', 'Tech Innovation'),
(22, '11223344000110', 'Fashion Store'),
(24, '22334455000111', 'Brinquedos Alegria'),
(26, '33445566000112', 'Importados Premium'),
(28, '44556677000113', 'Digital Services'),
(30, '55667788000114', 'Produtos Naturais');

-- Inserindo dados na tabela product
INSERT INTO product (Pname, ClassificationKids, Category, Rating, Size) VALUES
('Smartphone', FALSE, 'Eletrônico', 4.5, 'M'),
('Notebook', FALSE, 'Eletrônico', 4.8, 'G'),
('Camiseta', FALSE, 'Vestimenta', 4.2, 'M'),
('Jeans', FALSE, 'Vestimenta', 4.3, 'G'),
('Boneca', TRUE, 'Brinquedos', 4.6, 'P'),
('Carrinho', TRUE, 'Brinquedos', 4.4, 'M'),
('Arroz', FALSE, 'Alimentos', 4.7, 'G'),
('Feijão', FALSE, 'Alimentos', 4.5, 'M'),
('Sofá', FALSE, 'Móveis', 4.9, 'GG'),
('Mesa', FALSE, 'Móveis', 4.7, 'G'),
('Tablet', FALSE, 'Eletrônico', 4.3, 'M'),
('Fone', FALSE, 'Eletrônico', 4.1, 'P'),
('Vestido', FALSE, 'Vestimenta', 4.4, 'M'),
('Tênis', FALSE, 'Vestimenta', 4.6, 'G'),
('Quebra-C', TRUE, 'Brinquedos', 4.2, 'M'),
('Lego', TRUE, 'Brinquedos', 4.8, 'G'),
('Açúcar', FALSE, 'Alimentos', 4.3, 'M'),
('Café', FALSE, 'Alimentos', 4.9, 'P'),
('Cadeira', FALSE, 'Móveis', 4.5, 'M'),
('Estante', FALSE, 'Móveis', 4.6, 'GG'),
('Smart TV', FALSE, 'Eletrônico', 4.7, 'GG'),
('Mouse', FALSE, 'Eletrônico', 4.0, 'P'),
('Casaco', FALSE, 'Vestimenta', 4.3, 'G'),
('Saia', FALSE, 'Vestimenta', 4.1, 'M'),
('Bola', TRUE, 'Brinquedos', 4.5, 'M'),
('Bicicleta', TRUE, 'Brinquedos', 4.7, 'GG'),
('Óleo', FALSE, 'Alimentos', 4.2, 'P'),
('Farinha', FALSE, 'Alimentos', 4.4, 'M'),
('Cama', FALSE, 'Móveis', 4.8, 'GG'),
('Guarda-R', FALSE, 'Móveis', 4.6, 'G');

-- Inserindo dados na tabela product_storage
INSERT INTO product_storage (StorageLocation, Quantity) VALUES
('São Paulo - Centro', 1000),
('Rio de Janeiro - Norte', 800),
('Belo Horizonte - Sul', 600),
('Curitiba - Leste', 700),
('Porto Alegre - Oeste', 500),
('Salvador - Centro', 900),
('Fortaleza - Norte', 750),
('Recife - Sul', 650),
('Brasília - Leste', 550),
('Manaus - Oeste', 450),
('Belém - Centro', 850),
('Goiânia - Norte', 720),
('Campinas - Sul', 580),
('São Luís - Leste', 480),
('Maceió - Oeste', 420),
('Natal - Centro', 780),
('João Pessoa - Norte', 680),
('Teresina - Sul', 530),
('Florianópolis - Leste', 490),
('Vitória - Oeste', 440),
('Cuiabá - Centro', 760),
('Campo Grande - Norte', 640),
('Aracaju - Sul', 520),
('Palmas - Leste', 470),
('Porto Velho - Oeste', 430),
('Rio Branco - Centro', 710),
('Macapá - Norte', 590),
('Boa Vista - Sul', 460),
('São José - Leste', 410),
('Joinville - Oeste', 390);

-- Inserindo dados na tabela supplier
INSERT INTO supplier (SocialName, CNPJ, contact) VALUES
('Fornecedor Eletrônicos Ltda', '12345678000101', '11999991111'),
('Indústria Têxtil SA', '23456789000102', '21999992222'),
('Fábrica Brinquedos ME', '34567890000103', '31999993333'),
('Distribuidora Alimentos', '45678901000104', '41999994444'),
('Marcenaria Móveis Ltda', '56789012000105', '51999995555'),
('Importadora Tech SA', '67890123000106', '61999996666'),
('Confecções Moda ME', '78901234000107', '71999997777'),
('Indústria Plásticos', '89012345000108', '81999998888'),
('Cooperativa Agrícola', '90123456000109', '91999999999'),
('Comércio Eletro', '11223344000110', '11988881111'),
('Fábrica Calçados', '22334455000111', '21988882222'),
('Distribuidora Bebidas', '33445566000112', '31988883333'),
('Indústria Papel', '44556677000113', '41988884444'),
('Comércio Materiais', '55667788000114', '51988885555'),
('Importadora Diversos', '66778899000115', '61988886666'),
('Fornecedor Roupas', '77889900000116', '71988887777'),
('Indústria Metais', '88990011000117', '81988888888'),
('Distribuidora Limpeza', '99001122000118', '91988889999'),
('Fábrica Eletrodomésticos', '11223344550119', '11977771111'),
('Comércio Utilidades', '22334455660120', '21977772222'),
('Importadora Luxo', '33445566770121', '31977773333'),
('Indústria Cosméticos', '44556677880122', '41977774444'),
('Distribuidora Pet', '55667788990123', '51977775555'),
('Fábrica Esportes', '66778899000124', '61977776666'),
('Comércio Ferragens', '77889900110125', '71977777777'),
('Indústria Vidros', '88990011220126', '81977778888'),
('Distribuidora Auto', '99001122330127', '91977779999'),
('Fábrica Instrumentos', '11223344550128', '11966661111'),
('Comércio Artigos', '22334455660129', '21966662222'),
('Importadora Design', '33445566770130', '31966663333');

-- Inserindo dados na tabela seller
INSERT INTO seller (SocialName, AbstName, CNPJ, CPF, Location, Contact) VALUES
('Loja Eletrônicos Plus', 'Eletrônicos Plus', '12345678000101', NULL, 'São Paulo - SP', '11999991111'),
('Moda Fashion Ltda', 'Moda Fashion', '23456789000102', NULL, 'Rio de Janeiro - RJ', '21999992222'),
('Brinquedos Kids ME', 'Brinquedos Kids', '34567890000103', NULL, 'Belo Horizonte - MG', '31999993333'),
('Super Mercado Bom', 'Mercado Bom', '45678901000104', NULL, 'Curitiba - PR', '41999994444'),
('Móveis Conforto SA', 'Móveis Conforto', '56789012000105', NULL, 'Porto Alegre - RS', '51999995555'),
('Vendedor João Silva', NULL, NULL, '123456789', 'Salvador - BA', '71988881111'),
('Loja Tech Center', 'Tech Center', '67890123000106', NULL, 'Fortaleza - CE', '85999996666'),
('Moda Elegante ME', 'Moda Elegante', '78901234000107', NULL, 'Recife - PE', '81999997777'),
('Distribuidora Rápida', 'Distribuidora Rápida', '89012345000108', NULL, 'Brasília - DF', '61999998888'),
('Vendedora Maria Santos', NULL, NULL, '234567890', 'Manaus - AM', '92999999999'),
('Eletro Shop Online', 'Eletro Shop', '90123456000109', NULL, 'Belém - PA', '91988881111'),
('Loja Esportes Max', 'Esportes Max', '11223344000110', NULL, 'Goiânia - GO', '62988882222'),
('Vendedor Pedro Costa', NULL, NULL, '345678901', 'Campinas - SP', '19988883333'),
('Casa e Decoração', 'Casa Decora', '22334455000111', NULL, 'São Luís - MA', '98988884444'),
('Alimentos Naturais ME', 'Alimentos Naturais', '33445566000112', NULL, 'Maceió - AL', '82988885555'),
('Vendedora Ana Lima', NULL, NULL, '456789012', 'Natal - RN', '84988886666'),
('Tech Importados', 'Tech Import', '44556677000113', NULL, 'João Pessoa - PB', '83988887777'),
('Moda Jovem Ltda', 'Moda Jovem', '55667788000114', NULL, 'Teresina - PI', '86988888888'),
('Vendedor Carlos Rocha', NULL, NULL, '567890123', 'Florianópolis - SC', '48988889999'),
('Brinquedos Educa', 'Brinquedos Educa', '66778899000115', NULL, 'Vitória - ES', '27977771111'),
('Super Atacado', 'Super Atacado', '77889900000116', NULL, 'Cuiabá - MT', '65977772222'),
('Vendedora Juliana Dias', NULL, NULL, '678901234', 'Campo Grande - MS', '67977773333'),
('Eletrônicos Premium', 'Eletrônicos Premium', '88990011000117', NULL, 'Aracaju - SE', '79977774444'),
('Moda Plus Size', 'Moda Plus', '99001122000118', NULL, 'Palmas - TO', '63977775555'),
('Vendedor Roberto Alves', NULL, NULL, '789012345', 'Porto Velho - RO', '69977776666'),
('Casa Conforto', 'Casa Conforto', '11223344550119', NULL, 'Rio Branco - AC', '68977777777'),
('Alimentos Saúde', 'Alimentos Saúde', '22334455660120', NULL, 'Macapá - AP', '96977778888'),
('Vendedora Sandra Nunes', NULL, NULL, '890123456', 'Boa Vista - RR', '95977779999'),
('Tech Solutions', 'Tech Solutions', '33445566770121', NULL, 'São José - SC', '48966661111'),
('Moda Casual ME', 'Moda Casual', '44556677880122', NULL, 'Joinville - SC', '47966662222');

-- Inserindo dados na tabela product_seller
INSERT INTO product_seller (idPSSeller, idPSProduct, ProdQuantity) VALUES
(1, 1, 50), (1, 2, 30), (1, 11, 40),
(2, 3, 100), (2, 4, 80), (2, 13, 60),
(3, 5, 200), (3, 6, 150), (3, 15, 100),
(4, 7, 300), (4, 8, 250), (4, 17, 200),
(5, 9, 20), (5, 10, 25), (5, 19, 30),
(6, 12, 80), (6, 22, 120),
(7, 1, 40), (7, 11, 35), (7, 21, 15),
(8, 3, 90), (8, 13, 70), (8, 23, 50),
(9, 5, 180), (9, 15, 110), (9, 25, 80),
(10, 7, 280), (10, 17, 220), (10, 27, 150),
(11, 9, 18), (11, 19, 28), (11, 29, 12),
(12, 2, 25), (12, 12, 75), (12, 22, 100),
(13, 4, 70), (13, 14, 85), (13, 24, 65),
(14, 6, 130), (14, 16, 95), (14, 26, 45),
(15, 8, 230), (15, 18, 180), (15, 28, 130),
(16, 10, 22), (16, 20, 32), (16, 30, 18),
(17, 1, 45), (17, 11, 38), (17, 21, 17),
(18, 3, 85), (18, 13, 65), (18, 23, 48),
(19, 5, 170), (19, 15, 105), (19, 25, 75),
(20, 7, 270), (20, 17, 210), (20, 27, 140),
(21, 9, 16), (21, 19, 26), (21, 29, 14),
(22, 2, 28), (22, 12, 72), (22, 22, 95),
(23, 4, 75), (23, 14, 80), (23, 24, 60),
(24, 6, 140), (24, 16, 90), (24, 26, 50),
(25, 8, 240), (25, 18, 170), (25, 28, 125),
(26, 10, 24), (26, 20, 30), (26, 30, 20),
(27, 1, 42), (27, 11, 36), (27, 21, 16),
(28, 3, 88), (28, 13, 68), (28, 23, 52),
(29, 5, 175), (29, 15, 108), (29, 25, 78),
(30, 7, 265), (30, 17, 215), (30, 27, 145);

-- Inserindo dados na tabela orders
INSERT INTO orders (idOrderClient, OrderStatus, OrderDescription, FreightValue) VALUES
(1, 'Confirmado', 'Pedido de eletrônicos', 25.50),
(2, 'Em Processamento', 'Roupas e acessórios', 18.00),
(3, 'Confirmado', 'Brinquedos infantis', 12.75),
(4, 'Confirmado', 'Produtos alimentícios', 22.30),
(5, 'Em Processamento', 'Móveis para casa', 150.00),
(6, 'Confirmado', 'Equipamentos de escritório', 35.20),
(7, 'Cancelado', 'Produtos têxteis', 15.80),
(8, 'Confirmado', 'Materiais diversos', 28.90),
(9, 'Em Processamento', 'Eletrodomésticos', 45.60),
(10, 'Confirmado', 'Produtos naturais', 19.75),
(11, 'Confirmado', 'Alimentos importados', 32.45),
(12, 'Em Processamento', 'Ferramentas e utensílios', 27.80),
(13, 'Confirmado', 'Produtos de beleza', 14.90),
(14, 'Cancelado', 'Artigos esportivos', 21.35),
(15, 'Confirmado', 'Móveis planejados', 180.00),
(16, 'Em Processamento', 'Roupas casual', 16.50),
(17, 'Confirmado', 'Eletrônicos premium', 42.80),
(18, 'Confirmado', 'Produtos para pets', 23.15),
(19, 'Em Processamento', 'Material escolar', 11.90),
(20, 'Confirmado', 'Decoração para casa', 38.70),
(21, 'Confirmado', 'Suplementos alimentares', 26.40),
(22, 'Em Processamento', 'Moda feminina', 17.25),
(23, 'Cancelado', 'Ferramentas industriais', 55.90),
(24, 'Confirmado', 'Brinquedos educativos', 13.80),
(25, 'Em Processamento', 'Produtos de limpeza', 9.95),
(26, 'Confirmado', 'Importados diversos', 47.30),
(27, 'Confirmado', 'Artigos de luxo', 62.10),
(28, 'Em Processamento', 'Equipamentos digitais', 33.85),
(29, 'Confirmado', 'Produtos artesanais', 20.45),
(30, 'Confirmado', 'Móveis sob medida', 195.00);

-- Inserindo dados na tabela deliveries
INSERT INTO deliveries (idOrder, DeliveryStatus, TrackingCode, ShippingDate, EstimatedDate, DeliveryDate, Carrier) VALUES
(1, 'Entregue', 'BR123456789SP', '2024-01-10', '2024-01-15', '2024-01-14', 'Correios'),
(2, 'Em Trânsito', 'BR234567890RJ', '2024-01-12', '2024-01-18', NULL, 'Transportadora Fast'),
(3, 'Entregue', 'BR345678901MG', '2024-01-08', '2024-01-13', '2024-01-12', 'Jadlog'),
(4, 'Processando', NULL, NULL, '2024-01-20', NULL, 'Correios'),
(5, 'Enviado', 'BR567890123BA', '2024-01-14', '2024-01-25', NULL, 'Transportadora Norte'),
(6, 'Entregue', 'BR678901234CE', '2024-01-09', '2024-01-16', '2024-01-15', 'Azul Cargo'),
(7, 'Devolvido', 'BR789012345PE', '2024-01-11', '2024-01-17', '2024-01-20', 'Correios'),
(8, 'Entregue', 'BR890123456DF', '2024-01-07', '2024-01-14', '2024-01-13', 'Jadlog'),
(9, 'Em Trânsito', 'BR901234567AM', '2024-01-13', '2024-01-22', NULL, 'Transportadora Express'),
(10, 'Entregue', 'BR012345678PA', '2024-01-10', '2024-01-17', '2024-01-16', 'Correios'),
(11, 'Processando', NULL, NULL, '2024-01-24', NULL, 'Transportadora Rápida'),
(12, 'Enviado', 'BR112233445GO', '2024-01-15', '2024-01-26', NULL, 'Jadlog'),
(13, 'Entregue', 'BR223344556SP', '2024-01-08', '2024-01-15', '2024-01-14', 'Correios'),
(14, 'Cancelado', NULL, NULL, NULL, NULL, NULL),
(15, 'Enviado', 'BR445566778MG', '2024-01-16', '2024-01-30', NULL, 'Transportadora Pesada'),
(16, 'Processando', NULL, NULL, '2024-01-22', NULL, 'Correios'),
(17, 'Entregue', 'BR556677889RJ', '2024-01-09', '2024-01-16', '2024-01-15', 'Azul Cargo'),
(18, 'Em Trânsito', 'BR667788990PR', '2024-01-14', '2024-01-23', NULL, 'Jadlog'),
(19, 'Processando', NULL, NULL, '2024-01-21', NULL, 'Correios'),
(20, 'Entregue', 'BR778899001SC', '2024-01-11', '2024-01-18', '2024-01-17', 'Transportadora Sul'),
(21, 'Enviado', 'BR889900112ES', '2024-01-13', '2024-01-25', NULL, 'Correios'),
(22, 'Processando', NULL, NULL, '2024-01-23', NULL, 'Jadlog'),
(23, 'Cancelado', NULL, NULL, NULL, NULL, NULL),
(24, 'Entregue', 'BR990011223MS', '2024-01-10', '2024-01-17', '2024-01-16', 'Transportadora Centro'),
(25, 'Enviado', 'BR101112334TO', '2024-01-15', '2024-01-27', NULL, 'Correios'),
(26, 'Entregue', 'BR111222333RO', '2024-01-08', '2024-01-15', '2024-01-14', 'Azul Cargo'),
(27, 'Em Trânsito', 'BR121333444AC', '2024-01-16', '2024-01-29', NULL, 'Transportadora Express'),
(28, 'Processando', NULL, NULL, '2024-01-26', NULL, 'Jadlog'),
(29, 'Entregue', 'BR131444555RR', '2024-01-12', '2024-01-19', '2024-01-18', 'Correios'),
(30, 'Enviado', 'BR141555666SC', '2024-01-17', '2024-02-05', NULL, 'Transportadora Especial');

-- Atualizando orders com idDelivery
UPDATE orders SET idDelivery = 1 WHERE idOrder = 1;
UPDATE orders SET idDelivery = 2 WHERE idOrder = 2;
UPDATE orders SET idDelivery = 3 WHERE idOrder = 3;
UPDATE orders SET idDelivery = 4 WHERE idOrder = 4;
UPDATE orders SET idDelivery = 5 WHERE idOrder = 5;
UPDATE orders SET idDelivery = 6 WHERE idOrder = 6;
UPDATE orders SET idDelivery = 7 WHERE idOrder = 7;
UPDATE orders SET idDelivery = 8 WHERE idOrder = 8;
UPDATE orders SET idDelivery = 9 WHERE idOrder = 9;
UPDATE orders SET idDelivery = 10 WHERE idOrder = 10;
UPDATE orders SET idDelivery = 11 WHERE idOrder = 11;
UPDATE orders SET idDelivery = 12 WHERE idOrder = 12;
UPDATE orders SET idDelivery = 13 WHERE idOrder = 13;
UPDATE orders SET idDelivery = 14 WHERE idOrder = 14;
UPDATE orders SET idDelivery = 15 WHERE idOrder = 15;
UPDATE orders SET idDelivery = 16 WHERE idOrder = 16;
UPDATE orders SET idDelivery = 17 WHERE idOrder = 17;
UPDATE orders SET idDelivery = 18 WHERE idOrder = 18;
UPDATE orders SET idDelivery = 19 WHERE idOrder = 19;
UPDATE orders SET idDelivery = 20 WHERE idOrder = 20;
UPDATE orders SET idDelivery = 21 WHERE idOrder = 21;
UPDATE orders SET idDelivery = 22 WHERE idOrder = 22;
UPDATE orders SET idDelivery = 23 WHERE idOrder = 23;
UPDATE orders SET idDelivery = 24 WHERE idOrder = 24;
UPDATE orders SET idDelivery = 25 WHERE idOrder = 25;
UPDATE orders SET idDelivery = 26 WHERE idOrder = 26;
UPDATE orders SET idDelivery = 27 WHERE idOrder = 27;
UPDATE orders SET idDelivery = 28 WHERE idOrder = 28;
UPDATE orders SET idDelivery = 29 WHERE idOrder = 29;
UPDATE orders SET idDelivery = 30 WHERE idOrder = 30;

-- Inserindo dados na tabela product_order
INSERT INTO product_order (idPOProduct, idPOOrder, poQuantity, poStatus) VALUES
(1, 1, 2, 'Disponível'), (2, 1, 1, 'Disponível'),
(3, 2, 3, 'Disponível'), (13, 2, 2, 'Disponível'),
(5, 3, 5, 'Disponível'), (6, 3, 3, 'Disponível'),
(7, 4, 10, 'Disponível'), (8, 4, 8, 'Disponível'),
(9, 5, 1, 'Disponível'), (10, 5, 1, 'Disponível'),
(11, 6, 2, 'Disponível'), (12, 6, 3, 'Disponível'),
(4, 7, 2, 'Sem Estoque'), (14, 7, 1, 'Sem Estoque'),
(15, 8, 4, 'Disponível'), (16, 8, 2, 'Disponível'),
(17, 9, 6, 'Disponível'), (18, 9, 4, 'Disponível'),
(19, 10, 1, 'Disponível'), (20, 10, 2, 'Disponível'),
(21, 11, 1, 'Disponível'), (22, 11, 5, 'Disponível'),
(23, 12, 3, 'Disponível'), (24, 12, 2, 'Disponível'),
(25, 13, 8, 'Disponível'), (26, 13, 1, 'Disponível'),
(27, 14, 12, 'Sem Estoque'), (28, 14, 6, 'Sem Estoque'),
(29, 15, 1, 'Disponível'), (30, 15, 1, 'Disponível'),
(1, 16, 1, 'Disponível'), (3, 16, 2, 'Disponível'),
(2, 17, 1, 'Disponível'), (11, 17, 2, 'Disponível'),
(5, 18, 3, 'Disponível'), (15, 18, 2, 'Disponível'),
(7, 19, 8, 'Disponível'), (17, 19, 5, 'Disponível'),
(9, 20, 1, 'Disponível'), (19, 20, 1, 'Disponível'),
(21, 21, 1, 'Disponível'), (22, 21, 4, 'Disponível'),
(3, 22, 4, 'Disponível'), (13, 22, 3, 'Disponível'),
(6, 23, 2, 'Sem Estoque'), (16, 23, 1, 'Sem Estoque'),
(8, 24, 10, 'Disponível'), (18, 24, 7, 'Disponível'),
(10, 25, 2, 'Disponível'), (20, 25, 1, 'Disponível'),
(12, 26, 6, 'Disponível'), (22, 26, 8, 'Disponível'),
(14, 27, 2, 'Disponível'), (24, 27, 3, 'Disponível'),
(16, 28, 4, 'Disponível'), (26, 28, 1, 'Disponível'),
(18, 29, 9, 'Disponível'), (28, 29, 5, 'Disponível'),
(20, 30, 2, 'Disponível'), (30, 30, 1, 'Disponível');

-- Inserindo dados na tabela storage_location
INSERT INTO storage_location (idSLProduct, idSLStorage, Location) VALUES
(1, 1, 'Prateleira A1'), (2, 1, 'Prateleira A2'),
(3, 2, 'Prateleira B1'), (4, 2, 'Prateleira B2'),
(5, 3, 'Prateleira C1'), (6, 3, 'Prateleira C2'),
(7, 4, 'Prateleira D1'), (8, 4, 'Prateleira D2'),
(9, 5, 'Área Móveis'), (10, 5, 'Área Móveis'),
(11, 6, 'Prateleira E1'), (12, 6, 'Prateleira E2'),
(13, 7, 'Prateleira F1'), (14, 7, 'Prateleira F2'),
(15, 8, 'Prateleira G1'), (16, 8, 'Prateleira G2'),
(17, 9, 'Prateleira H1'), (18, 9, 'Prateleira H2'),
(19, 10, 'Área Móveis'), (20, 10, 'Área Móveis'),
(21, 11, 'Prateleira I1'), (22, 11, 'Prateleira I2'),
(23, 12, 'Prateleira J1'), (24, 12, 'Prateleira J2'),
(25, 13, 'Prateleira K1'), (26, 13, 'Prateleira K2'),
(27, 14, 'Prateleira L1'), (28, 14, 'Prateleira L2'),
(29, 15, 'Área Móveis'), (30, 15, 'Área Móveis'),
(1, 16, 'Prateleira M1'), (2, 16, 'Prateleira M2'),
(3, 17, 'Prateleira N1'), (4, 17, 'Prateleira N2'),
(5, 18, 'Prateleira O1'), (6, 18, 'Prateleira O2'),
(7, 19, 'Prateleira P1'), (8, 19, 'Prateleira P2'),
(9, 20, 'Área Móveis'), (10, 20, 'Área Móveis'),
(11, 21, 'Prateleira Q1'), (12, 21, 'Prateleira Q2'),
(13, 22, 'Prateleira R1'), (14, 22, 'Prateleira R2'),
(15, 23, 'Prateleira S1'), (16, 23, 'Prateleira S2'),
(17, 24, 'Prateleira T1'), (18, 24, 'Prateleira T2'),
(19, 25, 'Área Móveis'), (20, 25, 'Área Móveis'),
(21, 26, 'Prateleira U1'), (22, 26, 'Prateleira U2'),
(23, 27, 'Prateleira V1'), (24, 27, 'Prateleira V2'),
(25, 28, 'Prateleira W1'), (26, 28, 'Prateleira W2'),
(27, 29, 'Prateleira X1'), (28, 29, 'Prateleira X2'),
(29, 30, 'Área Móveis'), (30, 30, 'Área Móveis');

-- Inserindo dados na tabela product_supplier
INSERT INTO product_supplier (idPSSupplier, idPSProduct, Quantity) VALUES
(1, 1, 500), (1, 2, 300), (1, 11, 400),
(2, 3, 1000), (2, 4, 800), (2, 13, 600),
(3, 5, 2000), (3, 6, 1500), (3, 15, 1000),
(4, 7, 3000), (4, 8, 2500), (4, 17, 2000),
(5, 9, 200), (5, 10, 250), (5, 19, 300),
(6, 12, 800), (6, 22, 1200),
(7, 1, 400), (7, 11, 350), (7, 21, 150),
(8, 3, 900), (8, 13, 700), (8, 23, 500),
(9, 5, 1800), (9, 15, 1100), (9, 25, 800),
(10, 7, 2800), (10, 17, 2200), (10, 27, 1500),
(11, 9, 180), (11, 19, 280), (11, 29, 120),
(12, 2, 250), (12, 12, 750), (12, 22, 1000),
(13, 4, 700), (13, 14, 850), (13, 24, 650),
(14, 6, 1300), (14, 16, 950), (14, 26, 450),
(15, 8, 2300), (15, 18, 1800), (15, 28, 1300),
(16, 10, 220), (16, 20, 320), (16, 30, 180),
(17, 1, 450), (17, 11, 380), (17, 21, 170),
(18, 3, 850), (18, 13, 650), (18, 23, 480),
(19, 5, 1700), (19, 15, 1050), (19, 25, 750),
(20, 7, 2700), (20, 17, 2100), (20, 27, 1400),
(21, 9, 160), (21, 19, 260), (21, 29, 140),
(22, 2, 280), (22, 12, 720), (22, 22, 950),
(23, 4, 750), (23, 14, 800), (23, 24, 600),
(24, 6, 1400), (24, 16, 900), (24, 26, 500),
(25, 8, 2400), (25, 18, 1700), (25, 28, 1250),
(26, 10, 240), (26, 20, 300), (26, 30, 200),
(27, 1, 420), (27, 11, 360), (27, 21, 160),
(28, 3, 880), (28, 13, 680), (28, 23, 520),
(29, 5, 1750), (29, 15, 1080), (29, 25, 780),
(30, 7, 2650), (30, 17, 2150), (30, 27, 1450);

-- Inserindo dados na tabela payment_methods
INSERT INTO payment_methods (idClient, PaymentType, Alias, IsDefault) VALUES
(1, 'Cartão Crédito', 'Cartão Principal', TRUE),
(1, 'PIX', 'Chave PIX', FALSE),
(2, 'Cartão Débito', 'Cartão Débito', TRUE),
(3, 'Boleto', 'Boleto Bancário', TRUE),
(4, 'PIX', 'PIX Principal', TRUE),
(5, 'Cartão Crédito', 'Cartão Ouro', TRUE),
(6, 'Transferência', 'Conta Empresa', TRUE),
(7, 'Cartão Crédito', 'Cartão Nubank', TRUE),
(8, 'PIX', 'PIX CNPJ', TRUE),
(9, 'Cartão Débito', 'Débito Itaú', TRUE),
(10, 'Boleto', 'Boleto Mensal', TRUE),
(11, 'Transferência', 'Transferência PJ', TRUE),
(12, 'Cartão Crédito', 'Cartão Corporativo', TRUE),
(13, 'PIX', 'PIX Pessoal', TRUE),
(14, 'Cartão Débito', 'Débito Santander', TRUE),
(15, 'Boleto', 'Boleto Empresa', TRUE),
(16, 'Transferência', 'Transferência PF', TRUE),
(17, 'Cartão Crédito', 'Cartão Platinum', TRUE),
(18, 'PIX', 'PIX Rápido', TRUE),
(19, 'Cartão Débito', 'Débito Bradesco', TRUE),
(20, 'Boleto', 'Boleto Digital', TRUE),
(21, 'Transferência', 'Transferência Conta', TRUE),
(22, 'Cartão Crédito', 'Cartão VISA', TRUE),
(23, 'PIX', 'PIX Celular', TRUE),
(24, 'Cartão Débito', 'Débito Caixa', TRUE),
(25, 'Boleto', 'Boleto 30 dias', TRUE),
(26, 'Transferência', 'Transferência TED', TRUE),
(27, 'Cartão Crédito', 'Cartão Master', TRUE),
(28, 'PIX', 'PIX Email', TRUE),
(29, 'Cartão Débito', 'Débito BB', TRUE),
(30, 'Boleto', 'Boleto 15 dias', TRUE);

-- Inserindo dados na tabela card_payments
INSERT INTO card_payments (idCardPayment, CardNumber, HolderName, ExpiryDate, SecurityCode) VALUES
(1, '1234 5678 9012 3456', 'JOÃO A SILVA', '2026-12-01', '123'),
(6, '2345 6789 0123 4567', 'CARLOS E PEREIRA', '2027-06-01', '234'),
(7, '3456 7890 1234 5678', 'MARIA B SANTOS', '2025-09-01', '345'),
(12, '4567 8901 2345 6789', 'EMPRESA X TECH LTDA', '2028-03-01', '456'),
(17, '5678 9012 3456 7890', 'FERNANDA F LIMA', '2026-08-01', '567'),
(22, '6789 0123 4567 8901', 'COMERCIO A ALIMENTOS', '2027-11-01', '678'),
(27, '7890 1234 5678 9012', 'JULIANA H ROCHA', '2025-05-01', '789');

-- Inserindo dados na tabela pix_payments
INSERT INTO pix_payments (idPixPayment, PixKey, PixType) VALUES
(2, '12345678901', 'CPF'),
(4, '45678901234', 'CPF'),
(8, '12345678000101', 'CNPJ'),
(13, '89012345678', 'CPF'),
(18, '67890123456', 'CPF'),
(23, '33445566778', 'CPF'),
(28, '44556677889', 'CPF');