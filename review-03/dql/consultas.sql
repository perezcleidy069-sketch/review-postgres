# Funciones de ventana
## Ranking de mayores ventas:
Obtener el listado de todas las ventas ordenadas por monto de mayor a menor, asignando un número de posición (ranking) general a cada venta (ROW_NUMBER()).

SELECT 
    fecha,
    vendedor,
    monto,
    ROW_NUMBER() OVER (ORDER BY monto DESC) AS ranking
FROM ventas_vendedores;

## Porcentaje sobre el total del mes:
- Calcular qué poSELECT 
    fecha,
    vendedor,
    monto,
    ROUND(
        (monto / SUM(monto) OVER (PARTITION BY DATE_TRUNC('month', fecha))) * 100, 
        2
    ) AS porcentaje_del_mes
FROM ventas_vendedores;

# CTE
Obtener un reporte con el total acumulado de ventas y el promedio por transacción de cada vendedor durante todo el período registrado. A través de una CTE, calcular estas métricas y luego filtrar en la consulta principal únicamente a los vendedores cuya venta promedio por transacción sea superior a $200.00, ordenando los resultados de mayor a menor según el monto total vendido.

WITH metricas_vendedores AS (
    SELECT 
        vendedor,
        SUM(monto) AS total_ventas,
        AVG(monto) AS promedio_transaccion
    FROM ventas_vendedores
    GROUP BY vendedor
)
SELECT 
    vendedor,
    total_ventas,
    ROUND(promedio_transaccion, 2) AS promedio_transaccion
FROM metricas_vendedores
WHERE promedio_transaccion > 200.00
ORDER BY total_ventas DESC;
