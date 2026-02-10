USE master
GO
if exists (select * from sysdatabases where name='ChinookStaging')
begin
	ALTER DATABASE ChinookStaging 
	SET SINGLE_USER 
	WITH ROLLBACK IMMEDIATE;
		drop database ChinookStaging

end
go

create database [ChinookStaging]
GO
use ChinookStaging

SELECT 
	EmployeeId,
	LastName,
	FirstName,
	Title
INTO Employees
FROM Chinook.dbo.Employee

SELECT 
	CustomerId,
	FirstName,
	LastName,
	Company,
	Country,
	City,
	State,
	Address,
	PostalCode,
	SupportRepId
INTO Customer
FROM Chinook.dbo.Customer

SELECT 
	t.TrackId,
	t.Name Track,
	a.AlbumId,
	a.Title AlbumName,
	art.ArtistId,
	art.Name ArtistName,
	Composer,
	g.GenreId,
	g.Name Genre,
	Bytes,
	Milliseconds,
	t.UnitPrice
INTO Track	
FROM Chinook.dbo.Track t
INNER JOIN Chinook.dbo.Album a
	ON t.AlbumId = a.AlbumId
INNER JOIN Chinook.dbo.Artist art
	ON a.ArtistId = art.ArtistId
INNER JOIN Chinook.dbo.Genre g
	ON t.GenreId = g.GenreId

SELECT 
	i.InvoiceId,
	ivl.TrackId,
	CustomerId,
	InvoiceDate,
	BillingAddress,
	BillingCity,
	BillingState,
	BillingCountry,
	ivl.UnitPrice,
	ivl.Quantity,
	Total
INTO Invoice
FROM Chinook.dbo.Invoice i
INNER JOIN Chinook.dbo.InvoiceLine ivl
	ON i.InvoiceId = ivl.InvoiceId