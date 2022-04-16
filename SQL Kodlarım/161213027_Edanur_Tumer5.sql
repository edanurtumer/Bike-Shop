CREATE VIEW sales.stores_sales(
	store_name,
	day,
	month,
	year,
	amount
)
AS
	SELECT
		store_name,
		DAY(order_date),
		MONTH(order_date),
		YEAR(order_date),
		SUM( list_price * quantity) amount
	FROM
		sales.order_items i
	INNER JOIN sales.orders o
		ON i.order_id=o.order_id
	INNER JOIN sales.stores s
		ON s.store_id= o.store_id
	GROUP BY
		store_name,
		DAY(order_date),
		MONTH(order_date),
		YEAR(order_date);

SELECT * FROM sales.stores_sales Order By store_name,year,month,day

CREATE VIEW sales.stores_sales1(
	store_name,
	month,
	year,
	amount
)
AS
	SELECT
		store_name,
		MONTH(order_date),
		YEAR(order_date),
		SUM( list_price * quantity) amount
	FROM
		sales.order_items i
	INNER JOIN sales.orders o
		ON i.order_id=o.order_id
	INNER JOIN sales.stores s
		ON s.store_id= o.store_id
	GROUP BY
		store_name,
		MONTH(order_date),
		YEAR(order_date);

		CREATE VIEW sales.stores_sales2(
	store_name,
	year,
	amount
)
AS
	SELECT
		store_name,
		YEAR(order_date),
		SUM( list_price * quantity) amount
	FROM
		sales.order_items i
	INNER JOIN sales.orders o
		ON i.order_id=o.order_id
	INNER JOIN sales.stores s
		ON s.store_id= o.store_id
	GROUP BY
		store_name,
		YEAR(order_date);