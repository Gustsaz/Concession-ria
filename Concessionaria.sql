-- Crie o banco de dados se não existir
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'Concessionaria')
BEGIN
    CREATE DATABASE Concessionaria;
END
GO

-- Use o banco de dados
USE Concessionaria;
GO

-- Crie as tabelas se não existirem
IF OBJECT_ID('dbo.Marcas_tb', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.Marcas_tb (
        Id_Marca INT IDENTITY(1,1) PRIMARY KEY,
        Nome_marca VARCHAR(50) UNIQUE NOT NULL,
        pais_origem VARCHAR(50)
    );
END

IF OBJECT_ID('dbo.Modelos_tb', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.Modelos_tb (
        id_modelo INT IDENTITY(1,1) PRIMARY KEY,
        id_marca INT NOT NULL,
        Nome_modelo VARCHAR(50) NOT NULL,
        Tipo_carroceria VARCHAR(50),
        numero_portas INT,
        FOREIGN KEY (id_marca) REFERENCES dbo.Marcas_tb(Id_Marca),
            unique (id_marca, Nome_modelo)
);
END

IF OBJECT_ID('dbo.Carros_tb', 'U') IS NULL
BEGIN
    CREATE TABLE dbo.Carros_tb (
        id_carro INT IDENTITY(1,1) PRIMARY KEY,
        id_modelo INT NOT NULL,
        ano_fabricacao INT NOT NULL,
        ano_modelo INT NOT NULL,
        cor VARCHAR(50),
        placa VARCHAR(10) UNIQUE,
        chassi VARCHAR(17) NOT NULL UNIQUE,
        data_cadastro DATETIME DEFAULT GETDATE(),
        FOREIGN KEY (id_modelo) REFERENCES dbo.Modelos_tb(id_modelo)
    );
END
