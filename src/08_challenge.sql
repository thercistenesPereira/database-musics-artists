SELECT full_name AS `Nome completo`, email AS `E-mail`, name AS `Plano`
FROM users
JOIN plans ON users.plan_id = plans.id
ORDER BY `Nome completo`;
