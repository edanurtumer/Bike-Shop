CREATE FUNCTION production.Zam(@liste_fiyatý DECIMAL, @zam DECIMAL)
RETURNS DECIMAL(10,2)
AS
BEGIN
	RETURN @liste_fiyatý+((@liste_fiyatý*@zam)/100);
END

SELECT list_price, (production.Zam(list_price,30)) FROM production.products