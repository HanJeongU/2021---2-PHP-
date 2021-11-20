-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 21-06-20 09:14
-- 서버 버전: 10.4.19-MariaDB
-- PHP 버전: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `sample`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- 테이블 구조 `board`
--

CREATE TABLE `board` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `board`
--

INSERT INTO `board` (`num`, `id`, `name`, `subject`, `content`, `regist_day`, `hit`, `file_name`, `file_type`, `file_copied`) VALUES
(3, 'sdsd', '이정섭', 'gfh', 'fghgh', '2021-06-14 (09:02)', 0, '3W_20160739_한정우 (2).ipynb', 'application/octet-stream', '2021_06_14_09_02_04.ipynb'),
(4, 'sdsd', '이정섭', 'ghgh', 'ghgh', '2021-06-14 (09:02)', 0, '', '', ''),
(5, 'jamjam124', '한정우', 'ㅇㅇ', 'ㅇㅇㅇ', '2021-06-19 (08:11)', 0, '스크린샷(1).png', 'image/png', '2021_06_19_08_11_55.png');

-- --------------------------------------------------------

--
-- 테이블 구조 `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(3, '공과대학', 'College of Engineering', '2017-01-24 19:17:37', '30-01-2017 12:22:24 AM'),
(4, '문과대학', 'College of Liberal Arts', '2017-01-24 19:19:32', ''),
(5, '경상대학', 'test', '2017-01-24 19:19:54', ''),
(6, '자연대학', 'natural series', '2017-02-20 19:18:52', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `members`
--

CREATE TABLE `members` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `pass` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `email` char(80) DEFAULT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `univ` char(20) DEFAULT NULL,
  `student_num` int(11) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `faculty` char(20) DEFAULT NULL,
  `department` char(20) DEFAULT NULL,
  `birth` int(11) DEFAULT NULL,
  `phone_num` char(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `members`
--

INSERT INTO `members` (`num`, `id`, `pass`, `name`, `email`, `regist_day`, `univ`, `student_num`, `gender`, `faculty`, `department`, `birth`, `phone_num`, `level`, `point`) VALUES
(1, 'sdsd', 'ssss', '이정섭', 'wjdtjqcjswp@naver.com', '2021-06-05 (17:52)', '한남대학교', 20160606, '남', '공과대학', '컴퓨터통신무인기술학과', 19970607, '01093784491', 9, 3500),
(2, 'sisio9378', 'rmflawk1@@', '이민섭', 'wjdtjqcjswp@naver.com', '2021-06-06 (16:40)', '건양대학교', 20160607, '남', '공과대학', '컴퓨터통신무인기술학과', 19971111, '010-9378-4491', 9, 0),
(3, 'sdsd', 'ssss', '이정섭', 'wjdtjqcjswp@naver.com', '2021-06-06 (18:00)', '한남대학교', 20160606, '남', '공과대학', '컴퓨터통신무인기술학과', 19970607, '01093784491', 9, 3500),
(4, 's', 's', 's', 's@s', '2021-06-06 (18:16)', '', 0, '', '', '', 0, '', 9, 0),
(10, 'jamjam124', 'asas1234', '한정우', 'ianimgoo@naver.com', '2021-06-19 (07:23)', '한정우', 20160739, '남', '공과대학', '컴퓨터', 970608, '01043122547', 9, 500),
(11, 'aaaa', 'asas1234', '한정우', 'ianimgoo@naver.com', '2021-06-20 (04:26)', '한남대학교', 20160739, '남', '공과대학', '컴퓨터공학과', 970608, '01043122547', 9, 0),
(12, 'test', '1234', '교수님', 'test@naver.com', '2021-06-20 (08:53)', 'test', 0, 't', 'test', 'test', 0, 'test', 1, 0);

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind`
--

CREATE TABLE `mentofind` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `mentofind`
--

INSERT INTO `mentofind` (`num`, `id`, `name`, `subject`, `content`, `regist_day`, `hit`, `file_name`, `file_type`, `file_copied`) VALUES
(2, 'sdsd', '이정섭', 'ssss', 'ssss', '2021-06-09 (09:12)', 1, '', '', ''),
(3, 'sdsd', '이정섭', 'edd', 'dddd', '2021-06-09 (09:13)', 2, '', '', ''),
(4, 'sdsd', '이정섭', 'fgvhf', 'fghfgh', '2021-06-09 (09:21)', 0, '', '', ''),
(5, 'sdsd', '이정섭', 'ssss', 'ssss', '2021-06-14 (04:40)', 0, '', '', ''),
(6, 'sdsd', '이정섭', 'sdsd', 'sdsd', '2021-06-14 (04:40)', 1, '', '', ''),
(7, 'sdsd', '이정섭', 'sdsd', 'sdsd', '2021-06-14 (04:40)', 0, '', '', ''),
(8, 'sdsd', '이정섭', 'sdsd', 'sdsd', '2021-06-14 (04:41)', 1, '', '', ''),
(9, 'sdsd', '이정섭', 'sdsd', 'sdsd', '2021-06-14 (04:41)', 1, '', '', ''),
(11, 'sdsd', '이정섭', 'sdsd', 'sdsd', '2021-06-14 (04:41)', 5, '', '', ''),
(13, 'sdsd', '이정섭', 'ㅇㄹㅇ', 'ㄹㅇㄹㅇㄹ', '2021-06-14 (04:59)', 6, '', '', ''),
(15, 'sdsd', '이정섭', 'ㄴㄴ', 'ㄴㄴ', '2021-06-14 (05:05)', 19, '', '', ''),
(26, 'jamjam124', '한정우', 'dfdfd', 'fdfdffdfdfdfdfdfdf', '2021-06-20 (04:13)', 11, '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind1`
--

CREATE TABLE `mentofind1` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `mentofind1`
--

INSERT INTO `mentofind1` (`num`, `id`, `name`, `subject`, `content`, `regist_day`, `hit`, `file_name`, `file_type`, `file_copied`) VALUES
(3, 'sdsd', '이정섭', 'fff', 'ffff', '2021-06-14 (08:25)', 8, '', '', ''),
(4, 'jamjam124', '', 'ㅁㄴㅇㅁㄴㅇ', 'ㅁㄴㅇㅁㄴㅇㅁㄴ', '2021-06-19 (07:21)', 4, '', '', ''),
(5, 'jamjam124', '한정우', 'ㅇㅇ', 'ㅇㅇ', '2021-06-19 (08:12)', 3, '', '', ''),
(6, 'jamjam124', '한정우', 'ㅇㅇ', 'ㅇㅇffff', '2021-06-19 (08:12)', 19, '스크린샷(11).png', 'image/png', '2021_06_19_08_12_23.png');

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind2`
--

CREATE TABLE `mentofind2` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `mentofind2`
--

INSERT INTO `mentofind2` (`num`, `id`, `name`, `subject`, `content`, `regist_day`, `hit`, `file_name`, `file_type`, `file_copied`) VALUES
(1, 'sdsd', '이정섭', 'ghgh', 'ghgh', '2021-06-14 (09:02)', 16, '3W_20160739_한정우 (2).ipynb', 'application/octet-stream', '2021_06_14_09_02_21.ipynb');

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind3`
--

CREATE TABLE `mentofind3` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind4`
--

CREATE TABLE `mentofind4` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind5`
--

CREATE TABLE `mentofind5` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind6`
--

CREATE TABLE `mentofind6` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `mentofind6`
--

INSERT INTO `mentofind6` (`num`, `id`, `name`, `subject`, `content`, `regist_day`, `hit`, `file_name`, `file_type`, `file_copied`) VALUES
(1, 'sdsd', '이정섭', 'dfdf', 'dfdfdf', '2021-06-14 (08:26)', 2, '', '', ''),
(2, 'sdsd', '이정섭', 'sdfsdf', 'sdfsdf', '2021-06-14 (08:26)', 3, '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind7`
--

CREATE TABLE `mentofind7` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind8`
--

CREATE TABLE `mentofind8` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind9`
--

CREATE TABLE `mentofind9` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind10`
--

CREATE TABLE `mentofind10` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `mentofind10`
--

INSERT INTO `mentofind10` (`num`, `id`, `name`, `subject`, `content`, `regist_day`, `hit`, `file_name`, `file_type`, `file_copied`) VALUES
(1, 'sdsd', '이정섭', 'ㄴㄴㄴㄴ', 'ㄴㄴㄴㄴ', '2021-06-14 (09:08)', 0, '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind11`
--

CREATE TABLE `mentofind11` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind12`
--

CREATE TABLE `mentofind12` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind13`
--

CREATE TABLE `mentofind13` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind14`
--

CREATE TABLE `mentofind14` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `mentofind14`
--

INSERT INTO `mentofind14` (`num`, `id`, `name`, `subject`, `content`, `regist_day`, `hit`, `file_name`, `file_type`, `file_copied`) VALUES
(1, 'sdsd', '이정섭', 'zxczx', 'zxczxczxc', '2021-06-14 (17:12)', 1, '', '', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind15`
--

CREATE TABLE `mentofind15` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind16`
--

CREATE TABLE `mentofind16` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind17`
--

CREATE TABLE `mentofind17` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind18`
--

CREATE TABLE `mentofind18` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind19`
--

CREATE TABLE `mentofind19` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind20`
--

CREATE TABLE `mentofind20` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `mentofind21`
--

CREATE TABLE `mentofind21` (
  `num` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `message`
--

CREATE TABLE `message` (
  `num` int(11) NOT NULL,
  `send_id` char(20) NOT NULL,
  `rv_id` char(20) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `message`
--

INSERT INTO `message` (`num`, `send_id`, `rv_id`, `subject`, `content`, `regist_day`) VALUES
(1, 'sdsd', 'sdsd', '아ㅣㄴ녕ㄴ', '낭년ㅇ', '2021-06-14 (09:05)');

-- --------------------------------------------------------

--
-- 테이블 구조 `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `quality` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext DEFAULT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 20:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 20:59:19'),
(5, 1, 0, 0, 0, '장진윤', 'ㅇㅇ', '네', '2021-06-19 14:58:31'),
(6, 1, 0, 0, 0, 'ㅇㅇㅇㅇ', 'ㅇㅇㅇ', 'ㅇ', '2021-06-19 14:59:00'),
(7, 1, 3, 2, 2, 'ㅇㅇㅇㅇ', 'ㅇㅇㅇ', 'ㅇㅇㅇ', '2021-06-19 15:03:54'),
(8, 1, 2, 2, 1, 'ff', 'fff', 'fff', '2021-06-19 15:14:12'),
(9, 1, 1, 1, 1, 'dddd', 'ddd', 'ddd', '2021-06-20 02:52:21');

-- --------------------------------------------------------

--
-- 테이블 구조 `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `subCategory` int(11) DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int(11) DEFAULT NULL,
  `productPriceBeforeDiscount` int(11) DEFAULT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` varchar(100) DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL,
  `university` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`, `university`) VALUES
(1, 4, 3, 'C언어 및 자바 기초 알려드릴게요!', '건양대학교', 50000, 0, '<div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">계획</div><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">계획</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">월 4회 주 2회 </li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">멘토 받을 내용</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">c언어 및 자바 기초</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">연락처</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">010-1234-5678</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">포부</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">당신의 학점 및 프로그래밍 실력을 대폭 향상 시켜드립니다.</li></ul></li><li class=\"_1KuY3T row\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">세부사항</div><ul class=\"_3dG3ix col col-9-12\" style=\"box-sizing: border-box; margin-left: 0px; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">저는 3학년이며, 평소에 프로그래밍에 관심이 많아<br>프로그래밍 실력이 월등합니다. 또한 학교 성적도 우수하여, 이러한 노하우를 알려드리고자 합니다.!</li></ul></li></ul>', 'c_bg.png', 'java.jpg', 'c_bg.png', '컴퓨터공학과', 'In Stock', '2017-01-30 16:54:35', '', '건양대학교'),
(2, 4, 4, '전기전자 알려드림', '건양대학교', 36990, 0, '<div class=\"_2PF8IO\" style=\"box-sizing: border-box; margin: 0px 0px 0px 110px; padding: 0px; flex: 1 1 0%; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px;\"><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">1 GB RAM | 16 GB ROM |</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">4.7 inch Retina HD Display</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">8MP Primary Camera | 1.2MP Front</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">Li-Ion Battery</li><li class=\"_1tMfkh\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\">A8 Chip with 64-bit Architecture and M8 Motion Co-processor Processor</li></ul></div>', '3.jpg', 'apple-iphone-6-2.jpeg', 'apple-iphone-6-3.jpeg', '전기전자과', 'In Stock', '2017-01-30 16:59:00', '', '건양대학교'),
(3, 4, 4, '대학영문법', '대전대학교', 50000, 0, '<br><div><ol><li>대학영문법</li><li>010-1111-2222</li><li>영어 문법 자신있게 만들어 드립니다.</li></ol></div>', '수정됨_영문법-표1.png', 'data21598741-0003.jpg', 'data21598741-0003.jpg', '영문과', 'In Stock', '2017-02-04 04:03:15', '', '대전대학교'),
(4, 4, 4, 'PHP 프로그래밍 입문', '한남대학교', 30000, 0, '<ul><li>같이 웹 홈페이지 만들어봐요</li><li>phone : 010-1111-2222</li><li>내용 : php 웹페이지</li></ul>', 'B5451383444_l.jpg', 'B5451383444_l.jpg', 'B5451383444_l.jpg', '컴퓨터공학과', 'In Stock', '2017-02-04 04:04:43', '', '한남대학교'),
(6, 4, 4, '네트워크 해킹 보안', '충남대학교', 69990, 0, '<ul><li><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">계획</div><ul style=\"margin-left: 0px; box-sizing: border-box; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">계획</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">월 4회 주 2회</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">멘토 받을 내용</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">c언어 및 자바 기초</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">연락처</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">010-1234-5678</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">포부</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">당신의 학점 및 프로그래밍 실력을 대폭 향상 시켜드립니다.</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">세부사항</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">저는 3학년이며, 평소에 프로그래밍에 관심이 많아<br>프로그래밍 실력이 월등합니다. 또한 학교 성적도 우수하여, 이러한 노하우를 알려드리고자 합니다.!</li></ul></li></ul></li></ul>', '다운로드.jpg', 'unnamed.jpg', 'unnamed.jpg', '컴퓨터공학과', 'In Stock', '2017-02-04 04:08:07', '', '충남대학교'),
(7, 4, 2, '영어 고급 문법 한달 만에 꺠우치기', '대전신학대학교', 74900, 0, '<ul><li><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">계획</div><ul style=\"margin-left: 0px; box-sizing: border-box; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">계획</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">월 4회 주 2회</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">멘토 받을 내용</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">영어</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">연락처</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">010-1234-5678</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">포부</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">당신의 학점 및 영어실력을 대폭 향상 시켜드립니다.</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">세부사항</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">저는 3학년이며, 평소에 영어관심이 많아<br>영어실력이 월등합니다. 또한 학교 성적도 우수하여, 이러한 노하우를 알려드리고자 합니다.!</li></ul></li></ul></li></ul>', 'images.png', 'images.png', 'images.png', '영문과', 'In Stock', '2017-02-04 04:10:17', '', '대전신학대학교'),
(8, 3, 4, '웹프로그래밍', ' 우송대학교', 14990, 0, '<ul><li>3 GB RAM | 32 GB ROM | Expandable Upto 256 GB<br></li><li>5.2 inch HD Display<br></li><li>13MP Primary Camera | 16MP Front<br></li><li>2900 mAh Battery<br></li><li>Qualcomm MSM8940 64-bit Processor<br></li></ul>', 'B5451383444_l.jpg', 'data21598741-0003.jpg', 'thumb-course-phthon-basic.jpg', '컴퓨터공학과', 'In Stock', '2017-02-04 04:11:54', '', '우송대학교'),
(9, 4, 5, '파이썬', '배재대학교', 25900, 0, '<ul><li><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">계획</div><ul style=\"margin-left: 0px; box-sizing: border-box; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">계획</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">월 4회 주 2회</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">멘토 받을 내용</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">파이썬</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">연락처</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">010-1234-5678</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">포부</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">당신의 학점 및 프로그래밍 실력을 대폭 향상 시켜드립니다.</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">세부사항</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">저는 3학년이며, 평소에 프로그래밍에 관심이 많아<br>프로그래밍 실력이 월등합니다. 또한 학교 성적도 우수하여, 이러한 노하우를 알려드리고자 합니다.!</li></ul></li></ul></li></ul>', 'thumb-course-phthon-basic.jpg', 'thumb-course-phthon-basic.jpg', 'data21598741-0003.jpg', '컴퓨터공학과', 'In Stock', '2017-02-04 04:17:03', '', '배재대학교'),
(11, 3, 8, '자바', '을지대학교', 19990, 0, '<ul><li><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">계획</div><ul style=\"margin-left: 0px; box-sizing: border-box; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">계획</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">월 4회 주 2회</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">멘토 받을 내용</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">c언어 및 자바 기초</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">연락처</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">010-1234-5678</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">포부</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">당신의 학점 및 프로그래밍 실력을 대폭 향상 시켜드립니다.</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">세부사항</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">저는 3학년이며, 평소에 프로그래밍에 관심이 많아<br>프로그래밍 실력이 월등합니다. 또한 학교 성적도 우수하여, 이러한 노하우를 알려드리고자 합니다.!</li></ul></li></ul></li></ul>', 'java.jpg', 'java.jpg', 'q37yvxrxkezys9ycvxjt.png', '컴퓨터공학과', 'In Stock', '2017-02-04 04:26:17', '', '을지대학교'),
(12, 4, 6, '파이썬', '충례신학대학교', 10999, 0, '<ul><li><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">계획</div><ul style=\"margin-left: 0px; box-sizing: border-box; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">계획</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">월 4회 주 2회</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">멘토 받을 내용</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">파이썬</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">연락처</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">010-1234-5678</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">포부</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">당신의 학점 및 프로그래밍 실력을 대폭 향상 시켜드립니다.</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">세부사항</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">저는 3학년이며, 평소에 프로그래밍에 관심이 많아<br>프로그래밍 실력이 월등합니다. 또한 학교 성적도 우수하여, 이러한 노하우를 알려드리고자 합니다.!</li></ul></li></ul></li></ul>', 'unnamed.jpg', 'thumb-course-phthon-basic.jpg', 'unnamed.jpg', '컴퓨터공학과', 'In Stock', '2017-02-04 04:28:17', '', '충례신학대학교'),
(13, 4, 6, '영어 회화 가치 알려드림', '한밭대학교', 41990, 0, '<ul><li><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">계획</div><ul style=\"margin-left: 0px; box-sizing: border-box; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">계획</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">월 4회 주 2회</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">멘토 받을 내용</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">영어 회화</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">연락처</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">010-1234-5678</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">포부</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">당신의 학점 및 영어회화 실력을 대폭 향상 시켜드립니다.</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">세부사항</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">저는 3학년이며, 평소에 영어회화관심이 많아<br>영어회화 실력이 월등합니다. 또한 학교 성적도 우수하여, 이러한 노하우를 알려드리고자 합니다.!</li></ul></li></ul></li></ul>', '영어회하.jpg', '영어회하.jpg', '영어회하.jpg', '영문과', 'In Stock', '2017-02-04 04:30:24', '', '한밭대학교'),
(14, 4, 6, '영어회화', '한국과학기술원', 52990, 0, '<div><ul><li><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">계획</div><ul style=\"margin-left: 0px; box-sizing: border-box; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">계획</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">월 4회 주 2회</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">멘토 받을 내용</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">영어회화</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">연락처</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">010-1234-5678</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">포부</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">당신의 학점 및 영어 회화실력을 대폭 향상 시켜드립니다.</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">세부사항</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">저는 3학년이며, 평소에 영어화히관심이 많아<br>영어실력이 월등합니다. 또한 학교 성적도 우수하여, 이러한 노하우를 알려드리고자 합니다.!</li></ul></li></ul></li></ul></div>', '영어회하.jpg', '영어회하.jpg', '영어회하.jpg', '영문과', 'In Stock', '2017-02-04 04:32:15', '', '한국과학기술원'),
(15, 3, 8, '파이썬', '한남대학교', 49000, 0, '<span style=\"color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 18px;\">PYTHON</span><br><div><ul><li>Language: python<br></li><li>Phone: 010-7777-8888</li><li>내용: 파이썬 수업해서 했던 코드들 자세하게 알려드립니다.<br></li></ul></div>', 'thumb-course-phthon-basic.jpg', 'thumb-course-phthon-basic.jpg', 'thumb-course-phthon-basic.jpg', '컴퓨터공학과', 'In Stock', '2017-02-04 04:35:13', '', '한남대학교'),
(16, 3, 8, '인드로이드', '충남대학교', 50000, 0, '<ul><li><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">계획</div><ul style=\"margin-left: 0px; box-sizing: border-box; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">계획</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">월 4회 주 2회</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">멘토 받을 내용</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">c언어 및 자바 기초</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">연락처</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">010-1234-5678</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">포부</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">당신의 학점 및 프로그래밍 실력을 대폭 향상 시켜드립니다.</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">세부사항</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">저는 3학년이며, 평소에 프로그래밍에 관심이 많아<br>프로그래밍 실력이 월등합니다. 또한 학교 성적도 우수하여, 이러한 노하우를 알려드리고자 합니다.!</li></ul></li></ul></li></ul>', '다운로드.jpg', '다운로드.jpg', '다운로드.jpg', '컴퓨터공학과', 'In Stock', '2017-02-04 04:36:23', '', '충남대학교'),
(17, 5, 9, '독일어', '우송정보대학교', 32566, 0, '<ul><li><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">계획</div><ul style=\"margin-left: 0px; box-sizing: border-box; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">계획</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">월 4회 주 2회</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">멘토 받을 내용</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">독일어</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">연락처</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">010-1234-5678</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">포부</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">당신의 학점 및 독일어 실력을 대폭 향상 시켜드립니다.</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">세부사항</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">저는 3학년이며, 평소에 독일어관심이 많아<br>독일어실력이 월등합니다. 또한 학교 성적도 우수하여, 이러한 노하우를 알려드리고자 합니다.!</li></ul></li></ul></li></ul>', '독일어.png', '독일어.png', '독일어.png', '독일어학과', 'In Stock', '2017-02-04 04:40:37', '', '우송정보대학교'),
(18, 5, 10, '독일어', '건신대학원대학교', 6523, 0, '<div><ul><li><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif;\">계획</div><ul style=\"margin-left: 0px; box-sizing: border-box; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">계획</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">월 4회 주 2회</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">멘토 받을 내용</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">독일어</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">연락처</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">010-1234-5678</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">포부</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">당신의 학점 및 독일어실력을 대폭 향상 시켜드립니다.</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">세부사항</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">저는 3학년이며, 평소에 독일어관심이 많아<br>독일어실력이 월등합니다. 또한 학교 성적도 우수하여, 이러한 노하우를 알려드리고자 합니다.!</li></ul></li></ul></li></ul></div>', '독일어.png', '독일어.png', '독일어.png', '독일어학과', 'In Stock', '2017-02-04 04:42:27', '', '건신대학원대학교');
INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`, `university`) VALUES
(19, 6, 12, 'c언어 및 자바', '대전과학기술학교', 379, 0, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\"><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;\">계획</div><ul style=\"margin-left: 0px; box-sizing: border-box;\"><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">계획</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">월 4회 주 2회</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">멘토 받을 내용</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">c언어 및 자바 기초</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">연락처</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">010-1234-5678</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">포부</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">당신의 학점 및 프로그래밍 실력을 대폭 향상 시켜드립니다.</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">세부사항</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">저는 3학년이며, 평소에 프로그래밍에 관심이 많아<br>프로그래밍 실력이 월등합니다. 또한 학교 성적도 우수하여, 이러한 노하우를 알려드리고자 합니다.!</li></ul></li></ul></li></ul>', 'c_bg.png', 'java.jpg', 'java.jpg', '컴퓨터공학과', 'In Stock', '2017-03-10 20:16:03', '', '대전과학기술학교'),
(20, 6, 12, '자바', '한남대학교', 4129, 5000, '<ul style=\"box-sizing: border-box; margin-bottom: 0px; margin-left: 0px; color: rgb(33, 33, 33); font-family: Roboto, Arial, sans-serif; font-size: 14px;\"><li class=\"_2-riNZ\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 8px 16px; list-style: none; position: relative;\"><div class=\"HoUsOy\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 0px 16px; font-size: 18px; white-space: nowrap; line-height: 1.4;\">계획</div><ul style=\"margin-left: 0px; box-sizing: border-box;\"><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">계획</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">월 4회 주 2회</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">멘토 받을 내용</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">c언어 및 자바 기초</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">연락처</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">010-1234-5678</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">포부</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">당신의 학점 및 프로그래밍 실력을 대폭 향상 시켜드립니다.</li></ul></li><li class=\"_1KuY3T row\" style=\"margin: 0px; box-sizing: border-box; padding: 0px 0px 16px; list-style: none; display: flex; flex-flow: row wrap; width: 731px;\"><div class=\"vmXPri col col-3-12\" style=\"box-sizing: border-box; margin: 0px; padding: 0px 8px 0px 0px; width: 182.75px; display: inline-block; vertical-align: top; color: rgb(135, 135, 135);\">세부사항</div><ul class=\"_3dG3ix col col-9-12\" style=\"margin-left: 0px; box-sizing: border-box; width: 548.25px; display: inline-block; vertical-align: top; line-height: 1.4;\"><li class=\"sNqDog\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; list-style: none;\">저는 3학년이며, 평소에 프로그래밍에 관심이 많아<br>프로그래밍 실력이 월등합니다. 또한 학교 성적도 우수하여, 이러한 노하우를 알려드리고자 합니다.!</li></ul></li></ul></li></ul>', 'java.jpg', 'java.jpg', 'java.jpg', '컴퓨터공학과', 'In Stock', '2017-03-10 20:19:22', '', '한남대학교');

-- --------------------------------------------------------

--
-- 테이블 구조 `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(2, 4, 'a', '2017-01-26 16:24:52', '26-01-2017 11:03:40 PM'),
(3, 4, 'b', '2017-01-26 16:29:09', ''),
(4, 4, 'c', '2017-01-30 16:55:48', ''),
(5, 4, 'd', '2017-02-04 04:12:40', ''),
(6, 4, 'e', '2017-02-04 04:13:00', ''),
(7, 4, 'f', '2017-02-04 04:13:27', ''),
(8, 3, 'h', '2017-02-04 04:13:54', ''),
(9, 5, 'i', '2017-02-04 04:36:45', ''),
(10, 5, 'g', '2017-02-04 04:37:02', ''),
(11, 5, 'o', '2017-02-04 04:37:51', ''),
(12, 6, 'p', '2017-03-10 20:12:59', '');

-- --------------------------------------------------------

--
-- 테이블 구조 `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `wishlist`
--

INSERT INTO `wishlist` (`id`, `userId`, `productId`, `postingDate`) VALUES
(1, 1, 0, '2017-02-27 18:53:17'),
(15, 1, 1, '2021-06-19 17:18:55'),
(16, 1, 1, '2021-06-19 17:31:48'),
(17, 4, 1, '2021-06-20 03:43:10'),
(19, 0, 1, '2021-06-20 04:33:55'),
(20, 0, 3, '2021-06-20 04:34:09'),
(21, 0, 1, '2021-06-20 04:35:03'),
(22, 0, 1, '2021-06-20 04:44:51'),
(23, 0, 1, '2021-06-20 05:05:22'),
(24, 0, 2, '2021-06-20 05:07:13'),
(25, 0, 0, '2021-06-20 05:09:38'),
(26, 0, 0, '2021-06-20 05:09:45'),
(27, 0, 0, '2021-06-20 05:17:18'),
(28, 0, 0, '2021-06-20 05:22:33'),
(29, 0, 0, '2021-06-20 05:23:30'),
(30, 0, 0, '2021-06-20 05:23:48'),
(31, 0, 0, '2021-06-20 05:26:09'),
(32, 0, 0, '2021-06-20 05:26:35'),
(33, 0, 0, '2021-06-20 05:27:28'),
(34, 0, 0, '2021-06-20 05:30:35'),
(35, 0, 0, '2021-06-20 05:31:26'),
(36, 0, 0, '2021-06-20 05:32:11'),
(37, 0, 0, '2021-06-20 05:33:36'),
(38, 0, 0, '2021-06-20 05:37:51'),
(39, 0, 0, '2021-06-20 05:40:00'),
(40, 0, 2, '2021-06-20 05:41:03'),
(41, 0, 1, '2021-06-20 05:43:13'),
(42, 0, 1, '2021-06-20 05:44:49'),
(43, 0, 2, '2021-06-20 05:46:01'),
(44, 0, 2, '2021-06-20 05:47:27'),
(45, 0, 2, '2021-06-20 05:47:41'),
(46, 0, 2, '2021-06-20 05:47:47'),
(47, 0, 2, '2021-06-20 05:47:52'),
(48, 0, 3, '2021-06-20 05:48:06'),
(49, 0, 2, '2021-06-20 05:48:48'),
(50, 0, 1, '2021-06-20 05:51:06'),
(51, 0, 2, '2021-06-20 05:51:09'),
(52, 0, 1, '2021-06-20 05:51:12'),
(53, 0, 1, '2021-06-20 05:51:27'),
(54, 0, 3, '2021-06-20 05:52:09'),
(55, 10, 1, '2021-06-20 05:52:50'),
(56, 10, 1, '2021-06-20 05:59:52'),
(57, 10, 2, '2021-06-20 06:00:04'),
(58, 10, 1, '2021-06-20 06:02:03'),
(59, 10, 1, '2021-06-20 06:04:43'),
(60, 1, 3, '2021-06-20 06:04:59');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `board`
--
ALTER TABLE `board`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind`
--
ALTER TABLE `mentofind`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind1`
--
ALTER TABLE `mentofind1`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind2`
--
ALTER TABLE `mentofind2`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind3`
--
ALTER TABLE `mentofind3`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind4`
--
ALTER TABLE `mentofind4`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind5`
--
ALTER TABLE `mentofind5`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind6`
--
ALTER TABLE `mentofind6`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind7`
--
ALTER TABLE `mentofind7`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind8`
--
ALTER TABLE `mentofind8`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind9`
--
ALTER TABLE `mentofind9`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind10`
--
ALTER TABLE `mentofind10`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind11`
--
ALTER TABLE `mentofind11`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind12`
--
ALTER TABLE `mentofind12`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind13`
--
ALTER TABLE `mentofind13`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind14`
--
ALTER TABLE `mentofind14`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind15`
--
ALTER TABLE `mentofind15`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind16`
--
ALTER TABLE `mentofind16`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind17`
--
ALTER TABLE `mentofind17`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind18`
--
ALTER TABLE `mentofind18`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind19`
--
ALTER TABLE `mentofind19`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind20`
--
ALTER TABLE `mentofind20`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `mentofind21`
--
ALTER TABLE `mentofind21`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`num`);

--
-- 테이블의 인덱스 `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `board`
--
ALTER TABLE `board`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 테이블의 AUTO_INCREMENT `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 테이블의 AUTO_INCREMENT `members`
--
ALTER TABLE `members`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 테이블의 AUTO_INCREMENT `mentofind`
--
ALTER TABLE `mentofind`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- 테이블의 AUTO_INCREMENT `mentofind1`
--
ALTER TABLE `mentofind1`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 테이블의 AUTO_INCREMENT `mentofind2`
--
ALTER TABLE `mentofind2`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `mentofind3`
--
ALTER TABLE `mentofind3`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `mentofind4`
--
ALTER TABLE `mentofind4`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `mentofind5`
--
ALTER TABLE `mentofind5`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `mentofind6`
--
ALTER TABLE `mentofind6`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 테이블의 AUTO_INCREMENT `mentofind7`
--
ALTER TABLE `mentofind7`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `mentofind8`
--
ALTER TABLE `mentofind8`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `mentofind9`
--
ALTER TABLE `mentofind9`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `mentofind10`
--
ALTER TABLE `mentofind10`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `mentofind11`
--
ALTER TABLE `mentofind11`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `mentofind12`
--
ALTER TABLE `mentofind12`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `mentofind13`
--
ALTER TABLE `mentofind13`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `mentofind14`
--
ALTER TABLE `mentofind14`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `mentofind15`
--
ALTER TABLE `mentofind15`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `mentofind16`
--
ALTER TABLE `mentofind16`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `mentofind17`
--
ALTER TABLE `mentofind17`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `mentofind18`
--
ALTER TABLE `mentofind18`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `mentofind19`
--
ALTER TABLE `mentofind19`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `mentofind20`
--
ALTER TABLE `mentofind20`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `mentofind21`
--
ALTER TABLE `mentofind21`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `message`
--
ALTER TABLE `message`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 테이블의 AUTO_INCREMENT `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- 테이블의 AUTO_INCREMENT `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- 테이블의 AUTO_INCREMENT `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 테이블의 AUTO_INCREMENT `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
