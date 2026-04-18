CREATE TABLE tenants (
    id SERIAL PRIMARY KEY,
    slug VARCHAR UNIQUE,
    name VARCHAR,
    status VARCHAR DEFAULT 'Active',
    created_at TIMESTAMP
);

CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    tenant_id INT,
    sku VARCHAR UNIQUE,
    name VARCHAR,
    weight_kg NUMERIC(10,2),
    retail_price NUMERIC(10,2) CHECK (retail_price >= 0),
    created_at TIMESTAMP
);

CREATE TABLE locations (
    id SERIAL PRIMARY KEY,
    zone VARCHAR,
    aisle VARCHAR,
    rack VARCHAR,
    level VARCHAR,
    label VARCHAR UNIQUE
);

CREATE TABLE stock (
    id SERIAL PRIMARY KEY,
    product_id INTEGER REFERENCES products(id) ON DELETE CASCADE,
    location_id INTEGER REFERENCES locations(id) ON DELETE CASCADE,
    quantity INT,
    last_updated TIMESTAMP DEFAULT now()
);

create table stock_movements (
    id SERIAL PRIMARY KEY,
    product_id int references products(id),
    from_location_id int references locations(id),
    to_location_id int references locations(id),
    quantity int,
    reason varchar,
    moved_at timestamp default now()
);

ALTER TABLE products 
ADD CONSTRAINT fk_tenant FOREIGN KEY (tenant_id) REFERENCES tenants(id);