USE storagehouse;

CREATE TABLE IF NOT EXISTS `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `count` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO `stock` (`id`, `count`, `product_id`) VALUES
(1, 15, 1),
(2, 23, 2),
(3, 22, 3),
(4, 44, 4);