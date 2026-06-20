-- ===================================================================
-- 🗄️ EJERCICIOS DE SQL SERVER
-- ===================================================================


USE AdventureWorks2025;
GO

-- -------------------------------------------------------------------
-- RETO 1: Listar productos caros
-- -------------------------------------------------------------------
-- Escribe una consulta que muestre el nombre (Name) y el precio de lista 
-- (ListPrice) de todos los productos de la tabla Production.Product 
-- que tengan un precio mayor a $1,000.
--
-- Pistas:
--   - Tabla: Production.Product
--   - Filtro: WHERE ListPrice > 1000
-- -------------------------------------------------------------------

SELECT P.name, P.ListPrice
FROM Production.Product P
WHERE ListPrice > 1000
ORDER BY ListPrice DESC;



-- -------------------------------------------------------------------
-- RETO 2: Buscar empleados con un cargo específico
-- -------------------------------------------------------------------
-- Selecciona el ID del empleado (BusinessEntityID), su cargo (JobTitle) 
-- y su fecha de contratación (HireDate) de la tabla HumanResources.Employee
-- para todos los empleados que tengan el cargo de 'Design Engineer' (Ingeniero de Diseño).
--
-- Pistas:
--   - Tabla: HumanResources.Employee
--   - Filtro: WHERE JobTitle = 'Design Engineer'
-- -------------------------------------------------------------------

SELECT BusinessEntityID AS ID, JobTitle AS EMPLEO, HireDate AS FECHA_CONTRATACION
FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer';

-- -------------------------------------------------------------------
-- RETO 3: Clientes ordenados por ID de Territorio
-- -------------------------------------------------------------------
-- Muestra el ID del cliente (CustomerID), el ID de la tienda (StoreID)
-- y el ID del territorio (TerritoryID) de la tabla Sales.Customer.
-- Filtra los registros donde el TerritoryID sea igual a 4.
-- Ordena los resultados de forma ascendente por el StoreID.
--
-- Pistas:
--   - Tabla: Sales.Customer
--   - Filtro: WHERE TerritoryID = 4
--   - Orden: ORDER BY StoreID ASC
-- -------------------------------------------------------------------

SELECT CustomerID AS ID, StoreID AS StoreID, TerritoryID AS TERRITORY_ID
FROM Sales.Customer
WHERE TerritoryID = 4
ORDER BY StoreID DESC;