-- Движения за период
SELECT * FROM movements WHERE ts >= '2024-01-01';

-- Заполненность ячеек
SELECT c.code, c.capacity, SUM(m.qty) AS used
FROM cells c LEFT JOIN movements m ON c.id=m.cell_id
GROUP BY c.id;
