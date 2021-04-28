--
-- Create DB
--

CREATE DATABASE TUD;

use TUD;


--
-- Table structure for Users
--

CREATE TABLE users (
                       id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
                       username VARCHAR(50) NOT NULL UNIQUE,
                       password VARCHAR(255) NOT NULL,
                       created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS `products` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `name` varchar(200) NOT NULL,
    `desc` text NOT NULL,
    `price` decimal(7,2) NOT NULL,
    `rrp` decimal(7,2) NOT NULL DEFAULT '0.00',
    `quantity` int(11) NOT NULL,
    `img` text NOT NULL,
    `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
    ) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `products` (`id`, `name`, `desc`, `price`, `rrp`, `quantity`, `img`, `date_added`) VALUES
(1, 'IoT Technology', '<p>Learn the internal workings of smart technology.</p>\r\n<h3>Modules</h3>\r\n<ul>\r\n<li>Introduction to IoT.</li>\r\n<li>Computer Networks.</li>\r\n<li>Intr</li>\r\n<li>Computer Systems Management.</li>\r\n</ul>', '29.99', '0.00', 10, 'watch.jpg', '2019-03-13 17:55:22'),
(2, 'Finance', '', '14.99', '19.99', 34, 'wallet.jpg', '2019-03-13 18:52:49'),
(3, 'Music Technology', '', '19.99', '0.00', 23, 'headphones.jpg', '2019-03-13 18:47:56'),
(4, 'Photography', '', '69.99', '0.00', 7, 'camera.jpg', '2019-03-13 17:42:04');
