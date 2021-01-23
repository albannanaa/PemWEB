-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2021 at 11:43 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biodata`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `umur` int(15) NOT NULL,
  `lahir` varchar(50) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `resume1` varchar(600) NOT NULL,
  `resume2` varchar(600) NOT NULL,
  `resume3` varchar(600) NOT NULL,
  `image` varchar(50) NOT NULL,
  `imageporto1` varchar(50) NOT NULL,
  `imageporto2` varchar(50) NOT NULL,
  `imageporto3` varchar(50) NOT NULL,
  `imageporto4` varchar(50) NOT NULL,
  `imageporto5` varchar(50) NOT NULL,
  `imageporto6` varchar(50) NOT NULL,
  `imageporto7` varchar(50) NOT NULL,
  `resumeporto` varchar(150) NOT NULL,
  `blogresume` varchar(150) NOT NULL,
  `blogpost1` varchar(600) NOT NULL,
  `blogpost2` varchar(600) NOT NULL,
  `post1` varchar(600) NOT NULL,
  `post2` varchar(600) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `nama`, `umur`, `lahir`, `hp`, `kota`, `status`, `foto`, `email`, `resume1`, `resume2`, `resume3`, `image`, `imageporto1`, `imageporto2`, `imageporto3`, `imageporto4`, `imageporto5`, `imageporto6`, `imageporto7`, `resumeporto`, `blogresume`, `blogpost1`, `blogpost2`, `post1`, `post2`) VALUES
('1', 'Hasan Al Banna', 19, 'Temanggung, June 16th 2001', '+62-857-4701-6065', 'Bantul, Yogyakarta', 'Single', '', 'hasan.2001@students.amikom.ac.id', 'Complete studio photography assignments, from family portraits to weddings, engagements, corporate headshots, pets, holiday themes and infant/toddler photo shoots. Leverage interpersonal skills to quickly build rapport with subjects. Credited by company owner for helping drive an average 10% revenue increase.', 'Creative, high-energy photographer producing premium-quality photos in studio settings. Dedicated to creating memories that last a lifetime while driving sales and studio profits. Manage all facets of photo shoots including scheduling, designing sets, shooting, photo editing, collaborating with clients and closing add-on sales. Strong digital/technical skills; use Adobe Photoshop Lightroom CC daily.', 'Camera: Canon EOS 5D Mark III | Software: Adobe Creative Cloud (Photoshop, Lightroom, Illustrator, InDesign, Experience Design, Premiere Pro, After Effects, Animate, Dreamweaver, Fuse, Adobe Muse, Acrobat Pro DC); ActionScript; Final Cut Pro X; QuarkXPress; Capture One Pro; macOS', 'profile-img.jpg', 'portfolio-1.jpg', 'portfolio-2.jpg', 'portfolio-3.jpg', 'portfolio-4.jpg', 'portfolio-5.jpg', 'portfolio-6.jpg', 'portfolio-7.jpg', 'examples of shots from Banz Studio', '\" S h a r i n g    is    C a r i n g \"', 'Increasing engagement on our content is a primary goal of every social media influencer.\r\n\r\nTo increase engagement, many factors come into play- both things we can control (photo selection or captions) and things we cannot (those pesky, ever-changing algorithms). Tips for getting engagement could be an entire blog post or more, but here are a few general tips to help get you started!', 'Developing a photography style or brand takes time, but it’s well worth the effort. If you then share the right photo on the right social media platform with the right message, your content is more likely to resonate with your followers and you are well on your way to creating influence and increasing engagement.', '1. Know Your Purpose: Know your goal when sharing a photo! Whether you are promoting a blog post, a brand or product or your own blog, make sure the photo you use supports that goal and communicates the intended message.', '2. Use the Right Caption: Considering your goal when sharing a photo, your audience and the photo itself, make sure you create the right caption! When appropriate, you should include a natural.');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(15) NOT NULL,
  `blog` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(15) NOT NULL,
  `judul` varchar(225) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `judul`, `isi`) VALUES
(9, 'How to Increase Engagement', 'Know Your Purpose: Know your goal when sharing a photo! Whether you are promoting a blog post, a brand or product or your own blog, make sure the photo you use supports that goal and communicates the intended message. Use the Right Caption: Considering your goal when sharing a photo, your audience and the photo itself, make sure you create the right caption! When appropriate, you should include a natural.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
