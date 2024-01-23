SELECT name AS `Plano`, COUNT(users.id) AS `Quantidade de usuários`
FROM plans
LEFT JOIN users ON plans.id = users.plan_id
GROUP BY plans.name
ORDER BY `Plano`;
