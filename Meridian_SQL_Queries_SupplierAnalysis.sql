-- Meridian Industrial Systems
-- Supplier Analysis SQL Queries
-- Analyst: Briggit Berastegui
-- Period: Q1-Q2 2025

-- 1. View all suppliers
SELECT * FROM suppliers;

-- 2. View all purchase orders with supplier names
SELECT s.supplier_name, p.po_date, p.product, 
       p.qty_ordered, p.qty_received, p.delivery_status
FROM purchase_orders p
JOIN suppliers s ON p.supplier_id = s.supplier_id;

-- 3. Total orders and quantities by supplier
SELECT s.supplier_name, 
       COUNT(p.po_id) AS total_orders,
       SUM(p.qty_ordered) AS total_ordered,
       SUM(p.qty_received) AS total_received
FROM purchase_orders p
JOIN suppliers s ON p.supplier_id = s.supplier_id
GROUP BY s.supplier_name;

-- 4. Fill rate by supplier (worst to best)
SELECT s.supplier_name,
       ROUND(SUM(p.qty_received) * 100.0 / SUM(p.qty_ordered), 1) AS fill_rate_pct
FROM purchase_orders p
JOIN suppliers s ON p.supplier_id = s.supplier_id
GROUP BY s.supplier_name
ORDER BY fill_rate_pct ASC;

-- 5. All late or short deliveries
SELECT s.supplier_name, p.po_date, p.qty_ordered, 
       p.qty_received, p.delivery_status
FROM purchase_orders p
JOIN suppliers s ON p.supplier_id = s.supplier_id
WHERE p.delivery_status != 'On Time'
ORDER BY s.supplier_name;