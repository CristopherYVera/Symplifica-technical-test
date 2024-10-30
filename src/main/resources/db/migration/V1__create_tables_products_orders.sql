CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name varchar(50),
    description varchar(100),
    price decimal,
    current_stock int
);

CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    product_id int  REFERENCES products(id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES products(id)
);

CREATE INDEX idx_product_id ON orders(product_id);