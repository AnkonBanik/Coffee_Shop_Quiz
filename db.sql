
--
-- Table structure for table products
--

CREATE TABLE products (
  Id int(11) NOT NULL,
  Name varchar(30) DEFAULT NULL,
  Price decimal(3,2) DEFAULT NULL,
  Coffee_origin varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table products
--

INSERT INTO products (Id, Name, Price, Coffee_origin) VALUES
(1, 'Espresso', '2.50', 'Brazil'),
(2, 'Macchiato', '3.00', 'Brazil'),
(3, 'Cappuccino', '3.50', 'Costa Rica'),
(4, 'Latte', '3.50', 'Indonesia'),
(5, 'Americano', '3.00', 'Brazil'),
(6, 'Flat White', '3.50', 'Indonesia'),
(7, 'Filter', '3.00', 'India');

--
-- Indexes for dumped tables
--

--
-- Indexes for table customers
--
ALTER TABLE customers
  ADD PRIMARY KEY (Id);

--
-- Indexes for table orders
--
ALTER TABLE orders
  ADD PRIMARY KEY (Id),
  ADD KEY Product_id (Product_id),
  ADD KEY Customer_id (Customer_id);

--
-- Indexes for table products
--
ALTER TABLE products
  ADD PRIMARY KEY (Id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table customers
--
ALTER TABLE customers
  MODIFY Id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table orders
--
ALTER TABLE orders
  MODIFY Id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table products
--
ALTER TABLE products
  MODIFY Id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table orders
--
ALTER TABLE orders
  ADD CONSTRAINT orders_ibfk_1 FOREIGN KEY (Product_id) REFERENCES products (Id),
  ADD CONSTRAINT orders_ibfk_2 FOREIGN KEY (Customer_id) REFERENCES customers (Id);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;