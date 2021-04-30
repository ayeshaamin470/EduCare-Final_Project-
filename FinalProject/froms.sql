-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2021 at 07:39 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `froms`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone_no` varchar(30) NOT NULL,
  `Subject` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Phone_no`, `Subject`) VALUES
('ayesha', 'shaily640@yahoo.com', '01994081889', 'Too MEH!'),
('MIKI', 'MIKy640@yahoo.com', '01794081889', 'SLOW'),
('mia', 'mia64@yahoo.com', '01714041999', 'ADD MORE VARITIES'),
('lara', 'lara34@yahoo.com', '01884041945', 'website slow');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Name` varchar(30) NOT NULL,
  `CID` varchar(20) NOT NULL,
  `price` varchar(20) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Name`, `CID`, `price`, `description`) VALUES
('English', 'ENG01', '$10', 'BASIC ENGLISH'),
('C++', 'cse21', '$12', 'Introduction to cpp'),
('PYTHON', 'PY101', '$13', 'description'),
('device', 'EEE112', '$15', 'eee'),
('java', 'cse111', '$13', 'basic java'),
('oop2', 'cse332', '$30', 'basic'),
('WEBTEC', 'cse009', '$13', 'XYZ'),
('spanish', 'lan43', '$20', 'language'),
('French', '321', '$20', 'language');

-- --------------------------------------------------------

--
-- Table structure for table `enroll`
--

CREATE TABLE `enroll` (
  `studentName` varchar(30) NOT NULL,
  `studentID` varchar(30) NOT NULL,
  `courseID` varchar(20) NOT NULL,
  `courseName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enroll`
--

INSERT INTO `enroll` (`studentName`, `studentID`, `courseID`, `courseName`) VALUES
('abid', '31', 'cse332', 'oop2'),
('abid', '31', 'PY101', 'PYTHON'),
('abid', '31', 'lan43', 'spanish'),
('Ayesha', '19-39654-1', 'lan43', 'spanish'),
('Ayesha', '19-39654-1', 'cse009', 'WEBTEC'),
('Ayesha', '19-39654-1', 'cse111', 'java');

-- --------------------------------------------------------

--
-- Table structure for table `fileup`
--

CREATE TABLE `fileup` (
  `title` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fileup`
--

INSERT INTO `fileup` (`title`, `image`) VALUES
('title', '5362-Class_Test2_FinalTerm_E.docx'),
('title', '6993-Compiler Lecture 10 (1).pptx'),
('t', '2508-wp.jpg'),
('demo', '5609-wp.jpg'),
('demo', '9640-wp.jpg'),
('demo', '5192-Java.png');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `fname` varchar(30) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `dob` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`fname`, `lname`, `username`, `password`, `email`, `phone_number`, `dob`) VALUES
('Ayesha', 'Amin', 'aye@edu', '123456', 'shaily640@yahoo.com', '019940419401', '23/6/2002'),
('abid', 'israk', 'abid21@edu', '123450', 'abid.2@yahoo.com', '0199404445', '3/6/2003'),
('Mia', 'lin', 'linn21@edu', '123450', 'linn31@yahoo.com', '014455678990', '7/7/2002'),
('MIKI', 'MOUSE', 'MIKI@EDU', 'MIKI90', 'MIKy640@yahoo.com', '01994041999', '23/6/1999'),
('Jeba', 'Sadia', 'jeba21@edu', '123456', 'sadia21@gmail.com', '01774056787', '3/6/2003'),
('huma', 'mim', 'mim 33@edu', '12345', 'huma54@yahoo.com', '01994041947', '2/6/2001');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Name` varchar(30) NOT NULL,
  `ID` varchar(20) NOT NULL,
  `DOB` varchar(20) NOT NULL,
  `Courses` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Name`, `ID`, `DOB`, `Courses`) VALUES
('Mia', '113', '23/6/2002', '4'),
('Fara', '47', '23/6/1999', '7'),
('Karim', '178', '3/8/1999', '8'),
('Sadia', '444', '23/6/2002', '3'),
('abid', '31', '2/9/2001', '7'),
('Lana', '555', '12/12/1999', '4'),
('Mia', '113', '23/6/2002', '4'),
('Ayesha', '19-39654-1', '7/7/2002', '4');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `name` varchar(30) NOT NULL,
  `tid` varchar(20) NOT NULL,
  `course` varchar(30) NOT NULL,
  `department` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`name`, `tid`, `course`, `department`) VALUES
('Taha', '19-111', 'English', ' English'),
('Lara', '51', 'OPP1', ' cse'),
('PK', '191', 'Accounts', ' BBA'),
('Liam', '115', 'C#', ' CSSE'),
('Sadia', '466', 'Finance', ' BBA'),
('Udoy', '325', 'Java', ' CSE');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `Assignments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
