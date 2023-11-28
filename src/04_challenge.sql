SELECT users.full_name AS 'Nome completo',
 users.email AS 'E-mail'
FROM users
WHERE active = 1;