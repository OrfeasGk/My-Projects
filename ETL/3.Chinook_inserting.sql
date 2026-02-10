use master
go

INSERT INTO ChinookDw.dbo.DimEmployee(
	EmployeeID, 
	EmployeeName,
	EmployeeTitle
)(
SELECT EmployeeId, CONCAT(FirstName, ' ', LastName), Title
FROM ChinookStaging.dbo.Employees);

INSERT INTO ChinookDw.dbo.DimCustomer(
	CustomerID,
	CustomerName,
	CustomerCompany,
	CustomerCountry,
	CustomerState,
	CustomerCity,
	CustomerPostalCode,
	SupportRepId)
(SELECT CustomerId, CONCAT(FirstName, ' ', LastName), ISNULL(Company,'N/A'), 
	ISNULL(Country, 'N/A'), ISNULL(State, 'N/A'), ISNULL(City,'N/A'), 
	ISNULL(PostalCode,'N/A'), SupportRepId
FROM ChinookStaging.dbo.Customer);

INSERT INTO ChinookDw.dbo.DimTrack(
	TrackId,
	TrackName,
	AlbumName,
	ArtistName,
	Composer,
	Genre,
	Bytes,
	Milliseconds,
	UnitPrice)
(SELECT TrackId, Track, AlbumName, ISNULL(ArtistName, 'N/A') AS ArtistName, ISNULL(Composer,'N/A') AS Composer,
	ISNULL(Genre,'N/A') AS GenreName, Bytes, Milliseconds, UnitPrice
	FROM ChinookStaging.dbo.Track);


INSERT INTO ChinookDw.dbo.FactSales(
	TrackKey,
	Customerkey,
	EmployeeKey,
	DateKey,
	InvoiceId,
	UnitPrice,
	Total)
(SELECT t.TrackKey, c.CustomerKey, e.EmployeeKey, 
	dorder.DateKey as DateKey,
	i.InvoiceId,
	i.UnitPrice, i.Total
FROM ChinookStaging.dbo.Invoice i
INNER JOIN ChinookDw.dbo.DimCustomer c
	ON i.CustomerId = c.CustomerID
INNER JOIN ChinookDw.dbo.DimEmployee e
	ON e.EmployeeID=c.SupportRepId
INNER JOIN ChinookDw.dbo.DimTrack t
	ON i.TrackId = t.TrackId
INNER JOIN ChinookDw.dbo.DimDate dorder
    ON i.InvoiceDate = dorder.[Date]
)

