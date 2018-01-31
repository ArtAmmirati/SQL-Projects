
--===Number One===

--SELECT  sp. BusinessEntityID
--FROM sales.SalesPerson sp
--INTERSECT  
--SELECT p. BusinessEntityID
--FROM person.person p

--Select p.BusinessEntityID
--from person.person p
--join sales.SalesPerson sp
--on p.BusinessEntityID = sp.BusinessEntityID

--=== Number Three==

--CREATE TABLE Purchasing.VendorIssues
--     (ReportID INT NOT NULL IDENTITY(1,1)
--	 ,PurchaseOrderID INT
--	 ,EntryDate date
--	 ,IssueDetails varchar(MAX)
--	 ,VendorResponse varchar(MAX)
--	 ,Resolved bit
--	 Primary Key(ReportID)
--	 CONSTRAINT FK_VendPOHead FOREIGN KEY (PurchaseOrderID)
--	 REFERENCES Purchasing.PurchaseOrderHeader(PurchaseOrderID)
--	 ) 
	 
--SET IDENTITY_INSERT Purchasing.VendorIssues  ON

--INSERT Purchasing.VendorIssues (ReportID)
--VALUES (5)

--SET IDENTITY_INSERT Purchasing.VendorIssues OFF

--Insert Purchasing.VendorIssues (PurchaseOrderID)
--VALUES (20)
--Insert Purchasing.VendorIssues (PurchaseOrderID)
--VALUES (40)
--Insert Purchasing.VendorIssues (PurchaseOrderID)
--VALUES (60)
--Insert Purchasing.VendorIssues (PurchaseOrderID)
--VALUES (80)
--Insert Purchasing.VendorIssues (PurchaseOrderID)
--VALUES (90)

--SELECT * FROM Purchasing.VendorIssues

--===NUMBER THREE===

--BEGIN TRANSACTION Salespersonadded
--DECLARE @BusinessEntity INT

--INSERT INTO		Person.BusinessEntity
--				(rowguid)
--VALUES			(NEWID())

--SET @BusinessEntity = SCOPE_IDENTITY();

--INSERT INTO		Person.Person
--				(BusinessEntityID, PersonType, Title, FirstName, MiddleName, LastName, EmailPromotion)
--VALUES			(@BusinessEntity, 'SP', 'Mr.', 'Art', 'A', 'Ammirati', 0) 

--INSERT INTO		HumanResources.Employee
--				(BusinessEntityID, NationalIDNumber, LoginID, JobTitle, BirthDate, MaritalStatus, Gender, 
--				HireDate, SalariedFlag, VacationHours, SickLeaveHours, CurrentFlag)
--VALUES			(@BusinessEntity, '123-45-6789', 'adventure-works\ammirati1', 'Salesperson', '1962-01-01', 'M', 'M',
--				'2016-01-01', 1, 100, 100, 1)

--INSERT INTO		HumanResources.EmployeeDepartmentHistory
--				(BusinessEntityID, DepartmentID, ShiftID, StartDate, EndDate)
--VALUES			(@BusinessEntity, 4, 1, '2016-01-01', '2017-01-01')
--			   ,(@BusinessEntity, 3, 1, '2017-01-02', NULL)

--INSERT INTO		HumanResources.EmployeePayHistory
--				(BusinessEntityID, RateChangeDate, Rate, PayFrequency)
--VALUES			(@BusinessEntity, '2017-01-01', 50, 2),
--				(@BusinessEntity, '2017-01-02', 100, 2)

--INSERT INTO		Sales.SalesPerson
--				(BusinessEntityID, TerritoryID, Bonus, CommissionPct, SalesYTD, SalesLastYear)
--VALUES			(@BusinessEntity, 2, 250000, 50, 800000, 1000000)

--INSERT INTO		Sales.SalesTerritoryHistory
--				(BusinessEntityID, TerritoryID, StartDate)
--VALUES			(@BusinessEntity, 2, '2017-01-02')

--INSERT INTO		Sales.SalesPersonQuotaHistory
--				(BusinessEntityID, QuotaDate, SalesQuota)
--VALUES			(@BusinessEntity, '2017-01-01', 5000000), (@BusinessEntity, '2017-04-01', 5000000)
--				,(@BusinessEntity, '2017-07-01', 5000000), (@BusinessEntity, '2017-10-01', 5000000)

--COMMIT TRANSACTION Salespersonadded



