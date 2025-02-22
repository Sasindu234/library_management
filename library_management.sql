-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2025 at 05:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `can_manage_librarians` tinyint(1) DEFAULT 1,
  `can_manage_customers` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(100) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `publication_year` year(4) DEFAULT NULL,
  `availability` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `author`, `isbn`, `genre`, `publication_year`, `availability`) VALUES
(1, 'To Kill a Mockingbird', 'Harper Lee', '9780061120084', 'Fiction', '1960', 5),
(2, '1984', 'George Orwell', '9780451524935', 'Dystopian', '1949', 3),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', '9780743273565', 'Fiction', '1925', 4),
(4, 'The Catcher in the Rye', 'J.D. Salinger', '9780316769488', 'Fiction', '1951', 6),
(5, 'Pride and Prejudice', 'Jane Austen', '9780141040349', 'Romance', '0000', 2),
(6, 'Moby-Dick', 'Herman Melville', '9781503280786', 'Adventure', '0000', 3),
(7, 'The Hobbit', 'J.R.R. Tolkien', '9780345339683', 'Fantasy', '1937', 7),
(8, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', '9780590353427', 'Fantasy', '1997', 10),
(9, 'The Road', 'Cormac McCarthy', '9780307387899', 'Post-Apocalyptic', '2006', 4),
(10, 'The Da Vinci Code', 'Dan Brown', '9780307474278', 'Mystery', '2003', 5),
(11, '', '', '', '', '0000', 0),
(14, 'Rajawaliya', 'Unknown', '978-0-06-112008-8', 'Historical', '0000', 1),
(22, 'The Lord of the Rings', 'J. R. R. Tolkien', '978-0-06-112008-9', 'High Fantasy/ Adventure', '1954', 1),
(31, 'The Hunger Games', 'Suzanne Collins', '978-0-06-112008-6', ' Fantasy/ Adventure', '2008', 1),
(32, 'New', 'Unknown', '978-0-06-112108-4', 'Fiction, Classic', '2000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `late_fees` decimal(10,2) DEFAULT 0.00,
  `books_rented_out` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `user_id`, `phone_number`, `late_fees`, `books_rented_out`) VALUES
(111, 'Sasindu Malwatthage', '111', '9029900567', 0.00, 0),
(112, 'Rory Noble', '112', '9024515852', 0.00, 0),
(113, 'Stalan Peter', '113', '9029956354', 0.00, 0),
(120, 'Nipun', '114', '90255544465', 0.00, 0);

-- --------------------------------------------------------

--
-- Table structure for table `librarian`
--

CREATE TABLE `librarian` (
  `FirstName` varchar(10) DEFAULT NULL,
  `LastName` varchar(10) DEFAULT NULL,
  `Password` varchar(8) DEFAULT NULL,
  `can_checkout_return_books` tinyint(1) DEFAULT 1,
  `can_search_books` tinyint(1) DEFAULT 1,
  `can_manage_customer_accounts` tinyint(1) DEFAULT 1,
  `can_manage_books` tinyint(1) DEFAULT 1,
  `can_recommend_books` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD UNIQUE KEY `isbn` (`isbn`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
