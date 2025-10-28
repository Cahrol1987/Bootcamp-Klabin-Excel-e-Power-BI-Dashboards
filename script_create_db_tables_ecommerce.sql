-- criação do banco de dados para e-commerce
CREATE DATABASE projeto_ecommerce;
USE projeto_ecommerce;

-- criação das tabelas dentro do banco projeto_ecommerce
-- tabela cliente
CREATE TABLE clients (
	idClient INT AUTO_INCREMENT PRIMARY KEY,
    Fname VARCHAR(10),
    Mint CHAR(3),
    Lname VARCHAR(20),
    CPF CHAR(11) NOT NULL,
    Address VARCHAR(50),
    BirthDate DATE,
    CONSTRAINT unique_cpf_client UNIQUE (CPF)  
);

ALTER TABLE clients AUTO_INCREMENT = 1;

-- tabela produto
CREATE TABLE product (
	idProduct INT AUTO_INCREMENT PRIMARY KEY,
    Pname VARCHAR(10) NOT NULL,
    ClassificationKids BOOL DEFAULT FALSE,
    Category ENUM('Eletrônico','Vestimenta','Brinquedos','Alimentos','Móveis') NOT NULL,
    Rating FLOAT DEFAULT 0,
    Size VARCHAR(10)
);

ALTER TABLE product AUTO_INCREMENT = 1;


-- tabela pedido
CREATE TABLE orders (
	idOrder INT AUTO_INCREMENT PRIMARY KEY,
    idOrderClient INT,
    OrderStatus ENUM ('Cancelado','Confirmado','Em Processamento') DEFAULT 'Em processamento',
    OrderDescription VARCHAR(255),
    FreightValue FLOAT DEFAULT 0,
    PaymentCash BOOL DEFAULT FALSE,
    idOrderPayment INT, 
    CONSTRAINT fk_orders_client FOREIGN KEY (idOrderClient) REFERENCES clients (idClient)
);

ALTER TABLE orders AUTO_INCREMENT = 1;

-- tabela estoque
CREATE TABLE product_storage (
	idProdStorage INT AUTO_INCREMENT PRIMARY KEY,
    StorageLocation VARCHAR(255),
    Quantity INT DEFAULT 0
);

ALTER TABLE product_storage AUTO_INCREMENT = 1;

-- tabela fornecedor
CREATE TABLE supplier(
	idSupplier INT AUTO_INCREMENT PRIMARY KEY,
    SocialName VARCHAR(255) NOT NULL,
    CNPJ CHAR(15) NOT NULL,
    contact CHAR(11) NOT NULL,
    CONSTRAINT unique_supplier UNIQUE (CNPJ)
);

ALTER TABLE supplier AUTO_INCREMENT = 1;

-- tabela vendedor
CREATE TABLE seller (
	idSeller INT AUTO_INCREMENT PRIMARY KEY,
    SocialName VARCHAR(255),
    AbstName VARCHAR(255),
    CNPJ CHAR(15),
    CPF CHAR(9),
    Location VARCHAR(255),
    Contact CHAR(11) NOT NULL,
    CONSTRAINT unique_cnpj_seller UNIQUE (CNPJ),
    CONSTRAINT unique_cpf_seller UNIQUE (CPF)
);

ALTER TABLE seller AUTO_INCREMENT = 1;

-- tabela produto_vendedor
CREATE TABLE product_seller (
	idPSSeller INT,
    idPSProduct INT,
    ProdQuantity INT DEFAULT 1,
    PRIMARY KEY (idPSSeller, idPSProduct),
    CONSTRAINT fk_productseller_seller FOREIGN KEY (idPSSeller) REFERENCES seller (idSeller),
    CONSTRAINT fk_productseller_product FOREIGN KEY (idPSProduct) REFERENCES product (idProduct)
    
);

-- tabela produto_pedido
CREATE TABLE product_order(
	idPOProduct INT,
    idPOOrder INT,
    poQuantity INT DEFAULT 1,
    poStatus ENUM('Disponível','Sem Estoque') DEFAULT 'Disponível',
    PRIMARY KEY (idPOProduct, idPOOrder),
    CONSTRAINT fk_productorder_seller FOREIGN KEY (idPOProduct) REFERENCES product (idProduct),
    CONSTRAINT fk_productorder_product FOREIGN KEY (idPOOrder) REFERENCES orders (idOrder)
);

-- tabela local_estoque
CREATE TABLE storage_location (
	idSLProduct INT,
    idSLStorage INT,
    Location VARCHAR(255) NOT NULL,
    PRIMARY KEY (idSLProduct, idSLStorage),
    CONSTRAINT fk_storagelocation_product FOREIGN KEY (idSLProduct) REFERENCES product (idProduct),
    CONSTRAINT fk_storagelocation_storage FOREIGN KEY (idSLStorage) REFERENCES product_storage (idProdStorage)
);

-- tabela produto_fornecedor
CREATE TABLE product_supplier (
	idPSSupplier INT,
    idPSProduct INT,
    Quantity INT NOT NULL, 
    PRIMARY KEY (idPSSupplier, idPSProduct),
    CONSTRAINT fk_productsupplier_supplier FOREIGN KEY (idPSSupplier) REFERENCES supplier (idSupplier),
    CONSTRAINT fk_productsupplier_product FOREIGN KEY (idPSProduct) REFERENCES product (idProduct)
);

-- Ajustes de refinamento:
-- Cliente PJ e PF – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações
-- Tabela Clientes - Separação PJ/PF
-- remover colunas específicas de PF da tabela clients
ALTER TABLE clients 
DROP COLUMN CPF,
DROP COLUMN BirthDate;

-- adicionar coluna para tipo de cliente
ALTER TABLE clients 
ADD COLUMN ClientType ENUM('PF', 'PJ') NOT NULL,
ADD COLUMN Document VARCHAR(18) NOT NULL,
ADD CONSTRAINT unique_document_client UNIQUE (Document);

-- tabela de Pessoa Física
CREATE TABLE client_pf (
    idClientPF INT PRIMARY KEY,
    CPF CHAR(11) NOT NULL,
    BirthDate DATE,
    CONSTRAINT fk_client_pf FOREIGN KEY (idClientPF) REFERENCES clients(idClient),
    CONSTRAINT unique_cpf_pf UNIQUE (CPF)
);

-- tabela de Pessoa Jurídica
CREATE TABLE client_pj (
    idClientPJ INT PRIMARY KEY,
    CNPJ CHAR(14) NOT NULL,
    TradeName VARCHAR(255),
    CONSTRAINT fk_client_pj FOREIGN KEY (idClientPJ) REFERENCES clients(idClient),
    CONSTRAINT unique_cnpj_pj UNIQUE (CNPJ)
);

-- Pagamento – Pode ter cadastrado mais de uma forma de pagamento;
-- tabela de métodos de pagamento
CREATE TABLE payment_methods (
    idPayment INT AUTO_INCREMENT PRIMARY KEY,
    idClient INT NOT NULL,
    PaymentType ENUM('Cartão Crédito', 'Cartão Débito', 'Boleto', 'PIX', 'Transferência') NOT NULL,
    Alias VARCHAR(50),
    IsDefault BOOL DEFAULT FALSE,
    CONSTRAINT fk_payment_client FOREIGN KEY (idClient) REFERENCES clients(idClient)
);

-- tabela para cartões de crédito/débito
CREATE TABLE card_payments (
    idCardPayment INT PRIMARY KEY,
    CardNumber VARCHAR(19),
    HolderName VARCHAR(100),
    ExpiryDate DATE,
    SecurityCode VARCHAR(4),
    CONSTRAINT fk_card_payment FOREIGN KEY (idCardPayment) REFERENCES payment_methods(idPayment)
);

-- tabela para pagamentos via PIX
CREATE TABLE pix_payments (
    idPixPayment INT PRIMARY KEY,
    PixKey VARCHAR(255),
    PixType ENUM('CPF', 'CNPJ', 'Email', 'Telefone', 'Chave Aleatória'),
    CONSTRAINT fk_pix_payment FOREIGN KEY (idPixPayment) REFERENCES payment_methods(idPayment)
);

-- remover coluna de pagamento da tabela orders
ALTER TABLE orders DROP COLUMN PaymentCash;


-- Entrega – Possui status e código de rastreio;
-- tabela de entregas
CREATE TABLE deliveries (
    idDelivery INT AUTO_INCREMENT PRIMARY KEY,
    idOrder INT NOT NULL,
    DeliveryStatus ENUM('Processando', 'Enviado', 'Em Trânsito', 'Entregue', 'Atrasado', 'Devolvido', 'Cancelado') DEFAULT 'Processando',
    TrackingCode VARCHAR(50),
    ShippingDate DATE,
    EstimatedDate DATE,
    DeliveryDate DATE,
    Carrier VARCHAR(100),
    CONSTRAINT fk_delivery_order FOREIGN KEY (idOrder) REFERENCES orders(idOrder),
    CONSTRAINT unique_tracking_code UNIQUE (TrackingCode)
);

-- Adicionar coluna de entrega na tabela orders
ALTER TABLE orders 
ADD COLUMN idDelivery INT,
ADD CONSTRAINT fk_order_delivery FOREIGN KEY (idDelivery) REFERENCES deliveries(idDelivery);