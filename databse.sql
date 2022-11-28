-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2021 at 05:47 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cuahangcaycanh`
--

-- --------------------------------------------------------

--
-- Table structure for table `adm`
--

DROP TABLE IF EXISTS `adm`;
CREATE TABLE `adm` (
  `ma_adm` int(11) NOT NULL,
  `ten_dn` varchar(30) NOT NULL,
  `level` int(10) NOT NULL,
  `mat_khau` varchar(30) NOT NULL,
  `ho` varchar(30) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `gioi_tinh` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adm`
--

INSERT INTO `adm` (`ma_adm`, `ten_dn`, `level`, `mat_khau`, `ho`, `ten`, `gioi_tinh`) VALUES
(1, 'admin', 1, 'admin', 'Quoc', 'Nguyen', 1),
(7, 'quoc', 2, 'quoc', 'Nguyễn', 'Quốc', 2);

-- --------------------------------------------------------

--
-- Table structure for table `cay`
--

DROP TABLE IF EXISTS `cay`;
CREATE TABLE `cay` (
  `ma_cay` int(11) NOT NULL,
  `ma_loai` int(11) NOT NULL,
  `ten_cay` varchar(30) NOT NULL,
  `gia` float NOT NULL,
  `hinh_anh` varchar(100) NOT NULL,
  `mo_ta` varchar(300) NOT NULL,
  `ngay_d` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `trang_thai` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cay`
--

INSERT INTO `cay` (`ma_cay`, `ma_loai`, `ten_cay`, `gia`, `hinh_anh`, `mo_ta`, `ngay_d`, `trang_thai`) VALUES
(15, 1, 'Áo Nữ 2', 1000, 'O1CN01cGGIjq2AevvvOGLF1_!!3083378229-0-cib.search.jpg', '', '2021-11-23 16:39:10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ct_dondathang`
--

DROP TABLE IF EXISTS `ct_dondathang`;
CREATE TABLE `ct_dondathang` (
  `ma_dh` int(10) NOT NULL,
  `ma_cay` varchar(10) NOT NULL,
  `gia_ban` float NOT NULL,
  `sl_dat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ct_dondathang`
--

INSERT INTO `ct_dondathang` (`ma_dh`, `ma_cay`, `gia_ban`, `sl_dat`) VALUES
(48, '15', 1000, 1),
(52, '3', 80000, 1),
(53, '14', 191000, 1),
(54, '14', 191000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dondathang`
--

DROP TABLE IF EXISTS `dondathang`;
CREATE TABLE `dondathang` (
  `ma_dh` int(10) NOT NULL,
  `ma_kh` int(11) NOT NULL,
  `ngay_dh` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ngay_gh` varchar(10) NOT NULL,
  `noi_giao` varchar(300) NOT NULL,
  `hien_trang` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dondathang`
--

INSERT INTO `dondathang` (`ma_dh`, `ma_kh`, `ngay_dh`, `ngay_gh`, `noi_giao`, `hien_trang`) VALUES
(52, 55, '2019-04-13 08:55:35', '13/04/2019', '', 0),
(53, 56, '2019-04-19 15:35:49', '19/04/2019', 'dat hang nhanh', 0),
(54, 51, '2021-11-09 12:51:23', '06/11/2020', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `khach_hang`
--

DROP TABLE IF EXISTS `khach_hang`;
CREATE TABLE `khach_hang` (
  `ma_kh` int(11) NOT NULL,
  `ho_kh` varchar(30) NOT NULL,
  `ten_kh` varchar(30) NOT NULL,
  `sdt` int(11) NOT NULL,
  `dia_chi` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gioi_tinh` int(11) NOT NULL DEFAULT 0,
  `ten_dn` varchar(15) NOT NULL,
  `mat_khau` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `khach_hang`
--

INSERT INTO `khach_hang` (`ma_kh`, `ho_kh`, `ten_kh`, `sdt`, `dia_chi`, `email`, `gioi_tinh`, `ten_dn`, `mat_khau`) VALUES
(47, 'hoang', 'trung', 1325454365, 'Tuy Hoa ', 'trangdoantyck57@gmail.com', 2, 'tungit', '123456'),
(46, 'hoàng Văn', 'Quyền', 129864247, 'ĐÔNG HÒA', 'quyen123@gmail.com', 2, '123456', '123456'),
(49, 'Tran', 'Ngoc', 1666936911, ' PHU HOA', 'ngoc@gmail.com', 2, 'ngoc', '123'),
(50, 'Huỳnh', 'Như', 1666936911, ' TAY HOA', 'nhu@gmail.com', 3, 'nhu', '123'),
(51, 'demo', 'demo1', 1666936911, ' DONG HOA', 'demo@gmail.com', 2, 'demo', '123'),
(53, 'Ngoc', 'Nhu', 1666936911, ' PHU CAT', 'tranminhngoc1808@gmail.com', 2, 'ngocnhu', '123'),
(54, 'huynh', 'khuong', 982654578, ' TUY HOA', 'khuong@gmail.com', 2, 'khuong', '123456'),
(55, 'test', 'test', 1666936911, 'TUY HOA', 'test@gmail.com', 2, 'test', '123'),
(56, 'demo1', 'demo1', 123456789, 'phú yên', 'demo1@gmail.com', 2, 'demo1', '123');

-- --------------------------------------------------------

--
-- Table structure for table `lien_he`
--

DROP TABLE IF EXISTS `lien_he`;
CREATE TABLE `lien_he` (
  `ma_lh` int(11) NOT NULL,
  `ten_nguoi_lh` varchar(40) NOT NULL,
  `sdt_nguoi_lh` varchar(12) NOT NULL,
  `email_nguoi_lh` varchar(50) NOT NULL,
  `gioi_nguoi_lh` int(11) NOT NULL,
  `diachi_nguoi_lh` varchar(200) NOT NULL,
  `noi_dung` varchar(1000) NOT NULL,
  `ngay_lh` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `lien_he`
--

INSERT INTO `lien_he` (`ma_lh`, `ten_nguoi_lh`, `sdt_nguoi_lh`, `email_nguoi_lh`, `gioi_nguoi_lh`, `diachi_nguoi_lh`, `noi_dung`, `ngay_lh`) VALUES
(22, 'q', '1234567889', 'quoc@gmail.colm', 2, 'phú yên', 'test', '2019-04-13 14:02:39');

-- --------------------------------------------------------

--
-- Table structure for table `loai_cay`
--

DROP TABLE IF EXISTS `loai_cay`;
CREATE TABLE `loai_cay` (
  `ma_loai` int(11) NOT NULL,
  `ten_loai` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loai_cay`
--

INSERT INTO `loai_cay` (`ma_loai`, `ten_loai`) VALUES
(1, 'Quần Áo Nữ'),
(2, 'Quần Áo Nam'),
(3, 'Quần Áo Thun'),
(4, 'Đầm'),
(5, 'Váy');

-- --------------------------------------------------------

--
-- Table structure for table `tin_tuc`
--

DROP TABLE IF EXISTS `tin_tuc`;
CREATE TABLE `tin_tuc` (
  `ma_tt` int(11) NOT NULL,
  `tieu_de` varchar(50) NOT NULL,
  `hinh_anh` varchar(100) NOT NULL,
  `noi_dung` varchar(10000) NOT NULL,
  `ngay_dang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tacgia` varchar(64) DEFAULT NULL,
  `noidungngan` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tin_tuc`
--

INSERT INTO `tin_tuc` (`ma_tt`, `tieu_de`, `hinh_anh`, `noi_dung`, `ngay_dang`, `tacgia`, `noidungngan`) VALUES
(33, 'tin tuc cay canh', 'Capture6.JPG', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;text-align:\r\njustify;line-height:13.15pt;mso-outline-level:4;background:white;vertical-align:\r\ntop\">demo tin tuc</p>', '2019-04-19 15:38:24', NULL, NULL),
(41, 'test', '1.jpg', '<p class=\"description\" style=\"margin: 0px 0px 15px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility; font-size: 18px; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; background-color: rgb(252, 250, 246);\"><br></p><p class=\"Normal\" style=\"margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">goài ra, Lâm Đồng còn yêu cầu các tổ chức đơn vị tự xét nghiệm nhanh cho cán bộ, công chức, viên chức, người lao động 3 ngày một lần. Người đến liên hệ công tác phải tiêm đủ số mũi vaccine và xét nghiệm âm tính trong thời hạn quy định.</p><p class=\"Normal\" style=\"margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\"><strong style=\"margin: 0px; padding: 0px; box-sizing: border-box; text-rendering: optimizelegibility;\">Bình Thuận&nbsp;</strong>yêu cầu dừng các dịch vụ không thiết yếu, người dân không ra đường từ 19h đến 5h. Các địa phương không cho người ra vào vùng đỏ, trừ các trường hợp đặc biệt. Cửa hàng ăn uống chỉ được bán trực tuyến, giao hàng qua shiper hoặc đội giao hàng của Đoàn thanh niên.</p><p class=\"Normal\" style=\"margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Người dân chỉ ra khỏi vùng đỏ khi có việc thật cần thiết và phải đảm bảo điều kiện: có một trong 3 giấy chứng nhận (tiêm đủ hai liều vaccine, khỏi Covid-19 và giấy xét nghiệm Covid-19 âm tính trong 72 giờ); hoặc giấy xác nhận được ra ngoài của cơ quan chức năng, giấy xác nhận của địa phương cho cơ sở kinh doanh. Người dân chỉ được đi chợ khi có giấy do địa phương cấp.</p><p class=\"Normal\" style=\"margin: 0px 0px 1em; padding: 0px; box-sizing: border-box; text-rendering: optimizespeed; line-height: 28.8px; color: rgb(34, 34, 34); font-family: arial; font-size: 18px; background-color: rgb(252, 250, 246);\">Đến nay Bình Thuận ghi nhận 11.767 ca Covid-19, 95 người tử vong, toàn tỉnh được đánh giá \"vùng cam\". Tỷ lệ tiêm vaccine mũi 1 tại Bình Thuận đạt 92,5%, mũi 2 đạt 32,9%.</p>', '2021-11-21 12:22:16', NULL, NULL),
(42, 'Tiêu đề', '', 'avđ', '2021-11-21 15:56:39', 'Quốc', 'Nội dung ngắn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adm`
--
ALTER TABLE `adm`
  ADD PRIMARY KEY (`ma_adm`),
  ADD UNIQUE KEY `ten_dn` (`ten_dn`);

--
-- Indexes for table `cay`
--
ALTER TABLE `cay`
  ADD PRIMARY KEY (`ma_cay`);

--
-- Indexes for table `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`ma_dh`);

--
-- Indexes for table `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_kh`),
  ADD UNIQUE KEY `ten_dn` (`ten_dn`);

--
-- Indexes for table `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`ma_lh`);

--
-- Indexes for table `loai_cay`
--
ALTER TABLE `loai_cay`
  ADD PRIMARY KEY (`ma_loai`);

--
-- Indexes for table `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD PRIMARY KEY (`ma_tt`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adm`
--
ALTER TABLE `adm`
  MODIFY `ma_adm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cay`
--
ALTER TABLE `cay`
  MODIFY `ma_cay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `ma_dh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `ma_kh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `ma_lh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `loai_cay`
--
ALTER TABLE `loai_cay`
  MODIFY `ma_loai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tin_tuc`
--
ALTER TABLE `tin_tuc`
  MODIFY `ma_tt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
