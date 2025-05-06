INSERT INTO dbo.Marcas_tb (Nome_marca, pais_origem)
VALUES 
('fiat', 'italiana'),
('ford', 'americana'),
('gm', 'americana'),
('volkswagem', 'alemã'),
('toyota', 'japonesa'),
('ferrari', 'italiana'),
('peugeot', 'francesa'),
('kia', 'coreana'),
('caoa-cherry', 'brasileira');

-- Exemplo de inserção com SELECT para obter o id_marca
INSERT INTO dbo.Modelos_tb (id_marca, Nome_modelo, Tipo_carroceria, numero_portas)
VALUES
((SELECT Id_Marca FROM dbo.Marcas_tb WHERE Nome_marca = 'fiat'), 'PALIO', 'Hatch', 4),
((SELECT Id_Marca FROM dbo.Marcas_tb WHERE Nome_marca = 'ford'), 'FIESTA', 'Hatch', 4),
((SELECT Id_Marca FROM dbo.Marcas_tb WHERE Nome_marca = 'ford'), 'KA', 'Hatch', 4),
((SELECT Id_Marca FROM dbo.Marcas_tb WHERE Nome_marca = 'gm'), 'MONZA', 'Sedan', 4),
((SELECT Id_Marca FROM dbo.Marcas_tb WHERE Nome_marca = 'gm'), 'VECTRA', 'Sedan', 4),
((SELECT Id_Marca FROM dbo.Marcas_tb WHERE Nome_marca = 'volkswagem'), 'GOL', 'Hatch', 4),
((SELECT Id_Marca FROM dbo.Marcas_tb WHERE Nome_marca = 'volkswagem'), 'FOX', 'Hatch', 4),
((SELECT Id_Marca FROM dbo.Marcas_tb WHERE Nome_marca = 'toyota'), 'COROLA', 'Sedan', 4),
((SELECT Id_Marca FROM dbo.Marcas_tb WHERE Nome_marca = 'peugeot'), 'PEUGEOT-206', 'Hatch', 4);
