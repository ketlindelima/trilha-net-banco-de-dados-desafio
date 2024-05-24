-- Resolução de Desafio DIO: Banco de dados 

-- QUERY 1: Buscar Nome e Ano dos Filmes
SELECT 
	Nome, Ano 
FROM Filmes


-- QUERY 2: Buscar Nome e Ano dos Filmes por ordem crescente de ano
SELECT 
	Nome, Ano, Duracao
FROM FILMES
ORDER BY Ano


--QUERY 3: Filme de volta para o futuro
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Nome LIKE 'De Volta para%'


-- QUERY 4: Buscar os Filmes lançados em 1997
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Ano = 1997


-- QUERY 5: Filmes lançados Após 2000
SELECT 
	Nome, Ano, Duracao
FROM Filmes
WHERE Ano > 2000


-- QUERY 6: Filmes com duração maior que 100 e menor que 150, ordenados por duração em ordem crescente
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao


-- QUERY 7: Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT
	Ano,
	COUNT(Duracao) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC


-- QUERY 8: Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT
	PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'M'


-- QUERY 9: Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT
	PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome


-- QUERY 10: Buscar o nome do filme e o gênero
SELECT 
	Filmes.Nome, Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id


-- QUERY 11: Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT 
	Filmes.Nome, Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'


-- QUERY 12: Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT 
	Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Atores
INNER JOIN ElencoFilme ON Atores.Id = ElencoFilme.IdAtor
INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id