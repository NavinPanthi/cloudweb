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

CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(100) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(100) NOT NULL,
  `cat_desc` text NOT NULL,
  `cat_icon` varchar(50) NOT NULL,
   PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=16;

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

CREATE TABLE IF NOT EXISTS `instructors` (
  `user_id` int(100) NOT NULL AUTO_INCREMENT,
  `user_fname` text NOT NULL,
  `user_lname` text NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_pass` varchar(50) NOT NULL,
  `about` text NOT NULL,
  `admin` tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=8;

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

CREATE TABLE IF NOT EXISTS `learners` (
  `luser_id` int(100) NOT NULL AUTO_INCREMENT,
  `luser_fname` text NOT NULL,
  `luser_lname` text NOT NULL,
  `luser_name` varchar(50) NOT NULL,
  `luser_email` varchar(50) NOT NULL,
  `luser_pass` varchar(50) NOT NULL,
  `is_dropout` tinyint(1) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`luser_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=2;

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
CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(100) NOT NULL AUTO_INCREMENT,
  `cat_id` int(100) NOT NULL,
  `post_title` varchar(100) NOT NULL,
  `post_date` text NOT NULL,
  `post_author` varchar(50) NOT NULL,
  `post_keywords` text NOT NULL,
  `post_image` text NOT NULL,
  `post_content` longtext NOT NULL,
  `video_link` varchar(200) NOT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

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
(27, 10, 'Understanding Computer Networking Basics', '31-03-16', 'Amit Kollol Dey', 'computer networking, basics, protocols', 'computer-networking.jpg', '<p>Computer networking is a complex and ever-evolving field that involves connecting computers and other devices to share resources and communicate with each other. Here are some basic concepts to help you understand computer networking:</p>\r\n<p>1. Network topology: The arrangement of devices and cables in a network. Common topologies include star, ring, and bus.</p>\r\n<p>2. Network protocols: The rules and standards that govern how data is transmitted over a network. Examples include TCP/IP and HTTP.</p>\r\n<p>3. Network hardware: The physical components of a network, such as routers, switches, and cables.</p>\r\n<p>4. IP addressing: The method used to assign unique addresses to devices on a network, allowing them to communicate with each other.</p>\r\n<p>5. Network security: Measures taken to protect a network from unauthorized access, data breaches, and other security threats.</p>\r\n<p>By understanding these basic concepts, you can begin to explore the world of computer networking and develop the skills needed to design, implement, and manage networks.</p>\r\n<p>&nbsp;</p>', ''),
(28, 10, 'Introduction to Network Security', '31-03-16', 'Jane Smith', 'network security, introduction, cyber threats', 'network-security.jpg', '<p>Network security is a critical aspect of modern computing, as it involves protecting the integrity, confidentiality, and availability of information transmitted over a network. Here are some key concepts to help you understand network security:</p>\r\n<p>1. Confidentiality: Ensuring that sensitive information is only accessible to authorized individuals or entities.</p>\r\n<p>2. Integrity: Ensuring that data remains unchanged during transmission and storage.</p>\r\n<p>3. Availability: Ensuring that network resources are accessible to authorized users when needed.</p>\r\n<p>4. Authentication: Verifying the identity of users and devices accessing the network.</p>\r\n<p>5. Authorization: Determining the permissions and privileges granted to users and devices based on their identity and role.</p>\r\n<p>6. Encryption: Encoding data to prevent unauthorized access and protect it from eavesdropping.</p>\r\n<p>7. Firewalls: Devices or software applications that monitor and control incoming and outgoing network traffic based on predetermined security rules.</p>\r\n<p>By implementing robust network security measures, organizations can mitigate the risk of cyber threats and safeguard their sensitive information.</p>\r\n<p>&nbsp;</p>', ''),
(29, 10, 'Common Network Security Threats and How to Mitigate Them', '31-03-16', 'John Doe', 'network security, threats, mitigation', 'network-security-threats.jpg', '<p>Network security threats pose a significant risk to organizations, as they can lead to data breaches, financial losses, and reputational damage. Here are some common network security threats and how to mitigate them:</p>\r\n<p>1. Malware: Malicious software designed to infiltrate and damage computer systems. To mitigate this threat, organizations should use antivirus software, keep systems updated, and train employees on safe browsing practices.</p>\r\n<p>2. Phishing: Attempts to trick individuals into revealing sensitive information such as passwords and financial details. To mitigate this threat, organizations should educate employees about phishing scams, use email filtering software, and implement multi-factor authentication.</p>\r\n<p>3. DDoS attacks: Distributed Denial of Service attacks that overwhelm a network with traffic, causing it to become slow or unavailable. To mitigate this threat, organizations should use DDoS mitigation services, configure firewalls to block suspicious traffic, and maintain redundant network infrastructure.</p>\r\n<p>4. Insider threats: Malicious or negligent actions by employees, contractors, or business partners. To mitigate this threat, organizations should implement strict access controls, monitor user activity, and provide cybersecurity training to employees.</p>\r\n<p>5. Zero-day exploits: Attacks that target previously unknown vulnerabilities in software or hardware. To mitigate this threat, organizations should keep systems updated with the latest security patches, use intrusion detection systems to detect suspicious activity, and implement network segmentation to contain potential breaches.</p>\r\n<p>By understanding these common network security threats and implementing appropriate countermeasures, organizations can enhance their security posture and reduce the risk of cyber attacks.</p>\r\n<p>&nbsp;</p>', '');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--
CREATE TABLE IF NOT EXISTS `slider` (
  `slide_id` int(100) NOT NULL AUTO_INCREMENT,
  `slide_image` text NOT NULL,
  PRIMARY KEY (`slide_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_image`) VALUES
(7, 'banner.png');



/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
