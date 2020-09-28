USE storagehouse;

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `created` datetime,
  `modified` timestamp,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;


CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime,  
  `modified` timestamp,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

CREATE TABLE IF NOT EXISTS `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Fashion', 'Category for anything related to fashion.'),
(2, 'Electronics', 'Gadgets, drones and more.'),
(3, 'Motors', 'Motor sports and more'),
(5, 'Movies', 'Movie products.'),
(6, 'Books', 'Kindle books, audio books and more.'),
(13, 'Sports', 'Drop into new winter gear.');


INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`) VALUES
(1, 'LG P880 4X HD', 'My first awesome phone!', '336', 3),
(2, 'Google Nexus 4', 'The most awesome phone of 2013!', '299', 2),
(3, 'Samsung Galaxy S4', 'How about no?', '600', 3),
(6, 'Bench Shirt', 'The best shirt!', '29', 1),
(7, 'Lenovo Laptop', 'My business partner.', '399', 2),
(8, 'Samsung Galaxy Tab 10.1', 'Good tablet.', '259', 2),
(9, 'Spalding Watch', 'My sports watch.', '199', 1),
(10, 'Sony Smart Watch', 'The coolest smart watch!', '300', 2),
(11, 'Huawei Y300', 'For testing purposes.', '100', 2),
(12, 'Abercrombie Lake Arnold Shirt', 'Perfect as gift!', '60', 1),
(13, 'Abercrombie Allen Brook Shirt', 'Cool red shirt!', '70', 1),
(26, 'Another product', 'Awesome product!', '555', 2),
(28, 'Wallet', 'You can absolutely use this one!', '799', 6),
(31, 'Amanda Waller Shirt', 'New awesome shirt!', '333', 1),
(42, 'Nike Shoes for Men', 'Nike Shoes', '12999', 3),
(48, 'Bristol Shoes', 'Awesome shoes.', '999', 5),
(60, 'Rolex Watch', 'Luxury watch.', '25000', 1);

INSERT INTO `stock` (`id`, `count`, `product_id`) VALUES
(1, 15, 1),
(2, 23, 3);