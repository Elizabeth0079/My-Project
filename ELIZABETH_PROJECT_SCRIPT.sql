DROP DATABASE IF EXISTS `E_BUSINESS`;
CREATE DATABASE `E_BUSINESS`;
USE `E_BUSINESS`;

CREATE TABLE `customers`(
`customer_id` INT(11) NOT NULL AUTO_INCREMENT,
`first_name` VARCHAR(50) NOT NULL,
`last_name` VARCHAR(50) NOT NULL,
`email` VARCHAR(50) NOT NULL,
`phone` VARCHAR(50) NOT NULL,
`address` VARCHAR(100) NOT NULL,
PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `customers` VALUES (1,'Elizabeth', 'Aladejobi', 'aladejobielizabeth@gmail.com', '09023745688', '54, petu street, Ogun State');
INSERT INTO `customers` VALUES (2, 'Daniel', 'Egbonwon', 'danielshowondu01@gmail.com', '08123232443', '23, Oniwo nuru, Aguda, Lagos State');
INSERT INTO `customers` VALUES (3, 'Taiwo', 'Olanipekun', 'taiwolanipekun45@gmail.com', '09099999780', '01, Owonikoko str, Bashiri, Ado Ekiti');
INSERT INTO `customers` VALUES (4,'David','Prince','davidprince01@gmail.com','09078956342','34, Ajayi Oba, Ifelodun, Ogun State');
INSERT INTO `customers` VALUES (5,'Tosin','Ajayi','ayajitosin97@gmail.com','08129958959','58, Toyinbea str, Balogun, Ogun State');
INSERT INTO `customers` VALUES (6,'Motunrayo','Toluwalase','toluwalase01rayo@gmail.com','08100000900','101, Cresent  str, Moniya, Lagos State');
INSERT INTO `customers` VALUES (7,'Kehinde','Babalola','danielbabalola1@gmail.com','07053332211','04, Ijoko Ota, Ogun State');
INSERT INTO `customers` VALUES (8,'Yomi','Balogun','yomibalogun11@yahoo.com','09099999995','21, Balogun str, Aguda, Lagos State');
INSERT INTO `customers` VALUES (9,'Bonison','Eyele','bonisoneyele59@gmail.com','07099999456','77, Bonison str, off Ayenijun, Ogun State');
INSERT INTO `customers` VALUES (10,'Shaw','Benson','bensonshaw777@gmail.com	','08130303033','33,Shaw str, Houston Texa, USA');
INSERT INTO `customers` VALUES (11,'Olivia','Alexsandra','oliviaalex09@gmail.com','09022222345','17, Santiago st,r Madrid, Spain ');
INSERT INTO `customers` VALUES (12,'Jesujamigba','Johnson','jesujamigba007@gmail.com','08141183414','12,Igboolorin str, off Oritamerin road, Oyo State');
INSERT INTO `customers` VALUES (13,'Saka','Awobiyi	','sakaawobiyi@yahoo.com','09111111100','60, Peller road, off Nepa road, Iseyin, Oyo State');
INSERT INTO `customers` VALUES (14,'Awoniyi	','Taiwo	','taiwoawo90@yahoo.com','07066517790','08, Adebayo str, off University road, Ekiti State');
INSERT INTO `customers` VALUES (15,'Bukayo','Tomori','tomoribuka419@gmail.com','08146422218','41, Okesa str, off Fajuyi House, Ado Ekiti');
INSERT INTO `customers` VALUES (16,'David','Alaba	','davidalaba01@gmail.com	','08061213345','23, Smith str, Bashiri, Ekiti State');
INSERT INTO `customers` VALUES (17,'Ayina','Ojo','ayinaojo01@gmail.com	','09156172256	','23, Smith str, Bashiri, Ekiti State');
INSERT INTO `customers` VALUES (18,'Fayokomi','	Jesugbemi','fayokomijesu34@gmail.com	','08091111113	','01, Jesulobami str, Anthony, Lagos State');
INSERT INTO `customers` VALUES (19,'Taiwo','Yomi','yomitaiwo55@gmail.com	','07055555556','07, Tonilola str, Anthony, Lagos State');
INSERT INTO `customers` VALUES (20,'Boluwatito','Agala	','boluwatitoagala69@yahoo.com','07089263650	','02, Aladeejobi str, Obalola, Ogun State');


CREATE TABLE `orders`(
`order_id` INT(11) NOT NULL AUTO_INCREMENT,
`order_date` DATE NOT NULL,
`total_amount` DECIMAL(8,2) NOT NULL,
`customer_id` INT(11) NOT NULL,
PRIMARY KEY (`order_id`),
KEY `fk_customers_id` (`customer_id`),
 CONSTRAINT `fk_customers_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `orders` VALUES (1,'2023-01-03',500.00,6);
INSERT INTO `orders` VALUES (2,'2023-03-10',670.00,8);
INSERT INTO `orders` VALUES (3,'2023-04-25',850.00,1);
INSERT INTO `orders` VALUES (4,'2023-01-04',790.00,2);
INSERT INTO `orders` VALUES (5,'2023-02-15',1125.00,4);
INSERT INTO `orders` VALUES (6,'2023-02-27',1342.00,1);
INSERT INTO `orders` VALUES (7,'2023-02-04',556.00,3);
INSERT INTO `orders` VALUES (9,'2023-03-19',4145.00,6);
INSERT INTO `orders` VALUES (10,'2023-02-18',234.00,9);
INSERT INTO `orders` VALUES (11,'2023-04-14',2567.00,10);
INSERT INTO `orders` VALUES (12,'2023-01-12',456.00,5);
INSERT INTO `orders` VALUES (13,'2023-04-13',2122.00,11);
INSERT INTO `orders` VALUES (14,'2023-04-13',200.00,12);


CREATE TABLE `products`(
`product_id` INT(11) NOT NULL AUTO_INCREMENT,
`product_name` VARCHAR(45) NOT NULL,
`unit_price` DECIMAL(8,2) NOT NULL,
`quantity_available` INT(11) NOT NULL,
PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `products` VALUES (1,'Bag of rice',33000.00,50);
INSERT INTO `products` VALUES (2,'Bag of bean',40000.00,120);
INSERT INTO `products` VALUES (3,'1 Tuber of Yam',650.00,150);
INSERT INTO `products` VALUES (4,'5 Litres of Palm Oil',5000.00,46);
INSERT INTO `products` VALUES (5,'1 Litres of Palm Oil',1000.00,671);
INSERT INTO `products` VALUES (6,'3 Litres of Groundnut Oil',4500.00,50);
INSERT INTO `products` VALUES (7,'10 Litres of Groundnut Oil',8000.00,34);
INSERT INTO `products` VALUES (8,'1 Carton of Turkey',6700.00,100);
INSERT INTO `products` VALUES (9,'2 Cartons of Turkey',12000.00,50);
INSERT INTO `products` VALUES (10,'1 Carton of Chicken',2500.00,120);
INSERT INTO `products` VALUES (11,'1 Piece of Apple',200.00,25);
INSERT INTO `products` VALUES (12,'1 Piece of Orange',100.00,37);
INSERT INTO `products` VALUES (13,'1 Piece of Mango',100.00,70);


CREATE TABLE `employees`(
`employee_id` INT(11) NOT NULL AUTO_INCREMENT,
`emp_first_name` VARCHAR(50) NOT NULL,
`emp_last_name` VARCHAR(50) NOT NULL,
`title` VARCHAR(50) NOT NULL,
`hire_date` DATE NOT NULL,
PRIMARY KEY (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
INSERT INTO `employees` VALUES (1,'Osasi','Arike','CEO','2023-01-01');
INSERT INTO `employees` VALUES (2,'Omowunmi','Bisco','Manager','2023-01-02');
INSERT INTO `employees` VALUES (3,'Umaru','Nicolas','Operating Officer','2023-01-03');
INSERT INTO `employees` VALUES (4,'Tolani','Mikano','Marketer 1','2023-01-03');
INSERT INTO `employees` VALUES (5,'John','Wiky','Marketer 2','2023-01-03');