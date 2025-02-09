-- Use the alx_book_store database
USE alx_book_store;

-- Create Authors table
CREATE TABLE authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);

-- Create Books table
CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-- Create Customers table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT NOT NULL
);

-- Create Orders table with the foreign key for customer_id
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,  -- foreign key reference to customers table
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)  -- Add foreign key constraint
);

-- Create Order Details table with foreign keys to orders and books
CREATE TABLE order_details (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,  -- foreign key reference to orders table
    book_id INT,   -- foreign key reference to books table
    quantity DOUBLE NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),   -- Add foreign key constraint for orders
    FOREIGN KEY (book_id) REFERENCES books(book_id)       -- Add foreign key constraint for books
);

