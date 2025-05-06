Select m.Nome_marca, c.id_modelo, c.cor, c.ano_fabricacao 
from Marcas_tb as m, Carros_tb as c 
where m.id_marca = c.id_modelo
and c.ano_fabricacao between 1990 and 2010
/*
Select Nome_marca, id_modelo, cor, ano_fabricacao  from Carros_tb, Marcas_tb where ano_fabricacao between 1990 and 2010
*/	