Select dProduct.Product, SUM(Quantity*(1-RevenueDiscount)*RetailPrice) as NetRevenue
from fTransactions
join dProduct
ON dProduct.Product = fTransactions.Product
Where Quantity >= 100
Group By dProduct.Product
Having SUM(Quantity*(1-RevenueDiscount)*RetailPrice) >= 100000
Order by dProduct.Product;

Homework

SELECT dCountry.Country, SUM(Quantity) AS TotalUnitsSold
FROM fTransactions
JOIN dCountry
ON dCountry.CountryCode = fTransactions.CountryCode
GROUP BY dCountry.Country
ORDER BY TotalUnitsSold DESC;
