CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS products;

CREATE TABLE products (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    price NUMERIC(10, 2) NOT NULL CHECK (price >= 0),
    stock INTEGER NOT NULL DEFAULT 0 CHECK (stock >= 0),
    is_active BOOLEAN NOT NULL DEFAULT true,
    sku TEXT UNIQUE,
    description TEXT,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

INSERT INTO products (name, category, price, stock, is_active, sku, description) VALUES
('Wireless Mouse', 'Electronics', 799.00, 50, TRUE, 'ELEC-WM-001', 'Ergonomic wireless optical mouse'),
('Mechanical Keyboard', 'Electronics', 3499.00, 25, TRUE, 'ELEC-MK-002', 'RGB backlit mechanical keyboard'),
('Office Chair', 'Furniture', 6999.00, 15, TRUE, 'FURN-OC-003', 'Comfortable ergonomic office chair'),
('Water Bottle', 'Accessories', 299.00, 120, TRUE, 'ACC-WB-004', '1L stainless steel insulated bottle'),
('Notebook', 'Stationery', 99.00, 200, TRUE, 'STAT-NB-005', 'A5 ruled notebook with 200 pages'),
('Gaming Headset', 'Electronics', 2499.00, 30, TRUE, 'ELEC-GH-006', 'Noise-cancelling gaming headset'),
('LED Desk Lamp', 'Home', 1299.00, 40, TRUE, 'HOME-DL-007', 'Adjustable LED desk lamp with touch controls'),
('Coffee Mug', 'Kitchen', 199.00, 80, TRUE, 'KIT-MG-008', 'Ceramic coffee mug (350ml)'),
('Running Shoes', 'Footwear', 3999.00, 20, FALSE, 'SHOE-RS-009', 'Lightweight running shoes'),
('Bluetooth Speaker', 'Electronics', 1799.00, 35, TRUE, 'ELEC-BS-010', 'Portable Bluetooth speaker with deep bass');

SELECT * FROM products;