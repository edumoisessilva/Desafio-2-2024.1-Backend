-- A
SELECT * FROM veiculo AS v
INNER JOIN proprietario AS p ON v.proprietario_cpf=p.cpf WHERE v.proprietario_cpf='12345678901';

-- B
SELECT * FROM proprietario AS p WHERE p.nome LIKE "c%";

-- C
SELECT * FROM infracao AS i WHERE i.data_infracao BETWEEN '2024-01-01' AND '2024-12-31';

-- D
SELECT 
    m.nome_modelo, 
    COUNT(*) AS total_veiculos
FROM veiculo v
JOIN modelo  AS m ON v.modelo_id_modelo = m.id_modelo
GROUP BY m.nome_modelo
ORDER BY total_veiculos DESC;


