-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: retailpulse
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Aarav','Sharma','aarav.sharma01@email.com','Hyderabad','Telangana','2025-01-15'),(2,'Ananya','Reddy','ananya.reddy02@email.com','Bengaluru','Karnataka','2025-01-22'),(3,'Rahul','Verma','rahul.verma03@email.com','Chennai','Tamil Nadu','2025-02-05'),(4,'Priya','Nair','priya.nair04@email.com','Kochi','Kerala','2025-02-18'),(5,'Arjun','Mehta','arjun.mehta05@email.com','Mumbai','Maharashtra','2025-03-02'),(6,'Sneha','Patel','sneha.patel06@email.com','Ahmedabad','Gujarat','2025-03-17'),(7,'Vikram','Rao','vikram.rao07@email.com','Pune','Maharashtra','2025-04-08'),(8,'Kavya','Iyer','kavya.iyer08@email.com','Chennai','Tamil Nadu','2025-04-21'),(9,'Rohan','Gupta','rohan.gupta09@email.com','Delhi','Delhi','2025-05-06'),(10,'Meera','Krishnan','meera.krishnan10@email.com','Bengaluru','Karnataka','2025-05-19'),(11,'Aditya','Joshi','aditya.joshi11@email.com','Jaipur','Rajasthan','2025-06-03'),(12,'Ishita','Singh','ishita.singh12@email.com','Lucknow','Uttar Pradesh','2025-06-15'),(13,'Karan','Malhotra','karan.malhotra13@email.com','Delhi','Delhi','2025-07-01'),(14,'Divya','Menon','divya.menon14@email.com','Kochi','Kerala','2025-07-14'),(15,'Nikhil','Bansal','nikhil.bansal15@email.com','Chandigarh','Chandigarh','2025-08-02'),(16,'Pooja','Shah','pooja.shah16@email.com','Ahmedabad','Gujarat','2025-08-18'),(17,'Siddharth','Kapoor','siddharth.kapoor17@email.com','Mumbai','Maharashtra','2025-09-05'),(18,'Neha','Agarwal','neha.agarwal18@email.com','Hyderabad','Telangana','2025-09-21'),(19,'Varun','Desai','varun.desai19@email.com','Pune','Maharashtra','2025-10-07'),(20,'Shreya','Kulkarni','shreya.kulkarni20@email.com','Pune','Maharashtra','2025-10-20'),(21,'Manish','Yadav','manish.yadav21@email.com','Noida','Uttar Pradesh','2025-11-04'),(22,'Aditi','Mishra','aditi.mishra22@email.com','Lucknow','Uttar Pradesh','2025-11-18'),(23,'Harsh','Choudhary','harsh.choudhary23@email.com','Jaipur','Rajasthan','2025-12-02'),(24,'Riya','Sethi','riya.sethi24@email.com','Delhi','Delhi','2025-12-16'),(25,'Akash','Pillai','akash.pillai25@email.com','Kochi','Kerala','2026-01-08'),(26,'Nandini','Rao','nandini.rao26@email.com','Hyderabad','Telangana','2026-01-22'),(27,'Yash','Thakur','yash.thakur27@email.com','Chandigarh','Chandigarh','2026-02-05'),(28,'Tanvi','Deshmukh','tanvi.deshmukh28@email.com','Mumbai','Maharashtra','2026-02-19'),(29,'Sahil','Khan','sahil.khan29@email.com','Bengaluru','Karnataka','2026-03-06'),(30,'Maya','Fernandes','maya.fernandes30@email.com','Goa','Goa','2026-03-20');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,1,'Hyderabad Warehouse',45,10,'2026-01-15'),(2,2,'Bengaluru Warehouse',32,8,'2026-02-05'),(3,3,'Mumbai Warehouse',18,10,'2026-01-28'),(4,4,'Hyderabad Warehouse',25,8,'2026-02-12'),(5,5,'Bengaluru Warehouse',12,10,'2026-02-20'),(6,6,'Chennai Warehouse',38,12,'2026-01-30'),(7,7,'Mumbai Warehouse',9,10,'2026-02-25'),(8,8,'Hyderabad Warehouse',15,8,'2026-02-10'),(9,9,'Bengaluru Warehouse',42,12,'2026-01-18'),(10,10,'Chennai Warehouse',27,10,'2026-02-14'),(11,11,'Mumbai Warehouse',20,8,'2026-01-25'),(12,12,'Hyderabad Warehouse',7,10,'2026-02-28'),(13,13,'Bengaluru Warehouse',35,12,'2026-02-08'),(14,14,'Chennai Warehouse',14,8,'2026-02-16'),(15,15,'Mumbai Warehouse',29,10,'2026-01-22'),(16,16,'Hyderabad Warehouse',6,8,'2026-02-27'),(17,17,'Bengaluru Warehouse',31,10,'2026-02-04'),(18,18,'Chennai Warehouse',22,8,'2026-02-18'),(19,19,'Mumbai Warehouse',11,10,'2026-02-24'),(20,20,'Hyderabad Warehouse',40,12,'2026-01-20');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,1,1,2499.00,0.00),(2,2,2,1,1799.00,5.00),(3,3,3,1,3499.00,10.00),(4,4,12,2,1799.00,0.00),(5,5,5,1,2999.00,5.00),(6,6,6,2,1299.00,10.00),(7,7,9,1,1499.00,0.00),(8,8,13,2,799.00,5.00),(9,9,7,1,1899.00,10.00),(10,10,4,1,1599.00,0.00),(11,11,20,1,1999.00,5.00),(12,12,10,2,599.00,0.00),(13,13,14,1,1899.00,10.00),(14,14,11,1,5999.00,5.00),(15,15,17,2,999.00,0.00),(16,16,15,1,899.00,10.00),(17,17,8,1,24999.00,5.00),(18,18,18,2,799.00,0.00),(19,19,19,1,749.00,10.00),(20,20,2,2,1799.00,5.00),(21,21,1,1,2499.00,10.00),(22,22,3,1,3499.00,0.00),(23,23,5,1,2999.00,5.00),(24,24,16,2,799.00,10.00),(25,25,20,1,1999.00,0.00),(26,26,11,1,5999.00,5.00),(27,27,7,1,1899.00,0.00),(28,28,6,2,1299.00,10.00),(29,29,4,1,1599.00,5.00),(30,30,10,3,599.00,0.00),(31,31,8,1,24999.00,10.00),(32,32,14,1,1899.00,5.00),(33,33,12,2,1799.00,0.00),(34,34,13,2,799.00,10.00),(35,35,17,1,999.00,5.00),(36,36,18,2,799.00,0.00),(37,37,9,1,1499.00,5.00),(38,38,15,1,899.00,10.00),(39,39,19,2,749.00,0.00),(40,40,20,1,1999.00,5.00);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2025-01-18 10:32:00','Delivered','Hyderabad','Website'),(2,2,'2025-01-25 14:15:00','Delivered','Bengaluru','Mobile App'),(3,3,'2025-02-03 09:45:00','Delivered','Chennai','Website'),(4,4,'2025-02-11 16:20:00','Shipped','Kochi','Mobile App'),(5,5,'2025-02-18 11:05:00','Delivered','Mumbai','Website'),(6,6,'2025-03-02 13:40:00','Delivered','Ahmedabad','Mobile App'),(7,7,'2025-03-14 18:10:00','Cancelled','Pune','Website'),(8,8,'2025-03-21 10:25:00','Delivered','Chennai','Mobile App'),(9,9,'2025-04-05 15:35:00','Shipped','Delhi','Website'),(10,10,'2025-04-12 12:50:00','Delivered','Bengaluru','Mobile App'),(11,11,'2025-04-28 09:15:00','Delivered','Jaipur','Website'),(12,12,'2025-05-06 17:45:00','Cancelled','Lucknow','Mobile App'),(13,13,'2025-05-19 11:30:00','Delivered','Delhi','Website'),(14,14,'2025-06-01 14:05:00','Delivered','Kochi','Mobile App'),(15,15,'2025-06-16 10:40:00','Shipped','Chandigarh','Website'),(16,16,'2025-06-25 16:55:00','Delivered','Ahmedabad','Mobile App'),(17,17,'2025-07-04 13:25:00','Delivered','Mumbai','Website'),(18,18,'2025-07-18 09:50:00','Cancelled','Hyderabad','Mobile App'),(19,19,'2025-08-03 18:30:00','Delivered','Pune','Website'),(20,20,'2025-08-17 11:15:00','Delivered','Hyderabad','Mobile App'),(21,21,'2025-09-02 15:45:00','Shipped','Noida','Website'),(22,22,'2025-09-14 10:20:00','Delivered','Lucknow','Mobile App'),(23,23,'2025-09-28 17:10:00','Delivered','Jaipur','Website'),(24,24,'2025-10-06 12:35:00','Cancelled','Delhi','Mobile App'),(25,25,'2025-10-19 14:50:00','Delivered','Kochi','Website'),(26,26,'2025-11-03 09:35:00','Delivered','Hyderabad','Mobile App'),(27,27,'2025-11-16 16:15:00','Shipped','Chandigarh','Website'),(28,28,'2025-11-28 11:45:00','Delivered','Mumbai','Mobile App'),(29,29,'2025-12-08 13:10:00','Delivered','Bengaluru','Website'),(30,30,'2025-12-21 18:05:00','Cancelled','Goa','Mobile App'),(31,1,'2026-01-07 10:15:00','Delivered','Hyderabad','Website'),(32,5,'2026-01-19 14:40:00','Delivered','Mumbai','Mobile App'),(33,8,'2026-02-02 11:25:00','Shipped','Chennai','Website'),(34,12,'2026-02-15 16:30:00','Delivered','Lucknow','Mobile App'),(35,15,'2026-02-27 09:55:00','Delivered','Chandigarh','Website'),(36,18,'2026-03-05 15:20:00','Pending','Hyderabad','Mobile App'),(37,20,'2026-03-12 12:45:00','Delivered','Hyderabad','Website'),(38,23,'2026-03-18 17:35:00','Shipped','Jaipur','Mobile App'),(39,27,'2026-03-22 10:05:00','Delivered','Chandigarh','Website'),(40,30,'2026-03-25 13:55:00','Pending','Goa','Mobile App');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,1,'2025-01-18 11:32:00','UPI','Paid',2499.00),(2,2,'2025-01-25 15:15:00','Credit Card','Paid',1709.05),(3,3,'2025-02-03 10:45:00','Debit Card','Paid',3149.10),(4,4,'2025-02-11 17:20:00','Cash on Delivery','Paid',3598.00),(5,5,'2025-02-18 12:05:00','UPI','Paid',2849.05),(6,6,'2025-03-02 14:40:00','Credit Card','Pending',2338.20),(7,7,'2025-03-14 19:10:00','Debit Card','Refunded',1499.00),(8,8,'2025-03-21 11:25:00','Cash on Delivery','Paid',1518.10),(9,9,'2025-04-05 16:35:00','UPI','Paid',1709.10),(10,10,'2025-04-12 13:50:00','Credit Card','Paid',1599.00),(11,11,'2025-04-28 10:15:00','Debit Card','Paid',1899.05),(12,12,'2025-05-06 18:45:00','Cash on Delivery','Refunded',1198.00),(13,13,'2025-05-19 12:30:00','UPI','Paid',1709.10),(14,14,'2025-06-01 15:05:00','Credit Card','Paid',5699.05),(15,15,'2025-06-16 11:40:00','Debit Card','Paid',1998.00),(16,16,'2025-06-25 17:55:00','Cash on Delivery','Pending',809.10),(17,17,'2025-07-04 14:25:00','UPI','Paid',23749.05),(18,18,'2025-07-18 10:50:00','Credit Card','Refunded',1598.00),(19,19,'2025-08-03 19:30:00','Debit Card','Paid',674.10),(20,20,'2025-08-17 12:15:00','Cash on Delivery','Paid',3418.10),(21,21,'2025-09-02 16:45:00','UPI','Paid',2249.10),(22,22,'2025-09-14 11:20:00','Credit Card','Paid',3499.00),(23,23,'2025-09-28 18:10:00','Debit Card','Paid',2849.05),(24,24,'2025-10-06 13:35:00','Cash on Delivery','Refunded',1438.20),(25,25,'2025-10-19 15:50:00','UPI','Paid',1999.00),(26,26,'2025-11-03 10:35:00','Credit Card','Paid',5699.05),(27,27,'2025-11-16 17:15:00','Debit Card','Pending',1899.00),(28,28,'2025-11-28 12:45:00','Cash on Delivery','Paid',2338.20),(29,29,'2025-12-08 14:10:00','UPI','Paid',1519.05),(30,30,'2025-12-21 19:05:00','Credit Card','Refunded',1797.00),(31,31,'2026-01-07 11:15:00','Debit Card','Paid',22499.10),(32,32,'2026-01-19 15:40:00','Cash on Delivery','Paid',1804.05),(33,33,'2026-02-02 12:25:00','UPI','Paid',3598.00),(34,34,'2026-02-15 17:30:00','Credit Card','Paid',1438.20),(35,35,'2026-02-27 10:55:00','Debit Card','Pending',949.05),(36,36,'2026-03-05 16:20:00','Cash on Delivery','Paid',1598.00),(37,37,'2026-03-12 13:45:00','UPI','Paid',1424.05),(38,38,'2026-03-18 18:35:00','Credit Card','Paid',809.10),(39,39,'2026-03-22 11:05:00','Debit Card','Paid',1498.00),(40,40,'2026-03-25 14:55:00','Cash on Delivery','Paid',1899.05);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Wireless Earbuds Pro','Electronics','Audio','SoundMax',2499.00,1450.00),(2,'Bluetooth Speaker','Electronics','Audio','SoundMax',1799.00,950.00),(3,'Smart Watch','Electronics','Wearables','FitPulse',3499.00,2100.00),(4,'Power Bank 20000mAh','Electronics','Power','VoltPro',1599.00,850.00),(5,'Mechanical Keyboard','Computers','Peripherals','KeyMaster',2999.00,1700.00),(6,'Wireless Mouse','Computers','Peripherals','KeyMaster',1299.00,650.00),(7,'USB-C Hub','Computers','Accessories','TechLink',1899.00,1050.00),(8,'Smartphone X1','Mobiles','Smartphones','NovaTech',24999.00,19800.00),(9,'Fast Charging Adapter','Mobiles','Chargers','ChargePro',1499.00,800.00),(10,'USB-C Cable','Mobiles','Cables','TechLink',599.00,250.00),(11,'Air Fryer 4L','Home Appliances','Kitchen','HomeChef',5999.00,3900.00),(12,'Electric Kettle','Home Appliances','Kitchen','HomeChef',1799.00,950.00),(13,'Cotton T-Shirt','Fashion','Menswear','UrbanWear',799.00,350.00),(14,'Slim Fit Jeans','Fashion','Menswear','UrbanWear',1899.00,950.00),(15,'Vitamin C Face Serum','Beauty','Skincare','GlowCare',899.00,390.00),(16,'SPF 50 Sunscreen','Beauty','Skincare','SunShield',799.00,350.00),(17,'Yoga Mat','Sports','Fitness','FitLife',999.00,450.00),(18,'Resistance Band Set','Sports','Fitness','FlexFit',799.00,320.00),(19,'SQL for Data Analysis','Books','Technology','TechBooks',749.00,410.00),(20,'Laptop Backpack','Accessories','Bags','TravelPro',1999.00,1000.00);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `returns`
--

LOCK TABLES `returns` WRITE;
/*!40000 ALTER TABLE `returns` DISABLE KEYS */;
INSERT INTO `returns` VALUES (1,2,2,'2025-02-01',1,'Damaged product'),(2,5,5,'2025-02-25',1,'Wrong item received'),(3,8,13,'2025-03-28',1,'Product not as expected'),(4,14,11,'2025-06-08',1,'Damaged product'),(5,20,2,'2025-08-24',1,'Wrong item received'),(6,25,20,'2025-10-26',1,'Product not as expected'),(7,32,14,'2026-01-26',1,'Size issue'),(8,39,19,'2026-03-29',1,'Changed mind');
/*!40000 ALTER TABLE `returns` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-18 18:06:17
