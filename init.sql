--
-- Create DB
--

CREATE DATABASE aircraftregistry;

use aircraftregistry;


--
-- Table structure for Users
--

CREATE TABLE users (
                       id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                       username VARCHAR(50) NOT NULL UNIQUE,
                       password VARCHAR(255) NOT NULL,
                       created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);


--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
    `product_id` int(11) NOT NULL,
    `name` varchar(100) NOT NULL,
    `sku` varchar(14) NOT NULL,
    `price` decimal(15,2) NOT NULL,
    `image` varchar(50) NOT NULL,
    PRIMARY KEY (`product_id`),
    UNIQUE KEY `sku` (`sku`)
    ) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
