SELECT 
    plans.name AS 'Plano',
    COUNT(users.plan_id) AS 'Quantidade de usuários'
FROM 
    users
JOIN
    plans ON users.plan_id = plans.id
GROUP BY 
    plans.name;
