--1.TABLO
CREATE TABLE sales.customers_log(
    change_id INT IDENTITY PRIMARY KEY,
    customer_id INT  NULL,
    first_name VARCHAR(255)  NULL,
    last_name VARCHAR(255)  NULL,
    phone VARCHAR(255) NULL,
	email VARCHAR(255)  NULL,
	street VARCHAR(255)  NULL,
	city VARCHAR(255)  NULL,
	state VARCHAR(255)  NULL,
	zip_code VARCHAR(255)  NULL,
    updated_at DATETIME NOT NULL,
    operation CHAR(3) NOT NULL,
    CHECK(operation = 'INS' or operation='DEL' or operation='UPDT')
);

CREATE Trigger sales.customers_trg
ON sales.customers
AFTER INSERT,DELETE,UPDATE
AS
BEGIN
  SET NOCOUNT ON
  INSERT INTO sales.customers_log(customer_id,first_name,last_name,phone,email,street,city,state,zip_code,updated_at,operation)
  SELECT i.customer_id,first_name,last_name,phone,email,street,city,state,zip_code,GETDATE(),'INS' FROM inserted i
  UNION ALL
  SELECT d.customer_id,first_name,last_name,phone,email,street,city,state,zip_code,GETDATE(),'DEL' FROM deleted d;

END;


SELECT *FROM sales.customers_log




--2. TABLO
CREATE TABLE sales.orders_log(
    change_id INT IDENTITY PRIMARY KEY,
    order_id INT  NULL,
	customer_id INT  NULL,
    order_status VARCHAR(255)  NULL,
    order_date VARCHAR(255)  NULL,
    required_date VARCHAR(255) NULL,
	shapped_date VARCHAR(255)  NULL,
	store_id INT  NULL,
	staff_id INT  NULL,
    updated_at DATETIME NOT NULL,
    operation CHAR(3) NOT NULL,
    CHECK(operation = 'INS' or operation='DEL' or operation='UPDT')
);

CREATE Trigger sales.orders_trg
ON sales.orders
AFTER INSERT,DELETE,UPDATE
AS
BEGIN
  SET NOCOUNT ON
  INSERT INTO sales.orders_log(order_id,customer_id,order_status,order_date,required_date,store_id,staff_id,updated_at,operation)
  SELECT i.order_id,customer_id,order_status,order_date,required_date,store_id,staff_id,GETDATE(),'INS' FROM inserted i
  UNION ALL
  SELECT d.order_id,customer_id,order_status,order_date,required_date,store_id,staff_id,GETDATE(),'DEL' FROM deleted d;

END;


SELECT *FROM sales.orders_log



--3. TABLO
CREATE TABLE sales.staffs_log(
    change_id INT IDENTITY PRIMARY KEY,
    staff_id INT  NULL,
    first_name VARCHAR(255)  NULL,
    last_name VARCHAR(255)  NULL,
    email VARCHAR(255) NULL,
	phone VARCHAR(255)  NULL,
	active INT  NULL,
	store_id INT  NULL,
	manager_id INT  NULL,
    updated_at DATETIME NOT NULL,
    operation CHAR(3) NOT NULL,
    CHECK(operation = 'INS' or operation='DEL' or operation='UPDT')
);

CREATE Trigger sales.staffs_trg
ON sales.staffs
AFTER INSERT,DELETE,UPDATE
AS
BEGIN
  SET NOCOUNT ON
  INSERT INTO sales.staffs_log(staff_id,first_name,last_name,email,phone,active,store_id,manager_id,updated_at,operation)
  SELECT i.staff_id,first_name,last_name,email,phone,active,store_id,manager_id,GETDATE(),'INS' FROM inserted i
  UNION ALL
  SELECT d.staff_id,first_name,last_name,email,phone,active,store_id,manager_id,GETDATE(),'DEL' FROM deleted d;

END;


SELECT *FROM sales.staffs_log




--4. TABLO
CREATE TABLE sales.stores_log(
    change_id INT IDENTITY PRIMARY KEY,
    store_id INT  NULL,
    store_name VARCHAR(255)  NULL,
    phone VARCHAR(255)  NULL,
    email VARCHAR(255) NULL,
	street VARCHAR(255)  NULL,
	city VARCHAR(255)  NULL,
	state VARCHAR(255)  NULL,
	zip_code INT  NULL,
    updated_at DATETIME NOT NULL,
    operation CHAR(3) NOT NULL,
    CHECK(operation = 'INS' or operation='DEL' or operation='UPDT')
);

CREATE Trigger sales.stores_trg
ON sales.stores
AFTER INSERT,DELETE,UPDATE
AS
BEGIN
  SET NOCOUNT ON
  INSERT INTO sales.stores_log(store_id,store_name,phone,email,street,city,state,zip_code,updated_at,operation)
  SELECT i.store_id,store_name,phone,email,street,city,state,zip_code,GETDATE(),'INS' FROM inserted i
  UNION ALL
  SELECT d.store_id,store_name,phone,email,street,city,state,zip_code,GETDATE(),'DEL' FROM deleted d;

END;


SELECT *FROM sales.stores_log




--5. TABLO
CREATE TABLE sales.order_items_log(
    change_id INT IDENTITY PRIMARY KEY,
    order_id INT  NULL,
    item_id INT  NULL,
    product_id INT  NULL,
    quantity VARCHAR(255) NULL,
	list_price VARCHAR(255)  NULL,
	discount VARCHAR(255)  NULL,
    updated_at DATETIME NOT NULL,
    operation CHAR(3) NOT NULL,
    CHECK(operation = 'INS' or operation='DEL' or operation='UPDT')
);

CREATE Trigger sales.order_items_trg
ON sales.order_items
AFTER INSERT,DELETE,UPDATE
AS
BEGIN
  SET NOCOUNT ON
  INSERT INTO sales.order_items_log(order_id,item_id,product_id,quantity,list_price,discount,updated_at,operation)
  SELECT i.order_id,item_id,product_id,quantity,list_price,discount,GETDATE(),'INS' FROM inserted i
  UNION ALL
  SELECT d.order_id,item_id,product_id,quantity,list_price,discount,GETDATE(),'DEL' FROM deleted d;

END;


SELECT *FROM sales.order_items_log




--6. TABLO
CREATE TABLE production.categories_log(
    change_id INT IDENTITY PRIMARY KEY,
    category_id INT  NULL,
    category_name VARCHAR(255) NULL,
    updated_at DATETIME NOT NULL,
    operation CHAR(3) NOT NULL,
    CHECK(operation = 'INS' or operation='DEL' or operation='UPDT')
);

CREATE Trigger production.categories_trg
ON production.categories
AFTER INSERT,DELETE,UPDATE
AS
BEGIN
  SET NOCOUNT ON
  INSERT INTO production.categories_log(category_id,category_name,updated_at,operation)
  SELECT i.category_id,category_name,GETDATE(),'INS' FROM inserted i
  UNION ALL
  SELECT d.category_id,category_name,GETDATE(),'DEL' FROM deleted d;

END;


SELECT *FROM production.categories_log





--7. TABLO
CREATE TABLE production.products_log(
    change_id INT IDENTITY PRIMARY KEY,
    product_id INT  NULL,
    product_name VARCHAR(255) NULL,
	brand_id INT  NULL,
	category_id INT  NULL,
	model_year VARCHAR(255) NULL,
	list_price VARCHAR(255) NULL,
    updated_at DATETIME NOT NULL,
    operation CHAR(3) NOT NULL,
    CHECK(operation = 'INS' or operation='DEL' or operation='UPDT')
);

CREATE Trigger production.products_trg
ON production.products
AFTER INSERT,DELETE,UPDATE
AS
BEGIN
  SET NOCOUNT ON
  INSERT INTO production.products_log(product_id,product_name,brand_id,category_id,model_year,list_price,updated_at,operation)
  SELECT i.product_id,product_name,brand_id,category_id,model_year,list_price,GETDATE(),'INS' FROM inserted i
  UNION ALL
  SELECT d.product_id,product_name,brand_id,category_id,model_year,list_price,GETDATE(),'DEL' FROM deleted d;

END;


SELECT *FROM production.products_log



--8. TABLO
CREATE TABLE production.stocks_log(
    change_id INT IDENTITY PRIMARY KEY,
    store_id INT  NULL,
	product_id INT  NULL,
    quantity VARCHAR(255) NULL,
    updated_at DATETIME NOT NULL,
    operation CHAR(3) NOT NULL,
    CHECK(operation = 'INS' or operation='DEL' or operation='UPDT')
);

CREATE Trigger production.stocks_trg
ON production.stocks
AFTER INSERT,DELETE,UPDATE
AS
BEGIN
  SET NOCOUNT ON
  INSERT INTO production.stocks_log(store_id,product_id,quantity,updated_at,operation)
  SELECT i.store_id,product_id,quantity,GETDATE(),'INS' FROM inserted i
  UNION ALL
  SELECT d.store_id,product_id,quantity,GETDATE(),'DEL' FROM deleted d;

END;


SELECT *FROM production.stocks_log




--9. TABLO
CREATE TABLE production.brands_log(
    change_id INT IDENTITY PRIMARY KEY,
    brand_id INT  NULL,
    brand_name VARCHAR(255) NULL,
    updated_at DATETIME NOT NULL,
    operation CHAR(3) NOT NULL,
    CHECK(operation = 'INS' or operation='DEL' or operation='UPDT')
);

CREATE Trigger production.brands_trg
ON production.brands
AFTER INSERT,DELETE,UPDATE
AS
BEGIN
  SET NOCOUNT ON
  INSERT INTO production.brands_log(brand_id,brand_name,updated_at,operation)
  SELECT i.brand_id,brand_name,GETDATE(),'INS' FROM inserted i
  UNION ALL
  SELECT d.brand_id,brand_name,GETDATE(),'DEL' FROM deleted d;

END;


SELECT *FROM production.brands_log