-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 26, 2024 at 05:17 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_name` varchar(100) NOT NULL,
  `cat_desc` text NOT NULL,
  `cat_icon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_name`, `cat_desc`, `cat_icon`) VALUES
(8, 'Problem Solving', '<p>Improve your problem-solving skills with our resources and tutorials.</p>', 'fa-asterisk'),
(10, 'Networking', '<p>Learn the basics of computer networking and how to set up and manage networks.</p>', 'fa-wifi'),
(13, 'Mathematics', '<p>Explore the world of mathematics, from basic arithmetic to advanced calculus.</p>', 'fa-area-chart'),
(14, 'Physics', '<p>Discover the fundamental principles of physics and how they apply to the world around us.</p>', 'fa-hourglass-end');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `user_id` int(100) NOT NULL,
  `user_fname` text NOT NULL,
  `user_lname` text NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_pass` varchar(50) NOT NULL,
  `about` text NOT NULL,
  `admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`user_id`, `user_fname`, `user_lname`, `user_name`, `user_email`, `user_pass`, `about`, `admin`) VALUES
(1, 'Amit', 'Kollol Dey', 'amit', 'amitkolloldey@gmail.com', '2dbf21633f03afcf882eaf10e4b5caca', 'Mathematician', 1),
(3, 'amit', 'kollol dey', 'amit2451', 'amit@gmail.com', '2dbf21633f03afcf882eaf10e4b5caca', 'Networking Trainer', 0),
(4, 'amit', 'dey', 'logicfighters', 'amit2@gmail.com', '2dbf21633f03afcf882eaf10e4b5caca', 'Physician ', NULL),
(5, 'amit', 'dey', 'forexwhi', 'amit9@gmail.com', '2dbf21633f03afcf882eaf10e4b5caca', 'Problem solver', NULL),
(8, 'bed', 'panthi', 'bedadmin', 'panthinabin341@gmail.com', 'ccaa89e22d962bac3c2da2ddf27c5f6d', 'Mathematician', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `learners`
--

CREATE TABLE `learners` (
  `luser_id` int(100) NOT NULL,
  `luser_fname` text NOT NULL,
  `luser_lname` text NOT NULL,
  `luser_name` varchar(50) NOT NULL,
  `luser_email` varchar(50) NOT NULL,
  `luser_pass` varchar(50) NOT NULL,
  `is_dropout` tinyint(1) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `learners`
--

INSERT INTO `learners` (`luser_id`, `luser_fname`, `luser_lname`, `luser_name`, `luser_email`, `luser_pass`, `is_dropout`, `reason`) VALUES
(1, 'amit', 'dey', 'amit2451', 'amit3@gmail.com', '2dbf21633f03afcf882eaf10e4b5caca', 0, ''),
(2, 'navin', 'panthi', 'navin341', 'panthinabin341@gmail.com', '1c7ea25db2f53f741cb468df28efe26e', 1, 'Financial reasons');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(100) NOT NULL,
  `cat_id` int(100) NOT NULL,
  `post_title` varchar(100) NOT NULL,
  `post_date` text NOT NULL,
  `post_author` varchar(50) NOT NULL,
  `post_keywords` text NOT NULL,
  `post_image` text NOT NULL,
  `post_content` longtext NOT NULL,
  `video_link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `cat_id`, `post_title`, `post_date`, `post_author`, `post_keywords`, `post_image`, `post_content`, `video_link`) VALUES
(19, 8, 'Effective Problem Solving Techniques', '06-04-16', 'Amit Kollol Dey', 'problem solving, techniques, strategies', '185774_cb62_3.jpg', '<p>Effective problem solving is a crucial skill in many aspects of life. Here are some techniques that can help:</p>\r\n<p>1. Define the problem: Understand and clearly define what the problem is. This step is crucial as it sets the direction for the rest of the problem-solving process.</p>\r\n<p>2. Analyze the problem: Break down the problem into smaller parts to understand its root cause. This will help you to identify potential solutions.</p>\r\n<p>3. Generate possible solutions: Brainstorm and list down all possible solutions, no matter how unconventional they may seem.</p>\r\n<p>4. Evaluate and select a solution: Weigh the pros and cons of each solution and select the most feasible one.</p>\r\n<p>5. Implement and review: Implement the chosen solution and review its effectiveness. If the problem persists, you may need to go back to step 3 and generate more solutions.</p>\r\n<p>&nbsp;</p>', ''),
(20, 8, 'Common Problem Solving Mistakes and How to Avoid Them', '030-04-16', 'Amit Kollol Dey', 'problem solving, mistakes, avoidance', '85774_cb62_3.jpg', '<p>When it comes to problem solving, there are some common mistakes that people often make. Here are some of them and how to avoid them:</p>\r\n<p>1. Jumping to conclusions: It can be tempting to come up with a solution as soon as possible, but this can lead to ineffective solutions. Take the time to properly define and analyze the problem before coming up with a solution.</p>\r\n<p>2. Ignoring the root cause: Treating symptoms rather than addressing the root cause of a problem can lead to recurring issues. Make sure to identify and address the underlying cause of the problem.</p>\r\n<p>3. Lack of communication: Poor communication can lead to misunderstandings and misaligned efforts. Make sure to communicate clearly and effectively with all parties involved in the problem-solving process.</p>\r\n<p>4. Failing to plan: Without a clear plan, problem-solving efforts can become disorganized and ineffective. Take the time to develop a clear plan of action before implementing a solution.</p>\r\n<p>5. Being too rigid: Sticking to one solution without considering alternatives can limit the effectiveness of problem-solving efforts. Be open to new ideas and willing to adjust your approach as needed.</p>\r\n<p>&nbsp;</p>', ''),
(21, 13, 'The Importance of Mathematics in Everyday Life', '31-03-16', 'John Doe', 'mathematics, everyday life, applications', 'mathematics.jpg', '<p>Mathematics is often seen as a dry and abstract subject, but the truth is that it plays a crucial role in our everyday lives. Here are some examples of how mathematics is used in everyday life:</p>\r\n<p>1. Budgeting: Mathematics is essential for managing personal finances, from balancing a checkbook to creating a budget.</p>\r\n<p>2. Cooking: Mathematics is used in cooking to measure ingredients, calculate cooking times, and convert measurements.</p>\r\n<p>3. Travel: Mathematics is used in travel to calculate distances, plan routes, and convert currencies.</p>\r\n<p>4. Sports: Mathematics is used in sports to calculate scores, track statistics, and analyze performance.</p>\r\n<p>5. Health: Mathematics is used in health to calculate medication dosages, monitor vital signs, and analyze medical data.</p>\r\n<p>Understanding the practical applications of mathematics can help students see the relevance of the subject and develop a greater appreciation for its importance in everyday life.</p>\r\n<p>&nbsp;</p>', ''),
(22, 13, 'Simple Math Calculations in Daily Life', '31-03-16', 'Jane Smith', 'math, calculations, daily life', 'math-calculations.jpg', '<p>Math is an essential part of our daily lives, even if we don’t always realize it. Here are some examples of simple math calculations that we use in our everyday routines:</p>\r\n<p>1. Budgeting: To manage our finances, we need to calculate our income and expenses to determine how much money we have left to save or spend.</p>\r\n<p>2. Cooking: When following a recipe, we often need to adjust the ingredient quantities based on the number of servings we want to make.</p>\r\n<p>3. Shopping: To compare prices and determine the best value, we need to calculate the cost per unit of each item.</p>\r\n<p>4. Time management: To plan our day, we need to calculate how much time we have available and allocate it to different tasks.</p>\r\n<p>5. Travel: To plan a trip, we need to calculate the distance, time, and cost of transportation.</p>\r\n<p>By practicing simple math calculations in our daily lives, we can improve our problem-solving skills and become more efficient in managing our time and resources.</p>\r\n<p>&nbsp;</p>', ''),
(23, 13, 'Arithmetic Expressions: A Basic Guide', '31-03-16', 'John Doe', 'arithmetic, expressions, math', 'arithmetic-expressions.jpg', '<h4>Arithmetic Expressions: A Basic Guide</h4>\r\n<p>Arithmetic expressions are mathematical statements that combine numbers and operators to produce a single value. Here are some examples of arithmetic expressions:</p>\r\n<p>1. 5 + 3 = 8</p>\r\n<p>2. 10 - 4 = 6</p>\r\n<p>3. 2 * 7 = 14</p>\r\n<p>4. 8 / 2 = 4</p>\r\n<p>5. (2 + 3) * 4 = 20</p>\r\n<p>Arithmetic expressions follow a specific order of operations, which determines the sequence in which the operations are performed. The order of operations is as follows:</p>\r\n<p>1. Parentheses</p>\r\n<p>2. Exponents</p>\r\n<p>3. Multiplication and Division (from left to right)</p>\r\n<p>4. Addition and Subtraction (from left to right)</p>\r\n<p>By understanding arithmetic expressions and the order of operations, you can perform complex calculations with ease.</p>\r\n<p>&nbsp;</p>', ''),
(25, 13, 'Understanding Trigonometry: Functions and Applications', '31-03-16', 'Amit Kollol Dey', 'trigonometry, functions, applications', 'trigonometry_image.jpg', '<h4>Understanding Trigonometry: Functions and Applications</h4>\r\n<p>Trigonometry is a branch of mathematics that deals with the relationships between the angles and sides of triangles. It has numerous applications in various fields such as engineering, physics, computer science, and more. In this post, we will explore the basic functions of trigonometry and their applications.</p>\r\n<h4>Trigonometric Functions</h4>\r\n<p>There are six basic trigonometric functions: sine, cosine, tangent, cosecant, secant, and cotangent. These functions relate the angles of a right triangle to the lengths of its sides. The values of these functions can be calculated using the following formulas:</p>\r\n<ul>\r\n<li>Sine of an angle = opposite side / hypotenuse</li>\r\n<li>Cosine of an angle = adjacent side / hypotenuse</li>\r\n<li>Tangent of an angle = opposite side / adjacent side</li>\r\n<li>Cosecant of an angle = hypotenuse / opposite side</li>\r\n<li>Secant of an angle = hypotenuse / adjacent side</li>\r\n<li>Cotangent of an angle = adjacent side / opposite side</li>\r\n</ul>\r\n<h4>Applications of Trigonometry</h4>\r\n<p>Trigonometry has numerous applications in various fields. Some of the common applications are:</p>\r\n<ul>\r\n<li>Engineering: Trigonometry is used in the design and analysis of structures such as bridges, buildings, and dams.</li>\r\n<li>Physics: Trigonometry is used in the study of waves, oscillations, and vibrations.</li>\r\n<li>Computer Science: Trigonometry is used in computer graphics to create 3D models and animations.</li>\r\n<li>Navigation: Trigonometry is used in navigation to calculate distances and directions.</li>\r\n</ul>\r\n<p>In conclusion, trigonometry is a powerful tool that has numerous applications in various fields. Understanding the basic functions and their applications is essential for success in many areas of study and work.</p>', ''),
(27, 10, 'Understanding Computer Networking Basics', '31-03-16', 'Amit Kollol Dey', 'computer networking, basics, protocols', 'computer-networking.jpg', '<p>Computer networking is a complex and ever-evolving field that involves connecting computers and other devices to share resources and communicate with each other. Here are some basic concepts to help you understand computer networking:</p>\r\n<p>1. Network topology: The arrangement of devices and cables in a network. Common topologies include star, ring, and bus.</p>\r\n<p>2. Network protocols: The rules and standards that govern how data is transmitted over a network. Examples include TCP/IP and HTTP.</p>\r\n<p>3. Network hardware: The physical components of a network, such as routers, switches, and cables.</p>\r\n<p>4. Network software: The programs and applications that enable devices to communicate over a network, such as web browsers and email clients.</p>\r\n<p>5. Network security: The measures taken to protect a network and its data from unauthorized access and attacks.</p>\r\n<p>Understanding these basic concepts is essential for anyone working with computer networks. Whether you are setting up a home network or managing a large corporate network, having a solid foundation in networking basics will help you troubleshoot issues and optimize performance.</p>\r\n<p>&nbsp;</p>', ''),
(27, 10, 'Understanding Basic Physics Concepts', '31-03-16', 'Amit Kollol Dey', 'physics, basics, concepts', 'basic-physics.jpg', '<p>Physics is a fundamental branch of science that deals with the properties and interactions of matter and energy. Here are some basic concepts to help you understand physics:</p>\r\n<p>1. Matter: Matter is anything that has mass and takes up space. It can exist in different states such as solid, liquid, and gas.</p>\r\n<p>2. Energy: Energy is the ability to do work. It can come in different forms such as kinetic energy, potential energy, thermal energy, and electromagnetic energy.</p>\r\n<p>3. Force: A force is a push or pull upon an object resulting from the object interaction with another object. Forces can cause objects to accelerate, slow down, or change direction.</p>\r\n<p>4. Motion: Motion refers to the change in position of an object over time. It can be described in terms of distance, displacement, speed, velocity, and acceleration.</p>\r\n<p>5. Gravity: Gravity is a force that attracts two objects towards each other. On Earth, gravity gives objects weight and causes them to fall towards the ground.</p>\r\n<p>Understanding these basic concepts is essential for anyone studying physics. Whether you are a student or a professional, having a solid foundation in physics concepts will help you solve problems and make sense of the world around you.</p>\r\n<p>&nbsp;</p>', '');



-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(100) NOT NULL,
  `slide_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_image`) VALUES
(7, 'banner.png'),

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `learners`
--
ALTER TABLE `learners`
  ADD PRIMARY KEY (`luser_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `learners`
--
ALTER TABLE `learners`
  MODIFY `luser_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
