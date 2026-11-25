-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2019 at 12:27 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tandrwholesalers`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryID` int(11) NOT NULL,
  `Categorytype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `Categorytype`) VALUES
(23, 'Baked Goods'),
(1, 'Bottled Carbonated Drinks'),
(4, 'Bottled Flavored Water'),
(2, 'Bottled Juices'),
(16, 'Bottled Sauces'),
(3, 'Bottled Water'),
(7, 'Canned Carbonated Drinks'),
(5, 'Canned Foods'),
(6, 'Canned Juices'),
(8, 'Confectionaries'),
(19, 'Creamy Peanut Butter'),
(18, 'Crunchy Peanut Butter'),
(10, 'Dairy Products'),
(9, 'Detergents'),
(11, 'Dried Foods'),
(12, 'Grains'),
(21, 'Non-Perishables'),
(17, 'Pack Sauces'),
(20, 'Perishables'),
(22, 'Provisions'),
(13, 'Snacks'),
(14, 'Tetra Pack Juices'),
(15, 'Toiletries');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(255) DEFAULT NULL,
  `CustomerAddress` varchar(255) DEFAULT NULL,
  `CustomerEmail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CustomerID`, `CustomerName`, `CustomerAddress`, `CustomerEmail`) VALUES
(1, 'Golden Wing Chicken', 'Sangre Grande', 'info@goldenwing.example.com'),
(2, 'Lotus Garden Restaurant', 'Valencia Main Road', 'info@lotusgarden.example.com'),
(3, 'Corner Stop Grocery', 'Sangre Grande', 'orders@cornerstop.example.com'),
(4, 'Ramsey & Sons Retail', 'Eastern Main Road Valencia', 'sales@ramseysons.example.com'),
(5, 'Value Plus Supermarket', 'Eastern Main Road Arima', 'info@valueplus.example.com'),
(6, 'Sunrise Minimart', 'Eastern Main Road Sangre Grande', NULL),
(7, 'Hilltop Corner Shop', 'Eastern Main Road Arima', NULL),
(8, 'Seaside Bar', 'Eastern Main Road Toco', NULL),
(9, 'Northside Grocery', 'Eastern Main Road Sangre Grande', NULL),
(10, 'Village Mini Mart', 'Valencia', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeID` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeID`, `FirstName`, `LastName`, `Address`, `Email`) VALUES
(1, 'Kevin', 'Baptiste', 'Sangre Grande', 'kevin.b@trwholesale.example.com'),
(2, 'Andre', 'Baptiste', 'Sangre Grande', 'andre.b@trwholesale.example.com'),
(3, 'Maria', 'Baptiste', 'Sangre Grande', 'maria.b@trwholesale.example.com'),
(4, 'Tricia', 'Baptiste', 'Sangre Grande', 'tricia.b@trwholesale.example.com'),
(5, 'Ryan', 'Baptiste', 'Sangre Grande', 'ryan.b@trwholesale.example.com'),
(6, 'Marcus', 'Cole', 'Valencia', NULL),
(7, 'Anjali', 'Ramdass', 'Arima', NULL),
(8, 'Sofia', 'Lopez', 'Arima', NULL),
(9, 'Jason', 'Charles', 'Toco', NULL),
(10, 'Vikram', 'Persad', 'Maloney', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `OrderAmount` int(11) DEFAULT NULL,
  `ProdOrder` varchar(255) DEFAULT NULL,
  `Order Price` int(11) DEFAULT NULL,
  `Customer Order` varchar(255) DEFAULT NULL,
  `Order Taken by` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `OrderAmount`, `ProdOrder`, `Order Price`, `Customer Order`, `Order Taken by`) VALUES
(1, 10, 'busta pear', 333, 'Sunrise Minimart', 'Kevin'),
(2, 5, 'Mabel\'s Ketchup', 250, 'Value Plus Supermarket', 'Tricia'),
(3, 1, 'Brownie', 25, 'Corner Stop Grocery', 'Tricia'),
(4, 2, 'Fresh Wheat Hops', 20, 'Ramsey & Sons Retail', 'Maria'),
(5, 2, 'CBI Coconut Swirl', 10, 'Lotus Garden Restaurant', 'Ryan'),
(6, 3, 'Classic Cola Gold', 338, 'Golden Wing Chicken', 'Andre'),
(7, 2, 'Chocolate Iced cake', 20, 'Corner Stop Grocery', 'Maria'),
(8, 2, 'Coco Cola Zero', 250, 'Lotus Garden Restaurant', 'Kevin'),
(9, 4, 'Dasani Water 24pk', 400, 'Value Plus Supermarket', 'Maria'),
(10, 1, 'Tampico Juice', 55, 'Ramsey & Sons Retail', 'Ryan');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(255) DEFAULT NULL,
  `ProductBrand` varchar(255) DEFAULT NULL,
  `ProductSupplier` varchar(255) NOT NULL,
  `ProductCategory` varchar(255) NOT NULL,
  `ProductAmount` int(11) DEFAULT NULL,
  `produnitvalue` decimal(10,2) DEFAULT NULL,
  `prod_size_num` int(10) DEFAULT NULL,
  `prod_size` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `ProductName`, `ProductBrand`, `ProductSupplier`, `ProductCategory`, `ProductAmount`, `produnitvalue`, `prod_size_num`, `prod_size`) VALUES
(1, 'Oasis Water 30pk', 'Oasis', 'Sm Jaleel & Company LTD', 'Bottled Water', 5, '29.33', 500, 'ml'),
(2, 'Oasis Water 35pk', 'Oasis', 'Sm Jaleel & Company LTD', 'Bottled Water', 5, '24.89', 330, 'ml'),
(3, 'Dasani Water 24pk', 'Dasani', 'Caribbean Bottlers (Trinidad &  Tobago ) Limited', 'Bottled Water', 3, '22.00', 500, 'ml'),
(5, 'Coco Cola Zero', 'Coca Cola', 'Caribbean Bottlers (Trinidad &  Tobago ) Limited', 'Bottled Carbonated Drinks', 2, '56.00', 2, 'L'),
(6, 'Orchard Orange Juice', 'Orchard', 'Nestle Trinidad and Tobago Limited', 'Tetra Pack Juices', 500, NULL, 250, 'ml'),
(7, 'Mabel\'s Ketchup', 'Mabel\'s', 'National Canners Ltd', 'Bottled Sauces', 50, NULL, 750, 'ml'),
(8, 'Coca Cola ', 'Coca Cola', 'Caribbean Bottlers (Trinidad &  Tobago ) Limited', 'Bottled Carbonated Drinks', 3, '46.00', 20, 'oz'),
(10, 'busta pear', 'busta', 'Sm Jaleel & Company LTD', 'Bottled Carbonated Drinks', 10, '33.00', 20, 'ml'),
(11, 'Coca-Cola Zero', 'Coca-Cola', 'Caribbean Bottlers (Trinidad &  Tobago ) Limited', 'Bottled Carbonated Drinks', 2, '56.00', 2, 'L'),
(12, 'Fresh white Hops', 'Kiss', 'Kiss Baking Company', 'Baked Goods', 4, '8.00', NULL, NULL),
(13, 'Fresh Wheat Hops', 'Kiss', 'Kiss Baking Company', 'Baked Goods', 4, '8.00', NULL, NULL),
(14, 'CBI Coconut Swirl', 'Kiss', 'Kiss Baking Company', 'Baked Goods', 1, '4.45', NULL, NULL),
(15, 'CBI Coconut Sweet Bread', 'Kiss', 'Kiss Baking Company', 'Baked Goods', 3, '4.45', NULL, NULL),
(16, 'Orange Cup Cake', 'Kiss', 'Kiss Baking Company', 'Baked Goods', 3, '2.49', NULL, NULL),
(17, 'Van Goodies', 'Kiss', 'Kiss Baking Company', 'Baked Goods', 3, '0.75', NULL, NULL),
(18, 'Chocolate Goodies', 'Kiss', 'Kiss Baking Company', 'Baked Goods', 3, '0.74', NULL, NULL),
(19, 'Strawberry Iced Cake', 'Kiss', 'Kiss Baking Company', 'Baked Goods', 2, '2.85', NULL, NULL),
(20, 'Chocolate Iced cake', 'Kiss', 'Kiss Baking Company', 'Baked Goods', 3, '2.85', NULL, NULL),
(21, 'Chocolate Muffin', 'Kiss', 'Kiss Baking Company', 'Baked Goods', 2, '2.97', NULL, NULL),
(22, 'Blue Berry Muffin', 'Kiss', 'Kiss Baking Company', 'Baked Goods', 1, '2.97', NULL, NULL),
(23, 'Orange sliced Cake', 'Kiss', 'Kiss Baking Company', 'Baked Goods', 1, '2.97', NULL, NULL),
(24, 'Chocolate Slice', 'Kiss', 'Kiss Baking Company', 'Baked Goods', 1, '2.97', NULL, NULL),
(25, 'Brownie', 'Kiss', 'Kiss Baking Company', 'Baked Goods', 3, '3.34', NULL, NULL),
(26, 'Corn Bread', 'Kiss', 'Kiss Baking Company', 'Baked Goods', 3, '2.23', NULL, NULL),
(27, 'Coconut SweetBread', 'Kiss', 'Kiss Baking Company', 'Baked Goods', 3, '2.60', NULL, NULL),
(28, 'Juice', 'Tampico', 'Blue Waters Products Limited', 'Bottled Juices', 8, '32.00', 500, 'ml'),
(29, 'Tampico Juice', 'Tampico', 'Blue Waters Products Limited', 'Bottled Juices', 2, '32.00', 500, 'ml'),
(30, 'Classic Cola Gold', 'Classic Cola', 'Sm Jaleel & Company LTD', 'Bottled Carbonated Drinks', 10, '40.00', 370, 'ml'),
(31, 'Turbo Energy Drink', 'Turbo', 'Sm Jaleel & Company LTD', 'Bottled Carbonated Drinks', 1, '128.00', 370, 'ml'),
(32, 'Viva Peach', 'Viva', 'Sm Jaleel & Company LTD', 'Bottled Flavored Water', 1, '74.67', 350, 'ml'),
(33, 'Viva Black Rasberry', 'Viva', 'Sm Jaleel & Company LTD', 'Bottled Flavored Water', 1, '74.67', 350, 'ml'),
(34, 'New Zealand Cheddar Cheeze', 'Happi', 'Happi Products ltd', 'Dairy Products', 1, '565.00', 1, 'lbs');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(255) NOT NULL,
  `SupplierAddress` varchar(255) DEFAULT NULL,
  `SupplierContact` int(11) DEFAULT NULL,
  `SupplierEmail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`SupplierID`, `SupplierName`, `SupplierAddress`, `SupplierContact`, `SupplierEmail`) VALUES
(351, 'Sm Jaleel & Company LTD', 'Otaheite Industrial Estate South Oropouche', 6777520, 'info@smjaleel.com'),
(352, 'Caribbean Bottlers (Trinidad &  Tobago ) Limited', 'Churchill Roosevelt Hwy, Tunapuna', 6621177, 'info@caribbean-bottlers.com'),
(353, 'Caribbean Foods LTD', 'Maracas Royal Rd St Joseph', 6456260, 'info@caribbeanhealthfoods.com'),
(354, 'Happi Products ltd', '82 Bamboo Settlement #2 Valsayn Trinidad', 6455040, 'info@happiproducts.com'),
(355, 'National Canners Ltd', 'Churchill Roosevelt Hwy Arima', 6422640, 'admin@nationalcanners.com'),
(356, 'Nestle Trinidad and Tobago Limited', 'Corner Churchill Roosevelt Highway and, Uriah Butler Hwy', 6966104, 'info@nestlett.com'),
(357, 'Kiss Baking Company', '12-14 Gaston St. Chaguanas Trinidad and Tobago', 6655047, 'kissmarketing@kissbaking.com'),
(358, 'Blue Waters Products Limited', '#2 Orange Grove Estate Trinicity, Trinidad WI', 6405524, 'receivables@bluewaterstt.com'),
(359, 'AS Brydens and Sons ', '#1 Ibis Avenue, San Juan Trinidad', 6749191, NULL),
(360, 'Massy Distribution', 'Corner Churchill Roosevelt Highway & Macoya Road,', 6454434, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`),
  ADD UNIQUE KEY `Categorytype` (`Categorytype`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CustomerID`),
  ADD UNIQUE KEY `CustomerName` (`CustomerName`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeID`),
  ADD UNIQUE KEY `FirstName_2` (`FirstName`),
  ADD KEY `FirstName` (`FirstName`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`SupplierID`),
  ADD UNIQUE KEY `SupplierName` (`SupplierName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
