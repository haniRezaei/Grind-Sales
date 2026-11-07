--combining the order years
with all_orders as (

SELECT 
OrderID,
CustomerID,
ProductID,
OrderDate,
Quantity,
Revenue,
COGS
FROM Orders_2023

union all

SELECT 
OrderID,
CustomerID,
ProductID,
OrderDate,
Quantity,
Revenue,
COGS
FROM Orders_2024

union all
SELECT 
OrderID,
CustomerID,
ProductID,
OrderDate,
Quantity,
Revenue,
COGS
FROM Orders_2025)

--building the main dataset query
select 
a.OrderID,
a.CustomerID,
c.Region,
a.ProductID,
a.OrderDate,
c.CustomerJoinDate,
a.Quantity,
a.Revenue,
case when a.Revenue is null then p.Price * a.Quantity else Revenue end as cleaned_Revenue, 
a.Revenue - a.COGS as Profit, 
dateadd(week, datediff(week, 0, a.orderdate), 0) as weekDate, 
a.COGS,
p.ProductName,
p.ProductCategory,
p.Price,
p.Base_Cost
from all_orders a
left join customers c
on a.CustomerID= c.CustomerID
left join Products p
on a.ProductID= p.ProductID
where a.CustomerID is not null --dropping the non customer ids