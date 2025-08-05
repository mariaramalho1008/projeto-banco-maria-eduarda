-- Quero saber, com qual cliente está o filme Barbie.
SELECT C.Nome as NomeCliente, F.Titulo as NomeFilme, E.DataDevolucao FROM 
	EMPRESTIMO AS E 
INNER JOIN 
	CLIENTE AS C
ON 
	E.idCliente = C.Id 
INNER JOIN 
	FILME AS F
ON E.idFilme = F.Id
WHERE F.Titulo = 'Barbie' 

-- R: ('Maria Eduarda', 'Barbie', '07-08-2025');


-- Quero saber quantos filmes tenho cadastrados.
SELECT COUNT(Id) as Quantidade FROM Filme

-- R: (4)

-- Quero saber quantos filmes tenho por categoria.
SELECT COUNT(F.idCategoria) as Quantidade, C.Nome as Categoria FROM 
	FILME AS F
INNER JOIN
	CATEGORIA AS C
ON
	F.IdCategoria = C.Id
GROUP BY C.Nome

-- R: 2 ACAO / 1 COMEDIA / 1 ROMANCE 



-- Quero alterar o nome popular do Michele Morrone para Michel Morrone.

SELECT Id FROM Ator WHERE nomePopular = 'Michele Morrone';
--R: 2

UPDATE ATOR SET nomePopular = 'Michel Morrone' 
WHERE Id = 2;
