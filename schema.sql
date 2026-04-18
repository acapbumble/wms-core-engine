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