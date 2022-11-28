-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 28, 2022 lúc 06:59 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cuahangcaycanh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `adm`
--

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
-- Đang đổ dữ liệu cho bảng `adm`
--

INSERT INTO `adm` (`ma_adm`, `ten_dn`, `level`, `mat_khau`, `ho`, `ten`, `gioi_tinh`) VALUES
(1, 'admin', 1, 'admin', 'Tôn', 'Tài', 1),
(7, 'thoai', 1, 'thoai', 'Lê', 'Thoại', 1),
(8, 'thuan', 0, 'thuan', 'Nguyễn', 'Thuận', 2),
(9, 'thi', 0, 'thi', 'Đặng', 'Thi', 2),
(10, 'quyen', 0, 'quyen', 'Lê', 'Quyền', 3),
(11, 'admin1', 0, '1', 'admin', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cay`
--

CREATE TABLE `cay` (
  `ma_cay` int(11) NOT NULL,
  `ma_loai` int(11) NOT NULL,
  `ten_cay` varchar(30) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `gia` float NOT NULL,
  `hinh_anh` varchar(100) NOT NULL,
  `mo_ta` varchar(300) NOT NULL,
  `ngay_d` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `trang_thai` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `cay`
--

INSERT INTO `cay` (`ma_cay`, `ma_loai`, `ten_cay`, `so_luong`, `gia`, `hinh_anh`, `mo_ta`, `ngay_d`, `trang_thai`) VALUES
(15, 3, 'DAZY Áo sơ mi nữ Nút trước', 100, 294000, 'dzsomi.jpg', 'Màu sắc:	trắng\r\nPhong cách:	Giải trí\r\nKiểu mẫu:	màu trơn\r\nKiểu:	Ngọn\r\nViền:	Cổ v\r\nChi tiết:	Nút phía trước\r\nChiều dài tay:	Ngắn tay\r\nLoại tay áo:	Ống tay áo\r\nChiều dài:	Thường xuyên\r\nLoại Phù hợp:	Phù hợp thường\r\nSợi vải:	Không căng\r\nVật liệu:	Vải\r\nThành phần:	100% Polyester\r\nHướng dẫn Bảo quản:	Mac', '2022-11-28 10:40:09', 0),
(50, 3, 'Áo nữ Ruffle trắng Tao nhã', 100, 283000, '15633453544083295325.jpg', 'Màu sắc:	trắng\r\nPhong cách:	Thanh lịch\r\nKiểu mẫu:	Họa tiết Chain\r\nKiểu:	Ngọn\r\nViền:	Cổ không đối xứng\r\nChi tiết:	Xù\r\nChiều dài tay:	Tay áo dài\r\nChiều dài:	Thường xuyên\r\nLoại Phù hợp:	Phù hợp thường\r\nSợi vải:	Không căng\r\nVật liệu:	Vải\r\nThành phần:	100% Polyester\r\nHướng dẫn Bảo quản:	Machine wash or p', '2022-11-28 10:40:16', 0),
(51, 1, 'Quần baggy basic kèm belt', 100, 285000, 'quan-baggy-basic-kem-belt-be.jpg', 'MÀU	\r\nBe, Đen\r\n\r\nSIZE	\r\nS, M, L', '2022-11-28 10:41:16', 0),
(52, 1, 'Quần tây nữ trơn 9 tấc', 100, 339000, '2c-990-36-sau-300x300.jpg', '‘- Có 4 size trung: S,M,L,XL,XXL\r\n\r\n– Sản phẩm được bình chọn Hàng Việt Nam chất lượng cao 5 năm qua.\r\n\r\n– Có thể phối với áo cổ điển, áo sơ mi cơ bản phù hợp đi làm ở cty, cơ quan và công sở đều được và cũng phù hợp với giới trẻ năng động, cá tính\r\n\r\n– Được cán bộ, giảng viên, giáo viên tin dùng và', '2022-11-28 10:41:16', 0),
(53, 5, 'Chân váy bút chì vải giãn nhẹ', 100, 299000, 'j935-95-truoc-300x300.jpg', '‘- Có 5 size trung:  S,M,L,XL,XXL và 4 size đại 30,31,32,33\r\n\r\n– Sản phẩm được bình chọn Hàng Việt Nam chất lượng cao 5 năm qua.\r\n\r\n– Có thể phối với áo cổ điển, áo sơ mi cơ bản phù hợp đi làm ở cty, cơ quan và công sở đều được và cũng phù hợp với giới trẻ năng động, cá tính\r\n\r\n– Được cán bộ, giảng ', '2022-11-28 10:41:16', 1),
(54, 2, 'Quần Jeans Classic Cut', 100, 1290000, 'vngoods_68_456745.jpg', 'Shopquanao99k sử dụng những mẫu quần jean cổ điển của thương hiệu thời trang mang tính biểu tượng của thập niên 90 Helmut Lang.', '2022-11-28 10:41:16', 1),
(55, 2, 'Quần Jeans Slim Fit', 100, 960000, 'vngoods_30_441741.jpg', 'The classic look of denim with added stretch. Sleek slim fit.', '2022-11-28 10:41:16', 0),
(56, 45, 'Đầm Kiểu Sơ Mi Cotton', 100, 1275000, 'vngoods_01_458520.jpg', 'Updated for a more flattering silhouette. Also perfect as an outer layer.', '2022-11-28 10:41:16', 1),
(57, 47, 'Áo Thun Unisex Cotton Cổ Tròn ', 100, 244000, 'vngoods_00_444527.jpg', 'Thiết kế đa năng cùng chất liệu thoáng mát, mềm mại trên da. Một sản phẩm không thể thiếu trong tủ quần áo.', '2022-11-28 10:41:16', 0),
(58, 46, 'Quần Baggy Kaki Unisex đẹp', 100, 495000, 'Quan-Baggy-Kaki-nam-nu-1-Black-5-ZiZoou-.jpg', 'Quần Kaki Baggy Nam Nữ cao cấp thời trang đường phố.\r\nThiết kế hiện đại trẻ trung cá tính.\r\nKiểu dáng form rộng ống suông, xắn gấu quần, lưng thun.\r\nThích hợp dạo phố, du lịch, đi học, đi chơi,...', '2022-11-28 10:41:16', 1),
(59, 52, 'ECKO UNLTD GIÀY SNEAKERS MEN', 100, 299000, 'untitled_session0704_1_1.jpg', 'Model:\r\nIS22-28504 Beige\r\nGiới tính:\r\nNam\r\nThương hiệu:\r\nECKO UNLTD\r\nSeason:\r\nSS22', '2022-11-28 10:41:16', 1),
(60, 4, 'Áo Polo Nam Classic', 100, 413000, '02_1_2_1_0800_0800.jpg', '• Dành riêng cho cánh mày râu yêu thích phong cách đơn giản và thể thao năng động. Dòng Polo Classic - một trong những sản phẩm bán chạy nhất của Giordano.\r\n• Áo Polo nam ngắn tay Giordano với hình thêu Hoàng tử Anh nhỏ nhắn bên ngực trái đẹp mắt, với kiểu dáng áo ôm vừa vặn, đây sẽ là chiếc áo giúp', '2022-11-28 10:41:16', 0),
(61, 4, 'Áo Thun Nam Ngắn Tay In Chữ', 100, 315000, '83_2_1_3_0800_0800.jpg', 'Chất liệu: 100% sợi bông\r\n‒ Màu sắc và hình in trẻ trung, năng động.\r\n‒ Chất liệu 100% sợi bông tạo độ mềm mại, thấm hút mồ hôi tốt.\r\n‒ Thấm hút tốt (hút mồ hôi, hút ẩm);', '2022-11-28 10:41:16', 1),
(62, 49, 'Túi Đeo Chéo Giordano', 100, 490000, '03_1_2_1_0800_0800.jpg', 'Kích thước: 31cm(L) X 15cm(H) X 15cm(W)\r\nChất liệu: 100% sợi tổng hợp\r\n‒ Chất liệu nhân tạo cứng cáp, chịu được ma sát\r\n‒ Túi đeo chéo với thiết kế ngăn đựng hình trụ hiện đại\r\n‒ Đa dạng mục đích sử dụng: dạo phố, tập gym, chơi thể thao,\r\ncắm trại …', '2022-11-28 10:41:16', 1),
(63, 50, 'Ví Da Nam William Polo Hare', 100, 545000, 'william-polo-hare-giaolong-12.jpg', 'Thông số kỹ thuật về ví William Polo Hare \r\n●    Kích thước: 11cm x 1cm x 9cm\r\n●    Màu sắc: Đen\r\n●    Số ngăn: 2 ngăn chính và nhiều ngăn cắm thẻ\r\n●    Phụ kiện cơ bản: Dây kéo mượt mà\r\n●    Chất liệu: Da bò lớp ngoài\r\n●    Thương hiệu: William Polo', '2022-11-28 10:41:16', 1),
(64, 48, 'Cà Vạt Dây Kéo Bản Nhỏ', 100, 180000, 'CK6XDT001-2.jpg', 'Mẫu cà vạt này của Thomas Nguyen được thắt sẵn tiện lợi, dễ sử dụng, mang đến vẻ ngoài trẻ trung cho phái mạnh. Sản phẩm đã được kiểm chọn đảm bảo độ thoải mái, phù hợp với dáng người và dễ phối cùng áo sơ mi, vest.', '2022-11-28 10:41:16', 0),
(66, 45, 'test1', 123, 100000, '', '', '2022-11-28 11:14:41', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ct_dondathang`
--

CREATE TABLE `ct_dondathang` (
  `ma_dh` int(10) NOT NULL,
  `ma_cay` varchar(10) NOT NULL,
  `gia_ban` float NOT NULL,
  `sl_dat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `ct_dondathang`
--

INSERT INTO `ct_dondathang` (`ma_dh`, `ma_cay`, `gia_ban`, `sl_dat`) VALUES
(48, '15', 1000, 1),
(55, '64', 180000, 2),
(55, '61', 315000, 1),
(55, '59', 299000, 1),
(55, '54', 1290000, 1),
(56, '64', 180000, 1),
(56, '63', 545000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

CREATE TABLE `dondathang` (
  `ma_dh` int(10) NOT NULL,
  `ma_kh` int(11) NOT NULL,
  `ngay_dh` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ngay_gh` varchar(10) NOT NULL,
  `noi_giao` varchar(300) NOT NULL,
  `hien_trang` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dondathang`
--

INSERT INTO `dondathang` (`ma_dh`, `ma_kh`, `ngay_dh`, `ngay_gh`, `noi_giao`, `hien_trang`) VALUES
(55, 59, '2022-11-24 17:50:41', '26/11/2020', 'Test', 1),
(56, 59, '2022-11-25 12:29:02', '25/11/2020', '', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

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
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`ma_kh`, `ho_kh`, `ten_kh`, `sdt`, `dia_chi`, `email`, `gioi_tinh`, `ten_dn`, `mat_khau`) VALUES
(59, 'Tôn', 'Tài', 123456789, 'Đà Nẵng ', 'tai@gmail.com', 2, 'tai', 'tai'),
(60, 'Thi', 'Đặng', 949240126, ' 74 Bàu Năng 1', 'dinhthidang1022000@gmail.com', 2, 'thi', '123'),
(61, 'Hồ', 'Ngọc', 789456123, 'Vn ', 'ngoc@gmail.com', 3, 'ngoc', 'ngoc'),
(62, 'Mình là', 'Hương', 456789133, '01 Trần Cao Vân, Đà Nẵng', 'huong@gmail.com', 3, 'huong', 'huong'),
(63, 'le', 'thoai', 964541914, ' yyy', 'thoailvb@gmail.com', 2, 'admin', '123'),
(58, 'le', 'thoai', 964541914, ' 114 tran cao van', 'thoailvb@gmail.com', 2, 'thoai', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

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
-- Đang đổ dữ liệu cho bảng `lien_he`
--

INSERT INTO `lien_he` (`ma_lh`, `ten_nguoi_lh`, `sdt_nguoi_lh`, `email_nguoi_lh`, `gioi_nguoi_lh`, `diachi_nguoi_lh`, `noi_dung`, `ngay_lh`) VALUES
(24, 'Tai', '0123456789', 'tai@gmail.com', 2, 'DN', 'Hello', '2022-11-25 12:39:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_cay`
--

CREATE TABLE `loai_cay` (
  `ma_loai` int(11) NOT NULL,
  `ten_loai` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loai_cay`
--

INSERT INTO `loai_cay` (`ma_loai`, `ten_loai`) VALUES
(1, 'Quần Nữ'),
(2, 'Quần Nam'),
(3, 'Áo Nữ'),
(4, 'Áo Nam'),
(5, 'Váy'),
(45, 'Đầm'),
(46, 'Quần Unisex'),
(47, 'Áo Unisex'),
(48, 'Cà Vạt'),
(49, 'Túi xách'),
(50, 'Ví Nam'),
(51, 'Nón'),
(52, 'Giày'),
(53, 'Đồng hồ'),
(54, 'Áo trẻ em'),
(55, 'Quần trẻ em');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_tuc`
--

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
-- Đang đổ dữ liệu cho bảng `tin_tuc`
--

INSERT INTO `tin_tuc` (`ma_tt`, `tieu_de`, `hinh_anh`, `noi_dung`, `ngay_dang`, `tacgia`, `noidungngan`) VALUES
(43, 'Tin tức Khuyến mãi shock Thứ 6 tuần này!!!!!', 'banner-web-face-01.jpg', '<p style=\"margin: 0px; padding: 0px 0px 15px; box-sizing: border-box; border: 0px;\"><font color=\"#252525\" face=\"Roboto, Arial, sans-serif\"><b>BLACK FRIDAY 2022</b> - Bật tung cảm xúc với đại tiệc sale KHỦNG nhất năm tại <i>Shopquanao99k</i>!!!</font></p><p style=\"margin: 0px; padding: 0px 0px 15px; box-sizing: border-box; border: 0px; font-size: 16px; color: rgb(37, 37, 37); font-family: Roboto, Arial, sans-serif;\">- Đại tiệc siêu sale lớn nhất năm giảm đến 50% cực HẤP DẪN, cho tất cả sản phẩm&nbsp;</p><p style=\"margin: 0px; padding: 0px 0px 15px; box-sizing: border-box; border: 0px; font-size: 16px; color: rgb(37, 37, 37); font-family: Roboto, Arial, sans-serif;\">- Chương trình khuyến mãi được áp dụng trên toàn hệ thống bắt đầu từ ngày 15/12/2022 đến ngày 17/12/2022</p><p style=\"margin: 0px; padding: 0px 0px 15px; box-sizing: border-box; border: 0px; font-size: 16px; color: rgb(37, 37, 37); font-family: Roboto, Arial, sans-serif;\">- Thỏa sức shopping với TRỌN BỘ túi xách/mắt kính/phụ kiện ĐẲNG CẤP dành cho những cô nàng sành điệu: THỜI THƯỢNG &amp; DẪN ĐẦU XU HƯỚNG!</p><p style=\"margin: 0px; padding: 0px 0px 15px; box-sizing: border-box; border: 0px; font-size: 16px; color: rgb(37, 37, 37); font-family: Roboto, Arial, sans-serif;\">Hỡi các Tín đồ thời trang của … Còn chần chừ gì nữa mà không tận dụng cơ hội đặc biệt duy nhất trong năm này để sở hữu ngay các thiết kế ĐẲNG CẤP – THỜI TRANG &amp; tận hưởng những ƯU ĐÃI GIẢM SÂU chưa từng có tiền lệ!</p><p style=\"margin: 0px; padding: 0px 0px 15px; box-sizing: border-box; border: 0px; font-size: 16px; color: rgb(37, 37, 37); font-family: Roboto, Arial, sans-serif;\"><strong style=\"margin: 0px; padding: 0px; box-sizing: border-box; border: 0px;\">Điều kiện áp dụng:</strong></p><p style=\"margin: 0px; padding: 0px 0px 15px; box-sizing: border-box; border: 0px; font-size: 16px; color: rgb(37, 37, 37); font-family: Roboto, Arial, sans-serif;\">- Áp dụng trên giá gốc của sản phẩm.</p><p style=\"margin: 0px; padding: 0px 0px 15px; box-sizing: border-box; border: 0px; font-size: 16px; color: rgb(37, 37, 37); font-family: Roboto, Arial, sans-serif;\">- Áp dụng tất cả hình thức mua hàng trên toàn quốc</p><p style=\"margin: 0px; padding: 0px 0px 15px; box-sizing: border-box; border: 0px; font-size: 16px; color: rgb(37, 37, 37); font-family: Roboto, Arial, sans-serif;\">- Không áp dụng đồng thời các chương trình khuyến mãi khác</p><p style=\"margin: 0px; padding: 0px 0px 15px; box-sizing: border-box; border: 0px; font-size: 16px; color: rgb(37, 37, 37); font-family: Roboto, Arial, sans-serif;\">- Khách hàng mua hàng online được miễn phí giao hàng tận nơi trên toàn quốc</p><p style=\"margin: 0px; padding: 0px 0px 15px; box-sizing: border-box; border: 0px; font-size: 16px; color: rgb(37, 37, 37); font-family: Roboto, Arial, sans-serif;\">Website mua hàng:&nbsp;http://shopquanao99k.onlinewebshop.net/</p><p style=\"margin: 0px; padding: 0px 0px 15px; box-sizing: border-box; border: 0px; font-size: 16px; color: rgb(37, 37, 37); font-family: Roboto, Arial, sans-serif;\">Địa chỉ cửa hàng: 03 Quang Trung, Hải Châu, Đà Nẵng</p><p style=\"margin: 0px; padding: 0px 0px 15px; box-sizing: border-box; border: 0px; font-size: 16px; color: rgb(37, 37, 37); font-family: Roboto, Arial, sans-serif;\">Số điện thoại: 0123456789</p>', '2022-11-24 17:43:27', 'Tài', ''),
(44, 'GRAND OPENING SHOP HÀ NỘI', 'istockphoto-1273109408-612x612.jpg', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\">Ngoài không gian sang trọng và trẻ trung với nhiều góc xinh lung linh cho FRIENDs thoải mái “sống ảo”,Shop còn mang đến thật nhiều thiết kế sành điệu và cá tính nhân dịp khai trương này.&nbsp;</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\">Hơn nữa, dịp khai trương này còn hứa hẹn sẽ “đốn tim” các tín đồ thời trang tại Hà Nội bằng những ưu đãi bùng nổ chưa từng có:</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 20px;\"><span style=\"box-sizing: border-box; color: rgb(0, 177, 86);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Chương trình 1: Opening</span></span></span></p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Duy nhất từ 19h, ngày 14/11/2022:</span></p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\">- Giảm 70% cho 10 FRIENDs đầu tiên đến cửa hàng (áp dụng cho 1 sản phẩm).</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\">- Giảm 50% cho 15 FRIENDs đến cửa hàng tiếp theo (áp dụng cho 1 sản phẩm).</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\">- Giảm 30% cho 20 FRIENDs đến cửa hàng tiếp theo (áp dụng cho 1 sản phẩm).</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\">- Giảm 10% cho tất cả các FRIENDs còn lại (áp dụng cho tất cả các sản phẩm).&nbsp;</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Từ ngày 15/11/2022 đến 16/11/2022:&nbsp;</span><span style=\"box-sizing: border-box;\">Giảm giá 10% cho tất cả các sản phẩm.</span></p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 20px;\"><span style=\"box-sizing: border-box; font-weight: 700;\"><span style=\"box-sizing: border-box; color: rgb(0, 177, 86);\">Chương trình 2: Vòng quay may mắn</span></span></span></p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\">Khi FRIENDs thực hiện like page<span style=\"box-sizing: border-box; font-weight: 700;\">&nbsp;+ Comment + tag 3 người bạn vào bài viết chính của chương trình,</span>&nbsp;FRIENDs sẽ được tham gia minigame “Vòng quay may mắn” với nhiều phần quà hấp dẫn như sau:</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\">- Áo thun cá tính trị giá 245k.&nbsp;</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\">- Túi tote thời trang Freestyle.</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\">- Sổ tay .</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\">- Voucher trị giá 100k (áp dụng hóa đơn 500k cho lần mua hàng tiếp theo).</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\">- Voucher trị giá 50k (áp dụng hóa đơn 300k cho lần mua hàng tiếp theo).</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\">- Giảm thêm 50k cho hóa đơn bất kì (không điều kiện).&nbsp;</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 20px;\"><span style=\"box-sizing: border-box; color: rgb(0, 177, 86);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Chương trình 3: Tặng túi tote &amp; móc khóa</span></span></span></p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\">- Khi mua sắm với hóa đơn từ 499.000đ, FRIENDs sẽ được tặng ngay 1 chiếc túi tote thời trang Freestyle, thỏa sức mix&amp;match cùng nhiều phong cách (áp dụng sau chiết khấu).</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\">- Ngoài ra, những chiếc móc khóa cực dễ thương đang chờ đợi chủ nhân nữa đó (áp dụng khi phát sinh hóa đơn trong thời gian diễn ra chương trình).</p><p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0pt 0px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); line-height: 1.8; text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 20px;\"><span style=\"box-sizing: border-box; color: rgb(0, 177, 86);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Chương trình 4:</span></span></span></p><p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0pt 0px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); line-height: 1.8; text-align: justify;\">- Giảm ngay 100k cho 1 sản phẩm nguyên giá khi FRIENDs cầm tờ rơi GRAND OPENING HÀ NỘI đến cửa hàng trong suốt thời gian diễn ra chương trình.&nbsp;</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\"><span style=\"box-sizing: border-box; font-size: 20px;\"><span style=\"box-sizing: border-box; color: rgb(0, 177, 86);\"><span style=\"box-sizing: border-box; font-weight: 700;\">Chương trình 5: Voucher Lumos Cake &amp; Bread</span></span></span></p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\">- Giảm ngay 30% cho tất cả sản phẩm khi FRIENDs sử dụng voucher của tiệm bánh Lumos Cake &amp; Bread trong suốt thời gian diễn ra chương trình.</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\"><em style=\"box-sizing: border-box;\">Tất cả 5 chương trình được&nbsp;áp dụng tại cửa hàng Đống Đa.Hà Nội từ ngày 14/11/2022 đến hết 16/11/2022.&nbsp;</em></p><p dir=\"ltr\" style=\"box-sizing: border-box; margin: 0pt 0px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); line-height: 1.8; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: 700;\">Điều kiện áp dụng:</span></p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\">- Không áp dụng chung với chiết khấu VIP.</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\">- Không áp dụng đồng thời với các chương trình khuyến mãi khác.&nbsp;</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255); text-align: justify;\">- FRIENDs được tích lũy điểm dựa trên doanh số thanh toán cuố</p>', '2022-11-24 18:39:39', 'admin T', ''),
(51, 'THU CŨ ĐỔI MỚI - GIẢM NGAY 20%', '70643537_1626750364124952_3577117839514927104_n.jpg', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255);\">Chương trình áp dụng từ 5/10 - 31/10 trên toàn hệ thống cửa hàng .</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255);\">Nếu từ lâu bạn đã phải lòng những thiết kế từ cửa hàng thì chắc chắn đây là dịp mà bạn không thể bỏ qua &lt;3&nbsp;</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255);\">Điều kiện áp dụng:</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255);\">- Áp dụng 1 đổi 1.&nbsp;</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255);\">- Áp dụng với khách hàng mới.</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255);\">- Sản phẩm giảm giá không áp dụng chính sách đổi trả.</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255);\">- Không áp dụng chung với chiết khấu VIP, các voucher giảm giá và CTKM khác.</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255);\">Điều kiện sản phẩm:</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255);\">- Sản phẩm đổi còn sử dụng được.</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255);\">- Áo khoác không bị hư dây kéo.</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255);\">- Sản phẩm sạch sẽ, nguyên vẹn, không có vết rách, hư hỏng.</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255);\">- Sản phẩm không bị bạc màu quá nhiều. Mức độ bạc màu sẽ được nhân viên tại cửa hàng kiểm tra sản phẩm và quyết định cuối cùng sản phẩm có đủ điều kiện tham gia chương trình.</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255);\">- Sản phẩm không có các vết bẩn không giặt được như mủ cây, nhớt, sơn,… và không có mùi.</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255);\">- Không áp dụng với áo khoác kinh doanh: Grab, Be, Now, GHTK…</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255);\">- Kiểm tra kỹ túi áo (nếu có) để tránh không bị xót vật tư cá nhân trước khi đổi.</p><p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; background-color: rgb(255, 255, 255);\">Reset tủ đồ và \"F5\" phong cách cùng cửa hàng bạn nhé!</p>', '2022-11-24 18:17:33', 'Thoại', ''),
(58, 'SALE ALL ITEMS 20%', 'Summer_Sale_Background_4.jpg', '<div style=\"font-size: 16px; box-sizing: border-box; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; letter-spacing: 1px; background-color: rgb(255, 255, 255);\"><div style=\"box-sizing: border-box;\">Ngoài kia nếu có khó khăn quá thì Mems cứ yên tâm ở nhà, Shop gửi hàng đến tận nơi, lại thêm ưu đãi cực hời cho Tháng 3 này. SALE ALL ITEMS 20%</div></div><div style=\"font-size: 16px; box-sizing: border-box; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; letter-spacing: 1px; background-color: rgb(255, 255, 255);\"><div style=\"box-sizing: border-box;\"><br></div></div><div style=\"font-size: 16px; box-sizing: border-box; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; letter-spacing: 1px; background-color: rgb(255, 255, 255);\"><div style=\"box-sizing: border-box;\">&nbsp;</div></div><div style=\"font-size: 16px; box-sizing: border-box; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; letter-spacing: 1px; background-color: rgb(255, 255, 255);\"><div style=\"box-sizing: border-box;\">Chỉ cần \"lướt\" và \"bấm\" là có ngay sản phẩm ưng ý trong tay. Sale bất chấp toàn bộ sản phẩm, tạo điều kiện cho bạn update thật nhiều Items xịn cho tủ đồ, đừng bỏ qua cơ hội này Mems nha ❤️</div></div>', '2022-11-24 20:39:28', 'Quyền', ''),
(59, 'Mỗi Ngày 1 Deal', 'modern-style-clothes-banner-color-design-vector-illustration-template-75578803.jpg', '<span style=\"color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; text-align: justify; background-color: rgb(255, 255, 255);\">Thêm một sự kiện tri ân khách hàng hoành tráng chẳng kém&nbsp;</span><a href=\"http://totoshop.vn/news/24023-gia-shock-0d-moi-ngay\" style=\"box-sizing: border-box; background-color: rgb(255, 255, 255); text-decoration-line: none; touch-action: manipulation; cursor: pointer; font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; text-align: justify;\"><span style=\"box-sizing: border-box; font-weight: 700;\">\"Giá Shock 0 Đồng\"</span></a><span style=\"color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp;</span><span style=\"color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp;</span><span style=\"box-sizing: border-box; font-weight: 700; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; text-align: justify; background-color: rgb(255, 255, 255);\">Chương trình \"Mỗi Ngày 1 Deal\"</span><span style=\"color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp;sẽ chính thức chào sân&nbsp;</span><span style=\"box-sizing: border-box; font-weight: 700; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; text-align: justify; background-color: rgb(255, 255, 255);\">từ ngày 20/11/2022</span><span style=\"color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp;và sẵn sàng mang đến&nbsp;những deal giảm giá khiến bạn vô cùng \"liêu xiêu\". Vậy còn chờ gì nữa, hãy cùng&nbsp;<b>cửa hàng</b></span><span style=\"color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp;tìm hiểu chi tiết về&nbsp;</span><span style=\"box-sizing: border-box; font-weight: 700; color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; text-align: justify; background-color: rgb(255, 255, 255);\">chương trình \"Mỗi Ngày 1 Deal\"</span><span style=\"color: rgb(45, 45, 45); font-family: Quicksand, sans-serif; font-size: 16px; letter-spacing: 1px; text-align: justify; background-color: rgb(255, 255, 255);\">&nbsp;để tránh bỏ lỡ những sản phẩm bạn yêu thích với cái giá cũng hết mực yêu thương nào !!</span>', '2022-11-24 20:43:46', 'Len', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `adm`
--
ALTER TABLE `adm`
  ADD PRIMARY KEY (`ma_adm`),
  ADD UNIQUE KEY `ten_dn` (`ten_dn`);

--
-- Chỉ mục cho bảng `cay`
--
ALTER TABLE `cay`
  ADD PRIMARY KEY (`ma_cay`);

--
-- Chỉ mục cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`ma_dh`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`ma_kh`),
  ADD UNIQUE KEY `ten_dn` (`ten_dn`);

--
-- Chỉ mục cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`ma_lh`);

--
-- Chỉ mục cho bảng `loai_cay`
--
ALTER TABLE `loai_cay`
  ADD PRIMARY KEY (`ma_loai`);

--
-- Chỉ mục cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  ADD PRIMARY KEY (`ma_tt`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `adm`
--
ALTER TABLE `adm`
  MODIFY `ma_adm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `cay`
--
ALTER TABLE `cay`
  MODIFY `ma_cay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `ma_dh` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `ma_kh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `ma_lh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `loai_cay`
--
ALTER TABLE `loai_cay`
  MODIFY `ma_loai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `tin_tuc`
--
ALTER TABLE `tin_tuc`
  MODIFY `ma_tt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
