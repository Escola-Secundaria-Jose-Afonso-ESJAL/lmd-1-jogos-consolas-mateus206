USE games_systems;

-- 1. Listar todos os jogos
-- Sua query aqui
SELECT * FROM games;
-- 2. Contar quantos jogos existem na base de dados
-- Sua query aqui
SELECT COUNT(*) AS total_games
FROM games;
-- 3. Calcular o preço médio de todos os jogos
-- Sua query aqui
SELECT 
games,
AVG(preco) AS preco_medio 
FROM games;
-- 4. Encontrar o jogo mais caro
-- Sua query aqui
SELECT *
FROM games
ORDER BY preco DESC
LIMIT 1;
-- 5. Encontrar o jogo com a menor nota de avaliação
-- Sua query aqui
SELECT *
FROM games
ORDER BY avalicao ASC
LIMIT 1;
-- 6. Listar os 5 jogos mais vendidos
-- Sua query aqui
SELECT *
FROM games
ORDER BY copias_vendidas DESC
LIMIT 5;
-- 7. Contar quantos jogos existem por plataforma
-- Sua query aqui
SELECT plataforma, COUNT(*) AS total_games
FROM games
GROUP BY plataforma;
-- 8. Calcular a soma total de cópias vendidas de todos os jogos
-- Sua query aqui
SELECT SUM(copias_vendidas) AS total_copias_vendidas
FROM games;
-- 9. Calcular o preço médio dos jogos por género, ordenado do mais caro para o mais barato
-- Sua query aqui
SELECT genero, AVG(preco) AS preco_medio
FROM jogos
GROUP BY genero
ORDER BY preco_medio DESC;
-- 10. Listar as plataformas que têm mais de 2 jogos cadastrados
-- Sua query aqui