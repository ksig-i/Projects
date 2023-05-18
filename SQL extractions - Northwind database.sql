/*
Databse Setup from Northwind Sample database from Microsoft. Queries - Line 339 onwards
*/
/*!40101 SET NAMES utf8 */;
/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`northwind` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;

USE `northwind`;

-- Table structure for table `categories`

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `CategoryID` tinyint(5) unsigned NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Description` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Picture` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`CategoryID`),
  UNIQUE KEY `Uidx_categories_category_name` (`CategoryName`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- Data for the table `categories`
insert  into `categories`(`CategoryID`,`CategoryName`,`Description`,`Picture`) values (1,'Beverages','Soft drinks, coffees, teas, beers, and ales','beverages.gif'),(2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings','condiments.gif'),(3,'Confections','Desserts, candies, and sweet breads','confections.gif'),(4,'Dairy Products','Cheeses','diary.gif'),(5,'Grains/Cereals','Breads, crackers, pasta, and cereal','cereals.gif'),(6,'Meat/Poultry','Prepared meats','meat.gif'),(7,'Produce','Dried fruit and bean curd','produce.gif'),(8,'Seafood','Seaweed and fish','seafood.gif');

-- Table structure for table `suppliers`

DROP TABLE IF EXISTS `suppliers`;

CREATE TABLE `suppliers` (
  `SupplierID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ContactName` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ContactTitle` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Address` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `City` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Region` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `PostalCode` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Country` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Phone` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Fax` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `HomePage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`SupplierID`),
  KEY `idx_suppliers_product_name` (`CompanyName`),
  KEY `idx_suppliers_postalcode` (`PostalCode`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- Data for the table `suppliers`
insert  into `suppliers`(`SupplierID`,`CompanyName`,`ContactName`,`ContactTitle`,`Address`,`City`,`Region`,`PostalCode`,`Country`,`Phone`,`Fax`,`HomePage`) values (1,'Exotic Liquids','Charlotte Cooper','Purchasing Manager','49 Gilbert St.','London','','EC1 4SD','UK','(171) 555-2222','',''),(2,'New Orleans Cajun Delights','Shelley Burke','Order Administrator','P.O. Box 78934','New Orleans','LA','70117','USA','(100) 555-4822','','#CAJUN.HTM#'),(3,'Grandma Kelly\'s Homestead','Regina Murphy','Sales Representative','707 Oxford Rd.','Ann Arbor','MI','48104','USA','(313) 555-5735','(313) 555-3349',''),(4,'Tokyo Traders','Yoshi Nagase','Marketing Manager','9-8 Sekimai\r\nMusashino-shi','Tokyo','','100','Japan','(03) 3555-5011','',''),(5,'Cooperativa de Quesos \'Las Cabras\'','Antonio del Valle Saavedra ','Export Administrator','Calle del Rosal 4','Oviedo','Asturias','33007','Spain','(98) 598 76 54','',''),(6,'Mayumi\'s','Mayumi Ohno','Marketing Representative','92 Setsuko\r\nChuo-ku','Osaka','','545','Japan','(06) 431-7877','','Mayumi\'s (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#'),(7,'Pavlova, Ltd.','Ian Devling','Marketing Manager','74 Rose St.\r\nMoonie Ponds','Melbourne','Victoria','3058','Australia','(03) 444-2343','(03) 444-6588',''),(8,'Specialty Biscuits, Ltd.','Peter Wilson','Sales Representative','29 King\'s Way','Manchester','','M14 GSD','UK','(161) 555-4448','',''),(9,'PB KnÃ¤ckebrÃ¶d AB','Lars Peterson','Sales Agent','Kaloadagatan 13','GÃ¶teborg','','S-345 67','Sweden ','031-987 65 43','031-987 65 91',''),(10,'Refrescos Americanas LTDA','Carlos Diaz','Marketing Manager','Av. das Americanas 12.890','SÃ£o Paulo','','5442','Brazil','(11) 555 4640','',''),(11,'Heli SÃ¼ÃŸwaren GmbH & Co. KG','Petra Winkler','Sales Manager','TiergartenstraÃŸe 5','Berlin','','10785','Germany','(010) 9984510','',''),(12,'Plutzer LebensmittelgroÃŸmÃ¤rkte AG','Martin Bein','International Marketing Mgr.','Bogenallee 51','Frankfurt','','60439','Germany','(069) 992755','','Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#'),(13,'Nord-Ost-Fisch Handelsgesellschaft mbH','Sven Petersen','Coordinator Foreign Markets','Frahmredder 112a','Cuxhaven','','27478','Germany','(04721) 8713','(04721) 8714',''),(14,'Formaggi Fortini s.r.l.','Elio Rossi','Sales Representative','Viale Dante, 75','Ravenna','','48100','Italy','(0544) 60323','(0544) 60603','#FORMAGGI.HTM#'),(15,'Norske Meierier','Beate Vileid','Marketing Manager','Hatlevegen 5','Sandvika','','1320','Norway','(0)2-953010','',''),(16,'Bigfoot Breweries','Cheryl Saylor','Regional Account Rep.','3400 - 8th Avenue\r\nSuite 210','Bend','OR','97101','USA','(503) 555-9931','',''),(17,'Svensk SjÃ¶fÃ¶da AB','Michael BjÃ¶rn','Sales Representative','BrovallavÃ¤gen 231','Stockholm','','S-123 45','Sweden','08-123 45 67','',''),(18,'Aux joyeux ecclÃ©siastiques','GuylÃ¨ne Nodier','Sales Manager','203, Rue des Francs-Bourgeois','Paris','','75004','France','(1) 03.83.00.68','(1) 03.83.00.62',''),(19,'New England Seafood Cannery','Robb Merchant','Wholesale Account Agent','Order Processing Dept.\r\n2100 Paul Revere Blvd.','Boston','MA','02134','USA','(617) 555-3267','(617) 555-3389',''),(20,'Leka Trading','Chandra Leka','Owner','471 Serangoon Loop, Suite #402','Singapore','','0512','Singapore','555-8787','',''),(21,'Lyngbysild','Niels Petersen','Sales Manager','Lyngbysild\r\nFiskebakken 10','Lyngby','','2800','Denmark','43844108','43844115',''),(22,'Zaanse Snoepfabriek','Dirk Luchte','Accounting Manager','Verkoop\r\nRijnweg 22','Zaandam','','9999 ZZ','Netherlands','(12345) 1212','(12345) 1210',''),(23,'Karkki Oy','Anne Heikkonen','Product Manager','Valtakatu 12','Lappeenranta','','53120','Finland','(953) 10956','',''),(24,'G\'day, Mate','Wendy Mackenzie','Sales Representative','170 Prince Edward Parade\r\nHunter\'s Hill','Sydney','NSW','2042','Australia','(02) 555-5914','(02) 555-4873','G\'day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#'),(25,'Ma Maison','Jean-Guy Lauzon','Marketing Manager','2960 Rue St. Laurent','MontrÃ©al','QuÃ©bec','H1J 1C3','Canada','(514) 555-9022','',''),(26,'Pasta Buttini s.r.l.','Giovanni Giudici','Order Administrator','Via dei Gelsomini, 153','Salerno','','84100','Italy','(089) 6547665','(089) 6547667',''),(27,'Escargots Nouveaux','Marie Delamare','Sales Manager','22, rue H. Voiron','Montceau','','71300','France','85.57.00.07','',''),(28,'Gai pÃ¢turage','Eliane Noz','Sales Representative','Bat. B\r\n3, rue des Alpes','Annecy','','74000','France','38.76.98.06','38.76.98.58',''),(29,'ForÃªts d\'Ã©rables','Chantal Goulet','Accounting Manager','148 rue Chasseur','Ste-Hyacinthe','QuÃ©bec','J2S 7S8','Canada','(514) 555-2955','(514) 555-2921','');

-- Table structure for table `products`

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `ProductID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `SupplierID` int(10) unsigned NOT NULL,
  `CategoryID` tinyint(5) unsigned NOT NULL,
  `QuantityPerUnit` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `UnitPrice` double NOT NULL DEFAULT '0',
  `UnitsInStock` smallint(5) unsigned NOT NULL DEFAULT '0',
  `UnitsOnOrder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ReorderLevel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Discontinued` enum('y','n') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'n',
  PRIMARY KEY (`ProductID`),
  KEY `idx_FK_products_categoryid` (`CategoryID`),
  KEY `idx_FK_products_supplierid` (`SupplierID`),
  KEY `idx_products_product_name` (`ProductName`),
  CONSTRAINT `FK_products_categoryid` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`),
  CONSTRAINT `FK_products_supplierid` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- Data for the table `products`
insert  into `products`(`ProductID`,`ProductName`,`SupplierID`,`CategoryID`,`QuantityPerUnit`,`UnitPrice`,`UnitsInStock`,`UnitsOnOrder`,`ReorderLevel`,`Discontinued`) values (1,'Chai',1,1,'10 boxes x 20 bags',18,39,0,10,'n'),(2,'Chang',1,1,'24 - 12 oz bottles',19,17,40,25,'n'),(3,'Aniseed Syrup',1,2,'12 - 550 ml bottles',10,13,70,25,'n'),(4,'Chef Anton\'s Cajun Seasoning',2,2,'48 - 6 oz jars',22,53,0,0,'n'),(5,'Chef Anton\'s Gumbo Mix',2,2,'36 boxes',21.35,0,0,0,'y'),(6,'Grandma\'s Boysenberry Spread',3,2,'12 - 8 oz jars',25,120,0,25,'n'),(7,'Uncle Bob\'s Organic Dried Pears',3,7,'12 - 1 lb pkgs.',30,15,0,10,'n'),(8,'Northwoods Cranberry Sauce',3,2,'12 - 12 oz jars',40,6,0,0,'n'),(9,'Mishi Kobe Niku',4,6,'18 - 500 g pkgs.',97,29,0,0,'y'),(10,'Ikura',4,8,'12 - 200 ml jars',31,31,0,0,'n'),(11,'Queso Cabrales',5,4,'1 kg pkg.',21,22,30,30,'n'),(12,'Queso Manchego La Pastora',5,4,'10 - 500 g pkgs.',38,86,0,0,'n'),(13,'Konbu',6,8,'2 kg box',6,24,0,5,'n'),(14,'Tofu',6,7,'40 - 100 g pkgs.',23.25,35,0,0,'n'),(15,'Genen Shouyu',6,2,'24 - 250 ml bottles',15.5,39,0,5,'n'),(16,'Pavlova',7,3,'32 - 500 g boxes',17.45,29,0,10,'n'),(17,'Alice Mutton',7,6,'20 - 1 kg tins',39,0,0,0,'y'),(18,'Carnarvon Tigers',7,8,'16 kg pkg.',62.5,42,0,0,'n'),(19,'Teatime Chocolate Biscuits',8,3,'10 boxes x 12 pieces',9.2,25,0,5,'n'),(20,'Sir Rodney\'s Marmalade',8,3,'30 gift boxes',81,40,0,0,'n'),(21,'Sir Rodney\'s Scones',8,3,'24 pkgs. x 4 pieces',10,3,40,5,'n'),(22,'Gustaf\'s KnÃ¤ckebrÃ¶d',9,5,'24 - 500 g pkgs.',21,104,0,25,'n'),(23,'TunnbrÃ¶d',9,5,'12 - 250 g pkgs.',9,61,0,25,'n'),(24,'GuaranÃ¡ FantÃ¡stica',10,1,'12 - 355 ml cans',4.5,20,0,0,'y'),(25,'NuNuCa NuÃŸ-Nougat-Creme',11,3,'20 - 450 g glasses',14,76,0,30,'n'),(26,'GumbÃ¤r GummibÃ¤rchen',11,3,'100 - 250 g bags',31.23,15,0,0,'n'),(27,'Schoggi Schokolade',11,3,'100 - 100 g pieces',43.9,49,0,30,'n'),(28,'RÃ¶ssle Sauerkraut',12,7,'25 - 825 g cans',45.6,26,0,0,'y'),(29,'ThÃ¼ringer Rostbratwurst',12,6,'50 bags x 30 sausgs.',123.79,0,0,0,'y'),(30,'Nord-Ost Matjeshering',13,8,'10 - 200 g glasses',25.89,10,0,15,'n'),(31,'Gorgonzola Telino',14,4,'12 - 100 g pkgs',12.5,0,70,20,'n'),(32,'Mascarpone Fabioli',14,4,'24 - 200 g pkgs.',32,9,40,25,'n'),(33,'Geitost',15,4,'500 g',2.5,112,0,20,'n'),(34,'Sasquatch Ale',16,1,'24 - 12 oz bottles',14,111,0,15,'n'),(35,'Steeleye Stout',16,1,'24 - 12 oz bottles',18,20,0,15,'n'),(36,'Inlagd Sill',17,8,'24 - 250 g  jars',19,112,0,20,'n'),(37,'Gravad lax',17,8,'12 - 500 g pkgs.',26,11,50,25,'n'),(38,'CÃ´te de Blaye',18,1,'12 - 75 cl bottles',263.5,17,0,15,'n'),(39,'Chartreuse verte',18,1,'750 cc per bottle',18,69,0,5,'n'),(40,'Boston Crab Meat',19,8,'24 - 4 oz tins',18.4,123,0,30,'n'),(41,'Jack\'s New England Clam Chowder',19,8,'12 - 12 oz cans',9.65,85,0,10,'n'),(42,'Singaporean Hokkien Fried Mee',20,5,'32 - 1 kg pkgs.',14,26,0,0,'y'),(43,'Ipoh Coffee',20,1,'16 - 500 g tins',46,17,10,25,'n'),(44,'Gula Malacca',20,2,'20 - 2 kg bags',19.45,27,0,15,'n'),(45,'RÃ¸gede sild',21,8,'1k pkg.',9.5,5,70,15,'n'),(46,'Spegesild',21,8,'4 - 450 g glasses',12,95,0,0,'n'),(47,'Zaanse koeken',22,3,'10 - 4 oz boxes',9.5,36,0,0,'n'),(48,'Chocolade',22,3,'10 pkgs.',12.75,15,70,25,'n'),(49,'Maxilaku',23,3,'24 - 50 g pkgs.',20,10,60,15,'n'),(50,'Valkoinen suklaa',23,3,'12 - 100 g bars',16.25,65,0,30,'n'),(51,'Manjimup Dried Apples',24,7,'50 - 300 g pkgs.',53,20,0,10,'n'),(52,'Filo Mix',24,5,'16 - 2 kg boxes',7,38,0,25,'n'),(53,'Perth Pasties',24,6,'48 pieces',32.8,0,0,0,'y'),(54,'TourtiÃ¨re',25,6,'16 pies',7.45,21,0,10,'n'),(55,'PÃ¢tÃ© chinois',25,6,'24 boxes x 2 pies',24,115,0,20,'n'),(56,'Gnocchi di nonna Alice',26,5,'24 - 250 g pkgs.',38,21,10,30,'n'),(57,'Ravioli Angelo',26,5,'24 - 250 g pkgs.',19.5,36,0,20,'n'),(58,'Escargots de Bourgogne',27,8,'24 pieces',13.25,62,0,20,'n'),(59,'Raclette Courdavault',28,4,'5 kg pkg.',55,79,0,0,'n'),(60,'Camembert Pierrot',28,4,'15 - 300 g rounds',34,19,0,0,'n'),(61,'Sirop d\'Ã©rable',29,2,'24 - 500 ml bottles',28.5,113,0,25,'n'),(62,'Tarte au sucre',29,3,'48 pies',49.3,17,0,0,'n'),(63,'Vegie-spread',7,2,'15 - 625 g jars',43.9,24,0,5,'n'),(64,'Wimmers gute SemmelknÃ¶del',12,5,'20 bags x 4 pieces',33.25,22,80,30,'n'),(65,'Louisiana Fiery Hot Pepper Sauce',2,2,'32 - 8 oz bottles',21.05,76,0,0,'n'),(66,'Louisiana Hot Spiced Okra',2,2,'24 - 8 oz jars',17,4,100,20,'n'),(67,'Laughing Lumberjack Lager',16,1,'24 - 12 oz bottles',14,52,0,10,'n'),(68,'Scottish Longbreads',8,3,'10 boxes x 8 pieces',12.5,6,10,15,'n'),(69,'Gudbrandsdalsost',15,4,'10 kg pkg.',36,26,0,15,'n'),(70,'Outback Lager',7,1,'24 - 355 ml bottles',15,15,10,30,'n'),(71,'FlÃ¸temysost',15,4,'10 - 500 g pkgs.',21.5,26,0,0,'n'),(72,'Mozzarella di Giovanni',14,4,'24 - 200 g pkgs.',34.8,14,0,0,'n'),(73,'RÃ¶d Kaviar',17,8,'24 - 150 g jars',15,101,0,5,'n'),(74,'Longlife Tofu',4,7,'5 kg pkg.',10,4,20,5,'n'),(75,'RhÃ¶nbrÃ¤u Klosterbier',12,1,'24 - 0.5 l bottles',7.75,125,0,25,'n'),(76,'LakkalikÃ¶Ã¶ri',23,1,'500 ml',18,57,0,20,'n'),(77,'Original Frankfurter grÃ¼ne SoÃŸe',12,2,'12 boxes',13,32,0,15,'n');

-- Table structure for table `customers`

DROP TABLE IF EXISTS `customers`;

CREATE TABLE `customers` (
  `CustomerID` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `CompanyName` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ContactName` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Unknown',
  `ContactTitle` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Address` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `City` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Region` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `PostalCode` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Country` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Phone` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Fax` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`CustomerID`),
  KEY `idx_customers_company_name` (`CompanyName`),
  KEY `idx_customers_city` (`City`),
  KEY `idx_customers_region` (`Region`),
  KEY `idx_customers_postalcode` (`PostalCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data for the table `customers`
insert  into `customers`(`CustomerID`,`CompanyName`,`ContactName`,`ContactTitle`,`Address`,`City`,`Region`,`PostalCode`,`Country`,`Phone`,`Fax`) values ('ALFAA','Alfreds Futterkiste','Maria Anders','Sales Representative','Obere Str. 57','Berlin','','12209','Germany','030-0074321','030-0076545'),('ANATR','Ana Trujillo Emparedados y helados','Ana Trujillo','Owner','Avda. de la ConstituciÃ³n 2222','MÃ©xico D.F.','','05021','Mexico','(5) 555-4729','(5) 555-3745'),('ANTON','Antonio Moreno TaquerÃ­a','Antonio Moreno','Owner','Mataderos  2312','MÃ©xico D.F.','','05023','Mexico','(5) 555-3932',''),('AROUT','Around the Horn','Thomas Hardy','Sales Representative','120 Hanover Sq.','London','','WA1 1DP','UK','(171) 555-7788','(171) 555-6750'),('BERGS','Berglunds snabbkÃ¶p','Christina Berglund','Order Administrator','BerguvsvÃ¤gen  8','LuleÃ¥','','S-958 22','Sweden','0921-12 34 65','0921-12 34 67'),('BLAUS','Blauer See Delikatessen','Hanna Moos','Sales Representative','Forsterstr. 57','Mannheim','','68306','Germany','0621-08460','0621-08924'),('BLONP','Blondel pÃ¨re et fils','FrÃ©dÃ©rique Citeaux','Marketing Manager','24, place KlÃ©ber','Strasbourg','','67000','France','88.60.15.31','88.60.15.32'),('BOLID','BÃ³lido Comidas preparadas','MartÃ­n Sommer','Owner','C/ Araquil, 67','Madrid','','28023','Spain','(91) 555 22 82','(91) 555 91 99'),('BONAP','Bon app\'','Laurence Lebihan','Owner','12, rue des Bouchers','Marseille','','13008','France','91.24.45.40','91.24.45.41'),('BOTTM','Bottom-Dollar Markets','Elizabeth Lincoln','Accounting Manager','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada','(604) 555-4729','(604) 555-3745'),('BSBEV','B\'s Beverages','Victoria Ashworth','Sales Representative','Fauntleroy Circus','London','','EC2 5NT','UK','(171) 555-1212',''),('CACTU','Cactus Comidas para llevar','Patricio Simpson','Sales Agent','Cerrito 333','Buenos Aires','','1010','Argentina','(1) 135-5555','(1) 135-4892'),('CENTC','Centro comercial Moctezuma','Francisco Chang','Marketing Manager','Sierras de Granada 9993','MÃ©xico D.F.','','05022','Mexico','(5) 555-3392','(5) 555-7293'),('CHOPS','Chop-suey Chinese','Yang Wang','Owner','Hauptstr. 29','Bern','','3012','Switzerland','0452-076545',''),('COMMI','ComÃ©rcio Mineiro','Pedro Afonso','Sales Associate','Av. dos LusÃ­adas, 23','SÃ£o Paulo','SP','05432-043','Brazil','(11) 555-7647',''),('CONSH','Consolidated Holdings','Elizabeth Brown','Sales Representative','Berkeley Gardens\r\n12  Brewery ','London','','WX1 6LT','UK','(171) 555-2282','(171) 555-9199'),('DRACD','Drachenblut Delikatessen','Sven Ottlieb','Order Administrator','Walserweg 21','Aachen','','52066','Germany','0241-039123','0241-059428'),('DUMON','Du monde entier','Janine Labrune','Owner','67, rue des Cinquante Otages','Nantes','','44000','France','40.67.88.88','40.67.89.89'),('EASTC','Eastern Connection','Ann Devon','Sales Agent','35 King George','London','','WX3 6FW','UK','(171) 555-0297','(171) 555-3373'),('ERNSH','Ernst Handel','Roland Mendel','Sales Manager','Kirchgasse 6','Graz','','8010','Austria','7675-3425','7675-3426'),('FAMIA','Familia Arquibaldo','Aria Cruz','Marketing Assistant','Rua OrÃ³s, 92','SÃ£o Paulo','SP','05442-030','Brazil','(11) 555-9857',''),('FISSA','FISSA Fabrica Inter. Salchichas S.A.','Diego Roel','Accounting Manager','C/ Moralzarzal, 86','Madrid','','28034','Spain','(91) 555 94 44','(91) 555 55 93'),('FOLIG','Folies gourmandes','Martine RancÃ©','Assistant Sales Agent','184, chaussÃ©e de Tournai','Lille','','59000','France','20.16.10.16','20.16.10.17'),('FOLKO','Folk och fÃ¤ HB','Maria Larsson','Owner','Ã…kergatan 24','BrÃ¤cke','','S-844 67','Sweden','0695-34 67 21',''),('FRANK','Frankenversand','Peter Franken','Marketing Manager','Berliner Platz 43','MÃ¼nchen','','80805','Germany','089-0877310','089-0877451'),('FRANR','France restauration','Carine Schmitt','Marketing Manager','54, rue Royale','Nantes','','44000','France','40.32.21.21','40.32.21.20'),('FRANS','Franchi S.p.A.','Paolo Accorti','Sales Representative','Via Monte Bianco 34','Torino','','10100','Italy','011-4988260','011-4988261'),('FURIB','Furia Bacalhau e Frutos do Mar','Lino Rodriguez ','Sales Manager','Jardim das rosas n. 32','Lisboa','','1675','Portugal','(1) 354-2534','(1) 354-2535'),('GALED','GalerÃ­a del gastrÃ³nomo','Eduardo Saavedra','Marketing Manager','Rambla de CataluÃ±a, 23','Barcelona','','08022','Spain','(93) 203 4560','(93) 203 4561'),('GODOS','Godos Cocina TÃ­pica','JosÃ© Pedro Freyre','Sales Manager','C/ Romero, 33','Sevilla','','41101','Spain','(95) 555 82 82',''),('GOURL','Gourmet Lanchonetes','AndrÃ© Fonseca','Sales Associate','Av. Brasil, 442','Campinas','SP','04876-786','Brazil','(11) 555-9482',''),('GREAL','Great Lakes Food Market','Howard Snyder','Marketing Manager','2732 Baker Blvd.','Eugene','OR','97403','USA','(503) 555-7555',''),('GROSR','GROSELLA-Restaurante','Manuel Pereira','Owner','5Âª Ave. Los Palos Grandes','Caracas','DF','1081','Venezuela','(2) 283-2951','(2) 283-3397'),('HANAR','Hanari Carnes','Mario Pontes','Accounting Manager','Rua do PaÃ§o, 67','Rio de Janeiro','RJ','05454-876','Brazil','(21) 555-0091','(21) 555-8765'),('HILAA','HILARIÃ“N-Abastos','Carlos HernÃ¡ndez','Sales Representative','Carrera 22 con Ave. Carlos Soublette #8-35','San CristÃ³bal','TÃ¡chira','5022','Venezuela','(5) 555-1340','(5) 555-1948'),('HUNGC','Hungry Coyote Import Store','Yoshi Latimer','Sales Representative','City Center Plaza\r\n516 Main St.','Elgin','OR','97827','USA','(503) 555-6874','(503) 555-2376'),('HUNGO','Hungry Owl All-Night Grocers','Patricia McKenna','Sales Associate','8 Johnstown Road','Cork','Co. Cork','','Ireland','2967 542','2967 3333'),('ISLAT','Island Trading','Helen Bennett','Marketing Manager','Garden House\r\nCrowther Way','Cowes','Isle of Wight','PO31 7PJ','UK','(198) 555-8888',''),('KOENE','KÃ¶niglich Essen','Philip Cramer','Sales Associate','Maubelstr. 90','Brandenburg','','14776','Germany','0555-09876',''),('LACOR','La corne d\'abondance','Daniel Tonini','Sales Representative','67, avenue de l\'Europe','Versailles','','78000','France','30.59.84.10','30.59.85.11'),('LAMAI','La maison d\'Asie','Annette Roulet','Sales Manager','1 rue Alsace-Lorraine','Toulouse','','31000','France','61.77.61.10','61.77.61.11'),('LAUGB','Laughing Bacchus Wine Cellars','Yoshi Tannamuri','Marketing Assistant','1900 Oak St.','Vancouver','BC','V3F 2K1','Canada','(604) 555-3392','(604) 555-7293'),('LAZYK','Lazy K Kountry Store','John Steel','Marketing Manager','12 Orchestra Terrace','Walla Walla','WA','99362','USA','(509) 555-7969','(509) 555-6221'),('LEHMS','Lehmanns Marktstand','Renate Messner','Sales Representative','Magazinweg 7','Frankfurt a.M. ','','60528','Germany','069-0245984','069-0245874'),('LETSS','Let\'s Stop N Shop','Jaime Yorres','Owner','87 Polk St.\r\nSuite 5','San Francisco','CA','94117','USA','(415) 555-5938',''),('LILAS','LILA-Supermercado','Carlos GonzÃ¡lez','Accounting Manager','Carrera 52 con Ave. BolÃ­var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela','(9) 331-6954','(9) 331-7256'),('LINOD','LINO-Delicateses','Felipe Izquierdo','Owner','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela','(8) 34-56-12','(8) 34-93-93'),('LONEP','Lonesome Pine Restaurant','Fran Wilson','Sales Manager','89 Chiaroscuro Rd.','Portland','OR','97219','USA','(503) 555-9573','(503) 555-9646'),('MAGAA','Magazzini Alimentari Riuniti','Giovanni Rovelli','Marketing Manager','Via Ludovico il Moro 22','Bergamo','','24100','Italy','035-640230','035-640231'),('MAISD','Maison Dewey','Catherine Dewey','Sales Agent','Rue Joseph-Bens 532','Bruxelles','','B-1180','Belgium','(02) 201 24 67','(02) 201 24 68'),('MEREP','MÃ¨re Paillarde','Jean FresniÃ¨re','Marketing Assistant','43 rue St. Laurent','MontrÃ©al','QuÃ©bec','H1J 1C3','Canada','(514) 555-8054','(514) 555-8055'),('MORGK','Morgenstern Gesundkost','Alexander Feuer','Marketing Assistant','Heerstr. 22','Leipzig','','04179','Germany','0342-023176',''),('NORTS','North/South','Simon Crowther','Sales Associate','South House\r\n300 Queensbridge','London','','SW7 1RZ','UK','(171) 555-7733','(171) 555-2530'),('OCEAN','OcÃ©ano AtlÃ¡ntico Ltda.','Yvonne Moncada','Sales Agent','Ing. Gustavo Moncada 8585\r\nPiso 20-A','Buenos Aires','','1010','Argentina','(1) 135-5333','(1) 135-5535'),('OLDWO','Old World Delicatessen','Rene Phillips','Sales Representative','2743 Bering St.','Anchorage','AK','99508','USA','(907) 555-7584','(907) 555-2880'),('OTTIK','Ottilies KÃ¤seladen','Henriette Pfalzheim','Owner','Mehrheimerstr. 369','KÃ¶ln','','50739','Germany','0221-0644327','0221-0765721'),('PARIS','Paris spÃ©cialitÃ©s','Marie Bertrand','Owner','265, boulevard Charonne','Paris','','75012','France','(1) 42.34.22.66','(1) 42.34.22.77'),('PERIC','Pericles Comidas clÃ¡sicas','Guillermo FernÃ¡ndez','Sales Representative','Calle Dr. Jorge Cash 321','MÃ©xico D.F.','','05033','Mexico','(5) 552-3745','(5) 545-3745'),('PICCO','Piccolo und mehr','Georg Pipps','Sales Manager','Geislweg 14','Salzburg','','5020','Austria','6562-9722','6562-9723'),('PRINI','Princesa Isabel Vinhos','Isabel de Castro','Sales Representative','Estrada da saÃºde n. 58','Lisboa','','1756','Portugal','(1) 356-5634',''),('QUEDE','Que DelÃ­cia','Bernardo Batista','Accounting Manager','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil','(21) 555-4252','(21) 555-4545'),('QUEEN','Queen Cozinha','LÃºcia Carvalho','Marketing Assistant','Alameda dos CanÃ rios, 891','SÃ£o Paulo','SP','05487-020','Brazil','(11) 555-1189',''),('QUICK','QUICK-Stop','Horst Kloss','Accounting Manager','TaucherstraÃŸe 10','Cunewalde','','01307','Germany','0372-035188',''),('RANCH','Rancho grande','Sergio GutiÃ©rrez','Sales Representative','Av. del Libertador 900','Buenos Aires','','1010','Argentina','(1) 123-5555','(1) 123-5556'),('RATTC','Rattlesnake Canyon Grocery','Paula Wilson','Assistant Sales Representative','2817 Milton Dr.','Albuquerque','NM','87110','USA','(505) 555-5939','(505) 555-3620'),('REGGC','Reggiani Caseifici','Maurizio Moroni','Sales Associate','Strada Provinciale 124','Reggio Emilia','','42100','Italy','0522-556721','0522-556722'),('RICAR','Ricardo Adocicados','Janete Limeira','Assistant Sales Agent','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil','(21) 555-3412',''),('RICSU','Richter Supermarkt','Michael Holz','Sales Manager','Grenzacherweg 237','GenÃ¨ve','','1203','Switzerland','0897-034214',''),('ROMEY','Romero y tomillo','Alejandra Camino','Accounting Manager','Gran VÃ­a, 1','Madrid','','28001','Spain','(91) 745 6200','(91) 745 6210'),('SANTG','SantÃ© Gourmet','Jonas Bergulfsen','Owner','Erling Skakkes gate 78','Stavern','','4110','Norway','07-98 92 35','07-98 92 47'),('SAVEA','Save-a-lot Markets','Jose Pavarotti','Sales Representative','187 Suffolk Ln.','Boise','ID','83720','USA','(208) 555-8097',''),('SEVES','Seven Seas Imports','Hari Kumar','Sales Manager','90 Wadhurst Rd.','London','','OX15 4NB','UK','(171) 555-1717','(171) 555-5646'),('SIMOB','Simons bistro','Jytte Petersen','Owner','VinbÃ¦ltet 34','KÃ¸benhavn','','1734','Denmark','31 12 34 56','31 13 35 57'),('SPECD','SpÃ©cialitÃ©s du monde','Dominique Perrier','Marketing Manager','25, rue Lauriston','Paris','','75016','France','(1) 47.55.60.10','(1) 47.55.60.20'),('SPLIR','Split Rail Beer & Ale','Art Braunschweiger','Sales Manager','P.O. Box 555','Lander','WY','82520','USA','(307) 555-4680','(307) 555-6525'),('SUPRD','SuprÃªmes dÃ©lices','Pascale Cartrain','Accounting Manager','Boulevard Tirou, 255','Charleroi','','B-6000','Belgium','(071) 23 67 22 20','(071) 23 67 22 21'),('THEBI','The Big Cheese','Liz Nixon','Marketing Manager','89 Jefferson Way\r\nSuite 2','Portland','OR','97201','USA','(503) 555-3612',''),('THECR','The Cracker Box','Liu Wong','Marketing Assistant','55 Grizzly Peak Rd.','Butte','MT','59801','USA','(406) 555-5834','(406) 555-8083'),('TOMSP','Toms SpezialitÃ¤ten','Karin Josephs','Marketing Manager','Luisenstr. 48','MÃ¼nster','','44087','Germany','0251-031259','0251-035695'),('TORTU','Tortuga Restaurante','Miguel Angel Paolino','Owner','Avda. Azteca 123','MÃ©xico D.F.','','05033','Mexico','(5) 555-2933',''),('TRADH','TradiÃ§Ã£o Hipermercados','Anabela Domingues','Sales Representative','Av. InÃªs de Castro, 414','SÃ£o Paulo','SP','05634-030','Brazil','(11) 555-2167','(11) 555-2168'),('TRAIH','Trail\'s Head Gourmet Provisioners','Helvetius Nagy','Sales Associate','722 DaVinci Blvd.','Kirkland','WA','98034','USA','(206) 555-8257','(206) 555-2174'),('VAFFE','Vaffeljernet','Palle Ibsen','Sales Manager','SmagslÃ¸get 45','Ã…rhus','','8200','Denmark','86 21 32 43','86 22 33 44'),('VICTE','Victuailles en stock','Mary Saveley','Sales Agent','2, rue du Commerce','Lyon','','69004','France','78.32.54.86','78.32.54.87'),('VINET','Vins et alcools Chevalier','Paul Henriot','Accounting Manager','59 rue de l\'Abbaye','Reims','','51100','France','26.47.15.10','26.47.15.11'),('WANDK','Die Wandernde Kuh','Rita MÃ¼ller','Sales Representative','Adenauerallee 900','Stuttgart','','70563','Germany','0711-020361','0711-035428'),('WARTH','Wartian Herkku','Pirkko Koskitalo','Accounting Manager','Torikatu 38','Oulu','','90110','Finland','981-443655','981-443655'),('WELLI','Wellington Importadora','Paula Parente','Sales Manager','Rua do Mercado, 12','Resende','SP','08737-363','Brazil','(14) 555-8122',''),('WHITC','White Clover Markets','Karl Jablonski','Owner','305 - 14th Ave. S.\r\nSuite 3B','Seattle','WA','98128','USA','(206) 555-4112','(206) 555-4115'),('WILMK','Wilman Kala','Matti Karttunen','Owner/Marketing Assistant','Keskuskatu 45','Helsinki','','21240','Finland','90-224 8858','90-224 8858'),('WOLZA','Wolski  Zajazd','Zbyszek Piestrzeniewicz','Owner','ul. Filtrowa 68','Warszawa','','01-012','Poland','(26) 642-7012','(26) 642-7012');

-- Table structure for table `employees`
DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `EmployeeID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `LastName` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `FirstName` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Title` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `TitleOfCourtesy` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `BirthDate` datetime NOT NULL,
  `HireDate` datetime NOT NULL,
  `Address` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `City` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Region` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `PostalCode` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Country` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `HomePhone` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Extension` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Photo` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Notes` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ReportsTo` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  KEY `idx_employees_lastname` (`LastName`),
  KEY `idx_employees_postalcode` (`PostalCode`),
  KEY `idx_ReportsTo` (`ReportsTo`),
  CONSTRAINT `FK_employees_reports_to` FOREIGN KEY (`ReportsTo`) REFERENCES `employees` (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Data for the table `employees`
insert  into `employees`(`EmployeeID`,`LastName`,`FirstName`,`Title`,`TitleOfCourtesy`,`BirthDate`,`HireDate`,`Address`,`City`,`Region`,`PostalCode`,`Country`,`HomePhone`,`Extension`,`Photo`,`Notes`,`ReportsTo`) values (1,'Davolio','Nancy','Sales Representative','Ms.','1968-12-08 00:00:00','1992-05-01 00:00:00','507 - 20th Ave. E.\r\nApt. 2A','Seattle','WA','98122','USA','(206) 555-9857','5467','nancy.jpg','Education includes a BA in psychology from Colorado State University.  She also completed \"The Art of the Cold Call.\"  Nancy is a member of Toastmasters International.',2),(2,'Fuller','Andrew','Vice President, Sales','Dr.','1952-02-19 00:00:00','1992-08-14 00:00:00','908 W. Capital Way','Tacoma','WA','98401','USA','(206) 555-9482','3457','andrew.jpg','Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.',NULL),(3,'Leverling','Janet','Sales Representative','Ms.','1963-08-30 00:00:00','1992-04-01 00:00:00','722 Moss Bay Blvd.','Kirkland','WA','98033','USA','(206) 555-3412','3355','janet.jpg','Janet has a BS degree in chemistry from Boston College).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate and was promoted to sales representative.',2),(4,'Peacock','Margaret','Sales Representative','Mrs.','1958-09-19 00:00:00','1993-05-03 00:00:00','4110 Old Redmond Rd.','Redmond','WA','98052','USA','(206) 555-8122','5176','margaret.jpg','Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.',2),(5,'Buchanan','Steven','Sales Manager','Mr.','1955-03-04 00:00:00','1993-10-17 00:00:00','14 Garrett Hill','London','','SW1 8JR','UK','(71) 555-4848','3453','steven.jpg','Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree.  Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager.  Mr. Buchanan has completed the courses \"Successful Telemarketing\" and \"International Sales Management.\"  He is fluent in French.',2),(6,'Suyama','Michael','Sales Representative','Mr.','1963-07-02 00:00:00','1993-10-17 00:00:00','Coventry House\r\nMiner Rd.','London','','EC2 7JR','UK','(71) 555-7773','428','michael.jpg','Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing).  He has also taken the courses \"Multi-Cultural Selling\" and \"Time Management for the Sales Professional.\"  He is fluent in Japanese and can read and write French, Portuguese, and Spanish.',5),(7,'King','Robert','Sales Representative','Mr.','1960-05-29 00:00:00','1994-01-02 00:00:00','Edgeham Hollow\r\nWinchester Way','London','','RG1 9SP','UK','(71) 555-5598','465','robert.jpg','Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company.  After completing a course entitled \"Selling in Europe,\" he was transferred to the London office.',5),(8,'Callahan','Laura','Inside Sales Coordinator','Ms.','1958-01-09 00:00:00','1994-03-05 00:00:00','4726 - 11th Ave. N.E.','Seattle','WA','98105','USA','(206) 555-1189','2344','laura.jpg','Laura received a BA in psychology from the University of Washington.  She has also completed a course in business French.  She reads and writes French.',2),(9,'Dodsworth','Anne','Sales Representative','Ms.','1969-07-02 00:00:00','1994-11-15 00:00:00','7 Houndstooth Rd.','London','','WG2 7LT','UK','(71) 555-4444','452','anne.jpg','Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German.',5);

-- Table structure for table `shippers`

DROP TABLE IF EXISTS `shippers`;

CREATE TABLE `shippers` (
  `ShipperID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `Phone` varchar(24) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ShipperID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Data for the table `shippers`
insert  into `shippers`(`ShipperID`,`CompanyName`,`Phone`) values (1,'Speedy Express','(503) 555-9831'),(2,'United Package','(503) 555-3199'),(3,'Federal Shipping','(503) 555-9931');

-- Table structure for table `orders`

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `OrderID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CustomerID` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `EmployeeID` int(10) unsigned NOT NULL,
  `OrderDate` datetime NOT NULL,
  `RequiredDate` datetime DEFAULT NULL,
  `ShippedDate` datetime DEFAULT NULL,
  `ShipVia` int(10) unsigned NOT NULL,
  `Freight` double NOT NULL DEFAULT '0',
  `ShipName` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ShipAddress` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ShipCity` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ShipRegion` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ShipPostalCode` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ShipCountry` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`OrderID`),
  KEY `idx_FK_orders_shipvia` (`ShipVia`),
  KEY `idx_FK_orders_employeeid` (`EmployeeID`),
  KEY `idx_orders_shipped_date` (`ShippedDate`),
  KEY `idx_orders_ship_postalcode` (`ShipPostalCode`),
  KEY `idx_FK_orders_customer_id` (`CustomerID`),
  CONSTRAINT `FK_orders_customer_id` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  CONSTRAINT `FK_orders_employeeid` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`),
  CONSTRAINT `FK_orders_shipvia` FOREIGN KEY (`ShipVia`) REFERENCES `shippers` (`ShipperID`)
) ENGINE=InnoDB AUTO_INCREMENT=11078 DEFAULT CHARSET=utf8;

-- Data for the table `orders`
insert  into `orders`(`OrderID`,`CustomerID`,`EmployeeID`,`OrderDate`,`RequiredDate`,`ShippedDate`,`ShipVia`,`Freight`,`ShipName`,`ShipAddress`,`ShipCity`,`ShipRegion`,`ShipPostalCode`,`ShipCountry`) values (10248,'VINET',5,'1996-07-04 00:00:00','1996-08-01 00:00:00','1996-07-16 00:00:00',3,32.38,'Vins et alcools Chevalier','59 rue de l\'Abbaye','Reims','','51100','France'),(10249,'TOMSP',6,'1996-07-05 00:00:00','1996-08-16 00:00:00','1996-07-10 00:00:00',1,11.61,'Toms SpezialitÃ¤ten','Luisenstr. 48','MÃ¼nster','','44087','Germany'),(10250,'HANAR',4,'1996-07-08 00:00:00','1996-08-05 00:00:00','1996-07-12 00:00:00',2,65.83,'Hanari Carnes','Rua do PaÃ§o, 67','Rio de Janeiro','RJ','05454-876','Brazil'),(10251,'VICTE',3,'1996-07-08 00:00:00','1996-08-05 00:00:00','1996-07-15 00:00:00',1,41.34,'Victuailles en stock','2, rue du Commerce','Lyon','','69004','France'),(10252,'SUPRD',4,'1996-07-09 00:00:00','1996-08-06 00:00:00','1996-07-11 00:00:00',2,51.3,'SuprÃªmes dÃ©lices','Boulevard Tirou, 255','Charleroi','','B-6000','Belgium'),(10253,'HANAR',3,'1996-07-10 00:00:00','1996-07-24 00:00:00','1996-07-16 00:00:00',2,58.17,'Hanari Carnes','Rua do PaÃ§o, 67','Rio de Janeiro','RJ','05454-876','Brazil'),(10254,'CHOPS',5,'1996-07-11 00:00:00','1996-08-08 00:00:00','1996-07-23 00:00:00',2,22.98,'Chop-suey Chinese','Hauptstr. 31','Bern','','3012','Switzerland'),(10255,'RICSU',9,'1996-07-12 00:00:00','1996-08-09 00:00:00','1996-07-15 00:00:00',3,148.33,'Richter Supermarkt','Starenweg 5','GenÃ¨ve','','1204','Switzerland'),(10256,'WELLI',3,'1996-07-15 00:00:00','1996-08-12 00:00:00','1996-07-17 00:00:00',2,13.97,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil'),(10257,'HILAA',4,'1996-07-16 00:00:00','1996-08-13 00:00:00','1996-07-22 00:00:00',3,81.91,'HILARIÃ“N-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San CristÃ³bal','TÃ¡chira','5022','Venezuela'),(10258,'ERNSH',1,'1996-07-17 00:00:00','1996-08-14 00:00:00','1996-07-23 00:00:00',1,140.51,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10259,'CENTC',4,'1996-07-18 00:00:00','1996-08-15 00:00:00','1996-07-25 00:00:00',3,3.25,'Centro comercial Moctezuma','Sierras de Granada 9993','MÃ©xico D.F.','','05022','Mexico'),(10260,'OTTIK',4,'1996-07-19 00:00:00','1996-08-16 00:00:00','1996-07-29 00:00:00',1,55.09,'Ottilies KÃ¤seladen','Mehrheimerstr. 369','KÃ¶ln','','50739','Germany'),(10261,'QUEDE',4,'1996-07-19 00:00:00','1996-08-16 00:00:00','1996-07-30 00:00:00',2,3.05,'Que DelÃ­cia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil'),(10262,'RATTC',8,'1996-07-22 00:00:00','1996-08-19 00:00:00','1996-07-25 00:00:00',3,48.29,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA'),(10263,'ERNSH',9,'1996-07-23 00:00:00','1996-08-20 00:00:00','1996-07-31 00:00:00',3,146.06,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10264,'FOLKO',6,'1996-07-24 00:00:00','1996-08-21 00:00:00','1996-08-23 00:00:00',3,3.67,'Folk och fÃ¤ HB','Ã…kergatan 24','BrÃ¤cke','','S-844 67','Sweden'),(10265,'BLONP',2,'1996-07-25 00:00:00','1996-08-22 00:00:00','1996-08-12 00:00:00',1,55.28,'Blondel pÃ¨re et fils','24, place KlÃ©ber','Strasbourg','','67000','France'),(10266,'WARTH',3,'1996-07-26 00:00:00','1996-09-06 00:00:00','1996-07-31 00:00:00',3,25.73,'Wartian Herkku','Torikatu 38','Oulu','','90110','Finland'),(10267,'FRANK',4,'1996-07-29 00:00:00','1996-08-26 00:00:00','1996-08-06 00:00:00',1,208.58,'Frankenversand','Berliner Platz 43','MÃ¼nchen','','80805','Germany'),(10268,'GROSR',8,'1996-07-30 00:00:00','1996-08-27 00:00:00','1996-08-02 00:00:00',3,66.29,'GROSELLA-Restaurante','5Âª Ave. Los Palos Grandes','Caracas','DF','1081','Venezuela'),(10269,'WHITC',5,'1996-07-31 00:00:00','1996-08-14 00:00:00','1996-08-09 00:00:00',1,4.56,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA'),(10270,'WARTH',1,'1996-08-01 00:00:00','1996-08-29 00:00:00','1996-08-02 00:00:00',1,136.54,'Wartian Herkku','Torikatu 38','Oulu','','90110','Finland'),(10271,'SPLIR',6,'1996-08-01 00:00:00','1996-08-29 00:00:00','1996-08-30 00:00:00',2,4.54,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA'),(10272,'RATTC',6,'1996-08-02 00:00:00','1996-08-30 00:00:00','1996-08-06 00:00:00',2,98.03,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA'),(10273,'QUICK',3,'1996-08-05 00:00:00','1996-09-02 00:00:00','1996-08-12 00:00:00',3,76.07,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10274,'VINET',6,'1996-08-06 00:00:00','1996-09-03 00:00:00','1996-08-16 00:00:00',1,6.01,'Vins et alcools Chevalier','59 rue de l\'Abbaye','Reims','','51100','France'),(10275,'MAGAA',1,'1996-08-07 00:00:00','1996-09-04 00:00:00','1996-08-09 00:00:00',1,26.93,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo','','24100','Italy'),(10276,'TORTU',8,'1996-08-08 00:00:00','1996-08-22 00:00:00','1996-08-14 00:00:00',3,13.84,'Tortuga Restaurante','Avda. Azteca 123','MÃ©xico D.F.','','05033','Mexico'),(10277,'MORGK',2,'1996-08-09 00:00:00','1996-09-06 00:00:00','1996-08-13 00:00:00',3,125.77,'Morgenstern Gesundkost','Heerstr. 22','Leipzig','','04179','Germany'),(10278,'BERGS',8,'1996-08-12 00:00:00','1996-09-09 00:00:00','1996-08-16 00:00:00',2,92.69,'Berglunds snabbkÃ¶p','BerguvsvÃ¤gen  8','LuleÃ¥','','S-958 22','Sweden'),(10279,'LEHMS',8,'1996-08-13 00:00:00','1996-09-10 00:00:00','1996-08-16 00:00:00',2,25.83,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M. ','','60528','Germany'),(10280,'BERGS',2,'1996-08-14 00:00:00','1996-09-11 00:00:00','1996-09-12 00:00:00',1,8.98,'Berglunds snabbkÃ¶p','BerguvsvÃ¤gen  8','LuleÃ¥','','S-958 22','Sweden'),(10281,'ROMEY',4,'1996-08-14 00:00:00','1996-08-28 00:00:00','1996-08-21 00:00:00',1,2.94,'Romero y tomillo','Gran VÃ­a, 1','Madrid','','28001','Spain'),(10282,'ROMEY',4,'1996-08-15 00:00:00','1996-09-12 00:00:00','1996-08-21 00:00:00',1,12.69,'Romero y tomillo','Gran VÃ­a, 1','Madrid','','28001','Spain'),(10283,'LILAS',3,'1996-08-16 00:00:00','1996-09-13 00:00:00','1996-08-23 00:00:00',3,84.81,'LILA-Supermercado','Carrera 52 con Ave. BolÃ­var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela'),(10284,'LEHMS',4,'1996-08-19 00:00:00','1996-09-16 00:00:00','1996-08-27 00:00:00',1,76.56,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M. ','','60528','Germany'),(10285,'QUICK',1,'1996-08-20 00:00:00','1996-09-17 00:00:00','1996-08-26 00:00:00',2,76.83,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10286,'QUICK',8,'1996-08-21 00:00:00','1996-09-18 00:00:00','1996-08-30 00:00:00',3,229.24,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10287,'RICAR',8,'1996-08-22 00:00:00','1996-09-19 00:00:00','1996-08-28 00:00:00',3,12.76,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil'),(10288,'REGGC',4,'1996-08-23 00:00:00','1996-09-20 00:00:00','1996-09-03 00:00:00',1,7.45,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia','','42100','Italy'),(10289,'BSBEV',7,'1996-08-26 00:00:00','1996-09-23 00:00:00','1996-08-28 00:00:00',3,22.77,'B\'s Beverages','Fauntleroy Circus','London','','EC2 5NT','UK'),(10290,'COMMI',8,'1996-08-27 00:00:00','1996-09-24 00:00:00','1996-09-03 00:00:00',1,79.7,'ComÃ©rcio Mineiro','Av. dos LusÃ­adas, 23','SÃ£o Paulo','SP','05432-043','Brazil'),(10291,'QUEDE',6,'1996-08-27 00:00:00','1996-09-24 00:00:00','1996-09-04 00:00:00',2,6.4,'Que DelÃ­cia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil'),(10292,'TRADH',1,'1996-08-28 00:00:00','1996-09-25 00:00:00','1996-09-02 00:00:00',2,1.35,'TradiÃ§Ã£o Hipermercados','Av. InÃªs de Castro, 414','SÃ£o Paulo','SP','05634-030','Brazil'),(10293,'TORTU',1,'1996-08-29 00:00:00','1996-09-26 00:00:00','1996-09-11 00:00:00',3,21.18,'Tortuga Restaurante','Avda. Azteca 123','MÃ©xico D.F.','','05033','Mexico'),(10294,'RATTC',4,'1996-08-30 00:00:00','1996-09-27 00:00:00','1996-09-05 00:00:00',2,147.26,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA'),(10295,'VINET',2,'1996-09-02 00:00:00','1996-09-30 00:00:00','1996-09-10 00:00:00',2,1.15,'Vins et alcools Chevalier','59 rue de l\'Abbaye','Reims','','51100','France'),(10296,'LILAS',6,'1996-09-03 00:00:00','1996-10-01 00:00:00','1996-09-11 00:00:00',1,0.12,'LILA-Supermercado','Carrera 52 con Ave. BolÃ­var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela'),(10297,'BLONP',5,'1996-09-04 00:00:00','1996-10-16 00:00:00','1996-09-10 00:00:00',2,5.74,'Blondel pÃ¨re et fils','24, place KlÃ©ber','Strasbourg','','67000','France'),(10298,'HUNGO',6,'1996-09-05 00:00:00','1996-10-03 00:00:00','1996-09-11 00:00:00',2,168.22,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork','','Ireland'),(10299,'RICAR',4,'1996-09-06 00:00:00','1996-10-04 00:00:00','1996-09-13 00:00:00',2,29.76,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil'),(10300,'MAGAA',2,'1996-09-09 00:00:00','1996-10-07 00:00:00','1996-09-18 00:00:00',2,17.68,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo','','24100','Italy'),(10301,'WANDK',8,'1996-09-09 00:00:00','1996-10-07 00:00:00','1996-09-17 00:00:00',2,45.08,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart','','70563','Germany'),(10302,'SUPRD',4,'1996-09-10 00:00:00','1996-10-08 00:00:00','1996-10-09 00:00:00',2,6.27,'SuprÃªmes dÃ©lices','Boulevard Tirou, 255','Charleroi','','B-6000','Belgium'),(10303,'GODOS',7,'1996-09-11 00:00:00','1996-10-09 00:00:00','1996-09-18 00:00:00',2,107.83,'Godos Cocina TÃ­pica','C/ Romero, 33','Sevilla','','41101','Spain'),(10304,'TORTU',1,'1996-09-12 00:00:00','1996-10-10 00:00:00','1996-09-17 00:00:00',2,63.79,'Tortuga Restaurante','Avda. Azteca 123','MÃ©xico D.F.','','05033','Mexico'),(10305,'OLDWO',8,'1996-09-13 00:00:00','1996-10-11 00:00:00','1996-10-09 00:00:00',3,257.62,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA'),(10306,'ROMEY',1,'1996-09-16 00:00:00','1996-10-14 00:00:00','1996-09-23 00:00:00',3,7.56,'Romero y tomillo','Gran VÃ­a, 1','Madrid','','28001','Spain'),(10307,'LONEP',2,'1996-09-17 00:00:00','1996-10-15 00:00:00','1996-09-25 00:00:00',2,0.56,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA'),(10308,'ANATR',7,'1996-09-18 00:00:00','1996-10-16 00:00:00','1996-09-24 00:00:00',3,1.61,'Ana Trujillo Emparedados y helados','Avda. de la ConstituciÃ³n 2222','MÃ©xico D.F.','','05021','Mexico'),(10309,'HUNGO',3,'1996-09-19 00:00:00','1996-10-17 00:00:00','1996-10-23 00:00:00',1,47.3,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork','','Ireland'),(10310,'THEBI',8,'1996-09-20 00:00:00','1996-10-18 00:00:00','1996-09-27 00:00:00',2,17.52,'The Big Cheese','89 Jefferson Way\r\nSuite 2','Portland','OR','97201','USA'),(10311,'DUMON',1,'1996-09-20 00:00:00','1996-10-04 00:00:00','1996-09-26 00:00:00',3,24.69,'Du monde entier','67, rue des Cinquante Otages','Nantes','','44000','France'),(10312,'WANDK',2,'1996-09-23 00:00:00','1996-10-21 00:00:00','1996-10-03 00:00:00',2,40.26,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart','','70563','Germany'),(10313,'QUICK',2,'1996-09-24 00:00:00','1996-10-22 00:00:00','1996-10-04 00:00:00',2,1.96,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10314,'RATTC',1,'1996-09-25 00:00:00','1996-10-23 00:00:00','1996-10-04 00:00:00',2,74.16,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA'),(10315,'ISLAT',4,'1996-09-26 00:00:00','1996-10-24 00:00:00','1996-10-03 00:00:00',2,41.76,'Island Trading','Garden House\r\nCrowther Way','Cowes','Isle of Wight','PO31 7PJ','UK'),(10316,'RATTC',1,'1996-09-27 00:00:00','1996-10-25 00:00:00','1996-10-08 00:00:00',3,150.15,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA'),(10317,'LONEP',6,'1996-09-30 00:00:00','1996-10-28 00:00:00','1996-10-10 00:00:00',1,12.69,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA'),(10318,'ISLAT',8,'1996-10-01 00:00:00','1996-10-29 00:00:00','1996-10-04 00:00:00',2,4.73,'Island Trading','Garden House\r\nCrowther Way','Cowes','Isle of Wight','PO31 7PJ','UK'),(10319,'TORTU',7,'1996-10-02 00:00:00','1996-10-30 00:00:00','1996-10-11 00:00:00',3,64.5,'Tortuga Restaurante','Avda. Azteca 123','MÃ©xico D.F.','','05033','Mexico'),(10320,'WARTH',5,'1996-10-03 00:00:00','1996-10-17 00:00:00','1996-10-18 00:00:00',3,34.57,'Wartian Herkku','Torikatu 38','Oulu','','90110','Finland'),(10321,'ISLAT',3,'1996-10-03 00:00:00','1996-10-31 00:00:00','1996-10-11 00:00:00',2,3.43,'Island Trading','Garden House\r\nCrowther Way','Cowes','Isle of Wight','PO31 7PJ','UK'),(10322,'PERIC',7,'1996-10-04 00:00:00','1996-11-01 00:00:00','1996-10-23 00:00:00',3,0.4,'Pericles Comidas clÃ¡sicas','Calle Dr. Jorge Cash 321','MÃ©xico D.F.','','05033','Mexico'),(10323,'KOENE',4,'1996-10-07 00:00:00','1996-11-04 00:00:00','1996-10-14 00:00:00',1,4.88,'KÃ¶niglich Essen','Maubelstr. 90','Brandenburg','','14776','Germany'),(10324,'SAVEA',9,'1996-10-08 00:00:00','1996-11-05 00:00:00','1996-10-10 00:00:00',1,214.27,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10325,'KOENE',1,'1996-10-09 00:00:00','1996-10-23 00:00:00','1996-10-14 00:00:00',3,64.86,'KÃ¶niglich Essen','Maubelstr. 90','Brandenburg','','14776','Germany'),(10326,'BOLID',4,'1996-10-10 00:00:00','1996-11-07 00:00:00','1996-10-14 00:00:00',2,77.92,'BÃ³lido Comidas preparadas','C/ Araquil, 67','Madrid','','28023','Spain'),(10327,'FOLKO',2,'1996-10-11 00:00:00','1996-11-08 00:00:00','1996-10-14 00:00:00',1,63.36,'Folk och fÃ¤ HB','Ã…kergatan 24','BrÃ¤cke','','S-844 67','Sweden'),(10328,'FURIB',4,'1996-10-14 00:00:00','1996-11-11 00:00:00','1996-10-17 00:00:00',3,87.03,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa','','1675','Portugal'),(10329,'SPLIR',4,'1996-10-15 00:00:00','1996-11-26 00:00:00','1996-10-23 00:00:00',2,191.67,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA'),(10330,'LILAS',3,'1996-10-16 00:00:00','1996-11-13 00:00:00','1996-10-28 00:00:00',1,12.75,'LILA-Supermercado','Carrera 52 con Ave. BolÃ­var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela'),(10331,'BONAP',9,'1996-10-16 00:00:00','1996-11-27 00:00:00','1996-10-21 00:00:00',1,10.19,'Bon app\'','12, rue des Bouchers','Marseille','','13008','France'),(10332,'MEREP',3,'1996-10-17 00:00:00','1996-11-28 00:00:00','1996-10-21 00:00:00',2,52.84,'MÃ¨re Paillarde','43 rue St. Laurent','MontrÃ©al','QuÃ©bec','H1J 1C3','Canada'),(10333,'WARTH',5,'1996-10-18 00:00:00','1996-11-15 00:00:00','1996-10-25 00:00:00',3,0.59,'Wartian Herkku','Torikatu 38','Oulu','','90110','Finland'),(10334,'VICTE',8,'1996-10-21 00:00:00','1996-11-18 00:00:00','1996-10-28 00:00:00',2,8.56,'Victuailles en stock','2, rue du Commerce','Lyon','','69004','France'),(10335,'HUNGO',7,'1996-10-22 00:00:00','1996-11-19 00:00:00','1996-10-24 00:00:00',2,42.11,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork','','Ireland'),(10336,'PRINI',7,'1996-10-23 00:00:00','1996-11-20 00:00:00','1996-10-25 00:00:00',2,15.51,'Princesa Isabel Vinhos','Estrada da saÃºde n. 58','Lisboa','','1756','Portugal'),(10337,'FRANK',4,'1996-10-24 00:00:00','1996-11-21 00:00:00','1996-10-29 00:00:00',3,108.26,'Frankenversand','Berliner Platz 43','MÃ¼nchen','','80805','Germany'),(10338,'OLDWO',4,'1996-10-25 00:00:00','1996-11-22 00:00:00','1996-10-29 00:00:00',3,84.21,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA'),(10339,'MEREP',2,'1996-10-28 00:00:00','1996-11-25 00:00:00','1996-11-04 00:00:00',2,15.66,'MÃ¨re Paillarde','43 rue St. Laurent','MontrÃ©al','QuÃ©bec','H1J 1C3','Canada'),(10340,'BONAP',1,'1996-10-29 00:00:00','1996-11-26 00:00:00','1996-11-08 00:00:00',3,166.31,'Bon app\'','12, rue des Bouchers','Marseille','','13008','France'),(10341,'SIMOB',7,'1996-10-29 00:00:00','1996-11-26 00:00:00','1996-11-05 00:00:00',3,26.78,'Simons bistro','VinbÃ¦ltet 34','KÃ¸benhavn','','1734','Denmark'),(10342,'FRANK',4,'1996-10-30 00:00:00','1996-11-13 00:00:00','1996-11-04 00:00:00',2,54.83,'Frankenversand','Berliner Platz 43','MÃ¼nchen','','80805','Germany'),(10343,'LEHMS',4,'1996-10-31 00:00:00','1996-11-28 00:00:00','1996-11-06 00:00:00',1,110.37,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M. ','','60528','Germany'),(10344,'WHITC',4,'1996-11-01 00:00:00','1996-11-29 00:00:00','1996-11-05 00:00:00',2,23.29,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA'),(10345,'QUICK',2,'1996-11-04 00:00:00','1996-12-02 00:00:00','1996-11-11 00:00:00',2,249.06,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10346,'RATTC',3,'1996-11-05 00:00:00','1996-12-17 00:00:00','1996-11-08 00:00:00',3,142.08,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA'),(10347,'FAMIA',4,'1996-11-06 00:00:00','1996-12-04 00:00:00','1996-11-08 00:00:00',3,3.1,'Familia Arquibaldo','Rua OrÃ³s, 92','SÃ£o Paulo','SP','05442-030','Brazil'),(10348,'WANDK',4,'1996-11-07 00:00:00','1996-12-05 00:00:00','1996-11-15 00:00:00',2,0.78,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart','','70563','Germany'),(10349,'SPLIR',7,'1996-11-08 00:00:00','1996-12-06 00:00:00','1996-11-15 00:00:00',1,8.63,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA'),(10350,'LAMAI',6,'1996-11-11 00:00:00','1996-12-09 00:00:00','1996-12-03 00:00:00',2,64.19,'La maison d\'Asie','1 rue Alsace-Lorraine','Toulouse','','31000','France'),(10351,'ERNSH',1,'1996-11-11 00:00:00','1996-12-09 00:00:00','1996-11-20 00:00:00',1,162.33,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10352,'FURIB',3,'1996-11-12 00:00:00','1996-11-26 00:00:00','1996-11-18 00:00:00',3,1.3,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa','','1675','Portugal'),(10353,'PICCO',7,'1996-11-13 00:00:00','1996-12-11 00:00:00','1996-11-25 00:00:00',3,360.63,'Piccolo und mehr','Geislweg 14','Salzburg','','5020','Austria'),(10354,'PERIC',8,'1996-11-14 00:00:00','1996-12-12 00:00:00','1996-11-20 00:00:00',3,53.8,'Pericles Comidas clÃ¡sicas','Calle Dr. Jorge Cash 321','MÃ©xico D.F.','','05033','Mexico'),(10355,'AROUT',6,'1996-11-15 00:00:00','1996-12-13 00:00:00','1996-11-20 00:00:00',1,41.95,'Around the Horn','Brook Farm\r\nStratford St. Mary','Colchester','Essex','CO7 6JX','UK'),(10356,'WANDK',6,'1996-11-18 00:00:00','1996-12-16 00:00:00','1996-11-27 00:00:00',2,36.71,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart','','70563','Germany'),(10357,'LILAS',1,'1996-11-19 00:00:00','1996-12-17 00:00:00','1996-12-02 00:00:00',3,34.88,'LILA-Supermercado','Carrera 52 con Ave. BolÃ­var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela'),(10358,'LAMAI',5,'1996-11-20 00:00:00','1996-12-18 00:00:00','1996-11-27 00:00:00',1,19.64,'La maison d\'Asie','1 rue Alsace-Lorraine','Toulouse','','31000','France'),(10359,'SEVES',5,'1996-11-21 00:00:00','1996-12-19 00:00:00','1996-11-26 00:00:00',3,288.43,'Seven Seas Imports','90 Wadhurst Rd.','London','','OX15 4NB','UK'),(10360,'BLONP',4,'1996-11-22 00:00:00','1996-12-20 00:00:00','1996-12-02 00:00:00',3,131.7,'Blondel pÃ¨re et fils','24, place KlÃ©ber','Strasbourg','','67000','France'),(10361,'QUICK',1,'1996-11-22 00:00:00','1996-12-20 00:00:00','1996-12-03 00:00:00',2,183.17,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10362,'BONAP',3,'1996-11-25 00:00:00','1996-12-23 00:00:00','1996-11-28 00:00:00',1,96.04,'Bon app\'','12, rue des Bouchers','Marseille','','13008','France'),(10363,'DRACD',4,'1996-11-26 00:00:00','1996-12-24 00:00:00','1996-12-04 00:00:00',3,30.54,'Drachenblut Delikatessen','Walserweg 21','Aachen','','52066','Germany'),(10364,'EASTC',1,'1996-11-26 00:00:00','1997-01-07 00:00:00','1996-12-04 00:00:00',1,71.97,'Eastern Connection','35 King George','London','','WX3 6FW','UK'),(10365,'ANTON',3,'1996-11-27 00:00:00','1996-12-25 00:00:00','1996-12-02 00:00:00',2,22,'Antonio Moreno TaquerÃ­a','Mataderos  2312','MÃ©xico D.F.','','05023','Mexico'),(10366,'GALED',8,'1996-11-28 00:00:00','1997-01-09 00:00:00','1996-12-30 00:00:00',2,10.14,'GalerÃ­a del gastronÃ³mo','Rambla de CataluÃ±a, 23','Barcelona','','8022','Spain'),(10367,'VAFFE',7,'1996-11-28 00:00:00','1996-12-26 00:00:00','1996-12-02 00:00:00',3,13.55,'Vaffeljernet','SmagslÃ¸get 45','Ã…rhus','','8200','Denmark'),(10368,'ERNSH',2,'1996-11-29 00:00:00','1996-12-27 00:00:00','1996-12-02 00:00:00',2,101.95,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10369,'SPLIR',8,'1996-12-02 00:00:00','1996-12-30 00:00:00','1996-12-09 00:00:00',2,195.68,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA'),(10370,'CHOPS',6,'1996-12-03 00:00:00','1996-12-31 00:00:00','1996-12-27 00:00:00',2,1.17,'Chop-suey Chinese','Hauptstr. 31','Bern','','3012','Switzerland'),(10371,'LAMAI',1,'1996-12-03 00:00:00','1996-12-31 00:00:00','1996-12-24 00:00:00',1,0.45,'La maison d\'Asie','1 rue Alsace-Lorraine','Toulouse','','31000','France'),(10372,'QUEEN',5,'1996-12-04 00:00:00','1997-01-01 00:00:00','1996-12-09 00:00:00',2,890.78,'Queen Cozinha','Alameda dos CanÃ rios, 891','SÃ£o Paulo','SP','05487-020','Brazil'),(10373,'HUNGO',4,'1996-12-05 00:00:00','1997-01-02 00:00:00','1996-12-11 00:00:00',3,124.12,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork','','Ireland'),(10374,'WOLZA',1,'1996-12-05 00:00:00','1997-01-02 00:00:00','1996-12-09 00:00:00',3,3.94,'Wolski Zajazd','ul. Filtrowa 68','Warszawa','','01-012','Poland'),(10375,'HUNGC',3,'1996-12-06 00:00:00','1997-01-03 00:00:00','1996-12-09 00:00:00',2,20.12,'Hungry Coyote Import Store','City Center Plaza\r\n516 Main St.','Elgin','OR','97827','USA'),(10376,'MEREP',1,'1996-12-09 00:00:00','1997-01-06 00:00:00','1996-12-13 00:00:00',2,20.39,'MÃ¨re Paillarde','43 rue St. Laurent','MontrÃ©al','QuÃ©bec','H1J 1C3','Canada'),(10377,'SEVES',1,'1996-12-09 00:00:00','1997-01-06 00:00:00','1996-12-13 00:00:00',3,22.21,'Seven Seas Imports','90 Wadhurst Rd.','London','','OX15 4NB','UK'),(10378,'FOLKO',5,'1996-12-10 00:00:00','1997-01-07 00:00:00','1996-12-19 00:00:00',3,5.44,'Folk och fÃ¤ HB','Ã…kergatan 24','BrÃ¤cke','','S-844 67','Sweden'),(10379,'QUEDE',2,'1996-12-11 00:00:00','1997-01-08 00:00:00','1996-12-13 00:00:00',1,45.03,'Que DelÃ­cia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil'),(10380,'HUNGO',8,'1996-12-12 00:00:00','1997-01-09 00:00:00','1997-01-16 00:00:00',3,35.03,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork','','Ireland'),(10381,'LILAS',3,'1996-12-12 00:00:00','1997-01-09 00:00:00','1996-12-13 00:00:00',3,7.99,'LILA-Supermercado','Carrera 52 con Ave. BolÃ­var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela'),(10382,'ERNSH',4,'1996-12-13 00:00:00','1997-01-10 00:00:00','1996-12-16 00:00:00',1,94.77,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10383,'AROUT',8,'1996-12-16 00:00:00','1997-01-13 00:00:00','1996-12-18 00:00:00',3,34.24,'Around the Horn','Brook Farm\r\nStratford St. Mary','Colchester','Essex','CO7 6JX','UK'),(10384,'BERGS',3,'1996-12-16 00:00:00','1997-01-13 00:00:00','1996-12-20 00:00:00',3,168.64,'Berglunds snabbkÃ¶p','BerguvsvÃ¤gen  8','LuleÃ¥','','S-958 22','Sweden'),(10385,'SPLIR',1,'1996-12-17 00:00:00','1997-01-14 00:00:00','1996-12-23 00:00:00',2,30.96,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA'),(10386,'FAMIA',9,'1996-12-18 00:00:00','1997-01-01 00:00:00','1996-12-25 00:00:00',3,13.99,'Familia Arquibaldo','Rua OrÃ³s, 92','SÃ£o Paulo','SP','05442-030','Brazil'),(10387,'SANTG',1,'1996-12-18 00:00:00','1997-01-15 00:00:00','1996-12-20 00:00:00',2,93.63,'SantÃ© Gourmet','Erling Skakkes gate 78','Stavern','','4110','Norway'),(10388,'SEVES',2,'1996-12-19 00:00:00','1997-01-16 00:00:00','1996-12-20 00:00:00',1,34.86,'Seven Seas Imports','90 Wadhurst Rd.','London','','OX15 4NB','UK'),(10389,'BOTTM',4,'1996-12-20 00:00:00','1997-01-17 00:00:00','1996-12-24 00:00:00',2,47.42,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada'),(10390,'ERNSH',6,'1996-12-23 00:00:00','1997-01-20 00:00:00','1996-12-26 00:00:00',1,126.38,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10391,'DRACD',3,'1996-12-23 00:00:00','1997-01-20 00:00:00','1996-12-31 00:00:00',3,5.45,'Drachenblut Delikatessen','Walserweg 21','Aachen','','52066','Germany'),(10392,'PICCO',2,'1996-12-24 00:00:00','1997-01-21 00:00:00','1997-01-01 00:00:00',3,122.46,'Piccolo und mehr','Geislweg 14','Salzburg','','5020','Austria'),(10393,'SAVEA',1,'1996-12-25 00:00:00','1997-01-22 00:00:00','1997-01-03 00:00:00',3,126.56,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10394,'HUNGC',1,'1996-12-25 00:00:00','1997-01-22 00:00:00','1997-01-03 00:00:00',3,30.34,'Hungry Coyote Import Store','City Center Plaza\r\n516 Main St.','Elgin','OR','97827','USA'),(10395,'HILAA',6,'1996-12-26 00:00:00','1997-01-23 00:00:00','1997-01-03 00:00:00',1,184.41,'HILARIÃ“N-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San CristÃ³bal','TÃ¡chira','5022','Venezuela'),(10396,'FRANK',1,'1996-12-27 00:00:00','1997-01-10 00:00:00','1997-01-06 00:00:00',3,135.35,'Frankenversand','Berliner Platz 43','MÃ¼nchen','','80805','Germany'),(10397,'PRINI',5,'1996-12-27 00:00:00','1997-01-24 00:00:00','1997-01-02 00:00:00',1,60.26,'Princesa Isabel Vinhos','Estrada da saÃºde n. 58','Lisboa','','1756','Portugal'),(10398,'SAVEA',2,'1996-12-30 00:00:00','1997-01-27 00:00:00','1997-01-09 00:00:00',3,89.16,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10399,'VAFFE',8,'1996-12-31 00:00:00','1997-01-14 00:00:00','1997-01-08 00:00:00',3,27.36,'Vaffeljernet','SmagslÃ¸get 45','Ã…rhus','','8200','Denmark'),(10400,'EASTC',1,'1997-01-01 00:00:00','1997-01-29 00:00:00','1997-01-16 00:00:00',3,83.93,'Eastern Connection','35 King George','London','','WX3 6FW','UK'),(10401,'RATTC',1,'1997-01-01 00:00:00','1997-01-29 00:00:00','1997-01-10 00:00:00',1,12.51,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA'),(10402,'ERNSH',8,'1997-01-02 00:00:00','1997-02-13 00:00:00','1997-01-10 00:00:00',2,67.88,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10403,'ERNSH',4,'1997-01-03 00:00:00','1997-01-31 00:00:00','1997-01-09 00:00:00',3,73.79,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10404,'MAGAA',2,'1997-01-03 00:00:00','1997-01-31 00:00:00','1997-01-08 00:00:00',1,155.97,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo','','24100','Italy'),(10405,'LINOD',1,'1997-01-06 00:00:00','1997-02-03 00:00:00','1997-01-22 00:00:00',1,34.82,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela'),(10406,'QUEEN',7,'1997-01-07 00:00:00','1997-02-18 00:00:00','1997-01-13 00:00:00',1,108.04,'Queen Cozinha','Alameda dos CanÃ rios, 891','SÃ£o Paulo','SP','05487-020','Brazil'),(10407,'OTTIK',2,'1997-01-07 00:00:00','1997-02-04 00:00:00','1997-01-30 00:00:00',2,91.48,'Ottilies KÃ¤seladen','Mehrheimerstr. 369','KÃ¶ln','','50739','Germany'),(10408,'FOLIG',8,'1997-01-08 00:00:00','1997-02-05 00:00:00','1997-01-14 00:00:00',1,11.26,'Folies gourmandes','184, chaussÃ©e de Tournai','Lille','','59000','France'),(10409,'OCEAN',3,'1997-01-09 00:00:00','1997-02-06 00:00:00','1997-01-14 00:00:00',1,29.83,'OcÃ©ano AtlÃ¡ntico Ltda.','Ing. Gustavo Moncada 8585\r\nPiso 20-A','Buenos Aires','','1010','Argentina'),(10410,'BOTTM',3,'1997-01-10 00:00:00','1997-02-07 00:00:00','1997-01-15 00:00:00',3,2.4,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada'),(10411,'BOTTM',9,'1997-01-10 00:00:00','1997-02-07 00:00:00','1997-01-21 00:00:00',3,23.65,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada'),(10412,'WARTH',8,'1997-01-13 00:00:00','1997-02-10 00:00:00','1997-01-15 00:00:00',2,3.77,'Wartian Herkku','Torikatu 38','Oulu','','90110','Finland'),(10413,'LAMAI',3,'1997-01-14 00:00:00','1997-02-11 00:00:00','1997-01-16 00:00:00',2,95.66,'La maison d\'Asie','1 rue Alsace-Lorraine','Toulouse','','31000','France'),(10414,'FAMIA',2,'1997-01-14 00:00:00','1997-02-11 00:00:00','1997-01-17 00:00:00',3,21.48,'Familia Arquibaldo','Rua OrÃ³s, 92','SÃ£o Paulo','SP','05442-030','Brazil'),(10415,'HUNGC',3,'1997-01-15 00:00:00','1997-02-12 00:00:00','1997-01-24 00:00:00',1,0.2,'Hungry Coyote Import Store','City Center Plaza\r\n516 Main St.','Elgin','OR','97827','USA'),(10416,'WARTH',8,'1997-01-16 00:00:00','1997-02-13 00:00:00','1997-01-27 00:00:00',3,22.72,'Wartian Herkku','Torikatu 38','Oulu','','90110','Finland'),(10417,'SIMOB',4,'1997-01-16 00:00:00','1997-02-13 00:00:00','1997-01-28 00:00:00',3,70.29,'Simons bistro','VinbÃ¦ltet 34','KÃ¸benhavn','','1734','Denmark'),(10418,'QUICK',4,'1997-01-17 00:00:00','1997-02-14 00:00:00','1997-01-24 00:00:00',1,17.55,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10419,'RICSU',4,'1997-01-20 00:00:00','1997-02-17 00:00:00','1997-01-30 00:00:00',2,137.35,'Richter Supermarkt','Starenweg 5','GenÃ¨ve','','1204','Switzerland'),(10420,'WELLI',3,'1997-01-21 00:00:00','1997-02-18 00:00:00','1997-01-27 00:00:00',1,44.12,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil'),(10421,'QUEDE',8,'1997-01-21 00:00:00','1997-03-04 00:00:00','1997-01-27 00:00:00',1,99.23,'Que DelÃ­cia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil'),(10422,'FRANS',2,'1997-01-22 00:00:00','1997-02-19 00:00:00','1997-01-31 00:00:00',1,3.02,'Franchi S.p.A.','Via Monte Bianco 34','Torino','','10100','Italy'),(10423,'GOURL',6,'1997-01-23 00:00:00','1997-02-06 00:00:00','1997-02-24 00:00:00',3,24.5,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil'),(10424,'MEREP',7,'1997-01-23 00:00:00','1997-02-20 00:00:00','1997-01-27 00:00:00',2,370.61,'MÃ¨re Paillarde','43 rue St. Laurent','MontrÃ©al','QuÃ©bec','H1J 1C3','Canada'),(10425,'LAMAI',6,'1997-01-24 00:00:00','1997-02-21 00:00:00','1997-02-14 00:00:00',2,7.93,'La maison d\'Asie','1 rue Alsace-Lorraine','Toulouse','','31000','France'),(10426,'GALED',4,'1997-01-27 00:00:00','1997-02-24 00:00:00','1997-02-06 00:00:00',1,18.69,'GalerÃ­a del gastronÃ³mo','Rambla de CataluÃ±a, 23','Barcelona','','8022','Spain'),(10427,'PICCO',4,'1997-01-27 00:00:00','1997-02-24 00:00:00','1997-03-03 00:00:00',2,31.29,'Piccolo und mehr','Geislweg 14','Salzburg','','5020','Austria'),(10428,'REGGC',7,'1997-01-28 00:00:00','1997-02-25 00:00:00','1997-02-04 00:00:00',1,11.09,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia','','42100','Italy'),(10429,'HUNGO',3,'1997-01-29 00:00:00','1997-03-12 00:00:00','1997-02-07 00:00:00',2,56.63,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork','','Ireland'),(10430,'ERNSH',4,'1997-01-30 00:00:00','1997-02-13 00:00:00','1997-02-03 00:00:00',1,458.78,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10431,'BOTTM',4,'1997-01-30 00:00:00','1997-02-13 00:00:00','1997-02-07 00:00:00',2,44.17,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada'),(10432,'SPLIR',3,'1997-01-31 00:00:00','1997-02-14 00:00:00','1997-02-07 00:00:00',2,4.34,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA'),(10433,'PRINI',3,'1997-02-03 00:00:00','1997-03-03 00:00:00','1997-03-04 00:00:00',3,73.83,'Princesa Isabel Vinhos','Estrada da saÃºde n. 58','Lisboa','','1756','Portugal'),(10434,'FOLKO',3,'1997-02-03 00:00:00','1997-03-03 00:00:00','1997-02-13 00:00:00',2,17.92,'Folk och fÃ¤ HB','Ã…kergatan 24','BrÃ¤cke','','S-844 67','Sweden'),(10435,'CONSH',8,'1997-02-04 00:00:00','1997-03-18 00:00:00','1997-02-07 00:00:00',2,9.21,'Consolidated Holdings','Berkeley Gardens\r\n12  Brewery ','London','','WX1 6LT','UK'),(10436,'BLONP',3,'1997-02-05 00:00:00','1997-03-05 00:00:00','1997-02-11 00:00:00',2,156.66,'Blondel pÃ¨re et fils','24, place KlÃ©ber','Strasbourg','','67000','France'),(10437,'WARTH',8,'1997-02-05 00:00:00','1997-03-05 00:00:00','1997-02-12 00:00:00',1,19.97,'Wartian Herkku','Torikatu 38','Oulu','','90110','Finland'),(10438,'TOMSP',3,'1997-02-06 00:00:00','1997-03-06 00:00:00','1997-02-14 00:00:00',2,8.24,'Toms SpezialitÃ¤ten','Luisenstr. 48','MÃ¼nster','','44087','Germany'),(10439,'MEREP',6,'1997-02-07 00:00:00','1997-03-07 00:00:00','1997-02-10 00:00:00',3,4.07,'MÃ¨re Paillarde','43 rue St. Laurent','MontrÃ©al','QuÃ©bec','H1J 1C3','Canada'),(10440,'SAVEA',4,'1997-02-10 00:00:00','1997-03-10 00:00:00','1997-02-28 00:00:00',2,86.53,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10441,'OLDWO',3,'1997-02-10 00:00:00','1997-03-24 00:00:00','1997-03-14 00:00:00',2,73.02,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA'),(10442,'ERNSH',3,'1997-02-11 00:00:00','1997-03-11 00:00:00','1997-02-18 00:00:00',2,47.94,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10443,'REGGC',8,'1997-02-12 00:00:00','1997-03-12 00:00:00','1997-02-14 00:00:00',1,13.95,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia','','42100','Italy'),(10444,'BERGS',3,'1997-02-12 00:00:00','1997-03-12 00:00:00','1997-02-21 00:00:00',3,3.5,'Berglunds snabbkÃ¶p','BerguvsvÃ¤gen  8','LuleÃ¥','','S-958 22','Sweden'),(10445,'BERGS',3,'1997-02-13 00:00:00','1997-03-13 00:00:00','1997-02-20 00:00:00',1,9.3,'Berglunds snabbkÃ¶p','BerguvsvÃ¤gen  8','LuleÃ¥','','S-958 22','Sweden'),(10446,'TOMSP',6,'1997-02-14 00:00:00','1997-03-14 00:00:00','1997-02-19 00:00:00',1,14.68,'Toms SpezialitÃ¤ten','Luisenstr. 48','MÃ¼nster','','44087','Germany'),(10447,'RICAR',4,'1997-02-14 00:00:00','1997-03-14 00:00:00','1997-03-07 00:00:00',2,68.66,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil'),(10448,'RANCH',4,'1997-02-17 00:00:00','1997-03-17 00:00:00','1997-02-24 00:00:00',2,38.82,'Rancho grande','Av. del Libertador 900','Buenos Aires','','1010','Argentina'),(10449,'BLONP',3,'1997-02-18 00:00:00','1997-03-18 00:00:00','1997-02-27 00:00:00',2,53.3,'Blondel pÃ¨re et fils','24, place KlÃ©ber','Strasbourg','','67000','France'),(10450,'VICTE',8,'1997-02-19 00:00:00','1997-03-19 00:00:00','1997-03-11 00:00:00',2,7.23,'Victuailles en stock','2, rue du Commerce','Lyon','','69004','France'),(10451,'QUICK',4,'1997-02-19 00:00:00','1997-03-05 00:00:00','1997-03-12 00:00:00',3,189.09,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10452,'SAVEA',8,'1997-02-20 00:00:00','1997-03-20 00:00:00','1997-02-26 00:00:00',1,140.26,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10453,'AROUT',1,'1997-02-21 00:00:00','1997-03-21 00:00:00','1997-02-26 00:00:00',2,25.36,'Around the Horn','Brook Farm\r\nStratford St. Mary','Colchester','Essex','CO7 6JX','UK'),(10454,'LAMAI',4,'1997-02-21 00:00:00','1997-03-21 00:00:00','1997-02-25 00:00:00',3,2.74,'La maison d\'Asie','1 rue Alsace-Lorraine','Toulouse','','31000','France'),(10455,'WARTH',8,'1997-02-24 00:00:00','1997-04-07 00:00:00','1997-03-03 00:00:00',2,180.45,'Wartian Herkku','Torikatu 38','Oulu','','90110','Finland'),(10456,'KOENE',8,'1997-02-25 00:00:00','1997-04-08 00:00:00','1997-02-28 00:00:00',2,8.12,'KÃ¶niglich Essen','Maubelstr. 90','Brandenburg','','14776','Germany'),(10457,'KOENE',2,'1997-02-25 00:00:00','1997-03-25 00:00:00','1997-03-03 00:00:00',1,11.57,'KÃ¶niglich Essen','Maubelstr. 90','Brandenburg','','14776','Germany'),(10458,'SUPRD',7,'1997-02-26 00:00:00','1997-03-26 00:00:00','1997-03-04 00:00:00',3,147.06,'SuprÃªmes dÃ©lices','Boulevard Tirou, 255','Charleroi','','B-6000','Belgium'),(10459,'VICTE',4,'1997-02-27 00:00:00','1997-03-27 00:00:00','1997-02-28 00:00:00',2,25.09,'Victuailles en stock','2, rue du Commerce','Lyon','','69004','France'),(10460,'FOLKO',8,'1997-02-28 00:00:00','1997-03-28 00:00:00','1997-03-03 00:00:00',1,16.27,'Folk och fÃ¤ HB','Ã…kergatan 24','BrÃ¤cke','','S-844 67','Sweden'),(10461,'LILAS',1,'1997-02-28 00:00:00','1997-03-28 00:00:00','1997-03-05 00:00:00',3,148.61,'LILA-Supermercado','Carrera 52 con Ave. BolÃ­var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela'),(10462,'CONSH',2,'1997-03-03 00:00:00','1997-03-31 00:00:00','1997-03-18 00:00:00',1,6.17,'Consolidated Holdings','Berkeley Gardens\r\n12  Brewery ','London','','WX1 6LT','UK'),(10463,'SUPRD',5,'1997-03-04 00:00:00','1997-04-01 00:00:00','1997-03-06 00:00:00',3,14.78,'SuprÃªmes dÃ©lices','Boulevard Tirou, 255','Charleroi','','B-6000','Belgium'),(10464,'FURIB',4,'1997-03-04 00:00:00','1997-04-01 00:00:00','1997-03-14 00:00:00',2,89,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa','','1675','Portugal'),(10465,'VAFFE',1,'1997-03-05 00:00:00','1997-04-02 00:00:00','1997-03-14 00:00:00',3,145.04,'Vaffeljernet','SmagslÃ¸get 45','Ã…rhus','','8200','Denmark'),(10466,'COMMI',4,'1997-03-06 00:00:00','1997-04-03 00:00:00','1997-03-13 00:00:00',1,11.93,'ComÃ©rcio Mineiro','Av. dos LusÃ­adas, 23','SÃ£o Paulo','SP','05432-043','Brazil'),(10467,'MAGAA',8,'1997-03-06 00:00:00','1997-04-03 00:00:00','1997-03-11 00:00:00',2,4.93,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo','','24100','Italy'),(10468,'KOENE',3,'1997-03-07 00:00:00','1997-04-04 00:00:00','1997-03-12 00:00:00',3,44.12,'KÃ¶niglich Essen','Maubelstr. 90','Brandenburg','','14776','Germany'),(10469,'WHITC',1,'1997-03-10 00:00:00','1997-04-07 00:00:00','1997-03-14 00:00:00',1,60.18,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA'),(10470,'BONAP',4,'1997-03-11 00:00:00','1997-04-08 00:00:00','1997-03-14 00:00:00',2,64.56,'Bon app\'','12, rue des Bouchers','Marseille','','13008','France'),(10471,'BSBEV',2,'1997-03-11 00:00:00','1997-04-08 00:00:00','1997-03-18 00:00:00',3,45.59,'B\'s Beverages','Fauntleroy Circus','London','','EC2 5NT','UK'),(10472,'SEVES',8,'1997-03-12 00:00:00','1997-04-09 00:00:00','1997-03-19 00:00:00',1,4.2,'Seven Seas Imports','90 Wadhurst Rd.','London','','OX15 4NB','UK'),(10473,'ISLAT',1,'1997-03-13 00:00:00','1997-03-27 00:00:00','1997-03-21 00:00:00',3,16.37,'Island Trading','Garden House\r\nCrowther Way','Cowes','Isle of Wight','PO31 7PJ','UK'),(10474,'PERIC',5,'1997-03-13 00:00:00','1997-04-10 00:00:00','1997-03-21 00:00:00',2,83.49,'Pericles Comidas clÃ¡sicas','Calle Dr. Jorge Cash 321','MÃ©xico D.F.','','05033','Mexico'),(10475,'SUPRD',9,'1997-03-14 00:00:00','1997-04-11 00:00:00','1997-04-04 00:00:00',1,68.52,'SuprÃªmes dÃ©lices','Boulevard Tirou, 255','Charleroi','','B-6000','Belgium'),(10476,'HILAA',8,'1997-03-17 00:00:00','1997-04-14 00:00:00','1997-03-24 00:00:00',3,4.41,'HILARIÃ“N-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San CristÃ³bal','TÃ¡chira','5022','Venezuela'),(10477,'PRINI',5,'1997-03-17 00:00:00','1997-04-14 00:00:00','1997-03-25 00:00:00',2,13.02,'Princesa Isabel Vinhos','Estrada da saÃºde n. 58','Lisboa','','1756','Portugal'),(10478,'VICTE',2,'1997-03-18 00:00:00','1997-04-01 00:00:00','1997-03-26 00:00:00',3,4.81,'Victuailles en stock','2, rue du Commerce','Lyon','','69004','France'),(10479,'RATTC',3,'1997-03-19 00:00:00','1997-04-16 00:00:00','1997-03-21 00:00:00',3,708.95,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA'),(10480,'FOLIG',6,'1997-03-20 00:00:00','1997-04-17 00:00:00','1997-03-24 00:00:00',2,1.35,'Folies gourmandes','184, chaussÃ©e de Tournai','Lille','','59000','France'),(10481,'RICAR',8,'1997-03-20 00:00:00','1997-04-17 00:00:00','1997-03-25 00:00:00',2,64.33,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil'),(10482,'LAZYK',1,'1997-03-21 00:00:00','1997-04-18 00:00:00','1997-04-10 00:00:00',3,7.48,'Lazy K Kountry Store','12 Orchestra Terrace','Walla Walla','WA','99362','USA'),(10483,'WHITC',7,'1997-03-24 00:00:00','1997-04-21 00:00:00','1997-04-25 00:00:00',2,15.28,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA'),(10484,'BSBEV',3,'1997-03-24 00:00:00','1997-04-21 00:00:00','1997-04-01 00:00:00',3,6.88,'B\'s Beverages','Fauntleroy Circus','London','','EC2 5NT','UK'),(10485,'LINOD',4,'1997-03-25 00:00:00','1997-04-08 00:00:00','1997-03-31 00:00:00',2,64.45,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela'),(10486,'HILAA',1,'1997-03-26 00:00:00','1997-04-23 00:00:00','1997-04-02 00:00:00',2,30.53,'HILARIÃ“N-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San CristÃ³bal','TÃ¡chira','5022','Venezuela'),(10487,'QUEEN',2,'1997-03-26 00:00:00','1997-04-23 00:00:00','1997-03-28 00:00:00',2,71.07,'Queen Cozinha','Alameda dos CanÃ rios, 891','SÃ£o Paulo','SP','05487-020','Brazil'),(10488,'FRANK',8,'1997-03-27 00:00:00','1997-04-24 00:00:00','1997-04-02 00:00:00',2,4.93,'Frankenversand','Berliner Platz 43','MÃ¼nchen','','80805','Germany'),(10489,'PICCO',6,'1997-03-28 00:00:00','1997-04-25 00:00:00','1997-04-09 00:00:00',2,5.29,'Piccolo und mehr','Geislweg 14','Salzburg','','5020','Austria'),(10490,'HILAA',7,'1997-03-31 00:00:00','1997-04-28 00:00:00','1997-04-03 00:00:00',2,210.19,'HILARIÃ“N-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San CristÃ³bal','TÃ¡chira','5022','Venezuela'),(10491,'FURIB',8,'1997-03-31 00:00:00','1997-04-28 00:00:00','1997-04-08 00:00:00',3,16.96,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa','','1675','Portugal'),(10492,'BOTTM',3,'1997-04-01 00:00:00','1997-04-29 00:00:00','1997-04-11 00:00:00',1,62.89,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada'),(10493,'LAMAI',4,'1997-04-02 00:00:00','1997-04-30 00:00:00','1997-04-10 00:00:00',3,10.64,'La maison d\'Asie','1 rue Alsace-Lorraine','Toulouse','','31000','France'),(10494,'COMMI',4,'1997-04-02 00:00:00','1997-04-30 00:00:00','1997-04-09 00:00:00',2,65.99,'ComÃ©rcio Mineiro','Av. dos LusÃ­adas, 23','SÃ£o Paulo','SP','05432-043','Brazil'),(10495,'LAUGB',3,'1997-04-03 00:00:00','1997-05-01 00:00:00','1997-04-11 00:00:00',3,4.65,'Laughing Bacchus Wine Cellars','2319 Elm St.','Vancouver','BC','V3F 2K1','Canada'),(10496,'TRADH',7,'1997-04-04 00:00:00','1997-05-02 00:00:00','1997-04-07 00:00:00',2,46.77,'TradiÃ§Ã£o Hipermercados','Av. InÃªs de Castro, 414','SÃ£o Paulo','SP','05634-030','Brazil'),(10497,'LEHMS',7,'1997-04-04 00:00:00','1997-05-02 00:00:00','1997-04-07 00:00:00',1,36.21,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M. ','','60528','Germany'),(10498,'HILAA',8,'1997-04-07 00:00:00','1997-05-05 00:00:00','1997-04-11 00:00:00',2,29.75,'HILARIÃ“N-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San CristÃ³bal','TÃ¡chira','5022','Venezuela'),(10499,'LILAS',4,'1997-04-08 00:00:00','1997-05-06 00:00:00','1997-04-16 00:00:00',2,102.02,'LILA-Supermercado','Carrera 52 con Ave. BolÃ­var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela'),(10500,'LAMAI',6,'1997-04-09 00:00:00','1997-05-07 00:00:00','1997-04-17 00:00:00',1,42.68,'La maison d\'Asie','1 rue Alsace-Lorraine','Toulouse','','31000','France'),(10501,'BLAUS',9,'1997-04-09 00:00:00','1997-05-07 00:00:00','1997-04-16 00:00:00',3,8.85,'Blauer See Delikatessen','Forsterstr. 57','Mannheim','','68306','Germany'),(10502,'PERIC',2,'1997-04-10 00:00:00','1997-05-08 00:00:00','1997-04-29 00:00:00',1,69.32,'Pericles Comidas clÃ¡sicas','Calle Dr. Jorge Cash 321','MÃ©xico D.F.','','05033','Mexico'),(10503,'HUNGO',6,'1997-04-11 00:00:00','1997-05-09 00:00:00','1997-04-16 00:00:00',2,16.74,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork','','Ireland'),(10504,'WHITC',4,'1997-04-11 00:00:00','1997-05-09 00:00:00','1997-04-18 00:00:00',3,59.13,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA'),(10505,'MEREP',3,'1997-04-14 00:00:00','1997-05-12 00:00:00','1997-04-21 00:00:00',3,7.13,'MÃ¨re Paillarde','43 rue St. Laurent','MontrÃ©al','QuÃ©bec','H1J 1C3','Canada'),(10506,'KOENE',9,'1997-04-15 00:00:00','1997-05-13 00:00:00','1997-05-02 00:00:00',2,21.19,'KÃ¶niglich Essen','Maubelstr. 90','Brandenburg','','14776','Germany'),(10507,'ANTON',7,'1997-04-15 00:00:00','1997-05-13 00:00:00','1997-04-22 00:00:00',1,47.45,'Antonio Moreno TaquerÃ­a','Mataderos  2312','MÃ©xico D.F.','','05023','Mexico'),(10508,'OTTIK',1,'1997-04-16 00:00:00','1997-05-14 00:00:00','1997-05-13 00:00:00',2,4.99,'Ottilies KÃ¤seladen','Mehrheimerstr. 369','KÃ¶ln','','50739','Germany'),(10509,'BLAUS',4,'1997-04-17 00:00:00','1997-05-15 00:00:00','1997-04-29 00:00:00',1,0.15,'Blauer See Delikatessen','Forsterstr. 57','Mannheim','','68306','Germany'),(10510,'SAVEA',6,'1997-04-18 00:00:00','1997-05-16 00:00:00','1997-04-28 00:00:00',3,367.63,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10511,'BONAP',4,'1997-04-18 00:00:00','1997-05-16 00:00:00','1997-04-21 00:00:00',3,350.64,'Bon app\'','12, rue des Bouchers','Marseille','','13008','France'),(10512,'FAMIA',7,'1997-04-21 00:00:00','1997-05-19 00:00:00','1997-04-24 00:00:00',2,3.53,'Familia Arquibaldo','Rua OrÃ³s, 92','SÃ£o Paulo','SP','05442-030','Brazil'),(10513,'WANDK',7,'1997-04-22 00:00:00','1997-06-03 00:00:00','1997-04-28 00:00:00',1,105.65,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart','','70563','Germany'),(10514,'ERNSH',3,'1997-04-22 00:00:00','1997-05-20 00:00:00','1997-05-16 00:00:00',2,789.95,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10515,'QUICK',2,'1997-04-23 00:00:00','1997-05-07 00:00:00','1997-05-23 00:00:00',1,204.47,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10516,'HUNGO',2,'1997-04-24 00:00:00','1997-05-22 00:00:00','1997-05-01 00:00:00',3,62.78,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork','','Ireland'),(10517,'NORTS',3,'1997-04-24 00:00:00','1997-05-22 00:00:00','1997-04-29 00:00:00',3,32.07,'North/South','South House\r\n300 Queensbridge','London','','SW7 1RZ','UK'),(10518,'TORTU',4,'1997-04-25 00:00:00','1997-05-09 00:00:00','1997-05-05 00:00:00',2,218.15,'Tortuga Restaurante','Avda. Azteca 123','MÃ©xico D.F.','','05033','Mexico'),(10519,'CHOPS',6,'1997-04-28 00:00:00','1997-05-26 00:00:00','1997-05-01 00:00:00',3,91.76,'Chop-suey Chinese','Hauptstr. 31','Bern','','3012','Switzerland'),(10520,'SANTG',7,'1997-04-29 00:00:00','1997-05-27 00:00:00','1997-05-01 00:00:00',1,13.37,'SantÃ© Gourmet','Erling Skakkes gate 78','Stavern','','4110','Norway'),(10521,'CACTU',8,'1997-04-29 00:00:00','1997-05-27 00:00:00','1997-05-02 00:00:00',2,17.22,'Cactus Comidas para llevar','Cerrito 333','Buenos Aires','','1010','Argentina'),(10522,'LEHMS',4,'1997-04-30 00:00:00','1997-05-28 00:00:00','1997-05-06 00:00:00',1,45.33,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M. ','','60528','Germany'),(10523,'SEVES',7,'1997-05-01 00:00:00','1997-05-29 00:00:00','1997-05-30 00:00:00',2,77.63,'Seven Seas Imports','90 Wadhurst Rd.','London','','OX15 4NB','UK'),(10524,'BERGS',1,'1997-05-01 00:00:00','1997-05-29 00:00:00','1997-05-07 00:00:00',2,244.79,'Berglunds snabbkÃ¶p','BerguvsvÃ¤gen  8','LuleÃ¥','','S-958 22','Sweden'),(10525,'BONAP',1,'1997-05-02 00:00:00','1997-05-30 00:00:00','1997-05-23 00:00:00',2,11.06,'Bon app\'','12, rue des Bouchers','Marseille','','13008','France'),(10526,'WARTH',4,'1997-05-05 00:00:00','1997-06-02 00:00:00','1997-05-15 00:00:00',2,58.59,'Wartian Herkku','Torikatu 38','Oulu','','90110','Finland'),(10527,'QUICK',7,'1997-05-05 00:00:00','1997-06-02 00:00:00','1997-05-07 00:00:00',1,41.9,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10528,'GREAL',6,'1997-05-06 00:00:00','1997-05-20 00:00:00','1997-05-09 00:00:00',2,3.35,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA'),(10529,'MAISD',5,'1997-05-07 00:00:00','1997-06-04 00:00:00','1997-05-09 00:00:00',2,66.69,'Maison Dewey','Rue Joseph-Bens 532','Bruxelles','','B-1180','Belgium'),(10530,'PICCO',3,'1997-05-08 00:00:00','1997-06-05 00:00:00','1997-05-12 00:00:00',2,339.22,'Piccolo und mehr','Geislweg 14','Salzburg','','5020','Austria'),(10531,'OCEAN',7,'1997-05-08 00:00:00','1997-06-05 00:00:00','1997-05-19 00:00:00',1,8.12,'OcÃ©ano AtlÃ¡ntico Ltda.','Ing. Gustavo Moncada 8585\r\nPiso 20-A','Buenos Aires','','1010','Argentina'),(10532,'EASTC',7,'1997-05-09 00:00:00','1997-06-06 00:00:00','1997-05-12 00:00:00',3,74.46,'Eastern Connection','35 King George','London','','WX3 6FW','UK'),(10533,'FOLKO',8,'1997-05-12 00:00:00','1997-06-09 00:00:00','1997-05-22 00:00:00',1,188.04,'Folk och fÃ¤ HB','Ã…kergatan 24','BrÃ¤cke','','S-844 67','Sweden'),(10534,'LEHMS',8,'1997-05-12 00:00:00','1997-06-09 00:00:00','1997-05-14 00:00:00',2,27.94,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M. ','','60528','Germany'),(10535,'ANTON',4,'1997-05-13 00:00:00','1997-06-10 00:00:00','1997-05-21 00:00:00',1,15.64,'Antonio Moreno TaquerÃ­a','Mataderos  2312','MÃ©xico D.F.','','05023','Mexico'),(10536,'LEHMS',3,'1997-05-14 00:00:00','1997-06-11 00:00:00','1997-06-06 00:00:00',2,58.88,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M. ','','60528','Germany'),(10537,'RICSU',1,'1997-05-14 00:00:00','1997-05-28 00:00:00','1997-05-19 00:00:00',1,78.85,'Richter Supermarkt','Starenweg 5','GenÃ¨ve','','1204','Switzerland'),(10538,'BSBEV',9,'1997-05-15 00:00:00','1997-06-12 00:00:00','1997-05-16 00:00:00',3,4.87,'B\'s Beverages','Fauntleroy Circus','London','','EC2 5NT','UK'),(10539,'BSBEV',6,'1997-05-16 00:00:00','1997-06-13 00:00:00','1997-05-23 00:00:00',3,12.36,'B\'s Beverages','Fauntleroy Circus','London','','EC2 5NT','UK'),(10540,'QUICK',3,'1997-05-19 00:00:00','1997-06-16 00:00:00','1997-06-13 00:00:00',3,1007.64,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10541,'HANAR',2,'1997-05-19 00:00:00','1997-06-16 00:00:00','1997-05-29 00:00:00',1,68.65,'Hanari Carnes','Rua do PaÃ§o, 67','Rio de Janeiro','RJ','05454-876','Brazil'),(10542,'KOENE',1,'1997-05-20 00:00:00','1997-06-17 00:00:00','1997-05-26 00:00:00',3,10.95,'KÃ¶niglich Essen','Maubelstr. 90','Brandenburg','','14776','Germany'),(10543,'LILAS',8,'1997-05-21 00:00:00','1997-06-18 00:00:00','1997-05-23 00:00:00',2,48.17,'LILA-Supermercado','Carrera 52 con Ave. BolÃ­var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela'),(10544,'LONEP',4,'1997-05-21 00:00:00','1997-06-18 00:00:00','1997-05-30 00:00:00',1,24.91,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA'),(10545,'LAZYK',8,'1997-05-22 00:00:00','1997-06-19 00:00:00','1997-06-26 00:00:00',2,11.92,'Lazy K Kountry Store','12 Orchestra Terrace','Walla Walla','WA','99362','USA'),(10546,'VICTE',1,'1997-05-23 00:00:00','1997-06-20 00:00:00','1997-05-27 00:00:00',3,194.72,'Victuailles en stock','2, rue du Commerce','Lyon','','69004','France'),(10547,'SEVES',3,'1997-05-23 00:00:00','1997-06-20 00:00:00','1997-06-02 00:00:00',2,178.43,'Seven Seas Imports','90 Wadhurst Rd.','London','','OX15 4NB','UK'),(10548,'TOMSP',3,'1997-05-26 00:00:00','1997-06-23 00:00:00','1997-06-02 00:00:00',2,1.43,'Toms SpezialitÃ¤ten','Luisenstr. 48','MÃ¼nster','','44087','Germany'),(10549,'QUICK',5,'1997-05-27 00:00:00','1997-06-10 00:00:00','1997-05-30 00:00:00',1,171.24,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10550,'GODOS',7,'1997-05-28 00:00:00','1997-06-25 00:00:00','1997-06-06 00:00:00',3,4.32,'Godos Cocina TÃ­pica','C/ Romero, 33','Sevilla','','41101','Spain'),(10551,'FURIB',4,'1997-05-28 00:00:00','1997-07-09 00:00:00','1997-06-06 00:00:00',3,72.95,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa','','1675','Portugal'),(10552,'HILAA',2,'1997-05-29 00:00:00','1997-06-26 00:00:00','1997-06-05 00:00:00',1,83.22,'HILARIÃ“N-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San CristÃ³bal','TÃ¡chira','5022','Venezuela'),(10553,'WARTH',2,'1997-05-30 00:00:00','1997-06-27 00:00:00','1997-06-03 00:00:00',2,149.49,'Wartian Herkku','Torikatu 38','Oulu','','90110','Finland'),(10554,'OTTIK',4,'1997-05-30 00:00:00','1997-06-27 00:00:00','1997-06-05 00:00:00',3,120.97,'Ottilies KÃ¤seladen','Mehrheimerstr. 369','KÃ¶ln','','50739','Germany'),(10555,'SAVEA',6,'1997-06-02 00:00:00','1997-06-30 00:00:00','1997-06-04 00:00:00',3,252.49,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10556,'SIMOB',2,'1997-06-03 00:00:00','1997-07-15 00:00:00','1997-06-13 00:00:00',1,9.8,'Simons bistro','VinbÃ¦ltet 34','KÃ¸benhavn','','1734','Denmark'),(10557,'LEHMS',9,'1997-06-03 00:00:00','1997-06-17 00:00:00','1997-06-06 00:00:00',2,96.72,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M. ','','60528','Germany'),(10558,'AROUT',1,'1997-06-04 00:00:00','1997-07-02 00:00:00','1997-06-10 00:00:00',2,72.97,'Around the Horn','Brook Farm\r\nStratford St. Mary','Colchester','Essex','CO7 6JX','UK'),(10559,'BLONP',6,'1997-06-05 00:00:00','1997-07-03 00:00:00','1997-06-13 00:00:00',1,8.05,'Blondel pÃ¨re et fils','24, place KlÃ©ber','Strasbourg','','67000','France'),(10560,'FRANK',8,'1997-06-06 00:00:00','1997-07-04 00:00:00','1997-06-09 00:00:00',1,36.65,'Frankenversand','Berliner Platz 43','MÃ¼nchen','','80805','Germany'),(10561,'FOLKO',2,'1997-06-06 00:00:00','1997-07-04 00:00:00','1997-06-09 00:00:00',2,242.21,'Folk och fÃ¤ HB','Ã…kergatan 24','BrÃ¤cke','','S-844 67','Sweden'),(10562,'REGGC',1,'1997-06-09 00:00:00','1997-07-07 00:00:00','1997-06-12 00:00:00',1,22.95,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia','','42100','Italy'),(10563,'RICAR',2,'1997-06-10 00:00:00','1997-07-22 00:00:00','1997-06-24 00:00:00',2,60.43,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil'),(10564,'RATTC',4,'1997-06-10 00:00:00','1997-07-08 00:00:00','1997-06-16 00:00:00',3,13.75,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA'),(10565,'MEREP',8,'1997-06-11 00:00:00','1997-07-09 00:00:00','1997-06-18 00:00:00',2,7.15,'MÃ¨re Paillarde','43 rue St. Laurent','MontrÃ©al','QuÃ©bec','H1J 1C3','Canada'),(10566,'BLONP',9,'1997-06-12 00:00:00','1997-07-10 00:00:00','1997-06-18 00:00:00',1,88.4,'Blondel pÃ¨re et fils','24, place KlÃ©ber','Strasbourg','','67000','France'),(10567,'HUNGO',1,'1997-06-12 00:00:00','1997-07-10 00:00:00','1997-06-17 00:00:00',1,33.97,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork','','Ireland'),(10568,'GALED',3,'1997-06-13 00:00:00','1997-07-11 00:00:00','1997-07-09 00:00:00',3,6.54,'GalerÃ­a del gastronÃ³mo','Rambla de CataluÃ±a, 23','Barcelona','','8022','Spain'),(10569,'RATTC',5,'1997-06-16 00:00:00','1997-07-14 00:00:00','1997-07-11 00:00:00',1,58.98,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA'),(10570,'MEREP',3,'1997-06-17 00:00:00','1997-07-15 00:00:00','1997-06-19 00:00:00',3,188.99,'MÃ¨re Paillarde','43 rue St. Laurent','MontrÃ©al','QuÃ©bec','H1J 1C3','Canada'),(10571,'ERNSH',8,'1997-06-17 00:00:00','1997-07-29 00:00:00','1997-07-04 00:00:00',3,26.06,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10572,'BERGS',3,'1997-06-18 00:00:00','1997-07-16 00:00:00','1997-06-25 00:00:00',2,116.43,'Berglunds snabbkÃ¶p','BerguvsvÃ¤gen  8','LuleÃ¥','','S-958 22','Sweden'),(10573,'ANTON',7,'1997-06-19 00:00:00','1997-07-17 00:00:00','1997-06-20 00:00:00',3,84.84,'Antonio Moreno TaquerÃ­a','Mataderos  2312','MÃ©xico D.F.','','05023','Mexico'),(10574,'TRAIH',4,'1997-06-19 00:00:00','1997-07-17 00:00:00','1997-06-30 00:00:00',2,37.6,'Trail\'s Head Gourmet Provisioners','722 DaVinci Blvd.','Kirkland','WA','98034','USA'),(10575,'MORGK',5,'1997-06-20 00:00:00','1997-07-04 00:00:00','1997-06-30 00:00:00',1,127.34,'Morgenstern Gesundkost','Heerstr. 22','Leipzig','','04179','Germany'),(10576,'TORTU',3,'1997-06-23 00:00:00','1997-07-07 00:00:00','1997-06-30 00:00:00',3,18.56,'Tortuga Restaurante','Avda. Azteca 123','MÃ©xico D.F.','','05033','Mexico'),(10577,'TRAIH',9,'1997-06-23 00:00:00','1997-08-04 00:00:00','1997-06-30 00:00:00',2,25.41,'Trail\'s Head Gourmet Provisioners','722 DaVinci Blvd.','Kirkland','WA','98034','USA'),(10578,'BSBEV',4,'1997-06-24 00:00:00','1997-07-22 00:00:00','1997-07-25 00:00:00',3,29.6,'B\'s Beverages','Fauntleroy Circus','London','','EC2 5NT','UK'),(10579,'LETSS',1,'1997-06-25 00:00:00','1997-07-23 00:00:00','1997-07-04 00:00:00',2,13.73,'Let\'s Stop N Shop','87 Polk St.\r\nSuite 5','San Francisco','CA','94117','USA'),(10580,'OTTIK',4,'1997-06-26 00:00:00','1997-07-24 00:00:00','1997-07-01 00:00:00',3,75.89,'Ottilies KÃ¤seladen','Mehrheimerstr. 369','KÃ¶ln','','50739','Germany'),(10581,'FAMIA',3,'1997-06-26 00:00:00','1997-07-24 00:00:00','1997-07-02 00:00:00',1,3.01,'Familia Arquibaldo','Rua OrÃ³s, 92','SÃ£o Paulo','SP','05442-030','Brazil'),(10582,'BLAUS',3,'1997-06-27 00:00:00','1997-07-25 00:00:00','1997-07-14 00:00:00',2,27.71,'Blauer See Delikatessen','Forsterstr. 57','Mannheim','','68306','Germany'),(10583,'WARTH',2,'1997-06-30 00:00:00','1997-07-28 00:00:00','1997-07-04 00:00:00',2,7.28,'Wartian Herkku','Torikatu 38','Oulu','','90110','Finland'),(10584,'BLONP',4,'1997-06-30 00:00:00','1997-07-28 00:00:00','1997-07-04 00:00:00',1,59.14,'Blondel pÃ¨re et fils','24, place KlÃ©ber','Strasbourg','','67000','France'),(10585,'WELLI',7,'1997-07-01 00:00:00','1997-07-29 00:00:00','1997-07-10 00:00:00',1,13.41,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil'),(10586,'REGGC',9,'1997-07-02 00:00:00','1997-07-30 00:00:00','1997-07-09 00:00:00',1,0.48,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia','','42100','Italy'),(10587,'QUEDE',1,'1997-07-02 00:00:00','1997-07-30 00:00:00','1997-07-09 00:00:00',1,62.52,'Que DelÃ­cia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil'),(10588,'QUICK',2,'1997-07-03 00:00:00','1997-07-31 00:00:00','1997-07-10 00:00:00',3,194.67,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10589,'GREAL',8,'1997-07-04 00:00:00','1997-08-01 00:00:00','1997-07-14 00:00:00',2,4.42,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA'),(10590,'MEREP',4,'1997-07-07 00:00:00','1997-08-04 00:00:00','1997-07-14 00:00:00',3,44.77,'MÃ¨re Paillarde','43 rue St. Laurent','MontrÃ©al','QuÃ©bec','H1J 1C3','Canada'),(10591,'VAFFE',1,'1997-07-07 00:00:00','1997-07-21 00:00:00','1997-07-16 00:00:00',1,55.92,'Vaffeljernet','SmagslÃ¸get 45','Ã…rhus','','8200','Denmark'),(10592,'LEHMS',3,'1997-07-08 00:00:00','1997-08-05 00:00:00','1997-07-16 00:00:00',1,32.1,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M. ','','60528','Germany'),(10593,'LEHMS',7,'1997-07-09 00:00:00','1997-08-06 00:00:00','1997-08-13 00:00:00',2,174.2,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M. ','','60528','Germany'),(10594,'OLDWO',3,'1997-07-09 00:00:00','1997-08-06 00:00:00','1997-07-16 00:00:00',2,5.24,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA'),(10595,'ERNSH',2,'1997-07-10 00:00:00','1997-08-07 00:00:00','1997-07-14 00:00:00',1,96.78,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10596,'WHITC',8,'1997-07-11 00:00:00','1997-08-08 00:00:00','1997-08-12 00:00:00',1,16.34,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA'),(10597,'PICCO',7,'1997-07-11 00:00:00','1997-08-08 00:00:00','1997-07-18 00:00:00',3,35.12,'Piccolo und mehr','Geislweg 14','Salzburg','','5020','Austria'),(10598,'RATTC',1,'1997-07-14 00:00:00','1997-08-11 00:00:00','1997-07-18 00:00:00',3,44.42,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA'),(10599,'BSBEV',6,'1997-07-15 00:00:00','1997-08-26 00:00:00','1997-07-21 00:00:00',3,29.98,'B\'s Beverages','Fauntleroy Circus','London','','EC2 5NT','UK'),(10600,'HUNGC',4,'1997-07-16 00:00:00','1997-08-13 00:00:00','1997-07-21 00:00:00',1,45.13,'Hungry Coyote Import Store','City Center Plaza\r\n516 Main St.','Elgin','OR','97827','USA'),(10601,'HILAA',7,'1997-07-16 00:00:00','1997-08-27 00:00:00','1997-07-22 00:00:00',1,58.3,'HILARIÃ“N-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San CristÃ³bal','TÃ¡chira','5022','Venezuela'),(10602,'VAFFE',8,'1997-07-17 00:00:00','1997-08-14 00:00:00','1997-07-22 00:00:00',2,2.92,'Vaffeljernet','SmagslÃ¸get 45','Ã…rhus','','8200','Denmark'),(10603,'SAVEA',8,'1997-07-18 00:00:00','1997-08-15 00:00:00','1997-08-08 00:00:00',2,48.77,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10604,'FURIB',1,'1997-07-18 00:00:00','1997-08-15 00:00:00','1997-07-29 00:00:00',1,7.46,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa','','1675','Portugal'),(10605,'MEREP',1,'1997-07-21 00:00:00','1997-08-18 00:00:00','1997-07-29 00:00:00',2,379.13,'MÃ¨re Paillarde','43 rue St. Laurent','MontrÃ©al','QuÃ©bec','H1J 1C3','Canada'),(10606,'TRADH',4,'1997-07-22 00:00:00','1997-08-19 00:00:00','1997-07-31 00:00:00',3,79.4,'TradiÃ§Ã£o Hipermercados','Av. InÃªs de Castro, 414','SÃ£o Paulo','SP','05634-030','Brazil'),(10607,'SAVEA',5,'1997-07-22 00:00:00','1997-08-19 00:00:00','1997-07-25 00:00:00',1,200.24,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10608,'TOMSP',4,'1997-07-23 00:00:00','1997-08-20 00:00:00','1997-08-01 00:00:00',2,27.79,'Toms SpezialitÃ¤ten','Luisenstr. 48','MÃ¼nster','','44087','Germany'),(10609,'DUMON',7,'1997-07-24 00:00:00','1997-08-21 00:00:00','1997-07-30 00:00:00',2,1.85,'Du monde entier','67, rue des Cinquante Otages','Nantes','','44000','France'),(10610,'LAMAI',8,'1997-07-25 00:00:00','1997-08-22 00:00:00','1997-08-06 00:00:00',1,26.78,'La maison d\'Asie','1 rue Alsace-Lorraine','Toulouse','','31000','France'),(10611,'WOLZA',6,'1997-07-25 00:00:00','1997-08-22 00:00:00','1997-08-01 00:00:00',2,80.65,'Wolski Zajazd','ul. Filtrowa 68','Warszawa','','01-012','Poland'),(10612,'SAVEA',1,'1997-07-28 00:00:00','1997-08-25 00:00:00','1997-08-01 00:00:00',2,544.08,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10613,'HILAA',4,'1997-07-29 00:00:00','1997-08-26 00:00:00','1997-08-01 00:00:00',2,8.11,'HILARIÃ“N-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San CristÃ³bal','TÃ¡chira','5022','Venezuela'),(10614,'BLAUS',8,'1997-07-29 00:00:00','1997-08-26 00:00:00','1997-08-01 00:00:00',3,1.93,'Blauer See Delikatessen','Forsterstr. 57','Mannheim','','68306','Germany'),(10615,'WILMK',2,'1997-07-30 00:00:00','1997-08-27 00:00:00','1997-08-06 00:00:00',3,0.75,'Wilman Kala','Keskuskatu 45','Helsinki','','21240','Finland'),(10616,'GREAL',1,'1997-07-31 00:00:00','1997-08-28 00:00:00','1997-08-05 00:00:00',2,116.53,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA'),(10617,'GREAL',4,'1997-07-31 00:00:00','1997-08-28 00:00:00','1997-08-04 00:00:00',2,18.53,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA'),(10618,'MEREP',1,'1997-08-01 00:00:00','1997-09-12 00:00:00','1997-08-08 00:00:00',1,154.68,'MÃ¨re Paillarde','43 rue St. Laurent','MontrÃ©al','QuÃ©bec','H1J 1C3','Canada'),(10619,'MEREP',3,'1997-08-04 00:00:00','1997-09-01 00:00:00','1997-08-07 00:00:00',3,91.05,'MÃ¨re Paillarde','43 rue St. Laurent','MontrÃ©al','QuÃ©bec','H1J 1C3','Canada'),(10620,'LAUGB',2,'1997-08-05 00:00:00','1997-09-02 00:00:00','1997-08-14 00:00:00',3,0.94,'Laughing Bacchus Wine Cellars','2319 Elm St.','Vancouver','BC','V3F 2K1','Canada'),(10621,'ISLAT',4,'1997-08-05 00:00:00','1997-09-02 00:00:00','1997-08-11 00:00:00',2,23.73,'Island Trading','Garden House\r\nCrowther Way','Cowes','Isle of Wight','PO31 7PJ','UK'),(10622,'RICAR',4,'1997-08-06 00:00:00','1997-09-03 00:00:00','1997-08-11 00:00:00',3,50.97,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil'),(10623,'FRANK',8,'1997-08-07 00:00:00','1997-09-04 00:00:00','1997-08-12 00:00:00',2,97.18,'Frankenversand','Berliner Platz 43','MÃ¼nchen','','80805','Germany'),(10624,'THECR',4,'1997-08-07 00:00:00','1997-09-04 00:00:00','1997-08-19 00:00:00',2,94.8,'The Cracker Box','55 Grizzly Peak Rd.','Butte','MT','59801','USA'),(10625,'ANATR',3,'1997-08-08 00:00:00','1997-09-05 00:00:00','1997-08-14 00:00:00',1,43.9,'Ana Trujillo Emparedados y helados','Avda. de la ConstituciÃ³n 2222','MÃ©xico D.F.','','05021','Mexico'),(10626,'BERGS',1,'1997-08-11 00:00:00','1997-09-08 00:00:00','1997-08-20 00:00:00',2,138.69,'Berglunds snabbkÃ¶p','BerguvsvÃ¤gen  8','LuleÃ¥','','S-958 22','Sweden'),(10627,'SAVEA',8,'1997-08-11 00:00:00','1997-09-22 00:00:00','1997-08-21 00:00:00',3,107.46,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10628,'BLONP',4,'1997-08-12 00:00:00','1997-09-09 00:00:00','1997-08-20 00:00:00',3,30.36,'Blondel pÃ¨re et fils','24, place KlÃ©ber','Strasbourg','','67000','France'),(10629,'GODOS',4,'1997-08-12 00:00:00','1997-09-09 00:00:00','1997-08-20 00:00:00',3,85.46,'Godos Cocina TÃ­pica','C/ Romero, 33','Sevilla','','41101','Spain'),(10630,'KOENE',1,'1997-08-13 00:00:00','1997-09-10 00:00:00','1997-08-19 00:00:00',2,32.35,'KÃ¶niglich Essen','Maubelstr. 90','Brandenburg','','14776','Germany'),(10631,'LAMAI',8,'1997-08-14 00:00:00','1997-09-11 00:00:00','1997-08-15 00:00:00',1,0.87,'La maison d\'Asie','1 rue Alsace-Lorraine','Toulouse','','31000','France'),(10632,'WANDK',8,'1997-08-14 00:00:00','1997-09-11 00:00:00','1997-08-19 00:00:00',1,41.38,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart','','70563','Germany'),(10633,'ERNSH',7,'1997-08-15 00:00:00','1997-09-12 00:00:00','1997-08-18 00:00:00',3,477.9,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10634,'FOLIG',4,'1997-08-15 00:00:00','1997-09-12 00:00:00','1997-08-21 00:00:00',3,487.38,'Folies gourmandes','184, chaussÃ©e de Tournai','Lille','','59000','France'),(10635,'MAGAA',8,'1997-08-18 00:00:00','1997-09-15 00:00:00','1997-08-21 00:00:00',3,47.46,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo','','24100','Italy'),(10636,'WARTH',4,'1997-08-19 00:00:00','1997-09-16 00:00:00','1997-08-26 00:00:00',1,1.15,'Wartian Herkku','Torikatu 38','Oulu','','90110','Finland'),(10637,'QUEEN',6,'1997-08-19 00:00:00','1997-09-16 00:00:00','1997-08-26 00:00:00',1,201.29,'Queen Cozinha','Alameda dos CanÃ rios, 891','SÃ£o Paulo','SP','05487-020','Brazil'),(10638,'LINOD',3,'1997-08-20 00:00:00','1997-09-17 00:00:00','1997-09-01 00:00:00',1,158.44,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela'),(10639,'SANTG',7,'1997-08-20 00:00:00','1997-09-17 00:00:00','1997-08-27 00:00:00',3,38.64,'SantÃ© Gourmet','Erling Skakkes gate 78','Stavern','','4110','Norway'),(10640,'WANDK',4,'1997-08-21 00:00:00','1997-09-18 00:00:00','1997-08-28 00:00:00',1,23.55,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart','','70563','Germany'),(10641,'HILAA',4,'1997-08-22 00:00:00','1997-09-19 00:00:00','1997-08-26 00:00:00',2,179.61,'HILARIÃ“N-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San CristÃ³bal','TÃ¡chira','5022','Venezuela'),(10642,'SIMOB',7,'1997-08-22 00:00:00','1997-09-19 00:00:00','1997-09-05 00:00:00',3,41.89,'Simons bistro','VinbÃ¦ltet 34','KÃ¸benhavn','','1734','Denmark'),(10643,'WILMK',6,'1997-08-25 00:00:00','1997-09-22 00:00:00','1997-09-02 00:00:00',1,29.46,'Wilman Kala','Keskuskatu 45','Helsinki','','21240','Finland'),(10644,'WELLI',3,'1997-08-25 00:00:00','1997-09-22 00:00:00','1997-09-01 00:00:00',2,0.14,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil'),(10645,'HANAR',4,'1997-08-26 00:00:00','1997-09-23 00:00:00','1997-09-02 00:00:00',1,12.41,'Hanari Carnes','Rua do PaÃ§o, 67','Rio de Janeiro','RJ','05454-876','Brazil'),(10646,'HUNGO',9,'1997-08-27 00:00:00','1997-10-08 00:00:00','1997-09-03 00:00:00',3,142.33,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork','','Ireland'),(10647,'QUEDE',4,'1997-08-27 00:00:00','1997-09-10 00:00:00','1997-09-03 00:00:00',2,45.54,'Que DelÃ­cia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil'),(10648,'RICAR',5,'1997-08-28 00:00:00','1997-10-09 00:00:00','1997-09-09 00:00:00',2,14.25,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil'),(10649,'MAISD',5,'1997-08-28 00:00:00','1997-09-25 00:00:00','1997-08-29 00:00:00',3,6.2,'Maison Dewey','Rue Joseph-Bens 532','Bruxelles','','B-1180','Belgium'),(10650,'FAMIA',5,'1997-08-29 00:00:00','1997-09-26 00:00:00','1997-09-03 00:00:00',3,176.81,'Familia Arquibaldo','Rua OrÃ³s, 92','SÃ£o Paulo','SP','05442-030','Brazil'),(10651,'WANDK',8,'1997-09-01 00:00:00','1997-09-29 00:00:00','1997-09-11 00:00:00',2,20.6,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart','','70563','Germany'),(10652,'GOURL',4,'1997-09-01 00:00:00','1997-09-29 00:00:00','1997-09-08 00:00:00',2,7.14,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil'),(10653,'FRANK',1,'1997-09-02 00:00:00','1997-09-30 00:00:00','1997-09-19 00:00:00',1,93.25,'Frankenversand','Berliner Platz 43','MÃ¼nchen','','80805','Germany'),(10654,'BERGS',5,'1997-09-02 00:00:00','1997-09-30 00:00:00','1997-09-11 00:00:00',1,55.26,'Berglunds snabbkÃ¶p','BerguvsvÃ¤gen  8','LuleÃ¥','','S-958 22','Sweden'),(10655,'REGGC',1,'1997-09-03 00:00:00','1997-10-01 00:00:00','1997-09-11 00:00:00',2,4.41,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia','','42100','Italy'),(10656,'GREAL',6,'1997-09-04 00:00:00','1997-10-02 00:00:00','1997-09-10 00:00:00',1,57.15,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA'),(10657,'SAVEA',2,'1997-09-04 00:00:00','1997-10-02 00:00:00','1997-09-15 00:00:00',2,352.69,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10658,'QUICK',4,'1997-09-05 00:00:00','1997-10-03 00:00:00','1997-09-08 00:00:00',1,364.15,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10659,'QUEEN',7,'1997-09-05 00:00:00','1997-10-03 00:00:00','1997-09-10 00:00:00',2,105.81,'Queen Cozinha','Alameda dos CanÃ rios, 891','SÃ£o Paulo','SP','05487-020','Brazil'),(10660,'HUNGC',8,'1997-09-08 00:00:00','1997-10-06 00:00:00','1997-10-15 00:00:00',1,111.29,'Hungry Coyote Import Store','City Center Plaza\r\n516 Main St.','Elgin','OR','97827','USA'),(10661,'HUNGO',7,'1997-09-09 00:00:00','1997-10-07 00:00:00','1997-09-15 00:00:00',3,17.55,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork','','Ireland'),(10662,'LONEP',3,'1997-09-09 00:00:00','1997-10-07 00:00:00','1997-09-18 00:00:00',2,1.28,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA'),(10663,'BONAP',2,'1997-09-10 00:00:00','1997-09-24 00:00:00','1997-10-03 00:00:00',2,113.15,'Bon app\'','12, rue des Bouchers','Marseille','','13008','France'),(10664,'FURIB',1,'1997-09-10 00:00:00','1997-10-08 00:00:00','1997-09-19 00:00:00',3,1.27,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa','','1675','Portugal'),(10665,'LONEP',1,'1997-09-11 00:00:00','1997-10-09 00:00:00','1997-09-17 00:00:00',2,26.31,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA'),(10666,'RICSU',7,'1997-09-12 00:00:00','1997-10-10 00:00:00','1997-09-22 00:00:00',2,232.42,'Richter Supermarkt','Starenweg 5','GenÃ¨ve','','1204','Switzerland'),(10667,'ERNSH',7,'1997-09-12 00:00:00','1997-10-10 00:00:00','1997-09-19 00:00:00',1,78.09,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10668,'WANDK',1,'1997-09-15 00:00:00','1997-10-13 00:00:00','1997-09-23 00:00:00',2,47.22,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart','','70563','Germany'),(10669,'SIMOB',2,'1997-09-15 00:00:00','1997-10-13 00:00:00','1997-09-22 00:00:00',1,24.39,'Simons bistro','VinbÃ¦ltet 34','KÃ¸benhavn','','1734','Denmark'),(10670,'FRANK',4,'1997-09-16 00:00:00','1997-10-14 00:00:00','1997-09-18 00:00:00',1,203.48,'Frankenversand','Berliner Platz 43','MÃ¼nchen','','80805','Germany'),(10671,'FRANR',1,'1997-09-17 00:00:00','1997-10-15 00:00:00','1997-09-24 00:00:00',1,30.34,'France restauration','54, rue Royale','Nantes','','44000','France'),(10672,'BERGS',9,'1997-09-17 00:00:00','1997-10-01 00:00:00','1997-09-26 00:00:00',2,95.75,'Berglunds snabbkÃ¶p','BerguvsvÃ¤gen  8','LuleÃ¥','','S-958 22','Sweden'),(10673,'WILMK',2,'1997-09-18 00:00:00','1997-10-16 00:00:00','1997-09-19 00:00:00',1,22.76,'Wilman Kala','Keskuskatu 45','Helsinki','','21240','Finland'),(10674,'ISLAT',4,'1997-09-18 00:00:00','1997-10-16 00:00:00','1997-09-30 00:00:00',2,0.9,'Island Trading','Garden House\r\nCrowther Way','Cowes','Isle of Wight','PO31 7PJ','UK'),(10675,'FRANK',5,'1997-09-19 00:00:00','1997-10-17 00:00:00','1997-09-23 00:00:00',2,31.85,'Frankenversand','Berliner Platz 43','MÃ¼nchen','','80805','Germany'),(10676,'TORTU',2,'1997-09-22 00:00:00','1997-10-20 00:00:00','1997-09-29 00:00:00',2,2.01,'Tortuga Restaurante','Avda. Azteca 123','MÃ©xico D.F.','','05033','Mexico'),(10677,'ANTON',1,'1997-09-22 00:00:00','1997-10-20 00:00:00','1997-09-26 00:00:00',3,4.03,'Antonio Moreno TaquerÃ­a','Mataderos  2312','MÃ©xico D.F.','','05023','Mexico'),(10678,'SAVEA',7,'1997-09-23 00:00:00','1997-10-21 00:00:00','1997-10-16 00:00:00',3,388.98,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10679,'BLONP',8,'1997-09-23 00:00:00','1997-10-21 00:00:00','1997-09-30 00:00:00',3,27.94,'Blondel pÃ¨re et fils','24, place KlÃ©ber','Strasbourg','','67000','France'),(10680,'OLDWO',1,'1997-09-24 00:00:00','1997-10-22 00:00:00','1997-09-26 00:00:00',1,26.61,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA'),(10681,'GREAL',3,'1997-09-25 00:00:00','1997-10-23 00:00:00','1997-09-30 00:00:00',3,76.13,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA'),(10682,'ANTON',3,'1997-09-25 00:00:00','1997-10-23 00:00:00','1997-10-01 00:00:00',2,36.13,'Antonio Moreno TaquerÃ­a','Mataderos  2312','MÃ©xico D.F.','','05023','Mexico'),(10683,'DUMON',2,'1997-09-26 00:00:00','1997-10-24 00:00:00','1997-10-01 00:00:00',1,4.4,'Du monde entier','67, rue des Cinquante Otages','Nantes','','44000','France'),(10684,'OTTIK',3,'1997-09-26 00:00:00','1997-10-24 00:00:00','1997-09-30 00:00:00',1,145.63,'Ottilies KÃ¤seladen','Mehrheimerstr. 369','KÃ¶ln','','50739','Germany'),(10685,'GOURL',4,'1997-09-29 00:00:00','1997-10-13 00:00:00','1997-10-03 00:00:00',2,33.75,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil'),(10686,'PICCO',2,'1997-09-30 00:00:00','1997-10-28 00:00:00','1997-10-08 00:00:00',1,96.5,'Piccolo und mehr','Geislweg 14','Salzburg','','5020','Austria'),(10687,'HUNGO',9,'1997-09-30 00:00:00','1997-10-28 00:00:00','1997-10-30 00:00:00',2,296.43,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork','','Ireland'),(10688,'VAFFE',4,'1997-10-01 00:00:00','1997-10-15 00:00:00','1997-10-07 00:00:00',2,299.09,'Vaffeljernet','SmagslÃ¸get 45','Ã…rhus','','8200','Denmark'),(10689,'BERGS',1,'1997-10-01 00:00:00','1997-10-29 00:00:00','1997-10-07 00:00:00',2,13.42,'Berglunds snabbkÃ¶p','BerguvsvÃ¤gen  8','LuleÃ¥','','S-958 22','Sweden'),(10690,'HANAR',1,'1997-10-02 00:00:00','1997-10-30 00:00:00','1997-10-03 00:00:00',1,15.8,'Hanari Carnes','Rua do PaÃ§o, 67','Rio de Janeiro','RJ','05454-876','Brazil'),(10691,'QUICK',2,'1997-10-03 00:00:00','1997-11-14 00:00:00','1997-10-22 00:00:00',2,810.05,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10692,'WILMK',4,'1997-10-03 00:00:00','1997-10-31 00:00:00','1997-10-13 00:00:00',3,61.02,'Wilman Kala','Keskuskatu 45','Helsinki','','21240','Finland'),(10693,'WHITC',3,'1997-10-06 00:00:00','1997-10-20 00:00:00','1997-10-10 00:00:00',3,139.34,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA'),(10694,'QUICK',8,'1997-10-06 00:00:00','1997-11-03 00:00:00','1997-10-09 00:00:00',3,398.36,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10695,'WILMK',7,'1997-10-07 00:00:00','1997-11-18 00:00:00','1997-10-14 00:00:00',1,16.72,'Wilman Kala','Keskuskatu 45','Helsinki','','21240','Finland'),(10696,'WHITC',8,'1997-10-08 00:00:00','1997-11-19 00:00:00','1997-10-14 00:00:00',3,102.55,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA'),(10697,'LINOD',3,'1997-10-08 00:00:00','1997-11-05 00:00:00','1997-10-14 00:00:00',1,45.52,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela'),(10698,'ERNSH',4,'1997-10-09 00:00:00','1997-11-06 00:00:00','1997-10-17 00:00:00',1,272.47,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10699,'MORGK',3,'1997-10-09 00:00:00','1997-11-06 00:00:00','1997-10-13 00:00:00',3,0.58,'Morgenstern Gesundkost','Heerstr. 22','Leipzig','','04179','Germany'),(10700,'SAVEA',3,'1997-10-10 00:00:00','1997-11-07 00:00:00','1997-10-16 00:00:00',1,65.1,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10701,'HUNGO',6,'1997-10-13 00:00:00','1997-10-27 00:00:00','1997-10-15 00:00:00',3,220.31,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork','','Ireland'),(10702,'WHITC',4,'1997-10-13 00:00:00','1997-11-24 00:00:00','1997-10-21 00:00:00',1,23.94,'White Clover Markets','305 - 14th Ave. S.\r\nSuite 3B','Seattle','WA','98128','USA'),(10703,'FOLKO',6,'1997-10-14 00:00:00','1997-11-11 00:00:00','1997-10-20 00:00:00',2,152.3,'Folk och fÃ¤ HB','Ã…kergatan 24','BrÃ¤cke','','S-844 67','Sweden'),(10704,'QUEEN',6,'1997-10-14 00:00:00','1997-11-11 00:00:00','1997-11-07 00:00:00',1,4.78,'Queen Cozinha','Alameda dos CanÃ rios, 891','SÃ£o Paulo','SP','05487-020','Brazil'),(10705,'HILAA',9,'1997-10-15 00:00:00','1997-11-12 00:00:00','1997-11-18 00:00:00',2,3.52,'HILARIÃ“N-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San CristÃ³bal','TÃ¡chira','5022','Venezuela'),(10706,'OLDWO',8,'1997-10-16 00:00:00','1997-11-13 00:00:00','1997-10-21 00:00:00',3,135.63,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA'),(10707,'AROUT',4,'1997-10-16 00:00:00','1997-10-30 00:00:00','1997-10-23 00:00:00',3,21.74,'Around the Horn','Brook Farm\r\nStratford St. Mary','Colchester','Essex','CO7 6JX','UK'),(10708,'THEBI',6,'1997-10-17 00:00:00','1997-11-28 00:00:00','1997-11-05 00:00:00',2,2.96,'The Big Cheese','89 Jefferson Way\r\nSuite 2','Portland','OR','97201','USA'),(10709,'GOURL',1,'1997-10-17 00:00:00','1997-11-14 00:00:00','1997-11-20 00:00:00',3,210.8,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil'),(10710,'FRANS',1,'1997-10-20 00:00:00','1997-11-17 00:00:00','1997-10-23 00:00:00',1,4.98,'Franchi S.p.A.','Via Monte Bianco 34','Torino','','10100','Italy'),(10711,'SAVEA',5,'1997-10-21 00:00:00','1997-12-02 00:00:00','1997-10-29 00:00:00',2,52.41,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10712,'HUNGO',3,'1997-10-21 00:00:00','1997-11-18 00:00:00','1997-10-31 00:00:00',1,89.93,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork','','Ireland'),(10713,'SAVEA',1,'1997-10-22 00:00:00','1997-11-19 00:00:00','1997-10-24 00:00:00',1,167.05,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10714,'SAVEA',5,'1997-10-22 00:00:00','1997-11-19 00:00:00','1997-10-27 00:00:00',3,24.49,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10715,'BONAP',3,'1997-10-23 00:00:00','1997-11-06 00:00:00','1997-10-29 00:00:00',1,63.2,'Bon app\'','12, rue des Bouchers','Marseille','','13008','France'),(10716,'RANCH',4,'1997-10-24 00:00:00','1997-11-21 00:00:00','1997-10-27 00:00:00',2,22.57,'Rancho grande','Av. del Libertador 900','Buenos Aires','','1010','Argentina'),(10717,'FRANK',1,'1997-10-24 00:00:00','1997-11-21 00:00:00','1997-10-29 00:00:00',2,59.25,'Frankenversand','Berliner Platz 43','MÃ¼nchen','','80805','Germany'),(10718,'KOENE',1,'1997-10-27 00:00:00','1997-11-24 00:00:00','1997-10-29 00:00:00',3,170.88,'KÃ¶niglich Essen','Maubelstr. 90','Brandenburg','','14776','Germany'),(10719,'LETSS',8,'1997-10-27 00:00:00','1997-11-24 00:00:00','1997-11-05 00:00:00',2,51.44,'Let\'s Stop N Shop','87 Polk St.\r\nSuite 5','San Francisco','CA','94117','USA'),(10720,'QUEDE',8,'1997-10-28 00:00:00','1997-11-11 00:00:00','1997-11-05 00:00:00',2,9.53,'Que DelÃ­cia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil'),(10721,'QUICK',5,'1997-10-29 00:00:00','1997-11-26 00:00:00','1997-10-31 00:00:00',3,48.92,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10722,'SAVEA',8,'1997-10-29 00:00:00','1997-12-10 00:00:00','1997-11-04 00:00:00',1,74.58,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10723,'WHITC',3,'1997-10-30 00:00:00','1997-11-27 00:00:00','1997-11-25 00:00:00',1,21.72,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA'),(10724,'MEREP',8,'1997-10-30 00:00:00','1997-12-11 00:00:00','1997-11-05 00:00:00',2,57.75,'MÃ¨re Paillarde','43 rue St. Laurent','MontrÃ©al','QuÃ©bec','H1J 1C3','Canada'),(10725,'FAMIA',4,'1997-10-31 00:00:00','1997-11-28 00:00:00','1997-11-05 00:00:00',3,10.83,'Familia Arquibaldo','Rua OrÃ³s, 92','SÃ£o Paulo','SP','05442-030','Brazil'),(10726,'EASTC',4,'1997-11-03 00:00:00','1997-11-17 00:00:00','1997-12-05 00:00:00',1,16.56,'Eastern Connection','35 King George','London','','WX3 6FW','UK'),(10727,'REGGC',2,'1997-11-03 00:00:00','1997-12-01 00:00:00','1997-12-05 00:00:00',1,89.9,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia','','42100','Italy'),(10728,'QUEEN',4,'1997-11-04 00:00:00','1997-12-02 00:00:00','1997-11-11 00:00:00',2,58.33,'Queen Cozinha','Alameda dos CanÃ rios, 891','SÃ£o Paulo','SP','05487-020','Brazil'),(10729,'LINOD',8,'1997-11-04 00:00:00','1997-12-16 00:00:00','1997-11-14 00:00:00',3,141.06,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela'),(10730,'BONAP',5,'1997-11-05 00:00:00','1997-12-03 00:00:00','1997-11-14 00:00:00',1,20.12,'Bon app\'','12, rue des Bouchers','Marseille','','13008','France'),(10731,'CHOPS',7,'1997-11-06 00:00:00','1997-12-04 00:00:00','1997-11-14 00:00:00',1,96.65,'Chop-suey Chinese','Hauptstr. 31','Bern','','3012','Switzerland'),(10732,'BONAP',3,'1997-11-06 00:00:00','1997-12-04 00:00:00','1997-11-07 00:00:00',1,16.97,'Bon app\'','12, rue des Bouchers','Marseille','','13008','France'),(10733,'BERGS',1,'1997-11-07 00:00:00','1997-12-05 00:00:00','1997-11-10 00:00:00',3,110.11,'Berglunds snabbkÃ¶p','BerguvsvÃ¤gen  8','LuleÃ¥','','S-958 22','Sweden'),(10734,'GOURL',2,'1997-11-07 00:00:00','1997-12-05 00:00:00','1997-11-12 00:00:00',3,1.63,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil'),(10735,'LETSS',6,'1997-11-10 00:00:00','1997-12-08 00:00:00','1997-11-21 00:00:00',2,45.97,'Let\'s Stop N Shop','87 Polk St.\r\nSuite 5','San Francisco','CA','94117','USA'),(10736,'HUNGO',9,'1997-11-11 00:00:00','1997-12-09 00:00:00','1997-11-21 00:00:00',2,44.1,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork','','Ireland'),(10737,'VINET',2,'1997-11-11 00:00:00','1997-12-09 00:00:00','1997-11-18 00:00:00',2,7.79,'Vins et alcools Chevalier','59 rue de l\'Abbaye','Reims','','51100','France'),(10738,'SPECD',2,'1997-11-12 00:00:00','1997-12-10 00:00:00','1997-11-18 00:00:00',1,2.91,'SpÃ©cialitÃ©s du monde','25, rue Lauriston','Paris','','75016','France'),(10739,'VINET',3,'1997-11-12 00:00:00','1997-12-10 00:00:00','1997-11-17 00:00:00',3,11.08,'Vins et alcools Chevalier','59 rue de l\'Abbaye','Reims','','51100','France'),(10740,'WHITC',4,'1997-11-13 00:00:00','1997-12-11 00:00:00','1997-11-25 00:00:00',2,81.88,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA'),(10741,'AROUT',4,'1997-11-14 00:00:00','1997-11-28 00:00:00','1997-11-18 00:00:00',3,10.96,'Around the Horn','Brook Farm\r\nStratford St. Mary','Colchester','Essex','CO7 6JX','UK'),(10742,'BOTTM',3,'1997-11-14 00:00:00','1997-12-12 00:00:00','1997-11-18 00:00:00',3,243.73,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada'),(10743,'AROUT',1,'1997-11-17 00:00:00','1997-12-15 00:00:00','1997-11-21 00:00:00',2,23.72,'Around the Horn','Brook Farm\r\nStratford St. Mary','Colchester','Essex','CO7 6JX','UK'),(10744,'VAFFE',6,'1997-11-17 00:00:00','1997-12-15 00:00:00','1997-11-24 00:00:00',1,69.19,'Vaffeljernet','SmagslÃ¸get 45','Ã…rhus','','8200','Denmark'),(10745,'QUICK',9,'1997-11-18 00:00:00','1997-12-16 00:00:00','1997-11-27 00:00:00',1,3.52,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10746,'CHOPS',1,'1997-11-19 00:00:00','1997-12-17 00:00:00','1997-11-21 00:00:00',3,31.43,'Chop-suey Chinese','Hauptstr. 31','Bern','','3012','Switzerland'),(10747,'PICCO',6,'1997-11-19 00:00:00','1997-12-17 00:00:00','1997-11-26 00:00:00',1,117.33,'Piccolo und mehr','Geislweg 14','Salzburg','','5020','Austria'),(10748,'SAVEA',3,'1997-11-20 00:00:00','1997-12-18 00:00:00','1997-11-28 00:00:00',1,232.55,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10749,'ISLAT',4,'1997-11-20 00:00:00','1997-12-18 00:00:00','1997-12-19 00:00:00',2,61.53,'Island Trading','Garden House\r\nCrowther Way','Cowes','Isle of Wight','PO31 7PJ','UK'),(10750,'WARTH',9,'1997-11-21 00:00:00','1997-12-19 00:00:00','1997-11-24 00:00:00',1,79.3,'Wartian Herkku','Torikatu 38','Oulu','','90110','Finland'),(10751,'RICSU',3,'1997-11-24 00:00:00','1997-12-22 00:00:00','1997-12-03 00:00:00',3,130.79,'Richter Supermarkt','Starenweg 5','GenÃ¨ve','','1204','Switzerland'),(10752,'NORTS',2,'1997-11-24 00:00:00','1997-12-22 00:00:00','1997-11-28 00:00:00',3,1.39,'North/South','South House\r\n300 Queensbridge','London','','SW7 1RZ','UK'),(10753,'FRANS',3,'1997-11-25 00:00:00','1997-12-23 00:00:00','1997-11-27 00:00:00',1,7.7,'Franchi S.p.A.','Via Monte Bianco 34','Torino','','10100','Italy'),(10754,'MAGAA',6,'1997-11-25 00:00:00','1997-12-23 00:00:00','1997-11-27 00:00:00',3,2.38,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo','','24100','Italy'),(10755,'BONAP',4,'1997-11-26 00:00:00','1997-12-24 00:00:00','1997-11-28 00:00:00',2,16.71,'Bon app\'','12, rue des Bouchers','Marseille','','13008','France'),(10756,'SPLIR',8,'1997-11-27 00:00:00','1997-12-25 00:00:00','1997-12-02 00:00:00',2,73.21,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA'),(10757,'SAVEA',6,'1997-11-27 00:00:00','1997-12-25 00:00:00','1997-12-15 00:00:00',1,8.19,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10758,'RICSU',3,'1997-11-28 00:00:00','1997-12-26 00:00:00','1997-12-04 00:00:00',3,138.17,'Richter Supermarkt','Starenweg 5','GenÃ¨ve','','1204','Switzerland'),(10759,'ANATR',3,'1997-11-28 00:00:00','1997-12-26 00:00:00','1997-12-12 00:00:00',3,11.99,'Ana Trujillo Emparedados y helados','Avda. de la ConstituciÃ³n 2222','MÃ©xico D.F.','','05021','Mexico'),(10760,'MAISD',4,'1997-12-01 00:00:00','1997-12-29 00:00:00','1997-12-10 00:00:00',1,155.64,'Maison Dewey','Rue Joseph-Bens 532','Bruxelles','','B-1180','Belgium'),(10761,'RATTC',5,'1997-12-02 00:00:00','1997-12-30 00:00:00','1997-12-08 00:00:00',2,18.66,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA'),(10762,'FOLKO',3,'1997-12-02 00:00:00','1997-12-30 00:00:00','1997-12-09 00:00:00',1,328.74,'Folk och fÃ¤ HB','Ã…kergatan 24','BrÃ¤cke','','S-844 67','Sweden'),(10763,'FOLIG',3,'1997-12-03 00:00:00','1997-12-31 00:00:00','1997-12-08 00:00:00',3,37.35,'Folies gourmandes','184, chaussÃ©e de Tournai','Lille','','59000','France'),(10764,'ERNSH',6,'1997-12-03 00:00:00','1997-12-31 00:00:00','1997-12-08 00:00:00',3,145.45,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10765,'QUICK',3,'1997-12-04 00:00:00','1998-01-01 00:00:00','1997-12-09 00:00:00',3,42.74,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10766,'OTTIK',4,'1997-12-05 00:00:00','1998-01-02 00:00:00','1997-12-09 00:00:00',1,157.55,'Ottilies KÃ¤seladen','Mehrheimerstr. 369','KÃ¶ln','','50739','Germany'),(10767,'SUPRD',4,'1997-12-05 00:00:00','1998-01-02 00:00:00','1997-12-15 00:00:00',3,1.59,'SuprÃªmes dÃ©lices','Boulevard Tirou, 255','Charleroi','','B-6000','Belgium'),(10768,'AROUT',3,'1997-12-08 00:00:00','1998-01-05 00:00:00','1997-12-15 00:00:00',2,146.32,'Around the Horn','Brook Farm\r\nStratford St. Mary','Colchester','Essex','CO7 6JX','UK'),(10769,'VAFFE',3,'1997-12-08 00:00:00','1998-01-05 00:00:00','1997-12-12 00:00:00',1,65.06,'Vaffeljernet','SmagslÃ¸get 45','Ã…rhus','','8200','Denmark'),(10770,'HANAR',8,'1997-12-09 00:00:00','1998-01-06 00:00:00','1997-12-17 00:00:00',3,5.32,'Hanari Carnes','Rua do PaÃ§o, 67','Rio de Janeiro','RJ','05454-876','Brazil'),(10771,'ERNSH',9,'1997-12-10 00:00:00','1998-01-07 00:00:00','1998-01-02 00:00:00',2,11.19,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10772,'LEHMS',3,'1997-12-10 00:00:00','1998-01-07 00:00:00','1997-12-19 00:00:00',2,91.28,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M. ','','60528','Germany'),(10773,'ERNSH',1,'1997-12-11 00:00:00','1998-01-08 00:00:00','1997-12-16 00:00:00',3,96.43,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10774,'FOLKO',4,'1997-12-11 00:00:00','1997-12-25 00:00:00','1997-12-12 00:00:00',1,48.2,'Folk och fÃ¤ HB','Ã…kergatan 24','BrÃ¤cke','','S-844 67','Sweden'),(10775,'THECR',7,'1997-12-12 00:00:00','1998-01-09 00:00:00','1997-12-26 00:00:00',1,20.25,'The Cracker Box','55 Grizzly Peak Rd.','Butte','MT','59801','USA'),(10776,'ERNSH',1,'1997-12-15 00:00:00','1998-01-12 00:00:00','1997-12-18 00:00:00',3,351.53,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10777,'GOURL',7,'1997-12-15 00:00:00','1997-12-29 00:00:00','1998-01-21 00:00:00',2,3.01,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil'),(10778,'BERGS',3,'1997-12-16 00:00:00','1998-01-13 00:00:00','1997-12-24 00:00:00',1,6.79,'Berglunds snabbkÃ¶p','BerguvsvÃ¤gen  8','LuleÃ¥','','S-958 22','Sweden'),(10779,'MORGK',3,'1997-12-16 00:00:00','1998-01-13 00:00:00','1998-01-14 00:00:00',2,58.13,'Morgenstern Gesundkost','Heerstr. 22','Leipzig','','04179','Germany'),(10780,'LILAS',2,'1997-12-16 00:00:00','1997-12-30 00:00:00','1997-12-25 00:00:00',1,42.13,'LILA-Supermercado','Carrera 52 con Ave. BolÃ­var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela'),(10781,'WARTH',2,'1997-12-17 00:00:00','1998-01-14 00:00:00','1997-12-19 00:00:00',3,73.16,'Wartian Herkku','Torikatu 38','Oulu','','90110','Finland'),(10782,'CACTU',9,'1997-12-17 00:00:00','1998-01-14 00:00:00','1997-12-22 00:00:00',3,1.1,'Cactus Comidas para llevar','Cerrito 333','Buenos Aires','','1010','Argentina'),(10783,'HANAR',4,'1997-12-18 00:00:00','1998-01-15 00:00:00','1997-12-19 00:00:00',2,124.98,'Hanari Carnes','Rua do PaÃ§o, 67','Rio de Janeiro','RJ','05454-876','Brazil'),(10784,'MAGAA',4,'1997-12-18 00:00:00','1998-01-15 00:00:00','1997-12-22 00:00:00',3,70.09,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo','','24100','Italy'),(10785,'GROSR',1,'1997-12-18 00:00:00','1998-01-15 00:00:00','1997-12-24 00:00:00',3,1.51,'GROSELLA-Restaurante','5Âª Ave. Los Palos Grandes','Caracas','DF','1081','Venezuela'),(10786,'QUEEN',8,'1997-12-19 00:00:00','1998-01-16 00:00:00','1997-12-23 00:00:00',1,110.87,'Queen Cozinha','Alameda dos CanÃ rios, 891','SÃ£o Paulo','SP','05487-020','Brazil'),(10787,'LAMAI',2,'1997-12-19 00:00:00','1998-01-02 00:00:00','1997-12-26 00:00:00',1,249.93,'La maison d\'Asie','1 rue Alsace-Lorraine','Toulouse','','31000','France'),(10788,'QUICK',1,'1997-12-22 00:00:00','1998-01-19 00:00:00','1998-01-19 00:00:00',2,42.7,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10789,'FOLIG',1,'1997-12-22 00:00:00','1998-01-19 00:00:00','1997-12-31 00:00:00',2,100.6,'Folies gourmandes','184, chaussÃ©e de Tournai','Lille','','59000','France'),(10790,'GOURL',6,'1997-12-22 00:00:00','1998-01-19 00:00:00','1997-12-26 00:00:00',1,28.23,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil'),(10791,'FRANK',6,'1997-12-23 00:00:00','1998-01-20 00:00:00','1998-01-01 00:00:00',2,16.85,'Frankenversand','Berliner Platz 43','MÃ¼nchen','','80805','Germany'),(10792,'WOLZA',1,'1997-12-23 00:00:00','1998-01-20 00:00:00','1997-12-31 00:00:00',3,23.79,'Wolski Zajazd','ul. Filtrowa 68','Warszawa','','01-012','Poland'),(10793,'AROUT',3,'1997-12-24 00:00:00','1998-01-21 00:00:00','1998-01-08 00:00:00',3,4.52,'Around the Horn','Brook Farm\r\nStratford St. Mary','Colchester','Essex','CO7 6JX','UK'),(10794,'QUEDE',6,'1997-12-24 00:00:00','1998-01-21 00:00:00','1998-01-02 00:00:00',1,21.49,'Que DelÃ­cia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil'),(10795,'ERNSH',8,'1997-12-24 00:00:00','1998-01-21 00:00:00','1998-01-20 00:00:00',2,126.66,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10796,'HILAA',3,'1997-12-25 00:00:00','1998-01-22 00:00:00','1998-01-14 00:00:00',1,26.52,'HILARIÃ“N-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San CristÃ³bal','TÃ¡chira','5022','Venezuela'),(10797,'DRACD',7,'1997-12-25 00:00:00','1998-01-22 00:00:00','1998-01-05 00:00:00',2,33.35,'Drachenblut Delikatessen','Walserweg 21','Aachen','','52066','Germany'),(10798,'ISLAT',2,'1997-12-26 00:00:00','1998-01-23 00:00:00','1998-01-05 00:00:00',1,2.33,'Island Trading','Garden House\r\nCrowther Way','Cowes','Isle of Wight','PO31 7PJ','UK'),(10799,'KOENE',9,'1997-12-26 00:00:00','1998-02-06 00:00:00','1998-01-05 00:00:00',3,30.76,'KÃ¶niglich Essen','Maubelstr. 90','Brandenburg','','14776','Germany'),(10800,'SEVES',1,'1997-12-26 00:00:00','1998-01-23 00:00:00','1998-01-05 00:00:00',3,137.44,'Seven Seas Imports','90 Wadhurst Rd.','London','','OX15 4NB','UK'),(10801,'BOLID',4,'1997-12-29 00:00:00','1998-01-26 00:00:00','1997-12-31 00:00:00',2,97.09,'BÃ³lido Comidas preparadas','C/ Araquil, 67','Madrid','','28023','Spain'),(10802,'SIMOB',4,'1997-12-29 00:00:00','1998-01-26 00:00:00','1998-01-02 00:00:00',2,257.26,'Simons bistro','VinbÃ¦ltet 34','KÃ¸benhavn','','1734','Denmark'),(10803,'WELLI',4,'1997-12-30 00:00:00','1998-01-27 00:00:00','1998-01-06 00:00:00',1,55.23,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil'),(10804,'SEVES',6,'1997-12-30 00:00:00','1998-01-27 00:00:00','1998-01-07 00:00:00',2,27.33,'Seven Seas Imports','90 Wadhurst Rd.','London','','OX15 4NB','UK'),(10805,'THEBI',2,'1997-12-30 00:00:00','1998-01-27 00:00:00','1998-01-09 00:00:00',3,237.34,'The Big Cheese','89 Jefferson Way\r\nSuite 2','Portland','OR','97201','USA'),(10806,'VICTE',3,'1997-12-31 00:00:00','1998-01-28 00:00:00','1998-01-05 00:00:00',2,22.11,'Victuailles en stock','2, rue du Commerce','Lyon','','69004','France'),(10807,'FRANS',4,'1997-12-31 00:00:00','1998-01-28 00:00:00','1998-01-30 00:00:00',1,1.36,'Franchi S.p.A.','Via Monte Bianco 34','Torino','','10100','Italy'),(10808,'OLDWO',2,'1998-01-01 00:00:00','1998-01-29 00:00:00','1998-01-09 00:00:00',3,45.53,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA'),(10809,'WELLI',7,'1998-01-01 00:00:00','1998-01-29 00:00:00','1998-01-07 00:00:00',1,4.87,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil'),(10810,'LAUGB',2,'1998-01-01 00:00:00','1998-01-29 00:00:00','1998-01-07 00:00:00',3,4.33,'Laughing Bacchus Wine Cellars','2319 Elm St.','Vancouver','BC','V3F 2K1','Canada'),(10811,'LINOD',8,'1998-01-02 00:00:00','1998-01-30 00:00:00','1998-01-08 00:00:00',1,31.22,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela'),(10812,'REGGC',5,'1998-01-02 00:00:00','1998-01-30 00:00:00','1998-01-12 00:00:00',1,59.78,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia','','42100','Italy'),(10813,'RICAR',1,'1998-01-05 00:00:00','1998-02-02 00:00:00','1998-01-09 00:00:00',1,47.38,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil'),(10814,'VICTE',3,'1998-01-05 00:00:00','1998-02-02 00:00:00','1998-01-14 00:00:00',3,130.94,'Victuailles en stock','2, rue du Commerce','Lyon','','69004','France'),(10815,'SAVEA',2,'1998-01-05 00:00:00','1998-02-02 00:00:00','1998-01-14 00:00:00',3,14.62,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10816,'GREAL',4,'1998-01-06 00:00:00','1998-02-03 00:00:00','1998-02-04 00:00:00',2,719.78,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA'),(10817,'KOENE',3,'1998-01-06 00:00:00','1998-01-20 00:00:00','1998-01-13 00:00:00',2,306.07,'KÃ¶niglich Essen','Maubelstr. 90','Brandenburg','','14776','Germany'),(10818,'MAGAA',7,'1998-01-07 00:00:00','1998-02-04 00:00:00','1998-01-12 00:00:00',3,65.48,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo','','24100','Italy'),(10819,'CACTU',2,'1998-01-07 00:00:00','1998-02-04 00:00:00','1998-01-16 00:00:00',3,19.76,'Cactus Comidas para llevar','Cerrito 333','Buenos Aires','','1010','Argentina'),(10820,'RATTC',3,'1998-01-07 00:00:00','1998-02-04 00:00:00','1998-01-13 00:00:00',2,37.52,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA'),(10821,'SPLIR',1,'1998-01-08 00:00:00','1998-02-05 00:00:00','1998-01-15 00:00:00',1,36.68,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA'),(10822,'TRAIH',6,'1998-01-08 00:00:00','1998-02-05 00:00:00','1998-01-16 00:00:00',3,7,'Trail\'s Head Gourmet Provisioners','722 DaVinci Blvd.','Kirkland','WA','98034','USA'),(10823,'LILAS',5,'1998-01-09 00:00:00','1998-02-06 00:00:00','1998-01-13 00:00:00',2,163.97,'LILA-Supermercado','Carrera 52 con Ave. BolÃ­var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela'),(10824,'FOLKO',8,'1998-01-09 00:00:00','1998-02-06 00:00:00','1998-01-30 00:00:00',1,1.23,'Folk och fÃ¤ HB','Ã…kergatan 24','BrÃ¤cke','','S-844 67','Sweden'),(10825,'DRACD',1,'1998-01-09 00:00:00','1998-02-06 00:00:00','1998-01-14 00:00:00',1,79.25,'Drachenblut Delikatessen','Walserweg 21','Aachen','','52066','Germany'),(10826,'BLONP',6,'1998-01-12 00:00:00','1998-02-09 00:00:00','1998-02-06 00:00:00',1,7.09,'Blondel pÃ¨re et fils','24, place KlÃ©ber','Strasbourg','','67000','France'),(10827,'BONAP',1,'1998-01-12 00:00:00','1998-01-26 00:00:00','1998-02-06 00:00:00',2,63.54,'Bon app\'','12, rue des Bouchers','Marseille','','13008','France'),(10828,'RANCH',9,'1998-01-13 00:00:00','1998-01-27 00:00:00','1998-02-04 00:00:00',1,90.85,'Rancho grande','Av. del Libertador 900','Buenos Aires','','1010','Argentina'),(10829,'ISLAT',9,'1998-01-13 00:00:00','1998-02-10 00:00:00','1998-01-23 00:00:00',1,154.72,'Island Trading','Garden House\r\nCrowther Way','Cowes','Isle of Wight','PO31 7PJ','UK'),(10830,'TRADH',4,'1998-01-13 00:00:00','1998-02-24 00:00:00','1998-01-21 00:00:00',2,81.83,'TradiÃ§Ã£o Hipermercados','Av. InÃªs de Castro, 414','SÃ£o Paulo','SP','05634-030','Brazil'),(10831,'SANTG',3,'1998-01-14 00:00:00','1998-02-11 00:00:00','1998-01-23 00:00:00',2,72.19,'SantÃ© Gourmet','Erling Skakkes gate 78','Stavern','','4110','Norway'),(10832,'LAMAI',2,'1998-01-14 00:00:00','1998-02-11 00:00:00','1998-01-19 00:00:00',2,43.26,'La maison d\'Asie','1 rue Alsace-Lorraine','Toulouse','','31000','France'),(10833,'OTTIK',6,'1998-01-15 00:00:00','1998-02-12 00:00:00','1998-01-23 00:00:00',2,71.49,'Ottilies KÃ¤seladen','Mehrheimerstr. 369','KÃ¶ln','','50739','Germany'),(10834,'TRADH',1,'1998-01-15 00:00:00','1998-02-12 00:00:00','1998-01-19 00:00:00',3,29.78,'TradiÃ§Ã£o Hipermercados','Av. InÃªs de Castro, 414','SÃ£o Paulo','SP','05634-030','Brazil'),(10835,'TRAIH',1,'1998-01-15 00:00:00','1998-02-12 00:00:00','1998-01-21 00:00:00',3,69.53,'Trail\'s Head Gourmet Provisioners','722 DaVinci Blvd.','Kirkland','WA','98034','USA'),(10836,'ERNSH',7,'1998-01-16 00:00:00','1998-02-13 00:00:00','1998-01-21 00:00:00',1,411.88,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10837,'BERGS',9,'1998-01-16 00:00:00','1998-02-13 00:00:00','1998-01-23 00:00:00',3,13.32,'Berglunds snabbkÃ¶p','BerguvsvÃ¤gen  8','LuleÃ¥','','S-958 22','Sweden'),(10838,'LINOD',3,'1998-01-19 00:00:00','1998-02-16 00:00:00','1998-01-23 00:00:00',3,59.28,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela'),(10839,'TRADH',3,'1998-01-19 00:00:00','1998-02-16 00:00:00','1998-01-22 00:00:00',3,35.43,'TradiÃ§Ã£o Hipermercados','Av. InÃªs de Castro, 414','SÃ£o Paulo','SP','05634-030','Brazil'),(10840,'LINOD',4,'1998-01-19 00:00:00','1998-03-02 00:00:00','1998-02-16 00:00:00',2,2.71,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela'),(10841,'SUPRD',5,'1998-01-20 00:00:00','1998-02-17 00:00:00','1998-01-29 00:00:00',2,424.3,'SuprÃªmes dÃ©lices','Boulevard Tirou, 255','Charleroi','','B-6000','Belgium'),(10842,'TORTU',1,'1998-01-20 00:00:00','1998-02-17 00:00:00','1998-01-29 00:00:00',3,54.42,'Tortuga Restaurante','Avda. Azteca 123','MÃ©xico D.F.','','05033','Mexico'),(10843,'VICTE',4,'1998-01-21 00:00:00','1998-02-18 00:00:00','1998-01-26 00:00:00',2,9.26,'Victuailles en stock','2, rue du Commerce','Lyon','','69004','France'),(10844,'PICCO',8,'1998-01-21 00:00:00','1998-02-18 00:00:00','1998-01-26 00:00:00',2,25.22,'Piccolo und mehr','Geislweg 14','Salzburg','','5020','Austria'),(10845,'QUICK',8,'1998-01-21 00:00:00','1998-02-04 00:00:00','1998-01-30 00:00:00',1,212.98,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10846,'SUPRD',2,'1998-01-22 00:00:00','1998-03-05 00:00:00','1998-01-23 00:00:00',3,56.46,'SuprÃªmes dÃ©lices','Boulevard Tirou, 255','Charleroi','','B-6000','Belgium'),(10847,'SAVEA',4,'1998-01-22 00:00:00','1998-02-05 00:00:00','1998-02-10 00:00:00',3,487.57,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10848,'CONSH',7,'1998-01-23 00:00:00','1998-02-20 00:00:00','1998-01-29 00:00:00',2,38.24,'Consolidated Holdings','Berkeley Gardens\r\n12  Brewery ','London','','WX1 6LT','UK'),(10849,'KOENE',9,'1998-01-23 00:00:00','1998-02-20 00:00:00','1998-01-30 00:00:00',2,0.56,'KÃ¶niglich Essen','Maubelstr. 90','Brandenburg','','14776','Germany'),(10850,'VICTE',1,'1998-01-23 00:00:00','1998-03-06 00:00:00','1998-01-30 00:00:00',1,49.19,'Victuailles en stock','2, rue du Commerce','Lyon','','69004','France'),(10851,'RICAR',5,'1998-01-26 00:00:00','1998-02-23 00:00:00','1998-02-02 00:00:00',1,160.55,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil'),(10852,'RATTC',8,'1998-01-26 00:00:00','1998-02-09 00:00:00','1998-01-30 00:00:00',1,174.05,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA'),(10853,'BLAUS',9,'1998-01-27 00:00:00','1998-02-24 00:00:00','1998-02-03 00:00:00',2,53.83,'Blauer See Delikatessen','Forsterstr. 57','Mannheim','','68306','Germany'),(10854,'ERNSH',3,'1998-01-27 00:00:00','1998-02-24 00:00:00','1998-02-05 00:00:00',2,100.22,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10855,'OLDWO',3,'1998-01-27 00:00:00','1998-02-24 00:00:00','1998-02-04 00:00:00',1,170.97,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA'),(10856,'ANTON',3,'1998-01-28 00:00:00','1998-02-25 00:00:00','1998-02-10 00:00:00',2,58.43,'Antonio Moreno TaquerÃ­a','Mataderos  2312','MÃ©xico D.F.','','05023','Mexico'),(10857,'BERGS',8,'1998-01-28 00:00:00','1998-02-25 00:00:00','1998-02-06 00:00:00',2,188.85,'Berglunds snabbkÃ¶p','BerguvsvÃ¤gen  8','LuleÃ¥','','S-958 22','Sweden'),(10858,'LACOR',2,'1998-01-29 00:00:00','1998-02-26 00:00:00','1998-02-03 00:00:00',1,52.51,'La corne d\'abondance','67, avenue de l\'Europe','Versailles','','78000','France'),(10859,'FRANK',1,'1998-01-29 00:00:00','1998-02-26 00:00:00','1998-02-02 00:00:00',2,76.1,'Frankenversand','Berliner Platz 43','MÃ¼nchen','','80805','Germany'),(10860,'FRANR',3,'1998-01-29 00:00:00','1998-02-26 00:00:00','1998-02-04 00:00:00',3,19.26,'France restauration','54, rue Royale','Nantes','','44000','France'),(10861,'WHITC',4,'1998-01-30 00:00:00','1998-02-27 00:00:00','1998-02-17 00:00:00',2,14.93,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA'),(10862,'LEHMS',8,'1998-01-30 00:00:00','1998-03-13 00:00:00','1998-02-02 00:00:00',2,53.23,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M. ','','60528','Germany'),(10863,'HILAA',4,'1998-02-02 00:00:00','1998-03-02 00:00:00','1998-02-17 00:00:00',2,30.26,'HILARIÃ“N-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San CristÃ³bal','TÃ¡chira','5022','Venezuela'),(10864,'AROUT',4,'1998-02-02 00:00:00','1998-03-02 00:00:00','1998-02-09 00:00:00',2,3.04,'Around the Horn','Brook Farm\r\nStratford St. Mary','Colchester','Essex','CO7 6JX','UK'),(10865,'QUICK',2,'1998-02-02 00:00:00','1998-02-16 00:00:00','1998-02-12 00:00:00',1,348.14,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10866,'BERGS',5,'1998-02-03 00:00:00','1998-03-03 00:00:00','1998-02-12 00:00:00',1,109.11,'Berglunds snabbkÃ¶p','BerguvsvÃ¤gen  8','LuleÃ¥','','S-958 22','Sweden'),(10867,'LONEP',6,'1998-02-03 00:00:00','1998-03-17 00:00:00','1998-02-11 00:00:00',1,1.93,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA'),(10868,'QUEEN',7,'1998-02-04 00:00:00','1998-03-04 00:00:00','1998-02-23 00:00:00',2,191.27,'Queen Cozinha','Alameda dos CanÃ rios, 891','SÃ£o Paulo','SP','05487-020','Brazil'),(10869,'SEVES',5,'1998-02-04 00:00:00','1998-03-04 00:00:00','1998-02-09 00:00:00',1,143.28,'Seven Seas Imports','90 Wadhurst Rd.','London','','OX15 4NB','UK'),(10870,'WOLZA',5,'1998-02-04 00:00:00','1998-03-04 00:00:00','1998-02-13 00:00:00',3,12.04,'Wolski Zajazd','ul. Filtrowa 68','Warszawa','','01-012','Poland'),(10871,'BONAP',9,'1998-02-05 00:00:00','1998-03-05 00:00:00','1998-02-10 00:00:00',2,112.27,'Bon app\'','12, rue des Bouchers','Marseille','','13008','France'),(10872,'GODOS',5,'1998-02-05 00:00:00','1998-03-05 00:00:00','1998-02-09 00:00:00',2,175.32,'Godos Cocina TÃ­pica','C/ Romero, 33','Sevilla','','41101','Spain'),(10873,'WILMK',4,'1998-02-06 00:00:00','1998-03-06 00:00:00','1998-02-09 00:00:00',1,0.82,'Wilman Kala','Keskuskatu 45','Helsinki','','21240','Finland'),(10874,'GODOS',5,'1998-02-06 00:00:00','1998-03-06 00:00:00','1998-02-11 00:00:00',2,19.58,'Godos Cocina TÃ­pica','C/ Romero, 33','Sevilla','','41101','Spain'),(10875,'BERGS',4,'1998-02-06 00:00:00','1998-03-06 00:00:00','1998-03-03 00:00:00',2,32.37,'Berglunds snabbkÃ¶p','BerguvsvÃ¤gen  8','LuleÃ¥','','S-958 22','Sweden'),(10876,'BONAP',7,'1998-02-09 00:00:00','1998-03-09 00:00:00','1998-02-12 00:00:00',3,60.42,'Bon app\'','12, rue des Bouchers','Marseille','','13008','France'),(10877,'RICAR',1,'1998-02-09 00:00:00','1998-03-09 00:00:00','1998-02-19 00:00:00',1,38.06,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil'),(10878,'QUICK',4,'1998-02-10 00:00:00','1998-03-10 00:00:00','1998-02-12 00:00:00',1,46.69,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10879,'WILMK',3,'1998-02-10 00:00:00','1998-03-10 00:00:00','1998-02-12 00:00:00',3,8.5,'Wilman Kala','Keskuskatu 45','Helsinki','','21240','Finland'),(10880,'FOLKO',7,'1998-02-10 00:00:00','1998-03-24 00:00:00','1998-02-18 00:00:00',1,88.01,'Folk och fÃ¤ HB','Ã…kergatan 24','BrÃ¤cke','','S-844 67','Sweden'),(10881,'CACTU',4,'1998-02-11 00:00:00','1998-03-11 00:00:00','1998-02-18 00:00:00',1,2.84,'Cactus Comidas para llevar','Cerrito 333','Buenos Aires','','1010','Argentina'),(10882,'SAVEA',4,'1998-02-11 00:00:00','1998-03-11 00:00:00','1998-02-20 00:00:00',3,23.1,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10883,'LONEP',8,'1998-02-12 00:00:00','1998-03-12 00:00:00','1998-02-20 00:00:00',3,0.53,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA'),(10884,'LETSS',4,'1998-02-12 00:00:00','1998-03-12 00:00:00','1998-02-13 00:00:00',2,90.97,'Let\'s Stop N Shop','87 Polk St.\r\nSuite 5','San Francisco','CA','94117','USA'),(10885,'SUPRD',6,'1998-02-12 00:00:00','1998-03-12 00:00:00','1998-02-18 00:00:00',3,5.64,'SuprÃªmes dÃ©lices','Boulevard Tirou, 255','Charleroi','','B-6000','Belgium'),(10886,'HANAR',1,'1998-02-13 00:00:00','1998-03-13 00:00:00','1998-03-02 00:00:00',1,4.99,'Hanari Carnes','Rua do PaÃ§o, 67','Rio de Janeiro','RJ','05454-876','Brazil'),(10887,'GALED',8,'1998-02-13 00:00:00','1998-03-13 00:00:00','1998-02-16 00:00:00',3,1.25,'GalerÃ­a del gastronÃ³mo','Rambla de CataluÃ±a, 23','Barcelona','','8022','Spain'),(10888,'GODOS',1,'1998-02-16 00:00:00','1998-03-16 00:00:00','1998-02-23 00:00:00',2,51.87,'Godos Cocina TÃ­pica','C/ Romero, 33','Sevilla','','41101','Spain'),(10889,'RATTC',9,'1998-02-16 00:00:00','1998-03-16 00:00:00','1998-02-23 00:00:00',3,280.61,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA'),(10890,'DUMON',7,'1998-02-16 00:00:00','1998-03-16 00:00:00','1998-02-18 00:00:00',1,32.76,'Du monde entier','67, rue des Cinquante Otages','Nantes','','44000','France'),(10891,'LEHMS',7,'1998-02-17 00:00:00','1998-03-17 00:00:00','1998-02-19 00:00:00',2,20.37,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M. ','','60528','Germany'),(10892,'MAISD',4,'1998-02-17 00:00:00','1998-03-17 00:00:00','1998-02-19 00:00:00',2,120.27,'Maison Dewey','Rue Joseph-Bens 532','Bruxelles','','B-1180','Belgium'),(10893,'KOENE',9,'1998-02-18 00:00:00','1998-03-18 00:00:00','1998-02-20 00:00:00',2,77.78,'KÃ¶niglich Essen','Maubelstr. 90','Brandenburg','','14776','Germany'),(10894,'SAVEA',1,'1998-02-18 00:00:00','1998-03-18 00:00:00','1998-02-20 00:00:00',1,116.13,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10895,'ERNSH',3,'1998-02-18 00:00:00','1998-03-18 00:00:00','1998-02-23 00:00:00',1,162.75,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10896,'MAISD',7,'1998-02-19 00:00:00','1998-03-19 00:00:00','1998-02-27 00:00:00',3,32.45,'Maison Dewey','Rue Joseph-Bens 532','Bruxelles','','B-1180','Belgium'),(10897,'HUNGO',3,'1998-02-19 00:00:00','1998-03-19 00:00:00','1998-02-25 00:00:00',2,603.54,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork','','Ireland'),(10898,'OCEAN',4,'1998-02-20 00:00:00','1998-03-20 00:00:00','1998-03-06 00:00:00',2,1.27,'OcÃ©ano AtlÃ¡ntico Ltda.','Ing. Gustavo Moncada 8585\r\nPiso 20-A','Buenos Aires','','1010','Argentina'),(10899,'LILAS',5,'1998-02-20 00:00:00','1998-03-20 00:00:00','1998-02-26 00:00:00',3,1.21,'LILA-Supermercado','Carrera 52 con Ave. BolÃ­var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela'),(10900,'WELLI',1,'1998-02-20 00:00:00','1998-03-20 00:00:00','1998-03-04 00:00:00',2,1.66,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil'),(10901,'HILAA',4,'1998-02-23 00:00:00','1998-03-23 00:00:00','1998-02-26 00:00:00',1,62.09,'HILARIÃ“N-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San CristÃ³bal','TÃ¡chira','5022','Venezuela'),(10902,'FOLKO',1,'1998-02-23 00:00:00','1998-03-23 00:00:00','1998-03-03 00:00:00',1,44.15,'Folk och fÃ¤ HB','Ã…kergatan 24','BrÃ¤cke','','S-844 67','Sweden'),(10903,'HANAR',3,'1998-02-24 00:00:00','1998-03-24 00:00:00','1998-03-04 00:00:00',3,36.71,'Hanari Carnes','Rua do PaÃ§o, 67','Rio de Janeiro','RJ','05454-876','Brazil'),(10904,'WHITC',3,'1998-02-24 00:00:00','1998-03-24 00:00:00','1998-02-27 00:00:00',3,162.95,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA'),(10905,'WELLI',9,'1998-02-24 00:00:00','1998-03-24 00:00:00','1998-03-06 00:00:00',2,13.72,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil'),(10906,'WOLZA',4,'1998-02-25 00:00:00','1998-03-11 00:00:00','1998-03-03 00:00:00',3,26.29,'Wolski Zajazd','ul. Filtrowa 68','Warszawa','','01-012','Poland'),(10907,'SPECD',6,'1998-02-25 00:00:00','1998-03-25 00:00:00','1998-02-27 00:00:00',3,9.19,'SpÃ©cialitÃ©s du monde','25, rue Lauriston','Paris','','75016','France'),(10908,'REGGC',4,'1998-02-26 00:00:00','1998-03-26 00:00:00','1998-03-06 00:00:00',2,32.96,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia','','42100','Italy'),(10909,'SANTG',1,'1998-02-26 00:00:00','1998-03-26 00:00:00','1998-03-10 00:00:00',2,53.05,'SantÃ© Gourmet','Erling Skakkes gate 78','Stavern','','4110','Norway'),(10910,'WILMK',1,'1998-02-26 00:00:00','1998-03-26 00:00:00','1998-03-04 00:00:00',3,38.11,'Wilman Kala','Keskuskatu 45','Helsinki','','21240','Finland'),(10911,'GODOS',3,'1998-02-26 00:00:00','1998-03-26 00:00:00','1998-03-05 00:00:00',1,38.19,'Godos Cocina TÃ­pica','C/ Romero, 33','Sevilla','','41101','Spain'),(10912,'HUNGO',2,'1998-02-26 00:00:00','1998-03-26 00:00:00','1998-03-18 00:00:00',2,580.91,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork','','Ireland'),(10913,'QUEEN',4,'1998-02-26 00:00:00','1998-03-26 00:00:00','1998-03-04 00:00:00',1,33.05,'Queen Cozinha','Alameda dos CanÃ rios, 891','SÃ£o Paulo','SP','05487-020','Brazil'),(10914,'QUEEN',6,'1998-02-27 00:00:00','1998-03-27 00:00:00','1998-03-02 00:00:00',1,21.19,'Queen Cozinha','Alameda dos CanÃ rios, 891','SÃ£o Paulo','SP','05487-020','Brazil'),(10915,'TORTU',2,'1998-02-27 00:00:00','1998-03-27 00:00:00','1998-03-02 00:00:00',2,3.51,'Tortuga Restaurante','Avda. Azteca 123','MÃ©xico D.F.','','05033','Mexico'),(10916,'RANCH',1,'1998-02-27 00:00:00','1998-03-27 00:00:00','1998-03-09 00:00:00',2,63.77,'Rancho grande','Av. del Libertador 900','Buenos Aires','','1010','Argentina'),(10917,'ROMEY',4,'1998-03-02 00:00:00','1998-03-30 00:00:00','1998-03-11 00:00:00',2,8.29,'Romero y tomillo','Gran VÃ­a, 1','Madrid','','28001','Spain'),(10918,'BOTTM',3,'1998-03-02 00:00:00','1998-03-30 00:00:00','1998-03-11 00:00:00',3,48.83,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada'),(10919,'LINOD',2,'1998-03-02 00:00:00','1998-03-30 00:00:00','1998-03-04 00:00:00',2,19.8,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela'),(10920,'AROUT',4,'1998-03-03 00:00:00','1998-03-31 00:00:00','1998-03-09 00:00:00',2,29.61,'Around the Horn','Brook Farm\r\nStratford St. Mary','Colchester','Essex','CO7 6JX','UK'),(10921,'VAFFE',1,'1998-03-03 00:00:00','1998-04-14 00:00:00','1998-03-09 00:00:00',1,176.48,'Vaffeljernet','SmagslÃ¸get 45','Ã…rhus','','8200','Denmark'),(10922,'HANAR',5,'1998-03-03 00:00:00','1998-03-31 00:00:00','1998-03-05 00:00:00',3,62.74,'Hanari Carnes','Rua do PaÃ§o, 67','Rio de Janeiro','RJ','05454-876','Brazil'),(10923,'LAMAI',7,'1998-03-03 00:00:00','1998-04-14 00:00:00','1998-03-13 00:00:00',3,68.26,'La maison d\'Asie','1 rue Alsace-Lorraine','Toulouse','','31000','France'),(10924,'BERGS',3,'1998-03-04 00:00:00','1998-04-01 00:00:00','1998-04-08 00:00:00',2,151.52,'Berglunds snabbkÃ¶p','BerguvsvÃ¤gen  8','LuleÃ¥','','S-958 22','Sweden'),(10925,'HANAR',3,'1998-03-04 00:00:00','1998-04-01 00:00:00','1998-03-13 00:00:00',1,2.27,'Hanari Carnes','Rua do PaÃ§o, 67','Rio de Janeiro','RJ','05454-876','Brazil'),(10926,'ANATR',4,'1998-03-04 00:00:00','1998-04-01 00:00:00','1998-03-11 00:00:00',3,39.92,'Ana Trujillo Emparedados y helados','Avda. de la ConstituciÃ³n 2222','MÃ©xico D.F.','','05021','Mexico'),(10927,'LACOR',4,'1998-03-05 00:00:00','1998-04-02 00:00:00','1998-04-08 00:00:00',1,19.79,'La corne d\'abondance','67, avenue de l\'Europe','Versailles','','78000','France'),(10928,'GALED',1,'1998-03-05 00:00:00','1998-04-02 00:00:00','1998-03-18 00:00:00',1,1.36,'GalerÃ­a del gastronÃ³mo','Rambla de CataluÃ±a, 23','Barcelona','','8022','Spain'),(10929,'FRANK',6,'1998-03-05 00:00:00','1998-04-02 00:00:00','1998-03-12 00:00:00',1,33.93,'Frankenversand','Berliner Platz 43','MÃ¼nchen','','80805','Germany'),(10930,'SUPRD',4,'1998-03-06 00:00:00','1998-04-17 00:00:00','1998-03-18 00:00:00',3,15.55,'SuprÃªmes dÃ©lices','Boulevard Tirou, 255','Charleroi','','B-6000','Belgium'),(10931,'RICSU',4,'1998-03-06 00:00:00','1998-03-20 00:00:00','1998-03-19 00:00:00',2,13.6,'Richter Supermarkt','Starenweg 5','GenÃ¨ve','','1204','Switzerland'),(10932,'BONAP',8,'1998-03-06 00:00:00','1998-04-03 00:00:00','1998-03-24 00:00:00',1,134.64,'Bon app\'','12, rue des Bouchers','Marseille','','13008','France'),(10933,'ISLAT',6,'1998-03-06 00:00:00','1998-04-03 00:00:00','1998-03-16 00:00:00',3,54.15,'Island Trading','Garden House\r\nCrowther Way','Cowes','Isle of Wight','PO31 7PJ','UK'),(10934,'LEHMS',3,'1998-03-09 00:00:00','1998-04-06 00:00:00','1998-03-12 00:00:00',3,32.01,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M. ','','60528','Germany'),(10935,'WELLI',4,'1998-03-09 00:00:00','1998-04-06 00:00:00','1998-03-18 00:00:00',3,47.59,'Wellington Importadora','Rua do Mercado, 12','Resende','SP','08737-363','Brazil'),(10936,'GREAL',3,'1998-03-09 00:00:00','1998-04-06 00:00:00','1998-03-18 00:00:00',2,33.68,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA'),(10937,'CACTU',7,'1998-03-10 00:00:00','1998-03-24 00:00:00','1998-03-13 00:00:00',3,31.51,'Cactus Comidas para llevar','Cerrito 333','Buenos Aires','','1010','Argentina'),(10938,'QUICK',3,'1998-03-10 00:00:00','1998-04-07 00:00:00','1998-03-16 00:00:00',2,31.89,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10939,'MAGAA',2,'1998-03-10 00:00:00','1998-04-07 00:00:00','1998-03-13 00:00:00',2,76.33,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo','','24100','Italy'),(10940,'BONAP',8,'1998-03-11 00:00:00','1998-04-08 00:00:00','1998-03-23 00:00:00',3,19.77,'Bon app\'','12, rue des Bouchers','Marseille','','13008','France'),(10941,'SAVEA',7,'1998-03-11 00:00:00','1998-04-08 00:00:00','1998-03-20 00:00:00',2,400.81,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10942,'REGGC',9,'1998-03-11 00:00:00','1998-04-08 00:00:00','1998-03-18 00:00:00',3,17.95,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia','','42100','Italy'),(10943,'BSBEV',4,'1998-03-11 00:00:00','1998-04-08 00:00:00','1998-03-19 00:00:00',2,2.17,'B\'s Beverages','Fauntleroy Circus','London','','EC2 5NT','UK'),(10944,'BOTTM',6,'1998-03-12 00:00:00','1998-03-26 00:00:00','1998-03-13 00:00:00',3,52.92,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada'),(10945,'MORGK',4,'1998-03-12 00:00:00','1998-04-09 00:00:00','1998-03-18 00:00:00',1,10.22,'Morgenstern Gesundkost','Heerstr. 22','Leipzig','','04179','Germany'),(10946,'VAFFE',1,'1998-03-12 00:00:00','1998-04-09 00:00:00','1998-03-19 00:00:00',2,27.2,'Vaffeljernet','SmagslÃ¸get 45','Ã…rhus','','8200','Denmark'),(10947,'BSBEV',3,'1998-03-13 00:00:00','1998-04-10 00:00:00','1998-03-16 00:00:00',2,3.26,'B\'s Beverages','Fauntleroy Circus','London','','EC2 5NT','UK'),(10948,'GODOS',3,'1998-03-13 00:00:00','1998-04-10 00:00:00','1998-03-19 00:00:00',3,23.39,'Godos Cocina TÃ­pica','C/ Romero, 33','Sevilla','','41101','Spain'),(10949,'BOTTM',2,'1998-03-13 00:00:00','1998-04-10 00:00:00','1998-03-17 00:00:00',3,74.44,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada'),(10950,'MAGAA',1,'1998-03-16 00:00:00','1998-04-13 00:00:00','1998-03-23 00:00:00',2,2.5,'Magazzini Alimentari Riuniti','Via Ludovico il Moro 22','Bergamo','','24100','Italy'),(10951,'RICSU',9,'1998-03-16 00:00:00','1998-04-27 00:00:00','1998-04-07 00:00:00',2,30.85,'Richter Supermarkt','Starenweg 5','GenÃ¨ve','','1204','Switzerland'),(10952,'ALFAA',1,'1998-03-16 00:00:00','1998-04-27 00:00:00','1998-03-24 00:00:00',1,40.42,'Alfreds Futterkiste','Obere Str. 57','Berlin','','12209','Germany'),(10953,'AROUT',9,'1998-03-16 00:00:00','1998-03-30 00:00:00','1998-03-25 00:00:00',2,23.72,'Around the Horn','Brook Farm\r\nStratford St. Mary','Colchester','Essex','CO7 6JX','UK'),(10954,'LINOD',5,'1998-03-17 00:00:00','1998-04-28 00:00:00','1998-03-20 00:00:00',1,27.91,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela'),(10955,'FOLKO',8,'1998-03-17 00:00:00','1998-04-14 00:00:00','1998-03-20 00:00:00',2,3.26,'Folk och fÃ¤ HB','Ã…kergatan 24','BrÃ¤cke','','S-844 67','Sweden'),(10956,'BLAUS',6,'1998-03-17 00:00:00','1998-04-28 00:00:00','1998-03-20 00:00:00',2,44.65,'Blauer See Delikatessen','Forsterstr. 57','Mannheim','','68306','Germany'),(10957,'HILAA',8,'1998-03-18 00:00:00','1998-04-15 00:00:00','1998-03-27 00:00:00',3,105.36,'HILARIÃ“N-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San CristÃ³bal','TÃ¡chira','5022','Venezuela'),(10958,'OCEAN',7,'1998-03-18 00:00:00','1998-04-15 00:00:00','1998-03-27 00:00:00',2,49.56,'OcÃ©ano AtlÃ¡ntico Ltda.','Ing. Gustavo Moncada 8585\r\nPiso 20-A','Buenos Aires','','1010','Argentina'),(10959,'GOURL',6,'1998-03-18 00:00:00','1998-04-29 00:00:00','1998-03-23 00:00:00',2,4.98,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil'),(10960,'HILAA',3,'1998-03-19 00:00:00','1998-04-02 00:00:00','1998-04-08 00:00:00',1,2.08,'HILARIÃ“N-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San CristÃ³bal','TÃ¡chira','5022','Venezuela'),(10961,'QUEEN',8,'1998-03-19 00:00:00','1998-04-16 00:00:00','1998-03-30 00:00:00',1,104.47,'Queen Cozinha','Alameda dos CanÃ rios, 891','SÃ£o Paulo','SP','05487-020','Brazil'),(10962,'QUICK',8,'1998-03-19 00:00:00','1998-04-16 00:00:00','1998-03-23 00:00:00',2,275.79,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10963,'FURIB',9,'1998-03-19 00:00:00','1998-04-16 00:00:00','1998-03-26 00:00:00',3,2.7,'Furia Bacalhau e Frutos do Mar','Jardim das rosas n. 32','Lisboa','','1675','Portugal'),(10964,'SPECD',3,'1998-03-20 00:00:00','1998-04-17 00:00:00','1998-03-24 00:00:00',2,87.38,'SpÃ©cialitÃ©s du monde','25, rue Lauriston','Paris','','75016','France'),(10965,'OLDWO',6,'1998-03-20 00:00:00','1998-04-17 00:00:00','1998-03-30 00:00:00',3,144.38,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA'),(10966,'CHOPS',4,'1998-03-20 00:00:00','1998-04-17 00:00:00','1998-04-08 00:00:00',1,27.19,'Chop-suey Chinese','Hauptstr. 31','Bern','','3012','Switzerland'),(10967,'TOMSP',2,'1998-03-23 00:00:00','1998-04-20 00:00:00','1998-04-02 00:00:00',2,62.22,'Toms SpezialitÃ¤ten','Luisenstr. 48','MÃ¼nster','','44087','Germany'),(10968,'ERNSH',1,'1998-03-23 00:00:00','1998-04-20 00:00:00','1998-04-01 00:00:00',3,74.6,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10969,'COMMI',1,'1998-03-23 00:00:00','1998-04-20 00:00:00','1998-03-30 00:00:00',2,0.21,'ComÃ©rcio Mineiro','Av. dos LusÃ­adas, 23','SÃ£o Paulo','SP','05432-043','Brazil'),(10970,'BOLID',9,'1998-03-24 00:00:00','1998-04-07 00:00:00','1998-04-24 00:00:00',1,16.16,'BÃ³lido Comidas preparadas','C/ Araquil, 67','Madrid','','28023','Spain'),(10971,'FRANR',2,'1998-03-24 00:00:00','1998-04-21 00:00:00','1998-04-02 00:00:00',2,121.82,'France restauration','54, rue Royale','Nantes','','44000','France'),(10972,'LACOR',4,'1998-03-24 00:00:00','1998-04-21 00:00:00','1998-03-26 00:00:00',2,0.02,'La corne d\'abondance','67, avenue de l\'Europe','Versailles','','78000','France'),(10973,'LACOR',6,'1998-03-24 00:00:00','1998-04-21 00:00:00','1998-03-27 00:00:00',2,15.17,'La corne d\'abondance','67, avenue de l\'Europe','Versailles','','78000','France'),(10974,'SPLIR',3,'1998-03-25 00:00:00','1998-04-08 00:00:00','1998-04-03 00:00:00',3,12.96,'Split Rail Beer & Ale','P.O. Box 555','Lander','WY','82520','USA'),(10975,'BOTTM',1,'1998-03-25 00:00:00','1998-04-22 00:00:00','1998-03-27 00:00:00',3,32.27,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada'),(10976,'HILAA',1,'1998-03-25 00:00:00','1998-05-06 00:00:00','1998-04-03 00:00:00',1,37.97,'HILARIÃ“N-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San CristÃ³bal','TÃ¡chira','5022','Venezuela'),(10977,'FOLKO',8,'1998-03-26 00:00:00','1998-04-23 00:00:00','1998-04-10 00:00:00',3,208.5,'Folk och fÃ¤ HB','Ã…kergatan 24','BrÃ¤cke','','S-844 67','Sweden'),(10978,'MAISD',9,'1998-03-26 00:00:00','1998-04-23 00:00:00','1998-04-23 00:00:00',2,32.82,'Maison Dewey','Rue Joseph-Bens 532','Bruxelles','','B-1180','Belgium'),(10979,'ERNSH',8,'1998-03-26 00:00:00','1998-04-23 00:00:00','1998-03-31 00:00:00',2,353.07,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10980,'FOLKO',4,'1998-03-27 00:00:00','1998-05-08 00:00:00','1998-04-17 00:00:00',1,1.26,'Folk och fÃ¤ HB','Ã…kergatan 24','BrÃ¤cke','','S-844 67','Sweden'),(10981,'HANAR',1,'1998-03-27 00:00:00','1998-04-24 00:00:00','1998-04-02 00:00:00',2,193.37,'Hanari Carnes','Rua do PaÃ§o, 67','Rio de Janeiro','RJ','05454-876','Brazil'),(10982,'BOTTM',2,'1998-03-27 00:00:00','1998-04-24 00:00:00','1998-04-08 00:00:00',1,14.01,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada'),(10983,'SAVEA',2,'1998-03-27 00:00:00','1998-04-24 00:00:00','1998-04-06 00:00:00',2,657.54,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10984,'SAVEA',1,'1998-03-30 00:00:00','1998-04-27 00:00:00','1998-04-03 00:00:00',3,211.22,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(10985,'HUNGO',2,'1998-03-30 00:00:00','1998-04-27 00:00:00','1998-04-02 00:00:00',1,91.51,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork','','Ireland'),(10986,'OCEAN',8,'1998-03-30 00:00:00','1998-04-27 00:00:00','1998-04-21 00:00:00',2,217.86,'OcÃ©ano AtlÃ¡ntico Ltda.','Ing. Gustavo Moncada 8585\r\nPiso 20-A','Buenos Aires','','1010','Argentina'),(10987,'EASTC',8,'1998-03-31 00:00:00','1998-04-28 00:00:00','1998-04-06 00:00:00',1,185.48,'Eastern Connection','35 King George','London','','WX3 6FW','UK'),(10988,'RATTC',3,'1998-03-31 00:00:00','1998-04-28 00:00:00','1998-04-10 00:00:00',2,61.14,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA'),(10989,'QUEDE',2,'1998-03-31 00:00:00','1998-04-28 00:00:00','1998-04-02 00:00:00',1,34.76,'Que DelÃ­cia','Rua da Panificadora, 12','Rio de Janeiro','RJ','02389-673','Brazil'),(10990,'ERNSH',2,'1998-04-01 00:00:00','1998-05-13 00:00:00','1998-04-07 00:00:00',3,117.61,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(10991,'QUICK',1,'1998-04-01 00:00:00','1998-04-29 00:00:00','1998-04-07 00:00:00',1,38.51,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10992,'THEBI',1,'1998-04-01 00:00:00','1998-04-29 00:00:00','1998-04-03 00:00:00',3,4.27,'The Big Cheese','89 Jefferson Way\r\nSuite 2','Portland','OR','97201','USA'),(10993,'FOLKO',7,'1998-04-01 00:00:00','1998-04-29 00:00:00','1998-04-10 00:00:00',3,8.81,'Folk och fÃ¤ HB','Ã…kergatan 24','BrÃ¤cke','','S-844 67','Sweden'),(10994,'VAFFE',2,'1998-04-02 00:00:00','1998-04-16 00:00:00','1998-04-09 00:00:00',3,65.53,'Vaffeljernet','SmagslÃ¸get 45','Ã…rhus','','8200','Denmark'),(10995,'PERIC',1,'1998-04-02 00:00:00','1998-04-30 00:00:00','1998-04-06 00:00:00',3,46,'Pericles Comidas clÃ¡sicas','Calle Dr. Jorge Cash 321','MÃ©xico D.F.','','05033','Mexico'),(10996,'QUICK',4,'1998-04-02 00:00:00','1998-04-30 00:00:00','1998-04-10 00:00:00',2,1.12,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(10997,'LILAS',8,'1998-04-03 00:00:00','1998-05-15 00:00:00','1998-04-13 00:00:00',2,73.91,'LILA-Supermercado','Carrera 52 con Ave. BolÃ­var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela'),(10998,'WOLZA',8,'1998-04-03 00:00:00','1998-04-17 00:00:00','1998-04-17 00:00:00',2,20.31,'Wolski Zajazd','ul. Filtrowa 68','Warszawa','','01-012','Poland'),(10999,'OTTIK',6,'1998-04-03 00:00:00','1998-05-01 00:00:00','1998-04-10 00:00:00',2,96.35,'Ottilies KÃ¤seladen','Mehrheimerstr. 369','KÃ¶ln','','50739','Germany'),(11000,'RATTC',2,'1998-04-06 00:00:00','1998-05-04 00:00:00','1998-04-14 00:00:00',3,55.12,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA'),(11001,'FOLKO',2,'1998-04-06 00:00:00','1998-05-04 00:00:00','1998-04-14 00:00:00',2,197.3,'Folk och fÃ¤ HB','Ã…kergatan 24','BrÃ¤cke','','S-844 67','Sweden'),(11002,'SAVEA',4,'1998-04-06 00:00:00','1998-05-04 00:00:00','1998-04-16 00:00:00',1,141.16,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(11003,'THECR',3,'1998-04-06 00:00:00','1998-05-04 00:00:00','1998-04-08 00:00:00',3,14.91,'The Cracker Box','55 Grizzly Peak Rd.','Butte','MT','59801','USA'),(11004,'MAISD',3,'1998-04-07 00:00:00','1998-05-05 00:00:00','1998-04-20 00:00:00',1,44.84,'Maison Dewey','Rue Joseph-Bens 532','Bruxelles','','B-1180','Belgium'),(11005,'WILMK',2,'1998-04-07 00:00:00','1998-05-05 00:00:00','1998-04-10 00:00:00',1,0.75,'Wilman Kala','Keskuskatu 45','Helsinki','','21240','Finland'),(11006,'GREAL',3,'1998-04-07 00:00:00','1998-05-05 00:00:00','1998-04-15 00:00:00',2,25.19,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA'),(11007,'PRINI',8,'1998-04-08 00:00:00','1998-05-06 00:00:00','1998-04-13 00:00:00',2,202.24,'Princesa Isabel Vinhos','Estrada da saÃºde n. 58','Lisboa','','1756','Portugal'),(11008,'ERNSH',7,'1998-04-08 00:00:00','1998-05-06 00:00:00',NULL,3,79.46,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(11009,'GODOS',2,'1998-04-08 00:00:00','1998-05-06 00:00:00','1998-04-10 00:00:00',1,59.11,'Godos Cocina TÃ­pica','C/ Romero, 33','Sevilla','','41101','Spain'),(11010,'REGGC',2,'1998-04-09 00:00:00','1998-05-07 00:00:00','1998-04-21 00:00:00',2,28.71,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia','','42100','Italy'),(11011,'ALFAA',3,'1998-04-09 00:00:00','1998-05-07 00:00:00','1998-04-13 00:00:00',1,1.21,'Alfreds Futterkiste','Obere Str. 57','Berlin','','12209','Germany'),(11012,'FRANK',1,'1998-04-09 00:00:00','1998-04-23 00:00:00','1998-04-17 00:00:00',3,242.95,'Frankenversand','Berliner Platz 43','MÃ¼nchen','','80805','Germany'),(11013,'ROMEY',2,'1998-04-09 00:00:00','1998-05-07 00:00:00','1998-04-10 00:00:00',1,32.99,'Romero y tomillo','Gran VÃ­a, 1','Madrid','','28001','Spain'),(11014,'LINOD',2,'1998-04-10 00:00:00','1998-05-08 00:00:00','1998-04-15 00:00:00',3,23.6,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela'),(11015,'SANTG',2,'1998-04-10 00:00:00','1998-04-24 00:00:00','1998-04-20 00:00:00',2,4.62,'SantÃ© Gourmet','Erling Skakkes gate 78','Stavern','','4110','Norway'),(11016,'AROUT',9,'1998-04-10 00:00:00','1998-05-08 00:00:00','1998-04-13 00:00:00',2,33.8,'Around the Horn','Brook Farm\r\nStratford St. Mary','Colchester','Essex','CO7 6JX','UK'),(11017,'ERNSH',9,'1998-04-13 00:00:00','1998-05-11 00:00:00','1998-04-20 00:00:00',2,754.26,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(11018,'LONEP',4,'1998-04-13 00:00:00','1998-05-11 00:00:00','1998-04-16 00:00:00',2,11.65,'Lonesome Pine Restaurant','89 Chiaroscuro Rd.','Portland','OR','97219','USA'),(11019,'RANCH',6,'1998-04-13 00:00:00','1998-05-11 00:00:00',NULL,3,3.17,'Rancho grande','Av. del Libertador 900','Buenos Aires','','1010','Argentina'),(11020,'OTTIK',2,'1998-04-14 00:00:00','1998-05-12 00:00:00','1998-04-16 00:00:00',2,43.3,'Ottilies KÃ¤seladen','Mehrheimerstr. 369','KÃ¶ln','','50739','Germany'),(11021,'QUICK',3,'1998-04-14 00:00:00','1998-05-12 00:00:00','1998-04-21 00:00:00',1,297.18,'QUICK-Stop','TaucherstraÃŸe 10','Cunewalde','','01307','Germany'),(11022,'HANAR',9,'1998-04-14 00:00:00','1998-05-12 00:00:00','1998-05-04 00:00:00',2,6.27,'Hanari Carnes','Rua do PaÃ§o, 67','Rio de Janeiro','RJ','05454-876','Brazil'),(11023,'BSBEV',1,'1998-04-14 00:00:00','1998-04-28 00:00:00','1998-04-24 00:00:00',2,123.83,'B\'s Beverages','Fauntleroy Circus','London','','EC2 5NT','UK'),(11024,'EASTC',4,'1998-04-15 00:00:00','1998-05-13 00:00:00','1998-04-20 00:00:00',1,74.36,'Eastern Connection','35 King George','London','','WX3 6FW','UK'),(11025,'WARTH',6,'1998-04-15 00:00:00','1998-05-13 00:00:00','1998-04-24 00:00:00',3,29.17,'Wartian Herkku','Torikatu 38','Oulu','','90110','Finland'),(11026,'FRANS',4,'1998-04-15 00:00:00','1998-05-13 00:00:00','1998-04-28 00:00:00',1,47.09,'Franchi S.p.A.','Via Monte Bianco 34','Torino','','10100','Italy'),(11027,'BOTTM',1,'1998-04-16 00:00:00','1998-05-14 00:00:00','1998-04-20 00:00:00',1,52.52,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada'),(11028,'KOENE',2,'1998-04-16 00:00:00','1998-05-14 00:00:00','1998-04-22 00:00:00',1,29.59,'KÃ¶niglich Essen','Maubelstr. 90','Brandenburg','','14776','Germany'),(11029,'CHOPS',4,'1998-04-16 00:00:00','1998-05-14 00:00:00','1998-04-27 00:00:00',1,47.84,'Chop-suey Chinese','Hauptstr. 31','Bern','','3012','Switzerland'),(11030,'SAVEA',7,'1998-04-17 00:00:00','1998-05-15 00:00:00','1998-04-27 00:00:00',2,830.75,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(11031,'SAVEA',6,'1998-04-17 00:00:00','1998-05-15 00:00:00','1998-04-24 00:00:00',2,227.22,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(11032,'WHITC',2,'1998-04-17 00:00:00','1998-05-15 00:00:00','1998-04-23 00:00:00',3,606.19,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA'),(11033,'RICSU',7,'1998-04-17 00:00:00','1998-05-15 00:00:00','1998-04-23 00:00:00',3,84.74,'Richter Supermarkt','Starenweg 5','GenÃ¨ve','','1204','Switzerland'),(11034,'OLDWO',8,'1998-04-20 00:00:00','1998-06-01 00:00:00','1998-04-27 00:00:00',1,40.32,'Old World Delicatessen','2743 Bering St.','Anchorage','AK','99508','USA'),(11035,'SUPRD',2,'1998-04-20 00:00:00','1998-05-18 00:00:00','1998-04-24 00:00:00',2,0.17,'SuprÃªmes dÃ©lices','Boulevard Tirou, 255','Charleroi','','B-6000','Belgium'),(11036,'DRACD',8,'1998-04-20 00:00:00','1998-05-18 00:00:00','1998-04-22 00:00:00',3,149.47,'Drachenblut Delikatessen','Walserweg 21','Aachen','','52066','Germany'),(11037,'GODOS',7,'1998-04-21 00:00:00','1998-05-19 00:00:00','1998-04-27 00:00:00',1,3.2,'Godos Cocina TÃ­pica','C/ Romero, 33','Sevilla','','41101','Spain'),(11038,'SUPRD',1,'1998-04-21 00:00:00','1998-05-19 00:00:00','1998-04-30 00:00:00',2,29.59,'SuprÃªmes dÃ©lices','Boulevard Tirou, 255','Charleroi','','B-6000','Belgium'),(11039,'LINOD',1,'1998-04-21 00:00:00','1998-05-19 00:00:00',NULL,2,65,'LINO-Delicateses','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela'),(11040,'GREAL',4,'1998-04-22 00:00:00','1998-05-20 00:00:00',NULL,3,18.84,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA'),(11041,'CHOPS',3,'1998-04-22 00:00:00','1998-05-20 00:00:00','1998-04-28 00:00:00',2,48.22,'Chop-suey Chinese','Hauptstr. 31','Bern','','3012','Switzerland'),(11042,'COMMI',2,'1998-04-22 00:00:00','1998-05-06 00:00:00','1998-05-01 00:00:00',1,29.99,'ComÃ©rcio Mineiro','Av. dos LusÃ­adas, 23','SÃ£o Paulo','SP','05432-043','Brazil'),(11043,'SPECD',5,'1998-04-22 00:00:00','1998-05-20 00:00:00','1998-04-29 00:00:00',2,8.8,'SpÃ©cialitÃ©s du monde','25, rue Lauriston','Paris','','75016','France'),(11044,'WOLZA',4,'1998-04-23 00:00:00','1998-05-21 00:00:00','1998-05-01 00:00:00',1,8.72,'Wolski Zajazd','ul. Filtrowa 68','Warszawa','','01-012','Poland'),(11045,'BOTTM',6,'1998-04-23 00:00:00','1998-05-21 00:00:00',NULL,2,70.58,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada'),(11046,'WANDK',8,'1998-04-23 00:00:00','1998-05-21 00:00:00','1998-04-24 00:00:00',2,71.64,'Die Wandernde Kuh','Adenauerallee 900','Stuttgart','','70563','Germany'),(11047,'EASTC',7,'1998-04-24 00:00:00','1998-05-22 00:00:00','1998-05-01 00:00:00',3,46.62,'Eastern Connection','35 King George','London','','WX3 6FW','UK'),(11048,'BOTTM',7,'1998-04-24 00:00:00','1998-05-22 00:00:00','1998-04-30 00:00:00',3,24.12,'Bottom-Dollar Markets','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada'),(11049,'GOURL',3,'1998-04-24 00:00:00','1998-05-22 00:00:00','1998-05-04 00:00:00',1,8.34,'Gourmet Lanchonetes','Av. Brasil, 442','Campinas','SP','04876-786','Brazil'),(11050,'FOLKO',8,'1998-04-27 00:00:00','1998-05-25 00:00:00','1998-05-05 00:00:00',2,59.41,'Folk och fÃ¤ HB','Ã…kergatan 24','BrÃ¤cke','','S-844 67','Sweden'),(11051,'LAMAI',7,'1998-04-27 00:00:00','1998-05-25 00:00:00',NULL,3,2.79,'La maison d\'Asie','1 rue Alsace-Lorraine','Toulouse','','31000','France'),(11052,'HANAR',3,'1998-04-27 00:00:00','1998-05-25 00:00:00','1998-05-01 00:00:00',1,67.26,'Hanari Carnes','Rua do PaÃ§o, 67','Rio de Janeiro','RJ','05454-876','Brazil'),(11053,'PICCO',2,'1998-04-27 00:00:00','1998-05-25 00:00:00','1998-04-29 00:00:00',2,53.05,'Piccolo und mehr','Geislweg 14','Salzburg','','5020','Austria'),(11054,'CACTU',8,'1998-04-28 00:00:00','1998-05-26 00:00:00',NULL,1,0.33,'Cactus Comidas para llevar','Cerrito 333','Buenos Aires','','1010','Argentina'),(11055,'HILAA',7,'1998-04-28 00:00:00','1998-05-26 00:00:00','1998-05-05 00:00:00',2,120.92,'HILARIÃ“N-Abastos','Carrera 22 con Ave. Carlos Soublette #8-35','San CristÃ³bal','TÃ¡chira','5022','Venezuela'),(11056,'EASTC',8,'1998-04-28 00:00:00','1998-05-12 00:00:00','1998-05-01 00:00:00',2,278.96,'Eastern Connection','35 King George','London','','WX3 6FW','UK'),(11057,'NORTS',3,'1998-04-29 00:00:00','1998-05-27 00:00:00','1998-05-01 00:00:00',3,4.13,'North/South','South House\r\n300 Queensbridge','London','','SW7 1RZ','UK'),(11058,'BLAUS',9,'1998-04-29 00:00:00','1998-05-27 00:00:00',NULL,3,31.14,'Blauer See Delikatessen','Forsterstr. 57','Mannheim','','68306','Germany'),(11059,'RICAR',2,'1998-04-29 00:00:00','1998-06-10 00:00:00',NULL,2,85.8,'Ricardo Adocicados','Av. Copacabana, 267','Rio de Janeiro','RJ','02389-890','Brazil'),(11060,'FRANS',2,'1998-04-30 00:00:00','1998-05-28 00:00:00','1998-05-04 00:00:00',2,10.98,'Franchi S.p.A.','Via Monte Bianco 34','Torino','','10100','Italy'),(11061,'GREAL',4,'1998-04-30 00:00:00','1998-06-11 00:00:00',NULL,3,14.01,'Great Lakes Food Market','2732 Baker Blvd.','Eugene','OR','97403','USA'),(11062,'REGGC',4,'1998-04-30 00:00:00','1998-05-28 00:00:00',NULL,2,29.93,'Reggiani Caseifici','Strada Provinciale 124','Reggio Emilia','','42100','Italy'),(11063,'HUNGO',3,'1998-04-30 00:00:00','1998-05-28 00:00:00','1998-05-06 00:00:00',2,81.73,'Hungry Owl All-Night Grocers','8 Johnstown Road','Cork','Co. Cork','','Ireland'),(11064,'SAVEA',1,'1998-05-01 00:00:00','1998-05-29 00:00:00','1998-05-04 00:00:00',1,30.09,'Save-a-lot Markets','187 Suffolk Ln.','Boise','ID','83720','USA'),(11065,'LILAS',8,'1998-05-01 00:00:00','1998-05-29 00:00:00',NULL,1,12.91,'LILA-Supermercado','Carrera 52 con Ave. BolÃ­var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela'),(11066,'WHITC',7,'1998-05-01 00:00:00','1998-05-29 00:00:00','1998-05-04 00:00:00',2,44.72,'White Clover Markets','1029 - 12th Ave. S.','Seattle','WA','98124','USA'),(11067,'DRACD',1,'1998-05-04 00:00:00','1998-05-18 00:00:00','1998-05-06 00:00:00',2,7.98,'Drachenblut Delikatessen','Walserweg 21','Aachen','','52066','Germany'),(11068,'QUEEN',8,'1998-05-04 00:00:00','1998-06-01 00:00:00',NULL,2,81.75,'Queen Cozinha','Alameda dos CanÃ rios, 891','SÃ£o Paulo','SP','05487-020','Brazil'),(11069,'TORTU',1,'1998-05-04 00:00:00','1998-06-01 00:00:00','1998-05-06 00:00:00',2,15.67,'Tortuga Restaurante','Avda. Azteca 123','MÃ©xico D.F.','','05033','Mexico'),(11070,'LEHMS',2,'1998-05-05 00:00:00','1998-06-02 00:00:00',NULL,1,136,'Lehmanns Marktstand','Magazinweg 7','Frankfurt a.M. ','','60528','Germany'),(11071,'LILAS',1,'1998-05-05 00:00:00','1998-06-02 00:00:00',NULL,1,0.93,'LILA-Supermercado','Carrera 52 con Ave. BolÃ­var #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela'),(11072,'ERNSH',4,'1998-05-05 00:00:00','1998-06-02 00:00:00',NULL,2,258.64,'Ernst Handel','Kirchgasse 6','Graz','','8010','Austria'),(11073,'PERIC',2,'1998-05-05 00:00:00','1998-06-02 00:00:00',NULL,2,24.95,'Pericles Comidas clÃ¡sicas','Calle Dr. Jorge Cash 321','MÃ©xico D.F.','','05033','Mexico'),(11074,'SIMOB',7,'1998-05-06 00:00:00','1998-06-03 00:00:00',NULL,2,18.44,'Simons bistro','VinbÃ¦ltet 34','KÃ¸benhavn','','1734','Denmark'),(11075,'RICSU',8,'1998-05-06 00:00:00','1998-06-03 00:00:00',NULL,2,6.19,'Richter Supermarkt','Starenweg 5','GenÃ¨ve','','1204','Switzerland'),(11076,'BONAP',4,'1998-05-06 00:00:00','1998-06-03 00:00:00',NULL,2,38.28,'Bon app\'','12, rue des Bouchers','Marseille','','13008','France'),(11077,'RATTC',1,'1998-05-06 00:00:00','1998-06-03 00:00:00',NULL,2,8.53,'Rattlesnake Canyon Grocery','2817 Milton Dr.','Albuquerque','NM','87110','USA');

-- Table structure for table `order_details`

DROP TABLE IF EXISTS `order_details`;

CREATE TABLE `order_details` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `OrderID` int(10) unsigned NOT NULL,
  `ProductID` int(10) unsigned NOT NULL,
  `UnitPrice` double unsigned NOT NULL DEFAULT '0',
  `Quantity` smallint(5) unsigned NOT NULL DEFAULT '1',
  `Discount` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Uidx_OrderID_ProductID` (`OrderID`,`ProductID`),
  KEY `idx_FK_order_details_productid` (`ProductID`),
  CONSTRAINT `FK_order_details_orderid` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  CONSTRAINT `FK_order_details_productid` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=2156 DEFAULT CHARSET=utf8;

-- Data for the table `order_details`
insert  into `order_details`(`ID`,`OrderID`,`ProductID`,`UnitPrice`,`Quantity`,`Discount`) values (1,10248,11,14,12,0),(2,10248,42,9.8,10,0),(3,10248,72,34.8,5,0),(4,10249,14,18.6,9,0),(5,10249,51,42.4,40,0),(6,10250,41,7.7,10,0),(7,10250,51,42.4,35,0.15),(8,10250,65,16.8,15,0.15),(9,10251,22,16.8,6,0.05),(10,10251,57,15.6,15,0.05),(11,10251,65,16.8,20,0),(12,10252,20,64.8,40,0.05),(13,10252,33,2,25,0.05),(14,10252,60,27.2,40,0),(15,10253,31,10,20,0),(16,10253,39,14.4,42,0),(17,10253,49,16,40,0),(18,10254,24,3.6,15,0.15),(19,10254,55,19.2,21,0.15),(20,10254,74,8,21,0),(21,10255,2,15.2,20,0),(22,10255,16,13.9,35,0),(23,10255,36,15.2,25,0),(24,10255,59,44,30,0),(25,10256,53,26.2,15,0),(26,10256,77,10.4,12,0),(27,10257,27,35.1,25,0),(28,10257,39,14.4,6,0),(29,10257,77,10.4,15,0),(30,10258,2,15.2,50,0.2),(31,10258,5,17,65,0.2),(32,10258,32,25.6,6,0.2),(33,10259,21,8,10,0),(34,10259,37,20.8,1,0),(35,10260,41,7.7,16,0.25),(36,10260,57,15.6,50,0),(37,10260,62,39.4,15,0.25),(38,10260,70,12,21,0.25),(39,10261,21,8,20,0),(40,10261,35,14.4,20,0),(41,10262,5,17,12,0.2),(42,10262,7,24,15,0),(43,10262,56,30.4,2,0),(44,10263,16,13.9,60,0.25),(45,10263,24,3.6,28,0),(46,10263,30,20.7,60,0.25),(47,10263,74,8,36,0.25),(48,10264,2,15.2,35,0),(49,10264,41,7.7,25,0.15),(50,10265,17,31.2,30,0),(51,10265,70,12,20,0),(52,10266,12,30.4,12,0.05),(53,10267,40,14.7,50,0),(54,10267,59,44,70,0.15),(55,10267,76,14.4,15,0.15),(56,10268,29,99,10,0),(57,10268,72,27.8,4,0),(58,10269,33,2,60,0.05),(59,10269,72,27.8,20,0.05),(60,10270,36,15.2,30,0),(61,10270,43,36.8,25,0),(62,10271,33,2,24,0),(63,10272,20,64.8,6,0),(64,10272,31,10,40,0),(65,10272,72,27.8,24,0),(66,10273,10,24.8,24,0.05),(67,10273,31,10,15,0.05),(68,10273,33,2,20,0),(69,10273,40,14.7,60,0.05),(70,10273,76,14.4,33,0.05),(71,10274,71,17.2,20,0),(72,10274,72,27.8,7,0),(73,10275,24,3.6,12,0.05),(74,10275,59,44,6,0.05),(75,10276,10,24.8,15,0),(76,10276,13,4.8,10,0),(77,10277,28,36.4,20,0),(78,10277,62,39.4,12,0),(79,10278,44,15.5,16,0),(80,10278,59,44,15,0),(81,10278,63,35.1,8,0),(82,10278,73,12,25,0),(83,10279,17,31.2,15,0.25),(84,10280,24,3.6,12,0),(85,10280,55,19.2,20,0),(86,10280,75,6.2,30,0),(87,10281,19,7.3,1,0),(88,10281,24,3.6,6,0),(89,10281,35,14.4,4,0),(90,10282,30,20.7,6,0),(91,10282,57,15.6,2,0),(92,10283,15,12.4,20,0),(93,10283,19,7.3,18,0),(94,10283,60,27.2,35,0),(95,10283,72,27.8,3,0),(96,10284,27,35.1,15,0.25),(97,10284,44,15.5,21,0),(98,10284,60,27.2,20,0.25),(99,10284,67,11.2,5,0.25),(100,10285,1,14.4,45,0.2),(101,10285,40,14.7,40,0.2),(102,10285,53,26.2,36,0.2),(103,10286,35,14.4,100,0),(104,10286,62,39.4,40,0),(105,10287,16,13.9,40,0.15),(106,10287,34,11.2,20,0),(107,10287,46,9.6,15,0.15),(108,10288,54,5.9,10,0.1),(109,10288,68,10,3,0.1),(110,10289,3,8,30,0),(111,10289,64,26.6,9,0),(112,10290,5,17,20,0),(113,10290,29,99,15,0),(114,10290,49,16,15,0),(115,10290,77,10.4,10,0),(116,10291,13,4.8,20,0.1),(117,10291,44,15.5,24,0.1),(118,10291,51,42.4,2,0.1),(119,10292,20,64.8,20,0),(120,10293,18,50,12,0),(121,10293,24,3.6,10,0),(122,10293,63,35.1,5,0),(123,10293,75,6.2,6,0),(124,10294,1,14.4,18,0),(125,10294,17,31.2,15,0),(126,10294,43,36.8,15,0),(127,10294,60,27.2,21,0),(128,10294,75,6.2,6,0),(129,10295,56,30.4,4,0),(130,10296,11,16.8,12,0),(131,10296,16,13.9,30,0),(132,10296,69,28.8,15,0),(133,10297,39,14.4,60,0),(134,10297,72,27.8,20,0),(135,10298,2,15.2,40,0),(136,10298,36,15.2,40,0.25),(137,10298,59,44,30,0.25),(138,10298,62,39.4,15,0),(139,10299,19,7.3,15,0),(140,10299,70,12,20,0),(141,10300,66,13.6,30,0),(142,10300,68,10,20,0),(143,10301,40,14.7,10,0),(144,10301,56,30.4,20,0),(145,10302,17,31.2,40,0),(146,10302,28,36.4,28,0),(147,10302,43,36.8,12,0),(148,10303,40,14.7,40,0.1),(149,10303,65,16.8,30,0.1),(150,10303,68,10,15,0.1),(151,10304,49,16,30,0),(152,10304,59,44,10,0),(153,10304,71,17.2,2,0),(154,10305,18,50,25,0.1),(155,10305,29,99,25,0.1),(156,10305,39,14.4,30,0.1),(157,10306,30,20.7,10,0),(158,10306,53,26.2,10,0),(159,10306,54,5.9,5,0),(160,10307,62,39.4,10,0),(161,10307,68,10,3,0),(162,10308,53,32.8,5,0),(163,10308,69,28.8,1,0),(164,10309,4,17.6,20,0),(165,10309,6,20,30,0),(166,10309,42,11.2,2,0),(167,10309,43,36.8,20,0),(168,10309,71,17.2,3,0),(169,10310,16,13.9,10,0),(170,10310,62,39.4,5,0),(171,10311,42,11.2,6,0),(172,10311,69,28.8,7,0),(173,10312,28,36.4,4,0),(174,10312,43,36.8,24,0),(175,10312,53,26.2,20,0),(176,10312,75,6.2,10,0),(177,10313,36,15.2,12,0),(178,10314,32,25.6,40,0.1),(179,10314,58,10.6,30,0.1),(180,10314,62,39.4,25,0.1),(181,10315,34,11.2,14,0),(182,10315,70,12,30,0),(183,10316,41,7.7,10,0),(184,10316,62,39.4,70,0),(185,10317,1,14.4,20,0),(186,10318,41,7.7,20,0),(187,10318,76,14.4,6,0),(188,10319,17,31.2,8,0),(189,10319,28,36.4,14,0),(190,10319,76,14.4,30,0),(191,10320,71,17.2,30,0),(192,10321,35,14.4,10,0),(193,10322,52,5.6,20,0),(194,10323,15,12.4,5,0),(195,10323,25,11.2,4,0),(196,10323,39,14.4,4,0),(197,10324,16,13.9,21,0.15),(198,10324,35,14.4,70,0.15),(199,10324,46,9.6,30,0),(200,10324,59,44,40,0.15),(201,10324,63,35.1,80,0.15),(202,10325,6,20,6,0),(203,10325,13,4.8,12,0),(204,10325,14,18.6,9,0),(205,10325,31,10,4,0),(206,10325,72,27.8,40,0),(207,10326,4,17.6,24,0),(208,10326,57,15.6,16,0),(209,10326,75,6.2,50,0),(210,10327,2,15.2,25,0.2),(211,10327,11,16.8,50,0.2),(212,10327,30,20.7,35,0.2),(213,10327,58,10.6,30,0.2),(214,10328,59,44,9,0),(215,10328,65,16.8,40,0),(216,10328,68,10,10,0),(217,10329,19,7.3,10,0.05),(218,10329,30,20.7,8,0.05),(219,10329,38,210.8,20,0.05),(220,10329,56,30.4,12,0.05),(221,10330,26,24.9,50,0.15),(222,10330,72,27.8,25,0.15),(223,10331,54,5.9,15,0),(224,10332,18,50,40,0.2),(225,10332,42,11.2,10,0.2),(226,10332,47,7.6,16,0.2),(227,10333,14,18.6,10,0),(228,10333,21,8,10,0.1),(229,10333,71,17.2,40,0.1),(230,10334,52,5.6,8,0),(231,10334,68,10,10,0),(232,10335,2,15.2,7,0.2),(233,10335,31,10,25,0.2),(234,10335,32,25.6,6,0.2),(235,10335,51,42.4,48,0.2),(236,10336,4,17.6,18,0.1),(237,10337,23,7.2,40,0),(238,10337,26,24.9,24,0),(239,10337,36,15.2,20,0),(240,10337,37,20.8,28,0),(241,10337,72,27.8,25,0),(242,10338,17,31.2,20,0),(243,10338,30,20.7,15,0),(244,10339,4,17.6,10,0),(245,10339,17,31.2,70,0.05),(246,10339,62,39.4,28,0),(247,10340,18,50,20,0.05),(248,10340,41,7.7,12,0.05),(249,10340,43,36.8,40,0.05),(250,10341,33,2,8,0),(251,10341,59,44,9,0.15),(252,10342,2,15.2,24,0.2),(253,10342,31,10,56,0.2),(254,10342,36,15.2,40,0.2),(255,10342,55,19.2,40,0.2),(256,10343,64,26.6,50,0),(257,10343,68,10,4,0.05),(258,10343,76,14.4,15,0),(259,10344,4,17.6,35,0),(260,10344,8,32,70,0.25),(261,10345,8,32,70,0),(262,10345,19,7.3,80,0),(263,10345,42,11.2,9,0),(264,10346,17,31.2,36,0.1),(265,10346,56,30.4,20,0),(266,10347,25,11.2,10,0),(267,10347,39,14.4,50,0.15),(268,10347,40,14.7,4,0),(269,10347,75,6.2,6,0.15),(270,10348,1,14.4,15,0.15),(271,10348,23,7.2,25,0),(272,10349,54,5.9,24,0),(273,10350,50,13,15,0.1),(274,10350,69,28.8,18,0.1),(275,10351,38,210.8,20,0.05),(276,10351,41,7.7,13,0),(277,10351,44,15.5,77,0.05),(278,10351,65,16.8,10,0.05),(279,10352,24,3.6,10,0),(280,10352,54,5.9,20,0.15),(281,10353,11,16.8,12,0.2),(282,10353,38,210.8,50,0.2),(283,10354,1,14.4,12,0),(284,10354,29,99,4,0),(285,10355,24,3.6,25,0),(286,10355,57,15.6,25,0),(287,10356,31,10,30,0),(288,10356,55,19.2,12,0),(289,10356,69,28.8,20,0),(290,10357,10,24.8,30,0.2),(291,10357,26,24.9,16,0),(292,10357,60,27.2,8,0.2),(293,10358,24,3.6,10,0.05),(294,10358,34,11.2,10,0.05),(295,10358,36,15.2,20,0.05),(296,10359,16,13.9,56,0.05),(297,10359,31,10,70,0.05),(298,10359,60,27.2,80,0.05),(299,10360,28,36.4,30,0),(300,10360,29,99,35,0),(301,10360,38,210.8,10,0),(302,10360,49,16,35,0),(303,10360,54,5.9,28,0),(304,10361,39,14.4,54,0.1),(305,10361,60,27.2,55,0.1),(306,10362,25,11.2,50,0),(307,10362,51,42.4,20,0),(308,10362,54,5.9,24,0),(309,10363,31,10,20,0),(310,10363,75,6.2,12,0),(311,10363,76,14.4,12,0),(312,10364,69,28.8,30,0),(313,10364,71,17.2,5,0),(314,10365,11,16.8,24,0),(315,10366,65,16.8,5,0),(316,10366,77,10.4,5,0),(317,10367,34,11.2,36,0),(318,10367,54,5.9,18,0),(319,10367,65,16.8,15,0),(320,10367,77,10.4,7,0),(321,10368,21,8,5,0.1),(322,10368,28,36.4,13,0.1),(323,10368,57,15.6,25,0),(324,10368,64,26.6,35,0.1),(325,10369,29,99,20,0),(326,10369,56,30.4,18,0.25),(327,10370,1,14.4,15,0.15),(328,10370,64,26.6,30,0),(329,10370,74,8,20,0.15),(330,10371,36,15.2,6,0.2),(331,10372,20,64.8,12,0.25),(332,10372,38,210.8,40,0.25),(333,10372,60,27.2,70,0.25),(334,10372,72,27.8,42,0.25),(335,10373,58,10.6,80,0.2),(336,10373,71,17.2,50,0.2),(337,10374,31,10,30,0),(338,10374,58,10.6,15,0),(339,10375,14,18.6,15,0),(340,10375,54,5.9,10,0),(341,10376,31,10,42,0.05),(342,10377,28,36.4,20,0.15),(343,10377,39,14.4,20,0.15),(344,10378,71,17.2,6,0),(345,10379,41,7.7,8,0.1),(346,10379,63,35.1,16,0.1),(347,10379,65,16.8,20,0.1),(348,10380,30,20.7,18,0.1),(349,10380,53,26.2,20,0.1),(350,10380,60,27.2,6,0.1),(351,10380,70,12,30,0),(352,10381,74,8,14,0),(353,10382,5,17,32,0),(354,10382,18,50,9,0),(355,10382,29,99,14,0),(356,10382,33,2,60,0),(357,10382,74,8,50,0),(358,10383,13,4.8,20,0),(359,10383,50,13,15,0),(360,10383,56,30.4,20,0),(361,10384,20,64.8,28,0),(362,10384,60,27.2,15,0),(363,10385,7,24,10,0.2),(364,10385,60,27.2,20,0.2),(365,10385,68,10,8,0.2),(366,10386,24,3.6,15,0),(367,10386,34,11.2,10,0),(368,10387,24,3.6,15,0),(369,10387,28,36.4,6,0),(370,10387,59,44,12,0),(371,10387,71,17.2,15,0),(372,10388,45,7.6,15,0.2),(373,10388,52,5.6,20,0.2),(374,10388,53,26.2,40,0),(375,10389,10,24.8,16,0),(376,10389,55,19.2,15,0),(377,10389,62,39.4,20,0),(378,10389,70,12,30,0),(379,10390,31,10,60,0.1),(380,10390,35,14.4,40,0.1),(381,10390,46,9.6,45,0),(382,10390,72,27.8,24,0.1),(383,10391,13,4.8,18,0),(384,10392,69,28.8,50,0),(385,10393,2,15.2,25,0.25),(386,10393,14,18.6,42,0.25),(387,10393,25,11.2,7,0.25),(388,10393,26,24.9,70,0.25),(389,10393,31,10,32,0),(390,10394,13,4.8,10,0),(391,10394,62,39.4,10,0),(392,10395,46,9.6,28,0.1),(393,10395,53,26.2,70,0.1),(394,10395,69,28.8,8,0),(395,10396,23,7.2,40,0),(396,10396,71,17.2,60,0),(397,10396,72,27.8,21,0),(398,10397,21,8,10,0.15),(399,10397,51,42.4,18,0.15),(400,10398,35,14.4,30,0),(401,10398,55,19.2,120,0.1),(402,10399,68,10,60,0),(403,10399,71,17.2,30,0),(404,10399,76,14.4,35,0),(405,10399,77,10.4,14,0),(406,10400,29,99,21,0),(407,10400,35,14.4,35,0),(408,10400,49,16,30,0),(409,10401,30,20.7,18,0),(410,10401,56,30.4,70,0),(411,10401,65,16.8,20,0),(412,10401,71,17.2,60,0),(413,10402,23,7.2,60,0),(414,10402,63,35.1,65,0),(415,10403,16,13.9,21,0.15),(416,10403,48,10.2,70,0.15),(417,10404,26,24.9,30,0.05),(418,10404,42,11.2,40,0.05),(419,10404,49,16,30,0.05),(420,10405,3,8,50,0),(421,10406,1,14.4,10,0),(422,10406,21,8,30,0.1),(423,10406,28,36.4,42,0.1),(424,10406,36,15.2,5,0.1),(425,10406,40,14.7,2,0.1),(426,10407,11,16.8,30,0),(427,10407,69,28.8,15,0),(428,10407,71,17.2,15,0),(429,10408,37,20.8,10,0),(430,10408,54,5.9,6,0),(431,10408,62,39.4,35,0),(432,10409,14,18.6,12,0),(433,10409,21,8,12,0),(434,10410,33,2,49,0),(435,10410,59,44,16,0),(436,10411,41,7.7,25,0.2),(437,10411,44,15.5,40,0.2),(438,10411,59,44,9,0.2),(439,10412,14,18.6,20,0.1),(440,10413,1,14.4,24,0),(441,10413,62,39.4,40,0),(442,10413,76,14.4,14,0),(443,10414,19,7.3,18,0.05),(444,10414,33,2,50,0),(445,10415,17,31.2,2,0),(446,10415,33,2,20,0),(447,10416,19,7.3,20,0),(448,10416,53,26.2,10,0),(449,10416,57,15.6,20,0),(450,10417,38,210.8,50,0),(451,10417,46,9.6,2,0.25),(452,10417,68,10,36,0.25),(453,10417,77,10.4,35,0),(454,10418,2,15.2,60,0),(455,10418,47,7.6,55,0),(456,10418,61,22.8,16,0),(457,10418,74,8,15,0),(458,10419,60,27.2,60,0.05),(459,10419,69,28.8,20,0.05),(460,10420,9,77.6,20,0.1),(461,10420,13,4.8,2,0.1),(462,10420,70,12,8,0.1),(463,10420,73,12,20,0.1),(464,10421,19,7.3,4,0.15),(465,10421,26,24.9,30,0),(466,10421,53,26.2,15,0.15),(467,10421,77,10.4,10,0.15),(468,10422,26,24.9,2,0),(469,10423,31,10,14,0),(470,10423,59,44,20,0),(471,10424,35,14.4,60,0.2),(472,10424,38,210.8,49,0.2),(473,10424,68,10,30,0.2),(474,10425,55,19.2,10,0.25),(475,10425,76,14.4,20,0.25),(476,10426,56,30.4,5,0),(477,10426,64,26.6,7,0),(478,10427,14,18.6,35,0),(479,10428,46,9.6,20,0),(480,10429,50,13,40,0),(481,10429,63,35.1,35,0.25),(482,10430,17,31.2,45,0.2),(483,10430,21,8,50,0),(484,10430,56,30.4,30,0),(485,10430,59,44,70,0.2),(486,10431,17,31.2,50,0.25),(487,10431,40,14.7,50,0.25),(488,10431,47,7.6,30,0.25),(489,10432,26,24.9,10,0),(490,10432,54,5.9,40,0),(491,10433,56,30.4,28,0),(492,10434,11,16.8,6,0),(493,10434,76,14.4,18,0.15),(494,10435,2,15.2,10,0),(495,10435,22,16.8,12,0),(496,10435,72,27.8,10,0),(497,10436,46,9.6,5,0),(498,10436,56,30.4,40,0.1),(499,10436,64,26.6,30,0.1),(500,10436,75,6.2,24,0.1),(501,10437,53,26.2,15,0),(502,10438,19,7.3,15,0.2),(503,10438,34,11.2,20,0.2),(504,10438,57,15.6,15,0.2),(505,10439,12,30.4,15,0),(506,10439,16,13.9,16,0),(507,10439,64,26.6,6,0),(508,10439,74,8,30,0),(509,10440,2,15.2,45,0.15),(510,10440,16,13.9,49,0.15),(511,10440,29,99,24,0.15),(512,10440,61,22.8,90,0.15),(513,10441,27,35.1,50,0),(514,10442,11,16.8,30,0),(515,10442,54,5.9,80,0),(516,10442,66,13.6,60,0),(517,10443,11,16.8,6,0.2),(518,10443,28,36.4,12,0),(519,10444,17,31.2,10,0),(520,10444,26,24.9,15,0),(521,10444,35,14.4,8,0),(522,10444,41,7.7,30,0),(523,10445,39,14.4,6,0),(524,10445,54,5.9,15,0),(525,10446,19,7.3,12,0.1),(526,10446,24,3.6,20,0.1),(527,10446,31,10,3,0.1),(528,10446,52,5.6,15,0.1),(529,10447,19,7.3,40,0),(530,10447,65,16.8,35,0),(531,10447,71,17.2,2,0),(532,10448,26,24.9,6,0),(533,10448,40,14.7,20,0),(534,10449,10,24.8,14,0),(535,10449,52,5.6,20,0),(536,10449,62,39.4,35,0),(537,10450,10,24.8,20,0.2),(538,10450,54,5.9,6,0.2),(539,10451,55,19.2,120,0.1),(540,10451,64,26.6,35,0.1),(541,10451,65,16.8,28,0.1),(542,10451,77,10.4,55,0.1),(543,10452,28,36.4,15,0),(544,10452,44,15.5,100,0.05),(545,10453,48,10.2,15,0.1),(546,10453,70,12,25,0.1),(547,10454,16,13.9,20,0.2),(548,10454,33,2,20,0.2),(549,10454,46,9.6,10,0.2),(550,10455,39,14.4,20,0),(551,10455,53,26.2,50,0),(552,10455,61,22.8,25,0),(553,10455,71,17.2,30,0),(554,10456,21,8,40,0.15),(555,10456,49,16,21,0.15),(556,10457,59,44,36,0),(557,10458,26,24.9,30,0),(558,10458,28,36.4,30,0),(559,10458,43,36.8,20,0),(560,10458,56,30.4,15,0),(561,10458,71,17.2,50,0),(562,10459,7,24,16,0.05),(563,10459,46,9.6,20,0.05),(564,10459,72,27.8,40,0),(565,10460,68,10,21,0.25),(566,10460,75,6.2,4,0.25),(567,10461,21,8,40,0.25),(568,10461,30,20.7,28,0.25),(569,10461,55,19.2,60,0.25),(570,10462,13,4.8,1,0),(571,10462,23,7.2,21,0),(572,10463,19,7.3,21,0),(573,10463,42,11.2,50,0),(574,10464,4,17.6,16,0.2),(575,10464,43,36.8,3,0),(576,10464,56,30.4,30,0.2),(577,10464,60,27.2,20,0),(578,10465,24,3.6,25,0),(579,10465,29,99,18,0.1),(580,10465,40,14.7,20,0),(581,10465,45,7.6,30,0.1),(582,10465,50,13,25,0),(583,10466,11,16.8,10,0),(584,10466,46,9.6,5,0),(585,10467,24,3.6,28,0),(586,10467,25,11.2,12,0),(587,10468,30,20.7,8,0),(588,10468,43,36.8,15,0),(589,10469,2,15.2,40,0.15),(590,10469,16,13.9,35,0.15),(591,10469,44,15.5,2,0.15),(592,10470,18,50,30,0),(593,10470,23,7.2,15,0),(594,10470,64,26.6,8,0),(595,10471,7,24,30,0),(596,10471,56,30.4,20,0),(597,10472,24,3.6,80,0.05),(598,10472,51,42.4,18,0),(599,10473,33,2,12,0),(600,10473,71,17.2,12,0),(601,10474,14,18.6,12,0),(602,10474,28,36.4,18,0),(603,10474,40,14.7,21,0),(604,10474,75,6.2,10,0),(605,10475,31,10,35,0.15),(606,10475,66,13.6,60,0.15),(607,10475,76,14.4,42,0.15),(608,10476,55,19.2,2,0.05),(609,10476,70,12,12,0),(610,10477,1,14.4,15,0),(611,10477,21,8,21,0.25),(612,10477,39,14.4,20,0.25),(613,10478,10,24.8,20,0.05),(614,10479,38,210.8,30,0),(615,10479,53,26.2,28,0),(616,10479,59,44,60,0),(617,10479,64,26.6,30,0),(618,10480,47,7.6,30,0),(619,10480,59,44,12,0),(620,10481,49,16,24,0),(621,10481,60,27.2,40,0),(622,10482,40,14.7,10,0),(623,10483,34,11.2,35,0.05),(624,10483,77,10.4,30,0.05),(625,10484,21,8,14,0),(626,10484,40,14.7,10,0),(627,10484,51,42.4,3,0),(628,10485,2,15.2,20,0.1),(629,10485,3,8,20,0.1),(630,10485,55,19.2,30,0.1),(631,10485,70,12,60,0.1),(632,10486,11,16.8,5,0),(633,10486,51,42.4,25,0),(634,10486,74,8,16,0),(635,10487,19,7.3,5,0),(636,10487,26,24.9,30,0),(637,10487,54,5.9,24,0.25),(638,10488,59,44,30,0),(639,10488,73,12,20,0.2),(640,10489,11,16.8,15,0.25),(641,10489,16,13.9,18,0),(642,10490,59,44,60,0),(643,10490,68,10,30,0),(644,10490,75,6.2,36,0),(645,10491,44,15.5,15,0.15),(646,10491,77,10.4,7,0.15),(647,10492,25,11.2,60,0.05),(648,10492,42,11.2,20,0.05),(649,10493,65,16.8,15,0.1),(650,10493,66,13.6,10,0.1),(651,10493,69,28.8,10,0.1),(652,10494,56,30.4,30,0),(653,10495,23,7.2,10,0),(654,10495,41,7.7,20,0),(655,10495,77,10.4,5,0),(656,10496,31,10,20,0.05),(657,10497,56,30.4,14,0),(658,10497,72,27.8,25,0),(659,10497,77,10.4,25,0),(660,10498,24,4.5,14,0),(661,10498,40,18.4,5,0),(662,10498,42,14,30,0),(663,10499,28,45.6,20,0),(664,10499,49,20,25,0),(665,10500,15,15.5,12,0.05),(666,10500,28,45.6,8,0.05),(667,10501,54,7.45,20,0),(668,10502,45,9.5,21,0),(669,10502,53,32.8,6,0),(670,10502,67,14,30,0),(671,10503,14,23.25,70,0),(672,10503,65,21.05,20,0),(673,10504,2,19,12,0),(674,10504,21,10,12,0),(675,10504,53,32.8,10,0),(676,10504,61,28.5,25,0),(677,10505,62,49.3,3,0),(678,10506,25,14,18,0.1),(679,10506,70,15,14,0.1),(680,10507,43,46,15,0.15),(681,10507,48,12.75,15,0.15),(682,10508,13,6,10,0),(683,10508,39,18,10,0),(684,10509,28,45.6,3,0),(685,10510,29,123.79,36,0),(686,10510,75,7.75,36,0.1),(687,10511,4,22,50,0.15),(688,10511,7,30,50,0.15),(689,10511,8,40,10,0.15),(690,10512,24,4.5,10,0.15),(691,10512,46,12,9,0.15),(692,10512,47,9.5,6,0.15),(693,10512,60,34,12,0.15),(694,10513,21,10,40,0.2),(695,10513,32,32,50,0.2),(696,10513,61,28.5,15,0.2),(697,10514,20,81,39,0),(698,10514,28,45.6,35,0),(699,10514,56,38,70,0),(700,10514,65,21.05,39,0),(701,10514,75,7.75,50,0),(702,10515,9,97,16,0.15),(703,10515,16,17.45,50,0),(704,10515,27,43.9,120,0),(705,10515,33,2.5,16,0.15),(706,10515,60,34,84,0.15),(707,10516,18,62.5,25,0.1),(708,10516,41,9.65,80,0.1),(709,10516,42,14,20,0),(710,10517,52,7,6,0),(711,10517,59,55,4,0),(712,10517,70,15,6,0),(713,10518,24,4.5,5,0),(714,10518,38,263.5,15,0),(715,10518,44,19.45,9,0),(716,10519,10,31,16,0.05),(717,10519,56,38,40,0),(718,10519,60,34,10,0.05),(719,10520,24,4.5,8,0),(720,10520,53,32.8,5,0),(721,10521,35,18,3,0),(722,10521,41,9.65,10,0),(723,10521,68,12.5,6,0),(724,10522,1,18,40,0.2),(725,10522,8,40,24,0),(726,10522,30,25.89,20,0.2),(727,10522,40,18.4,25,0.2),(728,10523,17,39,25,0.1),(729,10523,20,81,15,0.1),(730,10523,37,26,18,0.1),(731,10523,41,9.65,6,0.1),(732,10524,10,31,2,0),(733,10524,30,25.89,10,0),(734,10524,43,46,60,0),(735,10524,54,7.45,15,0),(736,10525,36,19,30,0),(737,10525,40,18.4,15,0.1),(738,10526,1,18,8,0.15),(739,10526,13,6,10,0),(740,10526,56,38,30,0.15),(741,10527,4,22,50,0.1),(742,10527,36,19,30,0.1),(743,10528,11,21,3,0),(744,10528,33,2.5,8,0.2),(745,10528,72,34.8,9,0),(746,10529,55,24,14,0),(747,10529,68,12.5,20,0),(748,10529,69,36,10,0),(749,10530,17,39,40,0),(750,10530,43,46,25,0),(751,10530,61,28.5,20,0),(752,10530,76,18,50,0),(753,10531,59,55,2,0),(754,10532,30,25.89,15,0),(755,10532,66,17,24,0),(756,10533,4,22,50,0.05),(757,10533,72,34.8,24,0),(758,10533,73,15,24,0.05),(759,10534,30,25.89,10,0),(760,10534,40,18.4,10,0.2),(761,10534,54,7.45,10,0.2),(762,10535,11,21,50,0.1),(763,10535,40,18.4,10,0.1),(764,10535,57,19.5,5,0.1),(765,10535,59,55,15,0.1),(766,10536,12,38,15,0.25),(767,10536,31,12.5,20,0),(768,10536,33,2.5,30,0),(769,10536,60,34,35,0.25),(770,10537,31,12.5,30,0),(771,10537,51,53,6,0),(772,10537,58,13.25,20,0),(773,10537,72,34.8,21,0),(774,10537,73,15,9,0),(775,10538,70,15,7,0),(776,10538,72,34.8,1,0),(777,10539,13,6,8,0),(778,10539,21,10,15,0),(779,10539,33,2.5,15,0),(780,10539,49,20,6,0),(781,10540,3,10,60,0),(782,10540,26,31.23,40,0),(783,10540,38,263.5,30,0),(784,10540,68,12.5,35,0),(785,10541,24,4.5,35,0.1),(786,10541,38,263.5,4,0.1),(787,10541,65,21.05,36,0.1),(788,10541,71,21.5,9,0.1),(789,10542,11,21,15,0.05),(790,10542,54,7.45,24,0.05),(791,10543,12,38,30,0.15),(792,10543,23,9,70,0.15),(793,10544,28,45.6,7,0),(794,10544,67,14,7,0),(795,10545,11,21,10,0),(796,10546,7,30,10,0),(797,10546,35,18,30,0),(798,10546,62,49.3,40,0),(799,10547,32,32,24,0.15),(800,10547,36,19,60,0),(801,10548,34,14,10,0.25),(802,10548,41,9.65,14,0),(803,10549,31,12.5,55,0.15),(804,10549,45,9.5,100,0.15),(805,10549,51,53,48,0.15),(806,10550,17,39,8,0.1),(807,10550,19,9.2,10,0),(808,10550,21,10,6,0.1),(809,10550,61,28.5,10,0.1),(810,10551,16,17.45,40,0.15),(811,10551,35,18,20,0.15),(812,10551,44,19.45,40,0),(813,10552,69,36,18,0),(814,10552,75,7.75,30,0),(815,10553,11,21,15,0),(816,10553,16,17.45,14,0),(817,10553,22,21,24,0),(818,10553,31,12.5,30,0),(819,10553,35,18,6,0),(820,10554,16,17.45,30,0.05),(821,10554,23,9,20,0.05),(822,10554,62,49.3,20,0.05),(823,10554,77,13,10,0.05),(824,10555,14,23.25,30,0.2),(825,10555,19,9.2,35,0.2),(826,10555,24,4.5,18,0.2),(827,10555,51,53,20,0.2),(828,10555,56,38,40,0.2),(829,10556,72,34.8,24,0),(830,10557,64,33.25,30,0),(831,10557,75,7.75,20,0),(832,10558,47,9.5,25,0),(833,10558,51,53,20,0),(834,10558,52,7,30,0),(835,10558,53,32.8,18,0),(836,10558,73,15,3,0),(837,10559,41,9.65,12,0.05),(838,10559,55,24,18,0.05),(839,10560,30,25.89,20,0),(840,10560,62,49.3,15,0.25),(841,10561,44,19.45,10,0),(842,10561,51,53,50,0),(843,10562,33,2.5,20,0.1),(844,10562,62,49.3,10,0.1),(845,10563,36,19,25,0),(846,10563,52,7,70,0),(847,10564,17,39,16,0.05),(848,10564,31,12.5,6,0.05),(849,10564,55,24,25,0.05),(850,10565,24,4.5,25,0.1),(851,10565,64,33.25,18,0.1),(852,10566,11,21,35,0.15),(853,10566,18,62.5,18,0.15),(854,10566,76,18,10,0),(855,10567,31,12.5,60,0.2),(856,10567,51,53,3,0),(857,10567,59,55,40,0.2),(858,10568,10,31,5,0),(859,10569,31,12.5,35,0.2),(860,10569,76,18,30,0),(861,10570,11,21,15,0.05),(862,10570,56,38,60,0.05),(863,10571,14,23.25,11,0.15),(864,10571,42,14,28,0.15),(865,10572,16,17.45,12,0.1),(866,10572,32,32,10,0.1),(867,10572,40,18.4,50,0),(868,10572,75,7.75,15,0.1),(869,10573,17,39,18,0),(870,10573,34,14,40,0),(871,10573,53,32.8,25,0),(872,10574,33,2.5,14,0),(873,10574,40,18.4,2,0),(874,10574,62,49.3,10,0),(875,10574,64,33.25,6,0),(876,10575,59,55,12,0),(877,10575,63,43.9,6,0),(878,10575,72,34.8,30,0),(879,10575,76,18,10,0),(880,10576,1,18,10,0),(881,10576,31,12.5,20,0),(882,10576,44,19.45,21,0),(883,10577,39,18,10,0),(884,10577,75,7.75,20,0),(885,10577,77,13,18,0),(886,10578,35,18,20,0),(887,10578,57,19.5,6,0),(888,10579,15,15.5,10,0),(889,10579,75,7.75,21,0),(890,10580,14,23.25,15,0.05),(891,10580,41,9.65,9,0.05),(892,10580,65,21.05,30,0.05),(893,10581,75,7.75,50,0.2),(894,10582,57,19.5,4,0),(895,10582,76,18,14,0),(896,10583,29,123.79,10,0),(897,10583,60,34,24,0.15),(898,10583,69,36,10,0.15),(899,10584,31,12.5,50,0.05),(900,10585,47,9.5,15,0),(901,10586,52,7,4,0.15),(902,10587,26,31.23,6,0),(903,10587,35,18,20,0),(904,10587,77,13,20,0),(905,10588,18,62.5,40,0.2),(906,10588,42,14,100,0.2),(907,10589,35,18,4,0),(908,10590,1,18,20,0),(909,10590,77,13,60,0.05),(910,10591,3,10,14,0),(911,10591,7,30,10,0),(912,10591,54,7.45,50,0),(913,10592,15,15.5,25,0.05),(914,10592,26,31.23,5,0.05),(915,10593,20,81,21,0.2),(916,10593,69,36,20,0.2),(917,10593,76,18,4,0.2),(918,10594,52,7,24,0),(919,10594,58,13.25,30,0),(920,10595,35,18,30,0.25),(921,10595,61,28.5,120,0.25),(922,10595,69,36,65,0.25),(923,10596,56,38,5,0.2),(924,10596,63,43.9,24,0.2),(925,10596,75,7.75,30,0.2),(926,10597,24,4.5,35,0.2),(927,10597,57,19.5,20,0),(928,10597,65,21.05,12,0.2),(929,10598,27,43.9,50,0),(930,10598,71,21.5,9,0),(931,10599,62,49.3,10,0),(932,10600,54,7.45,4,0),(933,10600,73,15,30,0),(934,10601,13,6,60,0),(935,10601,59,55,35,0),(936,10602,77,13,5,0.25),(937,10603,22,21,48,0),(938,10603,49,20,25,0.05),(939,10604,48,12.75,6,0.1),(940,10604,76,18,10,0.1),(941,10605,16,17.45,30,0.05),(942,10605,59,55,20,0.05),(943,10605,60,34,70,0.05),(944,10605,71,21.5,15,0.05),(945,10606,4,22,20,0.2),(946,10606,55,24,20,0.2),(947,10606,62,49.3,10,0.2),(948,10607,7,30,45,0),(949,10607,17,39,100,0),(950,10607,33,2.5,14,0),(951,10607,40,18.4,42,0),(952,10607,72,34.8,12,0),(953,10608,56,38,28,0),(954,10609,1,18,3,0),(955,10609,10,31,10,0),(956,10609,21,10,6,0),(957,10610,36,19,21,0.25),(958,10611,1,18,6,0),(959,10611,2,19,10,0),(960,10611,60,34,15,0),(961,10612,10,31,70,0),(962,10612,36,19,55,0),(963,10612,49,20,18,0),(964,10612,60,34,40,0),(965,10612,76,18,80,0),(966,10613,13,6,8,0.1),(967,10613,75,7.75,40,0),(968,10614,11,21,14,0),(969,10614,21,10,8,0),(970,10614,39,18,5,0),(971,10615,55,24,5,0),(972,10616,38,263.5,15,0.05),(973,10616,56,38,14,0),(974,10616,70,15,15,0.05),(975,10616,71,21.5,15,0.05),(976,10617,59,55,30,0.15),(977,10618,6,25,70,0),(978,10618,56,38,20,0),(979,10618,68,12.5,15,0),(980,10619,21,10,42,0),(981,10619,22,21,40,0),(982,10620,24,4.5,5,0),(983,10620,52,7,5,0),(984,10621,19,9.2,5,0),(985,10621,23,9,10,0),(986,10621,70,15,20,0),(987,10621,71,21.5,15,0),(988,10622,2,19,20,0),(989,10622,68,12.5,18,0.2),(990,10623,14,23.25,21,0),(991,10623,19,9.2,15,0.1),(992,10623,21,10,25,0.1),(993,10623,24,4.5,3,0),(994,10623,35,18,30,0.1),(995,10624,28,45.6,10,0),(996,10624,29,123.79,6,0),(997,10624,44,19.45,10,0),(998,10625,14,23.25,3,0),(999,10625,42,14,5,0),(1000,10625,60,34,10,0),(1001,10626,53,32.8,12,0),(1002,10626,60,34,20,0),(1003,10626,71,21.5,20,0),(1004,10627,62,49.3,15,0),(1005,10627,73,15,35,0.15),(1006,10628,1,18,25,0),(1007,10629,29,123.79,20,0),(1008,10629,64,33.25,9,0),(1009,10630,55,24,12,0.05),(1010,10630,76,18,35,0),(1011,10631,75,7.75,8,0.1),(1012,10632,2,19,30,0.05),(1013,10632,33,2.5,20,0.05),(1014,10633,12,38,36,0.15),(1015,10633,13,6,13,0.15),(1016,10633,26,31.23,35,0.15),(1017,10633,62,49.3,80,0.15),(1018,10634,7,30,35,0),(1019,10634,18,62.5,50,0),(1020,10634,51,53,15,0),(1021,10634,75,7.75,2,0),(1022,10635,4,22,10,0.1),(1023,10635,5,21.35,15,0.1),(1024,10635,22,21,40,0),(1025,10636,4,22,25,0),(1026,10636,58,13.25,6,0),(1027,10637,11,21,10,0),(1028,10637,50,16.25,25,0.05),(1029,10637,56,38,60,0.05),(1030,10638,45,9.5,20,0),(1031,10638,65,21.05,21,0),(1032,10638,72,34.8,60,0),(1033,10639,18,62.5,8,0),(1034,10640,69,36,20,0.25),(1035,10640,70,15,15,0.25),(1036,10641,2,19,50,0),(1037,10641,40,18.4,60,0),(1038,10642,21,10,30,0.2),(1039,10642,61,28.5,20,0.2),(1040,10643,5,21.35,21,0.25),(1041,10643,63,43.9,2,0.25),(1042,10643,68,12.5,15,0.25),(1043,10644,18,62.5,4,0.1),(1044,10644,43,46,20,0),(1045,10644,46,12,21,0.1),(1046,10645,18,62.5,20,0),(1047,10645,36,19,15,0),(1048,10646,1,18,15,0.25),(1049,10646,10,31,18,0.25),(1050,10646,71,21.5,30,0.25),(1051,10646,77,13,35,0.25),(1052,10647,19,9.2,30,0),(1053,10647,39,18,20,0),(1054,10648,22,21,15,0),(1055,10648,24,4.5,15,0.15),(1056,10649,28,45.6,20,0),(1057,10649,72,34.8,15,0),(1058,10650,30,25.89,30,0),(1059,10650,53,32.8,25,0.05),(1060,10650,54,7.45,30,0),(1061,10651,19,9.2,12,0.25),(1062,10651,22,21,20,0.25),(1063,10652,30,25.89,2,0.25),(1064,10652,42,14,20,0),(1065,10653,16,17.45,30,0.1),(1066,10653,60,34,20,0.1),(1067,10654,4,22,12,0.1),(1068,10654,39,18,20,0.1),(1069,10654,54,7.45,6,0.1),(1070,10655,41,9.65,20,0.2),(1071,10656,14,23.25,3,0.1),(1072,10656,44,19.45,28,0.1),(1073,10656,47,9.5,6,0.1),(1074,10657,15,15.5,50,0),(1075,10657,41,9.65,24,0),(1076,10657,46,12,45,0),(1077,10657,47,9.5,10,0),(1078,10657,56,38,45,0),(1079,10657,60,34,30,0),(1080,10658,21,10,60,0),(1081,10658,40,18.4,70,0.05),(1082,10658,60,34,55,0.05),(1083,10658,77,13,70,0.05),(1084,10659,31,12.5,20,0.05),(1085,10659,40,18.4,24,0.05),(1086,10659,70,15,40,0.05),(1087,10660,20,81,21,0),(1088,10661,39,18,3,0.2),(1089,10661,58,13.25,49,0.2),(1090,10662,68,12.5,10,0),(1091,10663,40,18.4,30,0.05),(1092,10663,42,14,30,0.05),(1093,10663,51,53,20,0.05),(1094,10664,10,31,24,0.15),(1095,10664,56,38,12,0.15),(1096,10664,65,21.05,15,0.15),(1097,10665,51,53,20,0),(1098,10665,59,55,1,0),(1099,10665,76,18,10,0),(1100,10666,29,123.79,36,0),(1101,10666,65,21.05,10,0),(1102,10667,69,36,45,0.2),(1103,10667,71,21.5,14,0.2),(1104,10668,31,12.5,8,0.1),(1105,10668,55,24,4,0.1),(1106,10668,64,33.25,15,0.1),(1107,10669,36,19,30,0),(1108,10670,23,9,32,0),(1109,10670,46,12,60,0),(1110,10670,67,14,25,0),(1111,10670,73,15,50,0),(1112,10670,75,7.75,25,0),(1113,10671,16,17.45,10,0),(1114,10671,62,49.3,10,0),(1115,10671,65,21.05,12,0),(1116,10672,38,263.5,15,0.1),(1117,10672,71,21.5,12,0),(1118,10673,16,17.45,3,0),(1119,10673,42,14,6,0),(1120,10673,43,46,6,0),(1121,10674,23,9,5,0),(1122,10675,14,23.25,30,0),(1123,10675,53,32.8,10,0),(1124,10675,58,13.25,30,0),(1125,10676,10,31,2,0),(1126,10676,19,9.2,7,0),(1127,10676,44,19.45,21,0),(1128,10677,26,31.23,30,0.15),(1129,10677,33,2.5,8,0.15),(1130,10678,12,38,100,0),(1131,10678,33,2.5,30,0),(1132,10678,41,9.65,120,0),(1133,10678,54,7.45,30,0),(1134,10679,59,55,12,0),(1135,10680,16,17.45,50,0.25),(1136,10680,31,12.5,20,0.25),(1137,10680,42,14,40,0.25),(1138,10681,19,9.2,30,0.1),(1139,10681,21,10,12,0.1),(1140,10681,64,33.25,28,0),(1141,10682,33,2.5,30,0),(1142,10682,66,17,4,0),(1143,10682,75,7.75,30,0),(1144,10683,52,7,9,0),(1145,10684,40,18.4,20,0),(1146,10684,47,9.5,40,0),(1147,10684,60,34,30,0),(1148,10685,10,31,20,0),(1149,10685,41,9.65,4,0),(1150,10685,47,9.5,15,0),(1151,10686,17,39,30,0.2),(1152,10686,26,31.23,15,0),(1153,10687,9,97,50,0.25),(1154,10687,29,123.79,10,0),(1155,10687,36,19,6,0.25),(1156,10688,10,31,18,0.1),(1157,10688,28,45.6,60,0.1),(1158,10688,34,14,14,0),(1159,10689,1,18,35,0.25),(1160,10690,56,38,20,0.25),(1161,10690,77,13,30,0.25),(1162,10691,1,18,30,0),(1163,10691,29,123.79,40,0),(1164,10691,43,46,40,0),(1165,10691,44,19.45,24,0),(1166,10691,62,49.3,48,0),(1167,10692,23,9,20,0),(1168,10693,9,97,6,0),(1169,10693,54,7.45,60,0.15),(1170,10693,69,36,30,0.15),(1171,10693,73,15,15,0.15),(1172,10694,7,30,90,0),(1173,10694,59,55,25,0),(1174,10694,70,15,50,0),(1175,10695,8,40,10,0),(1176,10695,12,38,4,0),(1177,10695,24,4.5,20,0),(1178,10696,17,39,20,0),(1179,10696,46,12,18,0),(1180,10697,19,9.2,7,0.25),(1181,10697,35,18,9,0.25),(1182,10697,58,13.25,30,0.25),(1183,10697,70,15,30,0.25),(1184,10698,11,21,15,0),(1185,10698,17,39,8,0.05),(1186,10698,29,123.79,12,0.05),(1187,10698,65,21.05,65,0.05),(1188,10698,70,15,8,0.05),(1189,10699,47,9.5,12,0),(1190,10700,1,18,5,0.2),(1191,10700,34,14,12,0.2),(1192,10700,68,12.5,40,0.2),(1193,10700,71,21.5,60,0.2),(1194,10701,59,55,42,0.15),(1195,10701,71,21.5,20,0.15),(1196,10701,76,18,35,0.15),(1197,10702,3,10,6,0),(1198,10702,76,18,15,0),(1199,10703,2,19,5,0),(1200,10703,59,55,35,0),(1201,10703,73,15,35,0),(1202,10704,4,22,6,0),(1203,10704,24,4.5,35,0),(1204,10704,48,12.75,24,0),(1205,10705,31,12.5,20,0),(1206,10705,32,32,4,0),(1207,10706,16,17.45,20,0),(1208,10706,43,46,24,0),(1209,10706,59,55,8,0),(1210,10707,55,24,21,0),(1211,10707,57,19.5,40,0),(1212,10707,70,15,28,0.15),(1213,10708,5,21.35,4,0),(1214,10708,36,19,5,0),(1215,10709,8,40,40,0),(1216,10709,51,53,28,0),(1217,10709,60,34,10,0),(1218,10710,19,9.2,5,0),(1219,10710,47,9.5,5,0),(1220,10711,19,9.2,12,0),(1221,10711,41,9.65,42,0),(1222,10711,53,32.8,120,0),(1223,10712,53,32.8,3,0.05),(1224,10712,56,38,30,0),(1225,10713,10,31,18,0),(1226,10713,26,31.23,30,0),(1227,10713,45,9.5,110,0),(1228,10713,46,12,24,0),(1229,10714,2,19,30,0.25),(1230,10714,17,39,27,0.25),(1231,10714,47,9.5,50,0.25),(1232,10714,56,38,18,0.25),(1233,10714,58,13.25,12,0.25),(1234,10715,10,31,21,0),(1235,10715,71,21.5,30,0),(1236,10716,21,10,5,0),(1237,10716,51,53,7,0),(1238,10716,61,28.5,10,0),(1239,10717,21,10,32,0.05),(1240,10717,54,7.45,15,0),(1241,10717,69,36,25,0.05),(1242,10718,12,38,36,0),(1243,10718,16,17.45,20,0),(1244,10718,36,19,40,0),(1245,10718,62,49.3,20,0),(1246,10719,18,62.5,12,0.25),(1247,10719,30,25.89,3,0.25),(1248,10719,54,7.45,40,0.25),(1249,10720,35,18,21,0),(1250,10720,71,21.5,8,0),(1251,10721,44,19.45,50,0.05),(1252,10722,2,19,3,0),(1253,10722,31,12.5,50,0),(1254,10722,68,12.5,45,0),(1255,10722,75,7.75,42,0),(1256,10723,26,31.23,15,0),(1257,10724,10,31,16,0),(1258,10724,61,28.5,5,0),(1259,10725,41,9.65,12,0),(1260,10725,52,7,4,0),(1261,10725,55,24,6,0),(1262,10726,4,22,25,0),(1263,10726,11,21,5,0),(1264,10727,17,39,20,0.05),(1265,10727,56,38,10,0.05),(1266,10727,59,55,10,0.05),(1267,10728,30,25.89,15,0),(1268,10728,40,18.4,6,0),(1269,10728,55,24,12,0),(1270,10728,60,34,15,0),(1271,10729,1,18,50,0),(1272,10729,21,10,30,0),(1273,10729,50,16.25,40,0),(1274,10730,16,17.45,15,0.05),(1275,10730,31,12.5,3,0.05),(1276,10730,65,21.05,10,0.05),(1277,10731,21,10,40,0.05),(1278,10731,51,53,30,0.05),(1279,10732,76,18,20,0),(1280,10733,14,23.25,16,0),(1281,10733,28,45.6,20,0),(1282,10733,52,7,25,0),(1283,10734,6,25,30,0),(1284,10734,30,25.89,15,0),(1285,10734,76,18,20,0),(1286,10735,61,28.5,20,0.1),(1287,10735,77,13,2,0.1),(1288,10736,65,21.05,40,0),(1289,10736,75,7.75,20,0),(1290,10737,13,6,4,0),(1291,10737,41,9.65,12,0),(1292,10738,16,17.45,3,0),(1293,10739,36,19,6,0),(1294,10739,52,7,18,0),(1295,10740,28,45.6,5,0.2),(1296,10740,35,18,35,0.2),(1297,10740,45,9.5,40,0.2),(1298,10740,56,38,14,0.2),(1299,10741,2,19,15,0.2),(1300,10742,3,10,20,0),(1301,10742,60,34,50,0),(1302,10742,72,34.8,35,0),(1303,10743,46,12,28,0.05),(1304,10744,40,18.4,50,0.2),(1305,10745,18,62.5,24,0),(1306,10745,44,19.45,16,0),(1307,10745,59,55,45,0),(1308,10745,72,34.8,7,0),(1309,10746,13,6,6,0),(1310,10746,42,14,28,0),(1311,10746,62,49.3,9,0),(1312,10746,69,36,40,0),(1313,10747,31,12.5,8,0),(1314,10747,41,9.65,35,0),(1315,10747,63,43.9,9,0),(1316,10747,69,36,30,0),(1317,10748,23,9,44,0),(1318,10748,40,18.4,40,0),(1319,10748,56,38,28,0),(1320,10749,56,38,15,0),(1321,10749,59,55,6,0),(1322,10749,76,18,10,0),(1323,10750,14,23.25,5,0.15),(1324,10750,45,9.5,40,0.15),(1325,10750,59,55,25,0.15),(1326,10751,26,31.23,12,0.1),(1327,10751,30,25.89,30,0),(1328,10751,50,16.25,20,0.1),(1329,10751,73,15,15,0),(1330,10752,1,18,8,0),(1331,10752,69,36,3,0),(1332,10753,45,9.5,4,0),(1333,10753,74,10,5,0),(1334,10754,40,18.4,3,0),(1335,10755,47,9.5,30,0.25),(1336,10755,56,38,30,0.25),(1337,10755,57,19.5,14,0.25),(1338,10755,69,36,25,0.25),(1339,10756,18,62.5,21,0.2),(1340,10756,36,19,20,0.2),(1341,10756,68,12.5,6,0.2),(1342,10756,69,36,20,0.2),(1343,10757,34,14,30,0),(1344,10757,59,55,7,0),(1345,10757,62,49.3,30,0),(1346,10757,64,33.25,24,0),(1347,10758,26,31.23,20,0),(1348,10758,52,7,60,0),(1349,10758,70,15,40,0),(1350,10759,32,32,10,0),(1351,10760,25,14,12,0.25),(1352,10760,27,43.9,40,0),(1353,10760,43,46,30,0.25),(1354,10761,25,14,35,0.25),(1355,10761,75,7.75,18,0),(1356,10762,39,18,16,0),(1357,10762,47,9.5,30,0),(1358,10762,51,53,28,0),(1359,10762,56,38,60,0),(1360,10763,21,10,40,0),(1361,10763,22,21,6,0),(1362,10763,24,4.5,20,0),(1363,10764,3,10,20,0.1),(1364,10764,39,18,130,0.1),(1365,10765,65,21.05,80,0.1),(1366,10766,2,19,40,0),(1367,10766,7,30,35,0),(1368,10766,68,12.5,40,0),(1369,10767,42,14,2,0),(1370,10768,22,21,4,0),(1371,10768,31,12.5,50,0),(1372,10768,60,34,15,0),(1373,10768,71,21.5,12,0),(1374,10769,41,9.65,30,0.05),(1375,10769,52,7,15,0.05),(1376,10769,61,28.5,20,0),(1377,10769,62,49.3,15,0),(1378,10770,11,21,15,0.25),(1379,10771,71,21.5,16,0),(1380,10772,29,123.79,18,0),(1381,10772,59,55,25,0),(1382,10773,17,39,33,0),(1383,10773,31,12.5,70,0.2),(1384,10773,75,7.75,7,0.2),(1385,10774,31,12.5,2,0.25),(1386,10774,66,17,50,0),(1387,10775,10,31,6,0),(1388,10775,67,14,3,0),(1389,10776,31,12.5,16,0.05),(1390,10776,42,14,12,0.05),(1391,10776,45,9.5,27,0.05),(1392,10776,51,53,120,0.05),(1393,10777,42,14,20,0.2),(1394,10778,41,9.65,10,0),(1395,10779,16,17.45,20,0),(1396,10779,62,49.3,20,0),(1397,10780,70,15,35,0),(1398,10780,77,13,15,0),(1399,10781,54,7.45,3,0.2),(1400,10781,56,38,20,0.2),(1401,10781,74,10,35,0),(1402,10782,31,12.5,1,0),(1403,10783,31,12.5,10,0),(1404,10783,38,263.5,5,0),(1405,10784,36,19,30,0),(1406,10784,39,18,2,0.15),(1407,10784,72,34.8,30,0.15),(1408,10785,10,31,10,0),(1409,10785,75,7.75,10,0),(1410,10786,8,40,30,0.2),(1411,10786,30,25.89,15,0.2),(1412,10786,75,7.75,42,0.2),(1413,10787,2,19,15,0.05),(1414,10787,29,123.79,20,0.05),(1415,10788,19,9.2,50,0.05),(1416,10788,75,7.75,40,0.05),(1417,10789,18,62.5,30,0),(1418,10789,35,18,15,0),(1419,10789,63,43.9,30,0),(1420,10789,68,12.5,18,0),(1421,10790,7,30,3,0.15),(1422,10790,56,38,20,0.15),(1423,10791,29,123.79,14,0.05),(1424,10791,41,9.65,20,0.05),(1425,10792,2,19,10,0),(1426,10792,54,7.45,3,0),(1427,10792,68,12.5,15,0),(1428,10793,41,9.65,14,0),(1429,10793,52,7,8,0),(1430,10794,14,23.25,15,0.2),(1431,10794,54,7.45,6,0.2),(1432,10795,16,17.45,65,0),(1433,10795,17,39,35,0.25),(1434,10796,26,31.23,21,0.2),(1435,10796,44,19.45,10,0),(1436,10796,64,33.25,35,0.2),(1437,10796,69,36,24,0.2),(1438,10797,11,21,20,0),(1439,10798,62,49.3,2,0),(1440,10798,72,34.8,10,0),(1441,10799,13,6,20,0.15),(1442,10799,24,4.5,20,0.15),(1443,10799,59,55,25,0),(1444,10800,11,21,50,0.1),(1445,10800,51,53,10,0.1),(1446,10800,54,7.45,7,0.1),(1447,10801,17,39,40,0.25),(1448,10801,29,123.79,20,0.25),(1449,10802,30,25.89,25,0.25),(1450,10802,51,53,30,0.25),(1451,10802,55,24,60,0.25),(1452,10802,62,49.3,5,0.25),(1453,10803,19,9.2,24,0.05),(1454,10803,25,14,15,0.05),(1455,10803,59,55,15,0.05),(1456,10804,10,31,36,0),(1457,10804,28,45.6,24,0),(1458,10804,49,20,4,0.15),(1459,10805,34,14,10,0),(1460,10805,38,263.5,10,0),(1461,10806,2,19,20,0.25),(1462,10806,65,21.05,2,0),(1463,10806,74,10,15,0.25),(1464,10807,40,18.4,1,0),(1465,10808,56,38,20,0.15),(1466,10808,76,18,50,0.15),(1467,10809,52,7,20,0),(1468,10810,13,6,7,0),(1469,10810,25,14,5,0),(1470,10810,70,15,5,0),(1471,10811,19,9.2,15,0),(1472,10811,23,9,18,0),(1473,10811,40,18.4,30,0),(1474,10812,31,12.5,16,0.1),(1475,10812,72,34.8,40,0.1),(1476,10812,77,13,20,0),(1477,10813,2,19,12,0.2),(1478,10813,46,12,35,0),(1479,10814,41,9.65,20,0),(1480,10814,43,46,20,0.15),(1481,10814,48,12.75,8,0.15),(1482,10814,61,28.5,30,0.15),(1483,10815,33,2.5,16,0),(1484,10816,38,263.5,30,0.05),(1485,10816,62,49.3,20,0.05),(1486,10817,26,31.23,40,0.15),(1487,10817,38,263.5,30,0),(1488,10817,40,18.4,60,0.15),(1489,10817,62,49.3,25,0.15),(1490,10818,32,32,20,0),(1491,10818,41,9.65,20,0),(1492,10819,43,46,7,0),(1493,10819,75,7.75,20,0),(1494,10820,56,38,30,0),(1495,10821,35,18,20,0),(1496,10821,51,53,6,0),(1497,10822,62,49.3,3,0),(1498,10822,70,15,6,0),(1499,10823,11,21,20,0.1),(1500,10823,57,19.5,15,0),(1501,10823,59,55,40,0.1),(1502,10823,77,13,15,0.1),(1503,10824,41,9.65,12,0),(1504,10824,70,15,9,0),(1505,10825,26,31.23,12,0),(1506,10825,53,32.8,20,0),(1507,10826,31,12.5,35,0),(1508,10826,57,19.5,15,0),(1509,10827,10,31,15,0),(1510,10827,39,18,21,0),(1511,10828,20,81,5,0),(1512,10828,38,263.5,2,0),(1513,10829,2,19,10,0),(1514,10829,8,40,20,0),(1515,10829,13,6,10,0),(1516,10829,60,34,21,0),(1517,10830,6,25,6,0),(1518,10830,39,18,28,0),(1519,10830,60,34,30,0),(1520,10830,68,12.5,24,0),(1521,10831,19,9.2,2,0),(1522,10831,35,18,8,0),(1523,10831,38,263.5,8,0),(1524,10831,43,46,9,0),(1525,10832,13,6,3,0.2),(1526,10832,25,14,10,0.2),(1527,10832,44,19.45,16,0.2),(1528,10832,64,33.25,3,0),(1529,10833,7,30,20,0.1),(1530,10833,31,12.5,9,0.1),(1531,10833,53,32.8,9,0.1),(1532,10834,29,123.79,8,0.05),(1533,10834,30,25.89,20,0.05),(1534,10835,59,55,15,0),(1535,10835,77,13,2,0.2),(1536,10836,22,21,52,0),(1537,10836,35,18,6,0),(1538,10836,57,19.5,24,0),(1539,10836,60,34,60,0),(1540,10836,64,33.25,30,0),(1541,10837,13,6,6,0),(1542,10837,40,18.4,25,0),(1543,10837,47,9.5,40,0.25),(1544,10837,76,18,21,0.25),(1545,10838,1,18,4,0.25),(1546,10838,18,62.5,25,0.25),(1547,10838,36,19,50,0.25),(1548,10839,58,13.25,30,0.1),(1549,10839,72,34.8,15,0.1),(1550,10840,25,14,6,0.2),(1551,10840,39,18,10,0.2),(1552,10841,10,31,16,0),(1553,10841,56,38,30,0),(1554,10841,59,55,50,0),(1555,10841,77,13,15,0),(1556,10842,11,21,15,0),(1557,10842,43,46,5,0),(1558,10842,68,12.5,20,0),(1559,10842,70,15,12,0),(1560,10843,51,53,4,0.25),(1561,10844,22,21,35,0),(1562,10845,23,9,70,0.1),(1563,10845,35,18,25,0.1),(1564,10845,42,14,42,0.1),(1565,10845,58,13.25,60,0.1),(1566,10845,64,33.25,48,0),(1567,10846,4,22,21,0),(1568,10846,70,15,30,0),(1569,10846,74,10,20,0),(1570,10847,1,18,80,0.2),(1571,10847,19,9.2,12,0.2),(1572,10847,37,26,60,0.2),(1573,10847,45,9.5,36,0.2),(1574,10847,60,34,45,0.2),(1575,10847,71,21.5,55,0.2),(1576,10848,5,21.35,30,0),(1577,10848,9,97,3,0),(1578,10849,3,10,49,0),(1579,10849,26,31.23,18,0.15),(1580,10850,25,14,20,0.15),(1581,10850,33,2.5,4,0.15),(1582,10850,70,15,30,0.15),(1583,10851,2,19,5,0.05),(1584,10851,25,14,10,0.05),(1585,10851,57,19.5,10,0.05),(1586,10851,59,55,42,0.05),(1587,10852,2,19,15,0),(1588,10852,17,39,6,0),(1589,10852,62,49.3,50,0),(1590,10853,18,62.5,10,0),(1591,10854,10,31,100,0.15),(1592,10854,13,6,65,0.15),(1593,10855,16,17.45,50,0),(1594,10855,31,12.5,14,0),(1595,10855,56,38,24,0),(1596,10855,65,21.05,15,0.15),(1597,10856,2,19,20,0),(1598,10856,42,14,20,0),(1599,10857,3,10,30,0),(1600,10857,26,31.23,35,0.25),(1601,10857,29,123.79,10,0.25),(1602,10858,7,30,5,0),(1603,10858,27,43.9,10,0),(1604,10858,70,15,4,0),(1605,10859,24,4.5,40,0.25),(1606,10859,54,7.45,35,0.25),(1607,10859,64,33.25,30,0.25),(1608,10860,51,53,3,0),(1609,10860,76,18,20,0),(1610,10861,17,39,42,0),(1611,10861,18,62.5,20,0),(1612,10861,21,10,40,0),(1613,10861,33,2.5,35,0),(1614,10861,62,49.3,3,0),(1615,10862,11,21,25,0),(1616,10862,52,7,8,0),(1617,10863,1,18,20,0.15),(1618,10863,58,13.25,12,0.15),(1619,10864,35,18,4,0),(1620,10864,67,14,15,0),(1621,10865,38,263.5,60,0.05),(1622,10865,39,18,80,0.05),(1623,10866,2,19,21,0.25),(1624,10866,24,4.5,6,0.25),(1625,10866,30,25.89,40,0.25),(1626,10867,53,32.8,3,0),(1627,10868,26,31.23,20,0),(1628,10868,35,18,30,0),(1629,10868,49,20,42,0.1),(1630,10869,1,18,40,0),(1631,10869,11,21,10,0),(1632,10869,23,9,50,0),(1633,10869,68,12.5,20,0),(1634,10870,35,18,3,0),(1635,10870,51,53,2,0),(1636,10871,6,25,50,0.05),(1637,10871,16,17.45,12,0.05),(1638,10871,17,39,16,0.05),(1639,10872,55,24,10,0.05),(1640,10872,62,49.3,20,0.05),(1641,10872,64,33.25,15,0.05),(1642,10872,65,21.05,21,0.05),(1643,10873,21,10,20,0),(1644,10873,28,45.6,3,0),(1645,10874,10,31,10,0),(1646,10875,19,9.2,25,0),(1647,10875,47,9.5,21,0.1),(1648,10875,49,20,15,0),(1649,10876,46,12,21,0),(1650,10876,64,33.25,20,0),(1651,10877,16,17.45,30,0.25),(1652,10877,18,62.5,25,0),(1653,10878,20,81,20,0.05),(1654,10879,40,18.4,12,0),(1655,10879,65,21.05,10,0),(1656,10879,76,18,10,0),(1657,10880,23,9,30,0.2),(1658,10880,61,28.5,30,0.2),(1659,10880,70,15,50,0.2),(1660,10881,73,15,10,0),(1661,10882,42,14,25,0),(1662,10882,49,20,20,0.15),(1663,10882,54,7.45,32,0.15),(1664,10883,24,4.5,8,0),(1665,10884,21,10,40,0.05),(1666,10884,56,38,21,0.05),(1667,10884,65,21.05,12,0.05),(1668,10885,2,19,20,0),(1669,10885,24,4.5,12,0),(1670,10885,70,15,30,0),(1671,10885,77,13,25,0),(1672,10886,10,31,70,0),(1673,10886,31,12.5,35,0),(1674,10886,77,13,40,0),(1675,10887,25,14,5,0),(1676,10888,2,19,20,0),(1677,10888,68,12.5,18,0),(1678,10889,11,21,40,0),(1679,10889,38,263.5,40,0),(1680,10890,17,39,15,0),(1681,10890,34,14,10,0),(1682,10890,41,9.65,14,0),(1683,10891,30,25.89,15,0.05),(1684,10892,59,55,40,0.05),(1685,10893,8,40,30,0),(1686,10893,24,4.5,10,0),(1687,10893,29,123.79,24,0),(1688,10893,30,25.89,35,0),(1689,10893,36,19,20,0),(1690,10894,13,6,28,0.05),(1691,10894,69,36,50,0.05),(1692,10894,75,7.75,120,0.05),(1693,10895,24,4.5,110,0),(1694,10895,39,18,45,0),(1695,10895,40,18.4,91,0),(1696,10895,60,34,100,0),(1697,10896,45,9.5,15,0),(1698,10896,56,38,16,0),(1699,10897,29,123.79,80,0),(1700,10897,30,25.89,36,0),(1701,10898,13,6,5,0),(1702,10899,39,18,8,0.15),(1703,10900,70,15,3,0.25),(1704,10901,41,9.65,30,0),(1705,10901,71,21.5,30,0),(1706,10902,55,24,30,0.15),(1707,10902,62,49.3,6,0.15),(1708,10903,13,6,40,0),(1709,10903,65,21.05,21,0),(1710,10903,68,12.5,20,0),(1711,10904,58,13.25,15,0),(1712,10904,62,49.3,35,0),(1713,10905,1,18,20,0.05),(1714,10906,61,28.5,15,0),(1715,10907,75,7.75,14,0),(1716,10908,7,30,20,0.05),(1717,10908,52,7,14,0.05),(1718,10909,7,30,12,0),(1719,10909,16,17.45,15,0),(1720,10909,41,9.65,5,0),(1721,10910,19,9.2,12,0),(1722,10910,49,20,10,0),(1723,10910,61,28.5,5,0),(1724,10911,1,18,10,0),(1725,10911,17,39,12,0),(1726,10911,67,14,15,0),(1727,10912,11,21,40,0.25),(1728,10912,29,123.79,60,0.25),(1729,10913,4,22,30,0.25),(1730,10913,33,2.5,40,0.25),(1731,10913,58,13.25,15,0),(1732,10914,71,21.5,25,0),(1733,10915,17,39,10,0),(1734,10915,33,2.5,30,0),(1735,10915,54,7.45,10,0),(1736,10916,16,17.45,6,0),(1737,10916,32,32,6,0),(1738,10916,57,19.5,20,0),(1739,10917,30,25.89,1,0),(1740,10917,60,34,10,0),(1741,10918,1,18,60,0.25),(1742,10918,60,34,25,0.25),(1743,10919,16,17.45,24,0),(1744,10919,25,14,24,0),(1745,10919,40,18.4,20,0),(1746,10920,50,16.25,24,0),(1747,10921,35,18,10,0),(1748,10921,63,43.9,40,0),(1749,10922,17,39,15,0),(1750,10922,24,4.5,35,0),(1751,10923,42,14,10,0.2),(1752,10923,43,46,10,0.2),(1753,10923,67,14,24,0.2),(1754,10924,10,31,20,0.1),(1755,10924,28,45.6,30,0.1),(1756,10924,75,7.75,6,0),(1757,10925,36,19,25,0.15),(1758,10925,52,7,12,0.15),(1759,10926,11,21,2,0),(1760,10926,13,6,10,0),(1761,10926,19,9.2,7,0),(1762,10926,72,34.8,10,0),(1763,10927,20,81,5,0),(1764,10927,52,7,5,0),(1765,10927,76,18,20,0),(1766,10928,47,9.5,5,0),(1767,10928,76,18,5,0),(1768,10929,21,10,60,0),(1769,10929,75,7.75,49,0),(1770,10929,77,13,15,0),(1771,10930,21,10,36,0),(1772,10930,27,43.9,25,0),(1773,10930,55,24,25,0.2),(1774,10930,58,13.25,30,0.2),(1775,10931,13,6,42,0.15),(1776,10931,57,19.5,30,0),(1777,10932,16,17.45,30,0.1),(1778,10932,62,49.3,14,0.1),(1779,10932,72,34.8,16,0),(1780,10932,75,7.75,20,0.1),(1781,10933,53,32.8,2,0),(1782,10933,61,28.5,30,0),(1783,10934,6,25,20,0),(1784,10935,1,18,21,0),(1785,10935,18,62.5,4,0.25),(1786,10935,23,9,8,0.25),(1787,10936,36,19,30,0.2),(1788,10937,28,45.6,8,0),(1789,10937,34,14,20,0),(1790,10938,13,6,20,0.25),(1791,10938,43,46,24,0.25),(1792,10938,60,34,49,0.25),(1793,10938,71,21.5,35,0.25),(1794,10939,2,19,10,0.15),(1795,10939,67,14,40,0.15),(1796,10940,7,30,8,0),(1797,10940,13,6,20,0),(1798,10941,31,12.5,44,0.25),(1799,10941,62,49.3,30,0.25),(1800,10941,68,12.5,80,0.25),(1801,10941,72,34.8,50,0),(1802,10942,49,20,28,0),(1803,10943,13,6,15,0),(1804,10943,22,21,21,0),(1805,10943,46,12,15,0),(1806,10944,11,21,5,0.25),(1807,10944,44,19.45,18,0.25),(1808,10944,56,38,18,0),(1809,10945,13,6,20,0),(1810,10945,31,12.5,10,0),(1811,10946,10,31,25,0),(1812,10946,24,4.5,25,0),(1813,10946,77,13,40,0),(1814,10947,59,55,4,0),(1815,10948,50,16.25,9,0),(1816,10948,51,53,40,0),(1817,10948,55,24,4,0),(1818,10949,6,25,12,0),(1819,10949,10,31,30,0),(1820,10949,17,39,6,0),(1821,10949,62,49.3,60,0),(1822,10950,4,22,5,0),(1823,10951,33,2.5,15,0.05),(1824,10951,41,9.65,6,0.05),(1825,10951,75,7.75,50,0.05),(1826,10952,6,25,16,0.05),(1827,10952,28,45.6,2,0),(1828,10953,20,81,50,0.05),(1829,10953,31,12.5,50,0.05),(1830,10954,16,17.45,28,0.15),(1831,10954,31,12.5,25,0.15),(1832,10954,45,9.5,30,0),(1833,10954,60,34,24,0.15),(1834,10955,75,7.75,12,0.2),(1835,10956,21,10,12,0),(1836,10956,47,9.5,14,0),(1837,10956,51,53,8,0),(1838,10957,30,25.89,30,0),(1839,10957,35,18,40,0),(1840,10957,64,33.25,8,0),(1841,10958,5,21.35,20,0),(1842,10958,7,30,6,0),(1843,10958,72,34.8,5,0),(1844,10959,75,7.75,20,0.15),(1845,10960,24,4.5,10,0.25),(1846,10960,41,9.65,24,0),(1847,10961,52,7,6,0.05),(1848,10961,76,18,60,0),(1849,10962,7,30,45,0),(1850,10962,13,6,77,0),(1851,10962,53,32.8,20,0),(1852,10962,69,36,9,0),(1853,10962,76,18,44,0),(1854,10963,60,34,2,0.15),(1855,10964,18,62.5,6,0),(1856,10964,38,263.5,5,0),(1857,10964,69,36,10,0),(1858,10965,51,53,16,0),(1859,10966,37,26,8,0),(1860,10966,56,38,12,0.15),(1861,10966,62,49.3,12,0.15),(1862,10967,19,9.2,12,0),(1863,10967,49,20,40,0),(1864,10968,12,38,30,0),(1865,10968,24,4.5,30,0),(1866,10968,64,33.25,4,0),(1867,10969,46,12,9,0),(1868,10970,52,7,40,0.2),(1869,10971,29,123.79,14,0),(1870,10972,17,39,6,0),(1871,10972,33,2.5,7,0),(1872,10973,26,31.23,5,0),(1873,10973,41,9.65,6,0),(1874,10973,75,7.75,10,0),(1875,10974,63,43.9,10,0),(1876,10975,8,40,16,0),(1877,10975,75,7.75,10,0),(1878,10976,28,45.6,20,0),(1879,10977,39,18,30,0),(1880,10977,47,9.5,30,0),(1881,10977,51,53,10,0),(1882,10977,63,43.9,20,0),(1883,10978,8,40,20,0.15),(1884,10978,21,10,40,0.15),(1885,10978,40,18.4,10,0),(1886,10978,44,19.45,6,0.15),(1887,10979,7,30,18,0),(1888,10979,12,38,20,0),(1889,10979,24,4.5,80,0),(1890,10979,27,43.9,30,0),(1891,10979,31,12.5,24,0),(1892,10979,63,43.9,35,0),(1893,10980,75,7.75,40,0.2),(1894,10981,38,263.5,60,0),(1895,10982,7,30,20,0),(1896,10982,43,46,9,0),(1897,10983,13,6,84,0.15),(1898,10983,57,19.5,15,0),(1899,10984,16,17.45,55,0),(1900,10984,24,4.5,20,0),(1901,10984,36,19,40,0),(1902,10985,16,17.45,36,0.1),(1903,10985,18,62.5,8,0.1),(1904,10985,32,32,35,0.1),(1905,10986,11,21,30,0),(1906,10986,20,81,15,0),(1907,10986,76,18,10,0),(1908,10986,77,13,15,0),(1909,10987,7,30,60,0),(1910,10987,43,46,6,0),(1911,10987,72,34.8,20,0),(1912,10988,7,30,60,0),(1913,10988,62,49.3,40,0.1),(1914,10989,6,25,40,0),(1915,10989,11,21,15,0),(1916,10989,41,9.65,4,0),(1917,10990,21,10,65,0),(1918,10990,34,14,60,0.15),(1919,10990,55,24,65,0.15),(1920,10990,61,28.5,66,0.15),(1921,10991,2,19,50,0.2),(1922,10991,70,15,20,0.2),(1923,10991,76,18,90,0.2),(1924,10992,72,34.8,2,0),(1925,10993,29,123.79,50,0.25),(1926,10993,41,9.65,35,0.25),(1927,10994,59,55,18,0.05),(1928,10995,51,53,20,0),(1929,10995,60,34,4,0),(1930,10996,42,14,40,0),(1931,10997,32,32,50,0),(1932,10997,46,12,20,0.25),(1933,10997,52,7,20,0.25),(1934,10998,24,4.5,12,0),(1935,10998,61,28.5,7,0),(1936,10998,74,10,20,0),(1937,10998,75,7.75,30,0),(1938,10999,41,9.65,20,0.05),(1939,10999,51,53,15,0.05),(1940,10999,77,13,21,0.05),(1941,11000,4,22,25,0.25),(1942,11000,24,4.5,30,0.25),(1943,11000,77,13,30,0),(1944,11001,7,30,60,0),(1945,11001,22,21,25,0),(1946,11001,46,12,25,0),(1947,11001,55,24,6,0),(1948,11002,13,6,56,0),(1949,11002,35,18,15,0.15),(1950,11002,42,14,24,0.15),(1951,11002,55,24,40,0),(1952,11003,1,18,4,0),(1953,11003,40,18.4,10,0),(1954,11003,52,7,10,0),(1955,11004,26,31.23,6,0),(1956,11004,76,18,6,0),(1957,11005,1,18,2,0),(1958,11005,59,55,10,0),(1959,11006,1,18,8,0),(1960,11006,29,123.79,2,0.25),(1961,11007,8,40,30,0),(1962,11007,29,123.79,10,0),(1963,11007,42,14,14,0),(1964,11008,28,45.6,70,0.05),(1965,11008,34,14,90,0.05),(1966,11008,71,21.5,21,0),(1967,11009,24,4.5,12,0),(1968,11009,36,19,18,0.25),(1969,11009,60,34,9,0),(1970,11010,7,30,20,0),(1971,11010,24,4.5,10,0),(1972,11011,58,13.25,40,0.05),(1973,11011,71,21.5,20,0),(1974,11012,19,9.2,50,0.05),(1975,11012,60,34,36,0.05),(1976,11012,71,21.5,60,0.05),(1977,11013,23,9,10,0),(1978,11013,42,14,4,0),(1979,11013,45,9.5,20,0),(1980,11013,68,12.5,2,0),(1981,11014,41,9.65,28,0.1),(1982,11015,30,25.89,15,0),(1983,11015,77,13,18,0),(1984,11016,31,12.5,15,0),(1985,11016,36,19,16,0),(1986,11017,3,10,25,0),(1987,11017,59,55,110,0),(1988,11017,70,15,30,0),(1989,11018,12,38,20,0),(1990,11018,18,62.5,10,0),(1991,11018,56,38,5,0),(1992,11019,46,12,3,0),(1993,11019,49,20,2,0),(1994,11020,10,31,24,0.15),(1995,11021,2,19,11,0.25),(1996,11021,20,81,15,0),(1997,11021,26,31.23,63,0),(1998,11021,51,53,44,0.25),(1999,11021,72,34.8,35,0),(2000,11022,19,9.2,35,0),(2001,11022,69,36,30,0),(2002,11023,7,30,4,0),(2003,11023,43,46,30,0),(2004,11024,26,31.23,12,0),(2005,11024,33,2.5,30,0),(2006,11024,65,21.05,21,0),(2007,11024,71,21.5,50,0),(2008,11025,1,18,10,0.1),(2009,11025,13,6,20,0.1),(2010,11026,18,62.5,8,0),(2011,11026,51,53,10,0),(2012,11027,24,4.5,30,0.25),(2013,11027,62,49.3,21,0.25),(2014,11028,55,24,35,0),(2015,11028,59,55,24,0),(2016,11029,56,38,20,0),(2017,11029,63,43.9,12,0),(2018,11030,2,19,100,0.25),(2019,11030,5,21.35,70,0),(2020,11030,29,123.79,60,0.25),(2021,11030,59,55,100,0.25),(2022,11031,1,18,45,0),(2023,11031,13,6,80,0),(2024,11031,24,4.5,21,0),(2025,11031,64,33.25,20,0),(2026,11031,71,21.5,16,0),(2027,11032,36,19,35,0),(2028,11032,38,263.5,25,0),(2029,11032,59,55,30,0),(2030,11033,53,32.8,70,0.1),(2031,11033,69,36,36,0.1),(2032,11034,21,10,15,0.1),(2033,11034,44,19.45,12,0),(2034,11034,61,28.5,6,0),(2035,11035,1,18,10,0),(2036,11035,35,18,60,0),(2037,11035,42,14,30,0),(2038,11035,54,7.45,10,0),(2039,11036,13,6,7,0),(2040,11036,59,55,30,0),(2041,11037,70,15,4,0),(2042,11038,40,18.4,5,0.2),(2043,11038,52,7,2,0),(2044,11038,71,21.5,30,0),(2045,11039,28,45.6,20,0),(2046,11039,35,18,24,0),(2047,11039,49,20,60,0),(2048,11039,57,19.5,28,0),(2049,11040,21,10,20,0),(2050,11041,2,19,30,0.2),(2051,11041,63,43.9,30,0),(2052,11042,44,19.45,15,0),(2053,11042,61,28.5,4,0),(2054,11043,11,21,10,0),(2055,11044,62,49.3,12,0),(2056,11045,33,2.5,15,0),(2057,11045,51,53,24,0),(2058,11046,12,38,20,0.05),(2059,11046,32,32,15,0.05),(2060,11046,35,18,18,0.05),(2061,11047,1,18,25,0.25),(2062,11047,5,21.35,30,0.25),(2063,11048,68,12.5,42,0),(2064,11049,2,19,10,0.2),(2065,11049,12,38,4,0.2),(2066,11050,76,18,50,0.1),(2067,11051,24,4.5,10,0.2),(2068,11052,43,46,30,0.2),(2069,11052,61,28.5,10,0.2),(2070,11053,18,62.5,35,0.2),(2071,11053,32,32,20,0),(2072,11053,64,33.25,25,0.2),(2073,11054,33,2.5,10,0),(2074,11054,67,14,20,0),(2075,11055,24,4.5,15,0),(2076,11055,25,14,15,0),(2077,11055,51,53,20,0),(2078,11055,57,19.5,20,0),(2079,11056,7,30,40,0),(2080,11056,55,24,35,0),(2081,11056,60,34,50,0),(2082,11057,70,15,3,0),(2083,11058,21,10,3,0),(2084,11058,60,34,21,0),(2085,11058,61,28.5,4,0),(2086,11059,13,6,30,0),(2087,11059,17,39,12,0),(2088,11059,60,34,35,0),(2089,11060,60,34,4,0),(2090,11060,77,13,10,0),(2091,11061,60,34,15,0),(2092,11062,53,32.8,10,0.2),(2093,11062,70,15,12,0.2),(2094,11063,34,14,30,0),(2095,11063,40,18.4,40,0.1),(2096,11063,41,9.65,30,0.1),(2097,11064,17,39,77,0.1),(2098,11064,41,9.65,12,0),(2099,11064,53,32.8,25,0.1),(2100,11064,55,24,4,0.1),(2101,11064,68,12.5,55,0),(2102,11065,30,25.89,4,0.25),(2103,11065,54,7.45,20,0.25),(2104,11066,16,17.45,3,0),(2105,11066,19,9.2,42,0),(2106,11066,34,14,35,0),(2107,11067,41,9.65,9,0),(2108,11068,28,45.6,8,0.15),(2109,11068,43,46,36,0.15),(2110,11068,77,13,28,0.15),(2111,11069,39,18,20,0),(2112,11070,1,18,40,0.15),(2113,11070,2,19,20,0.15),(2114,11070,16,17.45,30,0.15),(2115,11070,31,12.5,20,0),(2116,11071,7,30,15,0.05),(2117,11071,13,6,10,0.05),(2118,11072,2,19,8,0),(2119,11072,41,9.65,40,0),(2120,11072,50,16.25,22,0),(2121,11072,64,33.25,130,0),(2122,11073,11,21,10,0),(2123,11073,24,4.5,20,0),(2124,11074,16,17.45,14,0.05),(2125,11075,2,19,10,0.15),(2126,11075,46,12,30,0.15),(2127,11075,76,18,2,0.15),(2128,11076,6,25,20,0.25),(2129,11076,14,23.25,20,0.25),(2130,11076,19,9.2,10,0.25),(2131,11077,2,19,24,0.2),(2132,11077,3,10,4,0),(2133,11077,4,22,1,0),(2134,11077,6,25,1,0.02),(2135,11077,7,30,1,0.05),(2136,11077,8,40,2,0.1),(2137,11077,10,31,1,0),(2138,11077,12,38,2,0.05),(2139,11077,13,6,4,0),(2140,11077,14,23.25,1,0.03),(2141,11077,16,17.45,2,0.03),(2142,11077,20,81,1,0.04),(2143,11077,23,9,2,0),(2144,11077,32,32,1,0),(2145,11077,39,18,2,0.05),(2146,11077,41,9.65,3,0),(2147,11077,46,12,3,0.02),(2148,11077,52,7,2,0),(2149,11077,55,24,2,0),(2150,11077,60,34,2,0.06),(2151,11077,64,33.25,2,0.03),(2152,11077,66,17,1,0),(2153,11077,73,15,2,0.01),(2154,11077,75,7.75,4,0),(2155,11077,77,13,2,0);

-- Create view vwProducts_Above_Average_Price
create or replace view vwProducts_Above_Average_Price
as
select distinct ProductName, UnitPrice
from Products
where UnitPrice > (select avg(UnitPrice) from Products)
order by UnitPrice;

-- Create view vwQuarterly_Orders_by_Product
create or replace view vwQuarterly_Orders_by_Product
as
select a.ProductName, 
    d.CompanyName, 
    year(OrderDate) as OrderYear,
    format(sum(case quarter(c.OrderDate) when '1' 
        then b.UnitPrice*b.Quantity*(1-b.Discount) else 0 end), 0) "Qtr 1",
    format(sum(case quarter(c.OrderDate) when '2' 
        then b.UnitPrice*b.Quantity*(1-b.Discount) else 0 end), 0) "Qtr 2",
    format(sum(case quarter(c.OrderDate) when '3' 
        then b.UnitPrice*b.Quantity*(1-b.Discount) else 0 end), 0) "Qtr 3",
    format(sum(case quarter(c.OrderDate) when '4' 
        then b.UnitPrice*b.Quantity*(1-b.Discount) else 0 end), 0) "Qtr 4" 
from Products a 
inner join Order_Details b on a.ProductID = b.ProductID
inner join Orders c on c.OrderID = b.OrderID
inner join Customers d on d.CustomerID = c.CustomerID 
where c.OrderDate between date('1997-01-01') and date('1997-12-31')
group by a.ProductName, 
    d.CompanyName, 
    year(OrderDate)
order by a.ProductName, d.CompanyName;

-- Create view vwInvoice
create or replace view vwInvoice
as
select distinct b.ShipName, 
    b.ShipAddress, 
    b.ShipCity, 
    b.ShipRegion, 
    b.ShipPostalCode, 
    b.ShipCountry, 
    b.CustomerID, 
    c.CompanyName, 
    c.Address, 
    c.City, 
    c.Region, 
    c.PostalCode, 
    c.Country, 
    concat(d.FirstName,  ' ', d.LastName) as Salesperson, 
    b.OrderID, 
    b.OrderDate, 
    b.RequiredDate, 
    b.ShippedDate, 
    a.CompanyName as ShipperName, 
    e.ProductID, 
    f.ProductName, 
    e.UnitPrice, 
    e.Quantity, 
    e.Discount,
    e.UnitPrice * e.Quantity * (1 - e.Discount) as ExtendedPrice,
    b.Freight
from Shippers a 
inner join Orders b on a.ShipperID = b.ShipVia 
inner join Customers c on c.CustomerID = b.CustomerID
inner join Employees d on d.EmployeeID = b.EmployeeID
inner join Order_Details e on b.OrderID = e.OrderID
inner join Products f on f.ProductID = e.ProductID
order by b.ShipName;

-- Create view vwUnits_In_Stock
create or replace view vwUnits_In_Stock
as
select c.CategoryName as "Product Category", 
       case when s.Country in 
                 ('UK','Spain','Sweden','Germany','Norway',
                  'Denmark','Netherlands','Finland','Italy','France')
            then 'Europe'
            when s.Country in ('USA','Canada','Brazil') 
            then 'America'
            else 'Asia-Pacific'
        end as "Supplier Continent", 
        sum(p.UnitsInStock) as UnitsInStock
from Suppliers s 
inner join Products p on p.SupplierID=s.SupplierID
inner join Categories c on c.CategoryID=p.CategoryID 
group by c.CategoryName, 
         case when s.Country in 
                 ('UK','Spain','Sweden','Germany','Norway',
                  'Denmark','Netherlands','Finland','Italy','France')
              then 'Europe'
              when s.Country in ('USA','Canada','Brazil') 
              then 'America'
              else 'Asia-Pacific'
         end;

-- Create view vwSales_By_Category
create or replace view vwSales_By_Category
as
select distinct a.CategoryID, 
    a.CategoryName,  
    b.ProductName, 
    sum(round(y.UnitPrice * y.Quantity * (1 - y.Discount), 2)) as ProductSales
from Order_Details y
inner join Orders d on d.OrderID = y.OrderID
inner join Products b on b.ProductID = y.ProductID
inner join Categories a on a.CategoryID = b.CategoryID
where d.OrderDate between date('1997/1/1') and date('1997/12/31')
group by a.CategoryID, a.CategoryName, b.ProductName
order by a.CategoryName, b.ProductName, ProductSales;

-- Create view vw10Most_Expensive_Products
create or replace view vw10Most_Expensive_Products
as
select distinct ProductName as Ten_Most_Expensive_Products, 
       UnitPrice
from Products
order by UnitPrice desc
limit 10;

-- Create view vwCustomer_Supplier_by_City
create or replace view vwCustomer_Supplier_by_City
as
select City, CompanyName, ContactName, 'Customers' as Relationship 
from Customers
union
select City, CompanyName, ContactName, 'Suppliers'
from Suppliers
order by City, CompanyName;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;

SELECT * FROM suppliers;

SELECT FirstName, LastName, HireDate FROM employees 
WHERE title = 'sales representative' AND country = 'USA';

SELECT * FROM orders WHERE employeeID = 5;

SELECT SupplierID, ContactName, ContactTitle FROM suppliers
 WHERE NOT ContactTitle = 'Marketing Manager';
 
 /*In the products table, we’d like to see the ProductID and
ProductName for those products where the ProductName
includes the string “queso”.*/
use northwind;
SELECT ProductID, ProductName FROM  products
WHERE ProductName LIKE '%queso%';

/*8. Orders shipping to France or Belgium
Looking at the Orders table, there’s a field called
ShipCountry. Write a query that shows the OrderID,
CustomerID, and ShipCountry for the orders where the
ShipCountry is either France or Belgium.*/

SELECT OrderID, CustomerID, ShipCountry
FROM orders
WHERE ShipCountry IN ('France','Belgium');

SELECT OrderID, CustomerID, ShipCountry
FROM orders
WHERE ShipCountry ='France' OR ShipCountry ='Belgium';

/*Orders shipping to any country in Latin
America
Now, instead of just wanting to return all the orders from
France of Belgium, we want to show all the orders from
any Latin American country. But we don’t have a list of
Latin American countries in a table in the Northwind
database. So, we’re going to just use this list of Latin
American countries that happen to be in the Orders table:
Brazil Mexico Argentina Venezuela It doesn’t make
sense to use multiple Or statements anymore, it would get
too convoluted. Use the In statement.*/

SELECT OrderID, CustomerID, ShipCountry
FROM orders
WHERE ShipCountry IN ('Brazil', 'Mexico', 'Argentina', 'Venezuela');

/*10. Employees, in order of age
For all the employees in the Employees table, show the
FirstName, LastName, Title, and BirthDate. Order the
results by BirthDate, so we have the oldest employees
first.*/

SELECT FirstName, LastName, Title, BirthDate
FROM employees
ORDER BY BirthDate;

/*11. Showing only the Date with a DateTime
field
In the output of the query above, showing the Employees
in order of BirthDate, we see the time of the BirthDate
field, which we don’t want. Show only the date portion of
the BirthDate field.*/

SELECT FirstName, LastName, Title, DATE(BirthDate)
FROM employees
ORDER BY BirthDate;

/* 12. Employees full name
Show the FirstName and LastName columns from the
Employees table, and then create a new column called
FullName, showing FirstName and LastName joined
together in one column, with a space in-between.*/

SELECT FirstName, LastName, CONCAT(FirstName,' ',LastName) AS FullName
FROM employees;

/*13. OrderDetails amount per line item
In the OrderDetails table, we have the fields UnitPrice
and Quantity. Create a new field, TotalPrice, that
multiplies these two together. We’ll ignore the Discount
field for now.
In addition, show the OrderID, ProductID, UnitPrice, and
Quantity. Order by OrderID and ProductID. */

SELECT OrderID, ProductID, UnitPrice, Quantity, UnitPrice*Quantity AS TotalPrice
FROM order_details;

/*14. How many customers?
How many customers do we have in the Customers table?
Show one value only, and don’t rely on getting the
recordcount at the end of a resultset. */

SELECT COUNT(CustomerID) FROM customers;

/*15. When was the first order?
Show the date of the first order ever made in the Orders
table.*/

SELECT MIN(OrderDate) FROM orders;

/*16. Countries where there are customers
Show a list of countries where the Northwind company
has customers.*/

SELECT DISTINCT Country FROM customers;

SELECT Country FROM customers GROUP BY country;

/* 17. Contact titles for customers
Show a list of all the different values in the Customers
table for ContactTitles. Also include a count for each
ContactTitle.
This is similar in concept to the previous question
“Countries where there are customers”, except we now
want a count for each ContactTitle. */

SELECT DISTINCT ContactTitle, COUNT(ContactTitle)
FROM customers
GROUP BY ContactTitle;

SELECT ContactTitle, COUNT(ContactTitle)
FROM customers
GROUP BY ContactTitle;

/* 18. Products with associated supplier names
We’d like to show, for each product, the associated
Supplier. Show the ProductID, ProductName, and the
CompanyName of the Supplier. Sort by ProductID.
 */

SELECT p.ProductID, p.ProductName, s.CompanyName
FROM products p
JOIN suppliers s
ON p.SupplierID = s.SupplierID
ORDER BY ProductID;


/*19. Orders and the Shipper that was used
We’d like to show a list of the Orders that were made,
including the Shipper that was used. Show the OrderID,
OrderDate (date only), and CompanyName of the
Shipper, and sort by OrderID.
In order to not show all the orders (there’s more than
800), show only those rows with an OrderID of less than
10300. */

SELECT * FROM SHIPPERS;
SELECT * FROM orders;

SELECT o.OrderID, DATE(o.OrderDate), s.CompanyName
FROM orders o
JOIN shippers s
ON o.ShipVia = s.ShipperID
WHERE OrderID < 10300
ORDER BY OrderID;

/* 20. Categories, and the total products in each
category
For this problem, we’d like to see the total number of
products in each category. Sort the results by the total
number of products, in descending order.*/

SELECT * FROM products;

SELECT c.CategoryName, p.CategoryID, COUNT(p.CategoryID) 
FROM products p
JOIN categories c
ON p.CategoryID = c.CategoryID
GROUP BY p.CategoryID
ORDER BY COUNT(CategoryID) DESC;

/* 21. Total customers per country/city
In the Customers table, show the total number of
customers per Country and City. */

SELECT * FROM customers;

SELECT country, city, COUNT(CustomerID)
FROM customers
GROUP BY country, city;

/*22. Products that need reordering
What products do we have in our inventory that should be
reordered? For now, just use the fields UnitsInStock and
ReorderLevel, where UnitsInStock is less than the
ReorderLevel, ignoring the fields UnitsOnOrder and
Discontinued.
Order the results by ProductID.*/

USE northwind;
SELECT * FROM products;

SELECT ProductID, ProductName, UnitsInStock
FROM products
WHERE UnitsInStock < ReorderLevel
ORDER BY ProductID;

/*23. Products that need reordering, continued
Now we need to incorporate these fields—UnitsInStock,
UnitsOnOrder, ReorderLevel, Discontinued—into our
calculation. We’ll define “products that need reordering”
with the following:

UnitsInStock plus UnitsOnOrder are less than or
equal to ReorderLevel
The Discontinued flag is false (0).*/

SELECT ProductID, ProductName, UnitsInStock, ReorderLevel, UnitsOnOrder,
ReorderLevel - (UnitsOnOrder + UnitsInStock) AS min_units_to_order
FROM products
WHERE (UnitsOnOrder + UnitsInStock) <= ReorderLevel
	AND Discontinued = 'n'
ORDER BY ProductID;

/* 24. Customer list by region
A salesperson for Northwind is going on a business trip
to visit customers, and would like to see a list of all
customers, sorted by region, alphabetically.
However, he wants the customers with no region (null in
the Region field) to be at the end, instead of at the top,
where you’d normally find the null values. Within the
same region, companies should be sorted by CustomerID.*/

SELECT * FROM customers;

#The following code checks whether the blank fields are in fact marked null or are just empty strings.
SELECT CustomerID, Region, ISNULL(Region)  FROM customers
ORDER BY ISNULL(Region), region, CustomerID;

#The following code marks empty fields in the Region column as null
SELECT NULLIF(Region,' '), CustomerID FROM customers;

#The following code returns the nulls firt still, because the ordering doesnt use the modified column
SELECT NULLIF(Region,' '), CustomerID FROM customers
ORDER BY ISNULL(Region), Region, CustomerID;

#CORRECT CODES BELOW

SELECT NULLIF(Region,' '), CustomerID FROM customers
ORDER BY ISNULL(NULLIF(Region,' ')), Region, CustomerID;

Select CustomerID ,CompanyName ,Region,
	CASE 
		WHEN NULLIF(Region,' ') IS NULL
        THEN 1
        ELSE 0
        END AS case_statement
FROM customers
ORDER BY case_statement, Region, CustomerID;

/*25. High freight charges
Some of the countries we ship to have very high freight
charges. We'd like to investigate some more shipping
options for our customers, to be able to offer them lower
freight charges. Return the three ship countries with the
highest average freight overall, in descending order by
average freight.*/

SELECT ShipCountry, AVG(Freight) FROM orders
GROUP BY ShipCountry
ORDER BY AVG(Freight) DESC
LIMIT 3;

#limit above freight to 2 decimal places

SELECT ShipCountry, ROUND(AVG(Freight),2) FROM orders
GROUP BY ShipCountry
ORDER BY AVG(Freight) DESC
LIMIT 3;

/*26. High freight charges - 2015
We're continuing on the question above on high freight
charges. Now, instead of using all the orders we have, we
only want to see orders from the year 1997.*/

#The below query will still return the average freight from all years
SELECT ShipCountry, ROUND(AVG(Freight),2) FROM orders
WHERE OrderDate > 1996-12-31
GROUP BY ShipCountry
ORDER BY AVG(Freight) DESC
LIMIT 3;

# To calculate the average freight by taking into account only orders from 1997 onwards:
SELECT ShipCountry, ROUND(AVG(Freight),2) 
FROM 
	(SELECT ShipCountry, Freight,  OrderDate
		FROM orders
			WHERE YEAR(OrderDate) > 1997) A
GROUP BY ShipCountry
ORDER BY AVG(Freight) DESC
LIMIT 3;

/*28. High freight charges - last year
We're continuing to work on high freight charges. We
now want to get the three ship countries with the highest
average freight charges. But instead of filtering for a
particular year, we want to use the last 12 months of
order data, using as the end date the last OrderDate in
Orders.*/

SELECT ShipCountry, Freight,  OrderDate
		FROM orders ORDER BY OrderDate DESC;

#Finding the orders within the last 12 months

#The Following Query Does Not Allow The Use Of Max() to find the latest order date
# wihout Group Function
SELECT ShipCountry, Freight,  OrderDate, DATEDIFF(MAX(OrderDate),OrderDate)
		FROM orders
			WHERE DATEDIFF(MAX(OrderDate),OrderDate) <= 365 ;

#The following query extracts the latest order date next to each order
SELECT ShipCountry, Freight,  OrderDate, MAX(OrderDate) OVER () AS latest_order
FROM orders;

#The following query uses datediff() to extract the number of days between each order and the 
#last order.
SELECT A.*, DATEDIFF(latest_order,OrderDate) 
FROM (SELECT ShipCountry, Freight,  OrderDate, MAX(OrderDate) OVER () AS latest_order
FROM orders) A ;

#The following query uses datediff() to extract orders only in the last 365 days immediately
#before the last order

SELECT A.*, DATEDIFF(latest_order,OrderDate) AS within_12_months
FROM (SELECT ShipCountry, Freight,  OrderDate, MAX(OrderDate) OVER () AS latest_order
FROM orders) A 
WHERE DATEDIFF(latest_order,OrderDate) <=  365
ORDER BY within_12_months;

/*note that we have to first derive the MAX(OrderDate) OVER () clause within the FROM clause before using 
it in the DATEDIFF(). If DATEDIFF is applied within the same select query, sql returns that the value is unknown.*/

#Finding the 3 highest average freight charge countries only from orders in last 12 months:

SELECT ShipCountry, ROUND(AVG(Freight),2)
FROM 
	(SELECT A.*, DATEDIFF(latest_order,OrderDate) AS within_12_months
	FROM (SELECT ShipCountry, Freight,  OrderDate, MAX(OrderDate) OVER () AS latest_order
	FROM orders) A 
	WHERE DATEDIFF(latest_order,OrderDate) <=  366) B
GROUP BY ShipCountry
ORDER BY ROUND(AVG(Freight),2) DESC
LIMIT 3;

#Using DATE_ADD to extract the orders within the last 12 months

SELECT A.*, DATEDIFF(latest_order, OrderDate) FROM 
	(SELECT ShipCountry, Freight,  OrderDate, MAX(OrderDate) OVER () AS latest_order
	FROM orders) A 
WHERE OrderDate >= date_add(latest_order, INTERVAL -365 DAY)
ORDER BY latest_order;

#Using DATE_ADD and (BETWEEN..AND..) and manually entering the latest order date
#to extract the orders within the last 12 months
SELECT ShipCountry, Freight,  OrderDate, date_add('1998-05-06', INTERVAL -365 DAY) FROM 
	orders
    WHERE OrderDate BETWEEN date_add('1998-05-06', INTERVAL -365 DAY)  AND '1998-05-06' 
ORDER BY OrderDate;

#Using DATE_ADD and (BETWEEN..AND..) to extract the orders within the last 12 months
SELECT A.*, DATEDIFF(latest_order, OrderDate) FROM 
	(SELECT ShipCountry, Freight,  OrderDate, MAX(OrderDate) OVER () AS latest_order
	FROM orders) A 
WHERE OrderDate BETWEEN date_add(latest_order, INTERVAL -365 DAY) AND latest_order
ORDER BY latest_order;


/*29. Inventory list
We're doing inventory, and need to show information like
the below, for all orders. Sort by OrderID and Product
ID.
EmployeeID LastName OrderID ProductName Quantity*/

SELECT e.EmployeeID, e.LastName, od.OrderID, p.ProductName, od.Quantity
FROM employees e
JOIN orders o
ON e.EmployeeID = o.EmployeeID
JOIN order_details od
ON o.OrderID = od.OrderID
JOIN products p
ON od.ProductID = p.ProductID;

/*30. Customers with no orders
There are some customers who have never actually
placed an order. Show these customers.*/

use northwind;

SELECT * FROM customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM orders);

SELECT c.CustomerID, o.CustomerID
FROM customers c
LEFT JOIN orders o
ON c.CustomerID = o.CustomerID
WHERE O.CustomerID IS NULL;

/*31. Customers with no orders for EmployeeID
4
One employee (Margaret Peacock, EmployeeID 4) has
placed the most orders. However, there are some
customers who've never placed an order with her. Show
only those customers who have never placed an order
with her.*/

/*SELECT c.CustomerID FROM customers c
LEFT JOIN orders o
ON c.CustomerID = o.CustomerID
WHERE c.CustomerID NOT IN (SELECT CustomerID FROM orders WHERE EmployeeID=4) ;*/

SELECT CustomerID FROM customers
WHERE CustomerID NOT IN (SELECT CustomerID FROM orders WHERE EmployeeID=4) ;


/*32. High-value customers
We want to send all of our high-value customers a special
VIP gift. We're defining high-value customers as those
who've made at least 1 order with a total value (not
including the discount) equal to $10,000 or more. We
only want to consider orders made in the year 1998.*/

SELECT * FROM orders;
SELECT * FROM order_details;

SELECT OrderID, SUM(UnitPrice*Quantity) AS total_price
FROM order_details
GROUP BY OrderID
HAVING total_price >= 10000
ORDER BY total_price desc;

SELECT o.CustomerID, A.OrderID, A.total_price, o.OrderDate
FROM orders o
JOIN 
	(SELECT OrderID, SUM(UnitPrice*Quantity) AS total_price
	FROM order_details
	GROUP BY OrderID
	HAVING total_price >= 10000) A
ON o.OrderID = A.OrderID
WHERE YEAR(OrderDate) = 1998;


/*33. High-value customers - total orders
The manager has changed his mind. Instead of requiring
that customers have at least one individual orders totaling
$10,000 or more, he wants to define high-value
customers as those who have orders totaling $15,000 or
more in 2016. How would you change the answer to the
problem above?*/

SELECT CustomerID, SUM(total_price) AS total_orders_value
	FROM (SELECT o.CustomerID, O.OrderDate, A.total_price FROM orders o
		JOIN 
			(SELECT OrderID, SUM(UnitPrice*Quantity) AS total_price
				FROM order_details
				GROUP BY OrderID) A
		ON o.OrderID = A.OrderID
		WHERE YEAR(OrderDate) = 1998) B 
GROUP BY CustomerID
HAVING total_orders_value >= 15000
ORDER BY total_orders_value DESC ;


/*34. High-value customers - with discount
Change the above query to use the discount when
calculating high-value customers. Order by the total
amount which includes the discount.*/

SELECT CustomerID, SUM(total_price) AS total_orders_value
	FROM (SELECT o.CustomerID, O.OrderDate, A.total_price FROM orders o
		JOIN 
			(SELECT OrderID, SUM(UnitPrice*Quantity*(1-Discount)) AS total_price
				FROM order_details
				GROUP BY OrderID) A
		ON o.OrderID = A.OrderID
		WHERE YEAR(OrderDate) = 1998) B 
GROUP BY CustomerID
HAVING total_orders_value >= 10000
ORDER BY total_orders_value DESC ;

/*35. Month-end orders
At the end of the mTonth, salespeople are likely to try
much harder to get orders, to meet their month-end
quotas. Show all orders made on the last day of the
month. Order by EmployeeID and OrderID*/

SELECT OrderID, EmployeeID, OrderDate
FROM orders
WHERE OrderDate = LAST_DAY(OrderDate)
ORDER BY EmployeeID, OrderID ;

/*36. Orders with many line items
The Northwind mobile app developers are testing an app
that customers will use to show orders. In order to make
sure that even the largest orders will show up correctly on
the app, they'd like some samples of orders that have lots
of individual line items. Show the 10 orders with the
most line items, in order of total line items.*/

SELECT * FROM order_details;

SELECT OrderID, COUNT(OrderID) AS no_lineitems 
FROM order_details
GROUP BY OrderID
ORDER BY no_lineitems DESC
LIMIT 10;

/*37. Orders - random assortment
The Northwind mobile app developers would now like to
just get a random assortment of orders for beta testing on
their app. Show a random set of 2% of all orders.*/

SELECT OrderID, COUNT(OrderID) AS no_lineitems 
FROM order_details
GROUP BY OrderID
ORDER BY rand()
LIMIT 43;

/*38. Orders - accidental double-entry
Janet Leverling, one of the salespeople, has come to you

with a request. She thinks that she accidentally double-
entered a line item on an order, with a different
order_details
ProductID, but the same quantity. She remembers that the
quantity was 60 or more. Show all the OrderIDs with line
items that match this, in order of OrderID.

SELECT COUNT(OrderID) FROM order_details;*/
use northwind;

SELECT OrderID, COUNT(OrderID), Quantity, COUNT(Quantity)
FROM order_details
WHERE Quantity>=60
GROUP BY OrderID, Quantity
HAVING COUNT(OrderID)>1 AND COUNT(Quantity)>1;

SELECT OrderID, Quantity
FROM order_details
WHERE Quantity>=60; 

SELECT OrderID, COUNT(OrderID)
FROM order_details
WHERE Quantity>=60
GROUP BY OrderID
HAVING COUNT(OrderID)>1;

/*39. Orders - accidental double-entry details
Based on the previous question, we now want to show
details of the order, for orders that match the above
criteria.*/

SELECT * FROM order_details
WHERE OrderID IN
	(SELECT OrderID
    FROM order_details
    WHERE Quantity>= 60
    GROUP BY OrderID, Quantity
    HAVING COUNT(OrderID)>1 AND COUNT(Quantity) > 1) ;
    

/*40. Orders - accidental double-entry details,
derived table
Here's another way of getting the same results as in the
previous problem, using a derived table instead of a CTE.
However, there's a bug in this SQL. It returns 20 rows
instead of 16. Correct the SQL.

Problem SQL: 
Select OrderDetails.OrderID
,ProductID
,UnitPrice ,Quantity ,Discount From OrderDetails Join (
Select OrderID
From OrderDetails Where Quantity >= 60
Group By OrderID, Quantity Having Count(*) > 1
) PotentialProblemOrders on PotentialProblemOrders.OrderID =
OrderDetails.OrderID
Order by OrderID, ProductID

*/

Select OrderID
From order_details Where Quantity >= 60
Group By OrderID, Quantity Having Count(*) > 1;

Select o.OrderID, o.ProductID, o.UnitPrice, o.Quantity, o.Discount 
From order_details o
Join 
	(
	Select OrderID
	From order_details Where Quantity >= 60
	Group By OrderID, Quantity Having Count(*) > 1
	) PotentialProblemOrders 
on PotentialProblemOrders.OrderID =
o.OrderID
#WHERE o.Quantity >= 60
Order by OrderID, ProductID;

#???????

/*41. Late orders Some customers are complaining about their orders arriving late. Which orders 
are late?*/

SELECT OrderID, EmployeeID, RequiredDate, ShippedDate
FROM orders
WHERE RequiredDate <= ShippedDate ;

/*42. Late orders - which employees?
Some salespeople have more orders arriving late than
others. Maybe they're not following up on the order
process, and need more training. Which salespeople have
the most orders arriving late?*/

SELECT 
    o.EmployeeID, COUNT(o.EmployeeID), e.LastName
FROM
    orders o
JOIN 
	employees e
    ON o.EmployeeID = e.EmployeeID
WHERE
    RequiredDate <= ShippedDate
GROUP BY EmployeeID
ORDER BY COUNT(o.EmployeeID) DESC;

/*43. Late orders vs. total orders
Andrew, the VP of sales, has been doing some more
thinking some more about the problem of late orders. He
realizes that just looking at the number of orders arriving
late for each salesperson isn't a good idea. It needs to be
compared against the total number of orders per
salesperson. Return results like the following:
Expected Result
EmployeeID LastName AllOrders LateOrders
----------- -------------------- ----------- -----------
1 Davolio 123 3
2 Fuller 96 4
3 Leverling 127 5
4 Peacock 156 10
6 Suyama 67 3
7 King 72 4
8 Callahan 104 5
9 Dodsworth 43 5 */

SELECT 
    o.EmployeeID, COUNT(o.EmployeeID) AS total_orders, A.late_orders, e.LastName
FROM
    orders o
JOIN 
	employees e
    ON o.EmployeeID = e.EmployeeID
JOIN 
	(SELECT EmployeeID, COUNT(EmployeeID) AS late_orders
		FROM orders
        WHERE RequiredDate <=  ShippedDate 
        GROUP BY EmployeeID) A
ON e.EmployeeID = A.EmployeeID
GROUP BY EmployeeID
ORDER BY EmployeeID;

SELECT EmployeeID, COUNT(EmployeeID) AS late_orders
		FROM orders
        WHERE RequiredDate <=  ShippedDate 
        GROUP BY EmployeeID;
        
SELECT 
    EmployeeID, COUNT(EmployeeID) AS total_orders
FROM
    orders 
GROUP BY EmployeeID;

/* 44. Late orders vs. total orders- missing employee There's an employee missing in the answer 
from the problem above. Fix the SQL to show all employees who have taken orders. */

SELECT 
    o.EmployeeID, COUNT(o.EmployeeID) AS total_orders, A.late_orders, e.LastName
FROM
    orders o
JOIN 
	employees e
    ON o.EmployeeID = e.EmployeeID
LEFT JOIN 
	(SELECT EmployeeID, COUNT(EmployeeID) AS late_orders
		FROM orders
        WHERE RequiredDate <=  ShippedDate 
        GROUP BY EmployeeID) A
ON e.EmployeeID = A.EmployeeID
GROUP BY EmployeeID
ORDER BY EmployeeID;

UPDATE orders
SET ShippedDate = '1996-10-16 00:00:00'
WHERE OrderID = 10320;

/*45. Late orders vs. total orders - fix null
Continuing on the answer for above query, let's fix the
results for row 5 - Buchanan. He should have a 0 instead
of a Null in LateOrders.*/

SELECT 
    o.EmployeeID, COUNT(o.EmployeeID) AS total_orders, IFNULL(A.late_orders,0), e.LastName
FROM
    orders o
JOIN 
	employees e
    ON o.EmployeeID = e.EmployeeID
LEFT JOIN 
	(SELECT EmployeeID, COUNT(EmployeeID) AS late_orders
		FROM orders
        WHERE RequiredDate <=  ShippedDate 
        GROUP BY EmployeeID) A
ON e.EmployeeID = A.EmployeeID
GROUP BY EmployeeID
ORDER BY EmployeeID;

/*46. Late orders vs. total orders - percentage
Now we want to get the percentage of late orders over
total orders.*/

SELECT *, late_orders/total_orders AS percentage FROM
	(SELECT 
		o.EmployeeID, e.LastName, COUNT(o.EmployeeID) AS total_orders, 
		IFNULL(A.late_orders,0) AS late_orders
	FROM
		orders o
	JOIN 
		employees e
		ON o.EmployeeID = e.EmployeeID
	LEFT JOIN 
		(SELECT EmployeeID, COUNT(EmployeeID) AS late_orders
			FROM orders
			WHERE RequiredDate <=  ShippedDate 
			GROUP BY EmployeeID) A
	ON e.EmployeeID = A.EmployeeID
	GROUP BY EmployeeID
	ORDER BY EmployeeID) B;
    
    /*47. Late orders vs. total orders - fix decimal
So now for the PercentageLateOrders, we get a decimal
value like we should. But to make the output easier to
read, let's cut the PercentLateOrders off at 2 digits to the
right of the decimal point.*/

SELECT *, ROUND(late_orders/total_orders,2) AS percentage FROM
	(SELECT 
		o.EmployeeID, e.LastName, COUNT(o.EmployeeID) AS total_orders, 
		IFNULL(A.late_orders,0) AS late_orders
	FROM
		orders o
	JOIN 
		employees e
		ON o.EmployeeID = e.EmployeeID
	LEFT JOIN 
		(SELECT EmployeeID, COUNT(EmployeeID) AS late_orders
			FROM orders
			WHERE RequiredDate <=  ShippedDate 
			GROUP BY EmployeeID) A
	ON e.EmployeeID = A.EmployeeID
	GROUP BY EmployeeID
	ORDER BY EmployeeID) B;
    
    
    /*48. Customer grouping
Andrew Fuller, the VP of sales at Northwind, would like
to do a sales campaign for existing customers. He'd like
to categorize customers into groups, based on how much
they ordered in 2016. Then, depending on which group
the customer is in, he will target the customer with
different sales materials.
The customer grouping categories are 0 to 1,000, 1,000 to
5,000, 5,000 to 10,000, and over 10,000.
A good starting point for this query is the answer from
the problem “High-value customers - total orders. We
don’t want to show customers who don’t have any orders
in 2016.
Order the results by CustomerID.*/

#Total value of each order
SELECT OrderID, SUM(total_price) AS total_order_value FROM
	(SELECT OrderID, UnitPrice*Quantity*(1-Discount) AS total_price
	FROM order_details) A
GROUP BY OrderID;

#Join customer ID with order value and number

SELECT  o.CustomerID, o.OrderID, B.total_order_value
FROM orders o
JOIN 
	(SELECT OrderID, SUM(total_price) AS total_order_value FROM
	(SELECT OrderID, UnitPrice*Quantity*(1-Discount) AS total_price
	FROM order_details) A
    GROUP BY OrderID) B
ON o.OrderID = B.OrderID;

#Get orders only from 1998

SELECT  o.CustomerID, o.OrderID, B.total_order_value, o.OrderDate
FROM orders o
JOIN 
	(SELECT OrderID, SUM(total_price) AS total_order_value FROM
	(SELECT OrderID, UnitPrice*Quantity*(1-Discount) AS total_price
	FROM order_details) A
    GROUP BY OrderID) B
ON o.OrderID = B.OrderID
WHERE YEAR(OrderDate) = '1998' ;

#Get total value of orders for each customer in 1998

SELECT CustomerID, SUM(total_order_value) AS annual_order_value
FROM
	(SELECT  o.CustomerID, o.OrderID, B.total_order_value, o.OrderDate
	FROM orders o
	JOIN 
		(SELECT OrderID, SUM(total_price) AS total_order_value FROM
		(SELECT OrderID, UnitPrice*Quantity*(1-Discount) AS total_price
		FROM order_details) A
		GROUP BY OrderID) B
	ON o.OrderID = B.OrderID
	WHERE YEAR(OrderDate) = '1998') C
GROUP BY CustomerID 
ORDER BY annual_order_value DESC;

#Grouping customers
SELECT cus.CustomerID, cus.CompanyName,
	CASE
	WHEN annual_order_value > 10000
    THEN 'Very high'
    WHEN annual_order_value > 5000
    THEN 'High'
    WHEN annual_order_value > 1000
    THEN 'Medium'
    ELSE 'Low'
    END AS group_classification,
    annual_order_value    
FROM
		(SELECT CustomerID, SUM(total_order_value) AS annual_order_value
		FROM
			(SELECT  o.CustomerID, o.OrderID, B.total_order_value, o.OrderDate
			FROM orders o
			JOIN 
				(SELECT OrderID, SUM(total_price) AS total_order_value FROM
				(SELECT OrderID, UnitPrice*Quantity*(1-Discount) AS total_price
				FROM order_details) A
				GROUP BY OrderID) B
			ON o.OrderID = B.OrderID
			WHERE YEAR(OrderDate) = '1998') C
		GROUP BY CustomerID) D
JOIN customers cus
ON D.CustomerID = cus.CustomerID
ORDER BY annual_order_value DESC;


/*49. Customer grouping - fix null
There's a bug with the answer for the previous question.
The CustomerGroup value for one of the rows is null.
Fix the SQL so that there are no nulls in the
CustomerGroup field.*/

#To answer the above question, I need to RIGHT JOIN the customers table in order to get null values
# in the annual_order_value column. Then fix the else clause to return null if the annual_order_value
#does not fit the CASE statement criteria

SELECT cus.CustomerID, cus.CompanyName,
	CASE
	WHEN annual_order_value > 10000
    THEN 'Very high'
    WHEN annual_order_value > 5000
    THEN 'High'
    WHEN annual_order_value > 1000
    THEN 'Medium'
    WHEN annual_order_value BETWEEN 0 AND 1000
    THEN 'Low'
    END AS group_classification,
    annual_order_value    
FROM
		(SELECT CustomerID, SUM(total_order_value) AS annual_order_value
		FROM
			(SELECT  o.CustomerID, o.OrderID, B.total_order_value, o.OrderDate
			FROM orders o
			JOIN 
				(SELECT OrderID, SUM(total_price) AS total_order_value FROM
				(SELECT OrderID, UnitPrice*Quantity*(1-Discount) AS total_price
				FROM order_details) A
				GROUP BY OrderID) B
			ON o.OrderID = B.OrderID
			WHERE YEAR(OrderDate) = '1998') C
		GROUP BY CustomerID) D
RIGHT JOIN customers cus
ON D.CustomerID = cus.CustomerID
ORDER BY annual_order_value DESC;

#answer to the question can be as below or the answer to 48 is also correct
	# GORUPING 1
SELECT cus.CustomerID, cus.CompanyName,
	CASE
	WHEN annual_order_value > 10000
    THEN 'Very high'
    WHEN annual_order_value > 5000
    THEN 'High'
    WHEN annual_order_value > 1000
    THEN 'Medium'
    WHEN annual_order_value BETWEEN 0 AND 1000
    THEN 'Low'
    ELSE 'N/A IN 1998'
    END AS group_classification,
    annual_order_value    
FROM
		(SELECT CustomerID, SUM(total_order_value) AS annual_order_value
		FROM
			(SELECT  o.CustomerID, o.OrderID, B.total_order_value, o.OrderDate
			FROM orders o
			JOIN 
				(SELECT OrderID, SUM(total_price) AS total_order_value FROM
				(SELECT OrderID, UnitPrice*Quantity*(1-Discount) AS total_price
				FROM order_details) A
				GROUP BY OrderID) B
			ON o.OrderID = B.OrderID
			WHERE YEAR(OrderDate) = '1998') C
		GROUP BY CustomerID) D
RIGHT JOIN customers cus
ON D.CustomerID = cus.CustomerID
ORDER BY annual_order_value DESC;

	#Grouping 2
    
SELECT cus.CustomerID, cus.CompanyName,
	IFNULL(
			(CASE
			WHEN annual_order_value > 10000
			THEN 'Very high'
			WHEN annual_order_value > 5000
			THEN 'High'
			WHEN annual_order_value > 1000
			THEN 'Medium'
			WHEN annual_order_value BETWEEN 0 AND 1000
			THEN 'Low'
			END),"N/A in 1998") AS group_classification,
			annual_order_value    
FROM
		(SELECT CustomerID, SUM(total_order_value) AS annual_order_value
		FROM
			(SELECT  o.CustomerID, o.OrderID, B.total_order_value, o.OrderDate
			FROM orders o
			JOIN 
				(SELECT OrderID, SUM(total_price) AS total_order_value FROM
				(SELECT OrderID, UnitPrice*Quantity*(1-Discount) AS total_price
				FROM order_details) A
				GROUP BY OrderID) B
			ON o.OrderID = B.OrderID
			WHERE YEAR(OrderDate) = '1998') C
		GROUP BY CustomerID) D
RIGHT JOIN customers cus
ON D.CustomerID = cus.CustomerID
ORDER BY annual_order_value DESC;

/*50. Customer grouping with percentage
Based on the above query, show all the defined
CustomerGroups, and the percentage in each. Sort by the
total in each group, in descending order.*/

#TOTAL number of customers in each group
SELECT group_classification AS customer_group, COUNT(CustomerID) AS total_in_group
FROM
	(SELECT cus.CustomerID, cus.CompanyName,
	CASE
	WHEN annual_order_value > 10000
    THEN 'Very high'
    WHEN annual_order_value > 5000
    THEN 'High'
    WHEN annual_order_value > 1000
    THEN 'Medium'
    ELSE 'Low'
    END AS group_classification,
    annual_order_value    
FROM
		(SELECT CustomerID, SUM(total_order_value) AS annual_order_value
		FROM
			(SELECT  o.CustomerID, o.OrderID, B.total_order_value, o.OrderDate
			FROM orders o
			JOIN 
				(SELECT OrderID, SUM(total_price) AS total_order_value FROM
				(SELECT OrderID, UnitPrice*Quantity*(1-Discount) AS total_price
				FROM order_details) A
				GROUP BY OrderID) B
			ON o.OrderID = B.OrderID
			WHERE YEAR(OrderDate) = '1998') C
		GROUP BY CustomerID) D
JOIN customers cus
ON D.CustomerID = cus.CustomerID
ORDER BY annual_order_value DESC) E
GROUP BY group_classification;

#total customers

SELECT customer_group, total_in_group,
SUM(total_in_group) OVER () AS total_customers
FROM (
		SELECT group_classification AS customer_group, COUNT(CustomerID) AS total_in_group
FROM
	(SELECT cus.CustomerID, cus.CompanyName,
	CASE
	WHEN annual_order_value > 10000
    THEN 'Very high'
    WHEN annual_order_value > 5000
    THEN 'High'
    WHEN annual_order_value > 1000
    THEN 'Medium'
    ELSE 'Low'
    END AS group_classification,
    annual_order_value    
FROM
		(SELECT CustomerID, SUM(total_order_value) AS annual_order_value
		FROM
			(SELECT  o.CustomerID, o.OrderID, B.total_order_value, o.OrderDate
			FROM orders o
			JOIN 
				(SELECT OrderID, SUM(total_price) AS total_order_value FROM
				(SELECT OrderID, UnitPrice*Quantity*(1-Discount) AS total_price
				FROM order_details) A
				GROUP BY OrderID) B
			ON o.OrderID = B.OrderID
			WHERE YEAR(OrderDate) = '1998') C
		GROUP BY CustomerID) D
JOIN customers cus
ON D.CustomerID = cus.CustomerID
ORDER BY annual_order_value DESC) E
GROUP BY group_classification) F; 

#group as percentage of total
SELECT customer_group, total_in_group, total_in_group/total_customers AS percentage_of_total
FROM
		(SELECT customer_group, total_in_group,
		SUM(total_in_group) OVER () AS total_customers
		FROM (
				SELECT group_classification AS customer_group, COUNT(CustomerID) AS total_in_group
		FROM
			(SELECT cus.CustomerID, cus.CompanyName,
			CASE
			WHEN annual_order_value > 10000
			THEN 'Very high'
			WHEN annual_order_value > 5000
			THEN 'High'
			WHEN annual_order_value > 1000
			THEN 'Medium'
			ELSE 'Low'
			END AS group_classification,
			annual_order_value    
		FROM
				(SELECT CustomerID, SUM(total_order_value) AS annual_order_value
				FROM
					(SELECT  o.CustomerID, o.OrderID, B.total_order_value, o.OrderDate
					FROM orders o
					JOIN 
						(SELECT OrderID, SUM(total_price) AS total_order_value FROM
						(SELECT OrderID, UnitPrice*Quantity*(1-Discount) AS total_price
						FROM order_details) A
						GROUP BY OrderID) B
					ON o.OrderID = B.OrderID
					WHERE YEAR(OrderDate) = '1998') C
				GROUP BY CustomerID) D
		JOIN customers cus
		ON D.CustomerID = cus.CustomerID
		ORDER BY annual_order_value DESC) E
		GROUP BY group_classification) F) G; 
        
	use northwind;
    
    /*51. Customer grouping - flexible
Andrew, the VP of Sales is still thinking about how best
to group customers, and define low, medium, high, and
very high value customers. He now wants complete
flexibility in grouping the customers, based on the dollar
amount they've ordered. He doesn’t want to have to edit
SQL in order to change the boundaries of the customer
groups.
How would you write the SQL?
There's a table called CustomerGroupThreshold that you
will need to use. Use only orders from 2016.*/





/*52. Countries with suppliers or customers
Some Northwind employees are planning a business trip,
and would like to visit as many suppliers and customers
as possible. For their planning, they’d like to see a list of
all countries where suppliers and/or customers are based.*/

SELECT DISTINCT Country FROM suppliers ORDER BY Country;
SELECT DISTINCT Country FROM customers ORDER BY Country;

SELECT Country FROM suppliers
UNION
SELECT Country FROM customers
ORDER BY COUNTRY;

SELECT DISTINCT s.country AS supplier_country, c.country AS customer_country 
FROM suppliers s
LEFT JOIN
customers c
ON s.country=c.country
UNION
SELECT DISTINCT s.country AS supplier_country, c.country AS customer_country 
FROM customers c
LEFT JOIN
suppliers s
ON s.country=c.country
ORDER BY supplier_country, customer_country ;

/*54. Countries with suppliers or customers -
version 3
The output of the above is improved, but it’s still not
ideal
What we’d really like to see is the country name, the total
suppliers, and the total customers.*/

#supplier country and number

SELECT country, COUNT(country) AS supplier_count
FROM suppliers
GROUP BY country;

SELECT country, COUNT(country) AS customer_count
FROM customers
GROUP BY country;

SELECT A.country, IFNULL(A.supplier_count,0), IFNULL(B.customer_count,0)
FROM 
	(SELECT country, COUNT(country) AS supplier_count
	FROM suppliers
	GROUP BY country) A
LEFT JOIN
	(SELECT country, COUNT(country) AS customer_count
	FROM customers
	GROUP BY country) B
ON A.country=B.country
UNION
SELECT B.country, IFNULL(A.supplier_count,0), IFNULL(B.customer_count,0)
FROM 
(SELECT country, COUNT(country) AS customer_count
	FROM customers
	GROUP BY country) B
LEFT JOIN
(SELECT country, COUNT(country) AS supplier_count
	FROM suppliers
	GROUP BY country) A
ON A.country=B.country
Order by country;

COMMIT;