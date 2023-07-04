CREATE TABLE IF NOT EXISTS public.products (
    product_id serial PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);
CREATE TABLE IF NOT EXISTS public.shops (
    shop_id smallserial PRIMARY KEY,
    shop_name VARCHAR(25) NOT NULL
);
CREATE TABLE IF NOT EXISTS public.plan (
    plan_id serial PRIMARY KEY,
    product_id INTEGER NOT NULL,
    shop_id SMALLINT NOT NULL,
    plan_cnt SMALLINT NOT NULL,
    plan_date DATE NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE SET NULL,
    FOREIGN KEY (shop_id) REFERENCES shops (shop_id) ON DELETE SET NULL    
);
CREATE TABLE IF NOT EXISTS public.shop_dns(
    sale_id bigserial PRIMARY KEY,
    date DATE NOT NULL,
    product_id INTEGER NOT NULL,
    sales_cnt SMALLINT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE SET NULL
);
CREATE TABLE IF NOT EXISTS public.shop_mvideo(
    sale_id bigserial PRIMARY KEY,
    date DATE NOT NULL,
    product_id INTEGER NOT NULL,
    sales_cnt SMALLINT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE SET NULL
);
CREATE TABLE IF NOT EXISTS public.shop_sitilink(
    sale_id bigserial PRIMARY KEY,
    date DATE NOT NULL,
    product_id INTEGER NOT NULL,
    sales_cnt SMALLINT NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE SET NULL
);
INSERT INTO public.products
    (product_name, price) VALUES
    ('Испорченный телефон', 109000.00),
    ('Сарафанное радио', 29000.00),
    ('Патефон', 9999.00);
   
INSERT INTO public.shops
    (shop_name) VALUES
    ('DNS'),
    ('М.видео'),
    ('СИТИЛИНК');
   
INSERT INTO public.plan
    (product_id, shop_id, plan_cnt, plan_date) VALUES
    (1, 1, 50, '2023-05-30'),
    (1, 2, 50, '2023-05-30'),
    (1, 3, 100, '2023-05-30'),
    (2, 1, 200, '2023-05-30'),
    (2, 2, 200, '2023-05-30'),
    (2, 3, 400, '2023-05-30'),
    (3, 1, 100, '2023-05-30'),
    (3, 2, 100, '2023-05-30'),
    (3, 3, 200, '2023-05-30'),
    (1, 1, 50, '2023-06-30'),
    (1, 2, 50, '2023-06-30'),
    (1, 3, 100, '2023-06-30'),
    (2, 1, 200, '2023-06-30'),
    (2, 2, 200, '2023-06-30'),
    (2, 3, 400, '2023-06-30'),
    (3, 1, 100, '2023-06-30'),
    (3, 2, 100, '2023-06-30'),
    (3, 3, 200, '2023-06-30'),
    (1, 1, 50, '2023-07-31'),
    (1, 2, 50, '2023-07-31'),
    (1, 3, 100, '2023-07-31'),
    (2, 1, 200, '2023-07-31'),
    (2, 2, 200, '2023-07-31'),
    (2, 3, 400, '2023-07-31'),
    (3, 1, 100, '2023-07-31'),
    (3, 2, 100, '2023-07-31'),
    (3, 3, 200, '2023-07-31');

 INSERT INTO public.shop_dns 
    (date, product_id, sales_cnt) VALUES
    ('2023-05-25', 2, 200),
    ('2023-06-01', 1, 10),
    ('2023-06-01', 2, 20),
    ('2023-06-02', 2, 40),
    ('2023-06-02', 3, 17),
    ('2023-06-03', 1, 11),
    ('2023-06-03', 2, 12),
    ('2023-06-05', 3, 23),
    ('2023-06-05', 1, 9),
    ('2023-06-10', 1, 8),
    ('2023-06-10', 2, 25),
    ('2023-06-15', 3, 43),
    ('2023-06-20', 1, 15),
    ('2023-06-20', 2, 10),
    ('2023-06-20', 3, 27),
    ('2023-06-25', 1, 5),
    ('2023-06-26', 2, 2),
    ('2023-06-27', 3, 38),
    ('2023-07-01', 1, 4),
    ('2023-07-02', 2, 8),
    ('2023-07-02', 3, 21); 
    
 INSERT INTO public.shop_mvideo 
    (date, product_id, sales_cnt) VALUES
    ('2023-05-30', 3, 50),
    ('2023-06-01', 1, 7),
    ('2023-06-01', 2, 21),
    ('2023-06-01', 2, 33),
    ('2023-06-02', 3, 8),
    ('2023-06-03', 1, 10),
    ('2023-06-04', 2, 14),
    ('2023-06-05', 3, 15),
    ('2023-06-05', 1, 8),
    ('2023-06-10', 1, 7),
    ('2023-06-10', 2, 26),
    ('2023-06-15', 3, 29),
    ('2023-06-20', 1, 8),
    ('2023-06-20', 2, 15),
    ('2023-06-20', 3, 21),
    ('2023-06-25', 1, 4),
    ('2023-06-26', 2, 12),
    ('2023-06-27', 3, 17),
    ('2023-07-01', 1, 6),
    ('2023-07-02', 2, 11),
    ('2023-07-02', 3, 10);
    
INSERT INTO public.shop_sitilink 
    (date, product_id, sales_cnt) VALUES
    ('2023-05-29', 1, 100),
    ('2023-06-01', 1, 15),
    ('2023-06-01', 2, 40),
    ('2023-06-01', 2, 15),
    ('2023-06-02', 3, 15),
    ('2023-06-03', 1, 20),
    ('2023-06-04', 2, 25),
    ('2023-06-05', 3, 30),
    ('2023-06-05', 1, 11),
    ('2023-06-10', 1, 15),
    ('2023-06-10', 2, 20),
    ('2023-06-15', 3, 40),
    ('2023-06-20', 1, 13),
    ('2023-06-20', 2, 15),
    ('2023-06-20', 3, 21),
    ('2023-06-25', 1, 6),
    ('2023-06-26', 2, 10),
    ('2023-06-27', 3, 39),
    ('2023-07-01', 1, 11),
    ('2023-07-02', 2, 21),
    ('2023-07-02', 3, 23);


