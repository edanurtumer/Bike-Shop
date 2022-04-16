--use BikeStores


EXEC sp_addmessage
	@msgnum=60008,
	@severity=5,
	@msgtext='HATALI BÝLGÝ EKLEDÝNÝZ!';

RAISERROR(60008,5,5)

----EKLEME
----SALES/SATIÞ
--YENÝ MÜÞTERÝ EKLEME
ALTER PROCEDURE YeniMusteriEkle(
	@first_name varchar(255),
	@last_name varchar(255),
	@phone varchar(255),
	@email varchar(255),
	@street varchar(255),
	@city varchar(50),
	@state varchar(25),
	@zip_code varchar(5)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			INSERT INTO sales.customers(first_name,last_name,phone,email,street,city,state,zip_code)
				VALUES (@first_name,@last_name,@phone,@email,@street,@city,@state,@zip_code)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO
EXEC YeniMusteriEkle 'Abdullah','Kaya','05203216585','abdullahkaya@gmail.com','Fýrat','Ankara','TR','02154'

SELECT * FROM sales.customers

--YENÝ SÝPARÝÞ EKLEME
ALTER PROCEDURE YeniSiparisEkle(
	@customer_id int,
	@order_status tinyint,
	@order_date date,
	@required_date date,
	@shipped_date date,
	@store_id int,
	@staff_id int
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			INSERT INTO sales.orders(customer_id,order_status,order_date,required_date,shipped_date,store_id,staff_id)
				VALUES (@customer_id,@order_status,@order_date,@required_date,@shipped_date,@store_id,@staff_id)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO
EXEC YeniSiparisEkle '5','4','2016-07-27','2016-07-29','2016-07-29','1','2'
SELECT * FROM sales.orders

--YENÝ PERSONEL EKLEME
ALTER PROCEDURE YeniPersonelEkle(
	@first_name varchar(50),
	@last_name varchar(50),
	@email varchar(255),
	@phone varchar(25),
	@active tinyint,
	@store_id int,
	@manager_id int
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			INSERT INTO sales.staffs(first_name,last_name,email,phone,active,store_id,manager_id)
				VALUES (@first_name,@last_name,@email,@phone,@active,@store_id,@manager_id)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO
EXEC YeniPersonelEkle 'Abdullah','Kaya','abdullahkaya@gmail.com','05302136596','1','1','2'
SELECT * FROM sales.staffs

--YENÝ MAÐAZA EKLEME
ALTER PROCEDURE YeniMagazaEkle(
	@store_name varchar(255),
	@phone varchar(25),
	@email varchar(255),
	@street varchar(255),
	@city varchar(255),
	@state varchar(10),
	@zip_code varchar(5)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			INSERT INTO sales.stores(store_name,phone,email,street,city,state,zip_code)
				VALUES (@store_name,@phone,@email,@street,@city,@state,@zip_code)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO
EXEC YeniMagazaEkle 'Hýzlý Bikes','02123698546','dag@gmail.com','6000 Bakýrkoy','Istanbul','TR','20201'
SELECT * FROM sales.stores

--YENÝ SÝPARÝÞ ÖÐELERÝ EKLEME
ALTER PROCEDURE YeniSiparisOgeleriEkle(
	@order_id int,
	@item_id int,
	@product_id int,
	@quantity int,
	@list_price decimal(10,2),
	@discount decimal(4,2)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			INSERT INTO sales.order_items(order_id,item_id,product_id,quantity,list_price,discount)
				VALUES (@order_id,@item_id,@product_id,@quantity,@list_price,@discount)
	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO
select *from sales.stores
EXEC YeniSiparisOgeleriEkle '1616','1','12',' 1','549.99','0.05'
SELECT * FROM sales.order_items



----PRODUCTION/ÜRETÝM
--YENÝ KATEGORÝ EKLEME
ALTER PROCEDURE YeniKategoriEkle(
	@category_name varchar(255)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			INSERT INTO production.categories(category_name)
				VALUES (@category_name)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO
EXEC YeniKategoriEkle 'Ýki Kiþilik Bicycles'
SELECT * FROM production.categories

--YENÝ ÜRÜN EKLEME
ALTER PROCEDURE YeniUrunEkle(
	@product_name varchar(255),
	@brand_id int,
	@category_id int,
	@model_year smallint,
	@list_price decimal(10,2)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			INSERT INTO production.products(product_name,brand_id,category_id,model_year,list_price)
				VALUES (@product_name,@brand_id,@category_id,@model_year,@list_price)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO
EXEC YeniUrunEkle 'Trek Fuel EX 9 30-2017','9','6','2017','3999.99'
SELECT * FROM production.products

--YENÝ STOK EKLEME
ALTER PROCEDURE YeniStokEkle(
	@store_id int,
	@product_id int,
	@quantity int
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			INSERT INTO production.stocks(store_id,product_id,quantity)
				VALUES (@store_id,@product_id,@quantity)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO
EXEC YeniStokEkle '','',''
SELECT * FROM production.stocks

--YENÝ MARKA EKLEME
ALTER PROCEDURE YeniMarkaEkle(
	@brand_name varchar(255)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			INSERT INTO production.brands(brand_name)
				VALUES (@brand_name)
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO
EXEC YeniMarkaEkle 'Eda'
SELECT * FROM production.brands




----SÝLME
----SALES/SATIÞ

--MÜÞTERÝ SÝLME
ALTER PROC MusteriSilme(
	@customer_id int
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
	DELETE FROM sales.customers WHERE customer_id = @customer_id
	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO

EXEC MusteriSilme '1446'
SELECT *FROM sales.customers

--SÝPARÝÞ SÝLME
ALTER PROC SiparisSilme(
	@order_id int
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			DELETE FROM sales.orders WHERE order_id = @order_id
	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO

EXEC SiparisSilme '1619'
SELECT *FROM sales.orders

--PERSONEL SÝLME
ALTER PROC PersonelSilme(
	@staff_id int
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			DELETE FROM sales.staffs WHERE staff_id = @staff_id
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO

EXEC PersonelSilme '11'
SELECT *FROM sales.staffs

--MAÐAZA SÝLME
ALTER PROC MagazaSilme(
	@store_id int
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			DELETE FROM sales.stores WHERE store_id = @store_id
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO

EXEC MagazaSilme '4'
SELECT *FROM sales.stores

--SÝPARÝÞ ÖÐELERÝNÝ SÝLME
ALTER PROC SiparisOgeleriniSilme(
	@order_id int,
	@item_id int
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			DELETE FROM sales.order_items WHERE order_id=@order_id AND item_id = @item_id
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO

EXEC SiparisOgeleriniSilme '1615','3'
SELECT *FROM sales.order_items

----PRODUCTION/ÜRETÝM

--KATEGORÝ SÝLME
ALTER PROC KategoriSilme(
	@category_name Varchar(250)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			DELETE FROM production.categories WHERE category_name = @category_name
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO

EXEC KategoriSilme '8'
SELECT *FROM production.categories

--ÜRÜN SÝLME
ALTER PROC UrunSilme(
	@product_id int
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			DELETE FROM production.products WHERE product_id = @product_id
	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO

EXEC UrunSilme '322'
SELECT *FROM production.products

--STOK SÝLME
ALTER PROC StokSilme(
	@store_id int,
	@product_id int
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			DELETE FROM production.stocks WHERE store_id=@store_id AND product_id = @product_id
	COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO

EXEC StokSilme '1','1'
SELECT *FROM production.stocks

--MARKA SÝLME
ALTER PROC MarkaSilme(
	@brand_name varchar(255)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			DELETE FROM production.brands WHERE brand_name = @brand_name
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO

EXEC MarkaSilme 'Yavaþ'
SELECT *FROM production.brands

----GÜNCELLEME
----SALES/SATIÞ

--MÜÞTERÝ GÜNCELLEME
ALTER PROC MusteriGuncelleme(
	@first_name varchar(255),
	@last_name varchar(255),
	@phone varchar(255),
	@email varchar(255),
	@street varchar(255),
	@city varchar(50),
	@state varchar(25),
	@zip_code varchar(5)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			UPDATE sales.customers SET first_name=@first_name, last_name=@last_name, phone=@phone, email=@email, street=@street, city=@city, state=@state, zip_code=@zip_code WHERE first_name=@first_name OR last_name=@last_name 
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO

EXEC MusteriGuncelleme 'Abdullah','Kaya','05203216585','abdullahkaya@gmail.com','Fýrat','Ankara','TR','02154'
SELECT *FROM sales.customers

--SÝPARÝÞ GÜNCELLEME
ALTER PROC SiparisGuncelleme(
	@customer_id  int,
	@order_status tinyint,
	@order_date date,
	@required_date date,
	@shipped_date date,
	@store_id int,
	@staff_id int
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			UPDATE sales.orders SET customer_id=@customer_id,order_status=@order_status, order_date=@order_date, required_date=@required_date,shipped_date=@shipped_date, store_id=@store_id, staff_id=@staff_id WHERE customer_id=@customer_id
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO

EXEC SiparisGuncelleme '259','3','2016-01-01','2016-01-03','2016-01-03','1','2'
SELECT *FROM sales.orders

--PERSONEL GÜNCELLEME
ALTER PROC PersonelGuncelleme(
	@first_name varchar(50),
	@last_name varchar(50),
	@email varchar(255),
	@phone varchar(25),
	@active tinyint,
	@store_id int,
	@manager_id int
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			UPDATE sales.staffs SET first_name=@first_name, last_name=@last_name, email=@email, phone=@phone, active=@active, store_id=@store_id, manager_id=@manager_id WHERE first_name=@first_name OR last_name=@last_name
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO

EXEC PersonelGuncelleme 'Bernardine','Houston','bernardine.houston@bikes.shop','(972) 530-5557','1','3','7'
SELECT *FROM sales.staffs

--MAÐAZA GÜNCELLEME
ALTER PROC MagazaGuncelleme(
	@store_name varchar(255),
	@phone varchar(25),
	@email varchar(255),
	@street varchar(255),
	@city varchar(255),
	@state varchar(10),
	@zip_code varchar(5)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			UPDATE sales.stores SET store_name=@store_name, phone=@phone, email=@email, street=@street, city=@city, state=@state, zip_code=@zip_code WHERE store_name=@store_name
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO

EXEC MagazaGuncelleme 'Dag Bikes','02123698546','dag@gmail.com','6000 Bakýrkoy','Istanbul','TR','20201'
SELECT *FROM sales.stores

--SÝPARÝÞ ÖÐELERÝNÝ GÜNCELLEME
ALTER PROC SiparisOgeleriniGuncelleme(
	@order_id int,
	@item_id int,
	@product_id int,
	@quantity int,
	@list_price decimal(10,2),
	@discount decimal(4,2)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			UPDATE sales.order_items SET order_id=@order_id, item_id=@item_id, product_id=@product_id, quantity=@quantity, list_price=@list_price, discount=@discount WHERE  order_id=@order_id AND product_id=@product_id
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO

EXEC SiparisOgeleriniGuncelleme '1','1','20','1','599.99','0.20'
SELECT *FROM sales.order_items

----PRODUCTION/ÜRETÝM

--KATEGORÝ GÜNCELLEME
ALTER PROC KategoriGuncelleme(
	@category_id int,
	@category_name varchar(255)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			UPDATE production.categories SET category_name=@category_name WHERE category_id=@category_id
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO

EXEC KategoriGuncelleme '7','Road Bikes'
SELECT *FROM production.categories

--ÜRÜN GÜNCELLEME
ALTER PROC UrunGuncelleme(
	@product_id int,
	@product_name varchar(255),
	@brand_id int,
	@category_id int,
	@model_year smallint,
	@list_price decimal(10,2)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			UPDATE production.products SET product_name=@product_name, brand_id=@brand_id, category_id=@category_id, model_year=@model_year, list_price=@list_price WHERE product_id=@product_id
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO

EXEC UrunGuncelleme '1','Trek 820 - 2016','9','6','2016','379.99'
SELECT *FROM production.products

--STOK GÜNCELLEME
ALTER PROC StokGuncelleme(
	@product_id int,
	@store_id int,
	@quantity int
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			UPDATE production.stocks SET store_id=@store_id, quantity=@quantity WHERE product_id=@product_id
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO

EXEC StokGuncelleme '1','1','30'
SELECT *FROM production.stocks

--MARKA GÜNCELLEME
ALTER PROC MarkaGuncelleme(
	@brand_id int,
	@brand_name varchar(255)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRANSACTION
			UPDATE production.brands SET brand_name=@brand_name WHERE brand_id = @brand_id
		COMMIT TRANSACTION
	END TRY
	BEGIN CATCH
		RAISERROR(60008,5,5)
		ROLLBACK
	END CATCH
END
GO

EXEC MarkaGuncelleme '1','Electra'
SELECT *FROM production.brands


--güncelleme stok kýsmýnda hata veriyor

select *from production.categories