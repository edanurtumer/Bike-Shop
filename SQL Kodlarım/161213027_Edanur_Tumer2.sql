CREATE FUNCTION production.Zam(@liste_fiyat� DECIMAL, @zam DECIMAL)
RETURNS DECIMAL(10,2)
AS
BEGIN
	RETURN @liste_fiyat�+((@liste_fiyat�*@zam)/100);
END

SELECT list_price, (production.Zam(list_price,30)) FROM production.products