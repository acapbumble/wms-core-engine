
insert into tenants (slug, name, status, created_at) values
('zamrud-store', 'Zamrud', 'Active', now()),
('tookar-store', 'Tookar', 'Active', now()),
('motik-store', 'Motik', 'Active', now());
    
INSERT INTO products (tenant_id, sku, name, weight_kg, retail_price, created_at) VALUES
(1, 'SJDH-BLK', 'Black Sejadah', 0.8, 45.00, now()),
(1, 'TLKG-WHI', 'White Telekung', 0.6, 120.00, now()),
(1, 'JBH-WHI', 'White Jubah', 0.5, 75.00, now()),
(1, 'KPH-WHI', 'White Kopiah', 0.1, 15.00, now()),
(1, 'SONG-BLK', 'Black Songkok', 0.3, 40.00, now()),

(2, 'IP15PM-TIT', 'Titanium iPhone 15 Pro Max 256GB', 0.4, 4500.00, now()),
(2, 'IP14P-PUR', 'Deep Purple iPhone 14 Pro 128GB', 0.35, 3200.00, now()),
(2, 'IP13-PNK', 'Pink iPhone 13 128GB', 0.3, 2100.00, now()),
(2, 'IP12-BLK', 'Black iPhone 12 64GB', 0.3, 1500.00, now()),
(2, 'IP11-WHT', 'White iPhone 11 128GB', 0.35, 1100.00, now()),

(3, 'OS-TEE-BLU', 'Blue Oversized Tshirt', 0.3, 19.90, now()),
(3, 'OS-TEE-BLK', 'Black Oversized Tshirt', 0.3, 19.90, now()),
(3, 'OS-TEE-WHT', 'White Oversized Tshirt', 0.3, 19.90, now()),
(3, 'OS-TEE-BRN', 'Brown Oversized Tshirt', 0.3, 19.90, now()),
(3, 'OS-TEE-BGE', 'Beige Oversized Tshirt', 0.3, 19.90, now());

-- Zone A and Zone B locations grouped up
INSERT INTO locations (zone, aisle, rack, level, label) VALUES
('A', '01', '01', '1', 'A-01-01-1'), ('A', '01', '01', '2', 'A-01-01-2'),
('A', '01', '02', '1', 'A-01-02-1'), ('A', '01', '02', '2', 'A-01-02-2'),
('A', '02', '01', '1', 'A-02-01-1'), ('A', '02', '01', '2', 'A-02-01-2'),
('A', '02', '02', '1', 'A-02-02-1'), ('A', '02', '02', '2', 'A-02-02-2'),
('A', '03', '01', '1', 'A-03-01-1'), ('A', '03', '01', '2', 'A-03-01-2'),
('B', '01', '01', '1', 'B-01-01-1'), ('B', '01', '01', '2', 'B-01-01-2'),
('B', '01', '02', '1', 'B-01-02-1'), ('B', '01', '02', '2', 'B-01-02-2'),
('B', '02', '01', '1', 'B-02-01-1'), ('B', '02', '01', '2', 'B-02-01-2'),
('B', '02', '02', '1', 'B-02-02-1'), ('B', '02', '02', '2', 'B-02-02-2'),
('B', '03', '01', '1', 'B-03-01-1'), ('B', '03', '01', '2', 'B-03-01-2');

INSERT INTO stock (product_id, location_id, quantity) VALUES
(1, 1, 50),
(2, 2, 45),
(3, 11, 20),
(4, 12, 15),
(6, 3, 10),
(7, 4, 12),
(8, 13, 8),
(11, 5, 500),
(12, 6, 350),
(13, 15, 200);