--MÜÞTERÝ ARAMA
CREATE PROC MusteriArama(
	@first_name varchar(255),
	@last_name varchar(255)
)
AS
BEGIN
	SELECT * FROM sales.customers WHERE first_name=@first_name AND last_name=@last_name 
END
GO

EXEC MusteriArama 'Abdullah','Kaya'
SELECT *FROM sales.customers

--SÝPARÝÞ ARAMA
ALTER PROC SiparisArama(
	@order_id  int
)
AS
BEGIN
	SELECT * FROM sales.orders WHERE order_id=@order_id
END
GO

EXEC SiparisArama'1'
SELECT *FROM sales.orders

--PERSONEL ARAMA
CREATE PROC PersonelArama(
	@first_name varchar(50),
	@last_name varchar(50)
)
AS
BEGIN
	SELECT * FROM sales.staffs WHERE first_name=@first_name AND last_name=@last_name
END
GO

EXEC PersonelArama 'Bernardine','Houston'
SELECT *FROM sales.staffs

--MAÐAZA ARAMA
CREATE PROC MagazaArama(
	@store_name varchar(255)
)
AS
BEGIN
	SELECT * FROM sales.stores WHERE store_name=@store_name
END
GO

EXEC MagazaArama 'Dag Bikes'
SELECT *FROM sales.stores

--SÝPARÝÞ ÖÐELERÝNÝ ARAMA
CREATE PROC SiparisOgeleriniArama(
	@order_id int,
	@item_id int
)
AS
BEGIN
	SELECT * FROM sales.order_items WHERE  order_id=@order_id AND item_id=@item_id
END
GO

EXEC SiparisOgeleriniArama '1','1'
SELECT *FROM sales.order_items

----PRODUCTION/ÜRETÝM

--KATEGORÝ ARAMA
CREATE PROC KategoriArama(
	@category_name varchar(255)
)
AS
BEGIN
	SELECT *FROM production.categories WHERE category_name=@category_name
END
GO

EXEC KategoriArama 'Eda Bikes'
SELECT *FROM production.categories

--ÜRÜN ARAMA
ALTER PROC UrunArama(
	@product_name varchar(255)
)
AS
BEGIN
	SELECT *FROM production.products WHERE product_name=@product_name
END
GO

EXEC UrunArama 'Trek 820 - 2016'
SELECT *FROM production.products

--STOK ARAMA
ALTER PROC StokArama(
	@product_id int,
	@store_id int
)
AS
BEGIN
	SELECT *FROM production.stocks WHERE product_id=@product_id AND store_id=@store_id
END
GO

EXEC StokArama '1','2'
SELECT *FROM production.stocks

--MARKA ARAMA
CREATE PROC MarkaArama(
	@brand_name varchar(255)
)
AS
BEGIN
	SELECT *FROM production.brands WHERE brand_name = @brand_name
END
GO

EXEC MarkaArama 'Electra'
SELECT *FROM production.brands
