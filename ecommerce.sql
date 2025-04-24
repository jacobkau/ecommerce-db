CREATE TABLE brand (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE product_category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    brand_id INT,
    category_id INT,
    base_price DECIMAL(10,2),
    FOREIGN KEY (brand_id) REFERENCES brand(id),
    FOREIGN KEY (category_id) REFERENCES product_category(id)
);

CREATE TABLE size_category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);
CREATE TABLE size_option (
    id INT AUTO_INCREMENT PRIMARY KEY,
    size_label VARCHAR(50),
    size_category_id INT,
    FOREIGN KEY (size_category_id) REFERENCES size_category(id)
);

CREATE TABLE color (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    hex_code VARCHAR(7)
);

CREATE TABLE product_item (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    size_id INT,
    color_id INT,
    stock_quantity INT,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (size_id) REFERENCES size_option(id),
    FOREIGN KEY (color_id) REFERENCES color(id)
);

CREATE TABLE product_variation (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    variation VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES product(id)
);
CREATE TABLE product_image (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    image_url VARCHAR(2083),
    FOREIGN KEY (product_id) REFERENCES product(id)
);

CREATE TABLE attribute_category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE attribute_type (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    data_type VARCHAR(50),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES attribute_category(id)
);

CREATE TABLE product_attribute (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    attribute_type_id INT,
    value TEXT,
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(id)
);