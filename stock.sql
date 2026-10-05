-- Текущие остатки
SELECT p.name, c.code,
  SUM(CASE WHEN m.kind='in' THEN m.qty ELSE -m.qty END) AS qty
FROM movements m
JOIN products p ON m.product_id=p.id
JOIN cells c ON m.cell_id=c.id
GROUP BY p.id, c.id;
