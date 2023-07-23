-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2023 at 03:30 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kkts`
--

-- --------------------------------------------------------

--
-- Table structure for table `bankiemke`
--

CREATE TABLE `bankiemke` (
  `Mabkk` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `MaPhieu` int(11) NOT NULL,
  `NgayCapNhat` datetime NOT NULL,
  `NgayTao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `bankiemke`
--

INSERT INTO `bankiemke` (`Mabkk`, `MaND`, `MaPhieu`, `NgayCapNhat`, `NgayTao`) VALUES
(28, 2, 31, '2023-04-17 03:28:49', '2023-04-17 03:28:49'),
(29, 1, 31, '2023-04-17 03:28:51', '2023-04-17 03:28:51'),
(30, 1, 32, '2023-04-17 03:38:36', '2023-04-17 03:38:36'),
(31, 1, 33, '2023-04-19 15:39:51', '2023-04-19 15:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `baoloi`
--

CREATE TABLE `baoloi` (
  `MaBL` int(11) NOT NULL,
  `MaPB` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `Mota` text COLLATE utf8_vietnamese_ci NOT NULL,
  `TrangThai` smallint(6) NOT NULL,
  `NgayCapNhat` datetime NOT NULL,
  `NgayTao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `baoloi`
--

INSERT INTO `baoloi` (`MaBL`, `MaPB`, `MaND`, `Mota`, `TrangThai`, `NgayCapNhat`, `NgayTao`) VALUES
(17, 56, 1, 'Hư chân bàn', 0, '2023-04-19 16:58:55', '2023-04-19 16:58:55'),
(18, 63, 1, 'Hư cái cửa tủ', 1, '2023-04-19 17:07:42', '2023-04-19 16:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieukiemke`
--

CREATE TABLE `chitietphieukiemke` (
  `MaCTPKK` int(11) NOT NULL,
  `MaPhieu` int(11) NOT NULL,
  `MaPB` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `SoLuongKiemKe` int(11) NOT NULL,
  `ConTot` int(11) NOT NULL,
  `KemPC` int(11) NOT NULL,
  `MaPC` int(11) NOT NULL,
  `GhiChu` varchar(300) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `NgayCapNhat` datetime NOT NULL,
  `NgayTao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `chitietphieukiemke`
--

INSERT INTO `chitietphieukiemke` (`MaCTPKK`, `MaPhieu`, `MaPB`, `SoLuong`, `SoLuongKiemKe`, `ConTot`, `KemPC`, `MaPC`, `GhiChu`, `NgayCapNhat`, `NgayTao`) VALUES
(128, 31, 52, 6, 5, 3, 2, 0, 'Không có', '2023-04-17 03:20:59', '2023-04-17 03:20:59'),
(129, 31, 53, 1, 1, 1, 0, 0, 'Không có', '2023-04-17 03:20:59', '2023-04-17 03:20:59'),
(130, 31, 54, 120, 120, 120, 0, 0, 'Không có', '2023-04-17 03:20:59', '2023-04-17 03:20:59'),
(131, 31, 55, 2, 2, 2, 0, 0, 'Không có', '2023-04-17 03:20:59', '2023-04-17 03:20:59'),
(132, 31, 56, 2, 2, 2, 0, 0, 'Không có', '2023-04-17 03:20:59', '2023-04-17 03:20:59'),
(133, 31, 57, 120, 100, 50, 50, 0, 'Không có', '2023-04-17 03:20:59', '2023-04-17 03:20:59'),
(134, 32, 47, 40, 40, 40, 0, 0, 'Không có', '2023-04-17 03:38:02', '2023-04-17 03:38:02'),
(135, 32, 48, 40, 41, 30, 10, 1, 'Không có', '2023-04-17 03:38:02', '2023-04-17 03:38:02'),
(136, 32, 49, 40, 39, 38, 1, 0, 'Không có', '2023-04-17 03:38:02', '2023-04-17 03:38:02'),
(137, 32, 50, 2, 2, 2, 0, 0, 'Không có', '2023-04-17 03:38:02', '2023-04-17 03:38:02'),
(138, 32, 51, 3, 3, 3, 0, 0, 'Không có', '2023-04-17 03:38:02', '2023-04-17 03:38:02'),
(139, 33, 63, 5, 4, 4, 0, 0, 'Không có', '2023-04-19 15:39:39', '2023-04-19 15:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `chucdanh`
--

CREATE TABLE `chucdanh` (
  `MaCD` int(11) NOT NULL,
  `TenCD` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `MoTaCD` varchar(300) COLLATE utf8_vietnamese_ci NOT NULL,
  `NgayTao` datetime NOT NULL,
  `NgayCapNhat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `chucdanh`
--

INSERT INTO `chucdanh` (`MaCD`, `TenCD`, `MoTaCD`, `NgayTao`, `NgayCapNhat`) VALUES
(3, 'Trưởng ban', 'Không có', '2023-02-21 08:58:07', '2023-03-18 22:19:41'),
(4, 'Chuyên viên', 'Không có', '2023-02-21 08:58:07', '2023-02-21 08:58:07'),
(7, 'Không có chức danh', 'Không có', '2023-03-18 22:21:01', '2023-03-18 22:21:01');

-- --------------------------------------------------------

--
-- Table structure for table `donvi`
--

CREATE TABLE `donvi` (
  `MaDV` int(11) NOT NULL,
  `TenDV` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `MoTaDV` varchar(300) COLLATE utf8_vietnamese_ci NOT NULL,
  `NgayTao` datetime NOT NULL,
  `NgayCapNhat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `donvi`
--

INSERT INTO `donvi` (`MaDV`, `TenDV`, `MoTaDV`, `NgayTao`, `NgayCapNhat`) VALUES
(1, 'Phòng cơ sở vật chất', 'Không có', '2023-02-02 06:09:19', '2023-03-18 22:02:16'),
(2, 'Phòng thanh tra', 'Không có', '2023-02-02 06:09:19', '2023-02-02 06:09:19'),
(5, 'Trường đại học Thủ Dầu Một', 'Không có', '2023-03-18 22:21:22', '2023-03-18 22:21:22');

-- --------------------------------------------------------

--
-- Table structure for table `khuvucphong`
--

CREATE TABLE `khuvucphong` (
  `MaKVP` int(11) NOT NULL,
  `TenKVP` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `NgayCapNhat` datetime NOT NULL,
  `NgayTao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `khuvucphong`
--

INSERT INTO `khuvucphong` (`MaKVP`, `TenKVP`, `NgayCapNhat`, `NgayTao`) VALUES
(1, 'Dãy H', '2023-02-05 12:39:04', '2023-02-05 12:39:04'),
(2, 'Dãy E', '2023-02-05 14:05:28', '2023-02-05 14:05:28'),
(7, 'Dãy I', '2023-03-16 12:22:43', '2023-03-16 12:22:43'),
(8, 'Dãy F', '2023-03-16 12:22:52', '2023-03-16 12:22:52'),
(9, 'Dãy C2', '2023-03-16 12:23:34', '2023-03-16 12:23:34');

-- --------------------------------------------------------

--
-- Table structure for table `loaiphong`
--

CREATE TABLE `loaiphong` (
  `MaLP` int(11) NOT NULL,
  `TenLP` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `NgayCapNhat` datetime NOT NULL,
  `NgayTao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `loaiphong`
--

INSERT INTO `loaiphong` (`MaLP`, `TenLP`, `NgayCapNhat`, `NgayTao`) VALUES
(1, 'Lý thuyết', '2023-02-23 10:12:48', '2023-02-05 06:24:16'),
(2, 'Thực hành', '2023-02-05 06:24:16', '2023-02-05 06:24:16');

-- --------------------------------------------------------

--
-- Table structure for table `loaitaisan`
--

CREATE TABLE `loaitaisan` (
  `MaLTS` int(11) NOT NULL,
  `TenLTS` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `NgayCapNhat` datetime NOT NULL,
  `NgayTao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `loaitaisan`
--

INSERT INTO `loaitaisan` (`MaLTS`, `TenLTS`, `NgayCapNhat`, `NgayTao`) VALUES
(1, 'Tài sản cố định', '2023-02-23 17:31:09', '2023-02-07 15:55:37'),
(2, 'Công cụ dụng cụ', '2023-02-07 15:55:57', '2023-02-07 15:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int(11) NOT NULL,
  `MaDV` int(11) NOT NULL,
  `MaCD` int(11) NOT NULL,
  `MaPQ` int(11) NOT NULL,
  `TenDangNhap` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `MatKhau` varchar(30) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `HoVaTen` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `SoDienThoai` varchar(15) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `DiaChi` varchar(300) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `NgayTao` datetime NOT NULL,
  `NgayCapNhat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `MaDV`, `MaCD`, `MaPQ`, `TenDangNhap`, `MatKhau`, `HoVaTen`, `Email`, `SoDienThoai`, `DiaChi`, `NgayTao`, `NgayCapNhat`) VALUES
(1, 1, 3, 1, 'admin', 'admin', 'Trần Văn Đức', 'ducln339@gmail.com', '0326393540', 'Loc Ninh, Binh Phuoc', '2023-02-02 06:39:35', '2023-03-13 13:38:06'),
(2, 2, 3, 2, 'admin1', 'admin1', 'Nguyễn Anh Tú', 'tu@gmail.com', '0123456789', 'Binh Duong', '2023-02-02 06:39:35', '2023-02-02 06:39:35'),
(3, 1, 3, 1, 'admin2', 'admin2', 'Anh Dũng', 'dung@gmail.com', '0326393540', 'Binh Phuoc', '2023-02-02 06:39:35', '2023-02-02 06:39:35'),
(4, 2, 3, 2, 'admin3', 'admin3', 'Anh Minh', 'anhminh@gmail.com', '0123456789', 'Vung Tau', '2023-02-02 06:39:35', '2023-02-02 06:39:35'),
(5, 1, 3, 1, 'admin4', 'admin4', 'Chí Kiên', 'kiem123@gmail.com', '0326393540', 'Quy Nhon', '2023-02-02 06:39:35', '2023-02-02 06:39:35'),
(6, 2, 3, 2, 'admin5', 'admin5', 'Chí Thanh', 'tu@gmail.com', '0123456789', 'Nha Trang', '2023-02-02 06:39:35', '2023-02-02 06:39:35'),
(7, 1, 3, 1, 'admin6', 'admin6', 'Chiến Thắng', 'chienthang@gmail.com', '0326393540', 'Da Nang', '2023-02-02 06:39:35', '2023-02-02 06:39:35'),
(8, 2, 3, 2, 'admin7', 'admin7', 'Đức Tài', 'ductau@gmail.com', '0123456789', 'Ha Long', '2023-02-02 06:39:35', '2023-02-02 06:39:35'),
(9, 1, 3, 1, 'admin8', 'admin8', 'Đình Trung', 'dinhtrung@gmail.com', '0326393540', 'TPHCM', '2023-02-02 06:39:35', '2023-02-02 06:39:35'),
(22, 5, 7, 1, '2024802010403@student.tdmu.edu.vn', '1000002024802010403@student.td', 'duc tran van', '2024802010403@student.tdmu.edu.vn', '0326393544', '123', '2023-04-19 16:30:38', '2023-04-19 16:33:51'),
(23, 1, 3, 3, 'adminkk1', 'adminkk1', 'duc tran', 'adminkk1@gmail.com', '01234567891', 'Binh Duong', '2023-04-19 17:14:48', '2023-04-19 17:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `nhatkyhoatdong`
--

CREATE TABLE `nhatkyhoatdong` (
  `MaNKHD` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `HanhDong` text COLLATE utf8_vietnamese_ci NOT NULL,
  `ChiTietHanhDong` text COLLATE utf8_vietnamese_ci NOT NULL,
  `Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `nhatkyhoatdong`
--

INSERT INTO `nhatkyhoatdong` (`MaNKHD`, `MaND`, `HanhDong`, `ChiTietHanhDong`, `Time`) VALUES
(167, 1, 'Thêm', 'Thêm mới tài sản có Tên là: Máy In laser Trắng Đen Brother HL L2321D', '2023-03-18 22:29:36'),
(168, 1, 'Thêm', 'Thêm mới tài sản có Tên là: Máy in Laser Trắng Đen HP 107w WiFi (4ZB78A)', '2023-03-18 22:30:07'),
(169, 1, 'Thêm', 'Thêm mới tài sản có Tên là: Toshiba Inverter 1 HP RAS-H10C4KCVG-V', '2023-03-18 22:30:59'),
(170, 1, 'Thêm', 'Thêm mới tài sản có Tên là: Toshiba Inverter 1.5 HP RAS-H13C4KCVG-V', '2023-03-18 22:31:10'),
(171, 1, 'Thêm', 'Thêm mới tài sản có Tên là: LG Smart TV 43UQ8000PSC', '2023-03-18 22:31:35'),
(172, 1, 'Thêm', 'Thêm mới tài sản có Tên là: LG Smart TV 55UQ8000PSC', '2023-03-18 22:31:47'),
(173, 1, 'Thêm', 'Thêm mới nhóm tài sản có Tên NTS là: Máy chiếu', '2023-03-18 22:32:19'),
(174, 1, 'Thêm', 'Thêm mới tài sản có Tên là: Máy chiếu Led Viewsonic M1 Pro', '2023-03-18 22:32:42'),
(175, 1, 'Thêm', 'Thêm mới tài sản có Tên là: Máy chiếu Vimgo P10 Full HD', '2023-03-18 22:32:51'),
(176, 1, 'Thêm', 'Thêm mới tài sản có Tên là: Máy chiếu Wanbo T6 Max Full HD', '2023-03-18 22:32:58'),
(177, 1, 'Thêm', 'Thêm mới tài sản có Tên là: Camera IP 360 Độ 1536P TP-Link Tapo C210', '2023-03-18 22:36:00'),
(178, 1, 'Thêm', 'Thêm mới tài sản có Tên là: Camera IP Ngoài Trời 2MP Imou Bullet 2E-D', '2023-03-18 22:36:13'),
(179, 1, 'Thêm', 'Thêm mới - Bàn học - Số lượng: 280 - Vào phòng có Tên phòng là: Phòng I1-101', '2023-03-18 22:44:06'),
(180, 1, 'Sửa', 'Ghi tăng - ghi giảm Phòng: Phòng I1-101 - Tên TS: Bàn học - Số lượng cũ: 340 - Số lượng mới: 60', '2023-03-18 22:44:37'),
(181, 1, 'Thêm', 'Thêm mới phiếu kiểm kê có Mã phiếu là: 28', '2023-03-18 22:45:18'),
(182, 1, 'Thêm', 'Thêm mới phiếu kiểm kê có Mã phiếu là: 29', '2023-03-18 22:45:32'),
(183, 1, 'Thêm', 'Thêm mới phiếu kiểm kê có Mã phiếu là: 30', '2023-03-18 22:45:43'),
(184, 1, 'Sửa', 'Lưu tạm thời với Mã Phiếu là: 28', '2023-03-18 22:56:47'),
(185, 1, 'Sửa', 'Hoàn tất kiểm kê với Mã Phiếu là: 28', '2023-03-18 22:56:53'),
(186, 1, 'Sửa', 'Lưu tạm thời với Mã Phiếu là: 29', '2023-03-18 22:57:58'),
(187, 1, 'Sửa', 'Hoàn tất kiểm kê với Mã Phiếu là: 29', '2023-03-18 22:58:08'),
(188, 1, 'Đăng xuất', 'admin Vừa đăng xuất khỏi hệ thống', '2023-03-18 23:08:09'),
(189, 1, 'Đăng nhập', 'admin Vừa đăng nhập vào hệ thống', '2023-03-18 23:10:36'),
(190, 1, 'Đăng nhập', 'admin Vừa đăng nhập vào hệ thống', '2023-03-23 19:58:55'),
(191, 1, 'Đăng nhập', 'admin Vừa đăng nhập vào hệ thống', '2023-03-23 20:20:48'),
(192, 1, 'Đăng xuất', 'admin Vừa đăng xuất khỏi hệ thống', '2023-03-23 20:22:30'),
(193, 2, 'Đăng nhập', 'admin1 Vừa đăng nhập vào hệ thống', '2023-03-23 20:22:34'),
(194, 2, 'Đăng xuất', 'admin1 Vừa đăng xuất khỏi hệ thống', '2023-03-23 20:22:41'),
(195, 1, 'Đăng nhập', 'admin Vừa đăng nhập vào hệ thống', '2023-03-23 20:25:16'),
(196, 1, 'Thêm', 'Thêm mới người dùng có Tên đăng nhập là: admin1111', '2023-03-23 20:41:57'),
(197, 1, 'Sửa', 'Sửa thông tin tài sản có Mã TS: 3', '2023-03-23 21:13:13'),
(198, 1, 'Sửa', 'Sửa thông tin tài sản có Mã TS: 3', '2023-03-23 21:13:39'),
(199, 1, 'Sửa', 'Sửa thông tin tài sản có Mã TS: 3', '2023-03-23 21:13:43'),
(200, 1, 'Sửa', 'Sửa thông tin tài sản có Mã TS: 3', '2023-03-23 21:13:48'),
(201, 1, 'Sửa', 'Sửa thông tin tài sản có Mã TS: 3', '2023-03-23 21:13:54'),
(202, 1, 'Sửa', 'Sửa thông tin tài sản có Mã TS: 3', '2023-03-23 21:13:59'),
(203, 1, 'Sửa', 'Sửa thông tin tài sản có Mã TS: 3', '2023-03-23 21:14:02'),
(204, 1, 'Sửa', 'Sửa thông tin tài sản có Mã TS: 3', '2023-03-23 21:14:05'),
(205, 1, 'Sửa', 'Sửa thông tin tài sản có Mã TS: 3', '2023-03-23 21:14:10'),
(206, 1, 'Sửa', 'Sửa thông tin tài sản có Mã TS: 3', '2023-03-23 21:14:13'),
(207, 1, 'Sửa', 'Sửa thông tin tài sản có Mã TS: 3', '2023-03-23 21:14:31'),
(208, 1, 'Xóa', 'Xóa tài sản có Tên tài sản là: 3', '2023-03-23 21:28:45'),
(209, 1, 'Sửa', 'Sửa thông tin tài sản có Mã TS: 8', '2023-03-23 21:29:47'),
(210, 1, 'Sửa', 'Sửa thông tin tài sản có Mã TS: 8', '2023-03-23 21:29:59'),
(211, 1, 'Đăng xuất', 'admin Vừa đăng xuất khỏi hệ thống', '2023-03-23 21:33:30'),
(212, 1, 'Đăng nhập', 'admin Vừa đăng nhập vào hệ thống', '2023-03-27 16:03:07'),
(213, 1, 'Đăng nhập', 'admin Vừa đăng nhập vào hệ thống', '2023-03-28 14:10:30'),
(214, 1, 'Đăng nhập', 'admin Vừa đăng nhập vào hệ thống', '2023-04-15 08:34:01'),
(215, 1, 'Đăng nhập', 'admin Vừa đăng nhập vào hệ thống', '2023-04-16 19:40:59'),
(216, 1, 'Thêm', 'Thêm mới phiếu kiểm kê có Mã phiếu là: 31', '2023-04-17 03:20:59'),
(217, 1, 'Sửa', 'Lưu tạm thời với Mã Phiếu là: 31', '2023-04-17 03:26:22'),
(218, 1, 'Sửa', 'Lưu tạm thời với Mã Phiếu là: 31', '2023-04-17 03:26:28'),
(219, 1, 'Sửa', 'Lưu tạm thời với Mã Phiếu là: 31', '2023-04-17 03:28:19'),
(220, 1, 'Sửa', 'Lưu tạm thời với Mã Phiếu là: 31', '2023-04-17 03:28:24'),
(221, 1, 'Sửa', 'Lưu tạm thời với Mã Phiếu là: 31', '2023-04-17 03:28:46'),
(222, 1, 'Sửa', 'Hoàn tất kiểm kê với Mã Phiếu là: 31', '2023-04-17 03:28:53'),
(223, 1, 'Thêm', 'Thêm mới phiếu kiểm kê có Mã phiếu là: 32', '2023-04-17 03:38:02'),
(224, 1, 'Sửa', 'Lưu tạm thời với Mã Phiếu là: 32', '2023-04-17 03:38:31'),
(225, 1, 'Sửa', 'Hoàn tất kiểm kê với Mã Phiếu là: 32', '2023-04-17 03:38:38'),
(226, 1, 'Đăng xuất', 'admin Vừa đăng xuất khỏi hệ thống', '2023-04-17 08:53:54'),
(227, 1, 'Đăng nhập', 'admin Vừa đăng nhập vào hệ thống', '2023-04-19 15:36:42'),
(228, 1, 'Thêm', 'Thêm mới phiếu kiểm kê có Mã phiếu là: 33', '2023-04-19 15:39:39'),
(229, 1, 'Sửa', 'Lưu tạm thời với Mã Phiếu là: 33', '2023-04-19 15:39:46'),
(230, 1, 'Sửa', 'Lưu tạm thời với Mã Phiếu là: 33', '2023-04-19 15:39:48'),
(231, 1, 'Sửa', 'Lưu tạm thời với Mã Phiếu là: 33', '2023-04-19 15:39:52'),
(232, 1, 'Sửa', 'Hoàn tất kiểm kê với Mã Phiếu là: 33', '2023-04-19 15:39:59'),
(233, 1, 'Đăng xuất', 'admin Vừa đăng xuất khỏi hệ thống', '2023-04-19 15:41:32'),
(234, 1, 'Đăng nhập', 'admin Vừa đăng nhập vào hệ thống', '2023-04-19 15:41:34'),
(235, 1, 'Đăng xuất', 'admin Vừa đăng xuất khỏi hệ thống', '2023-04-19 15:44:03'),
(236, 1, 'Đăng nhập', 'admin Vừa đăng nhập vào hệ thống', '2023-04-19 15:45:01'),
(237, 1, 'Đăng xuất', 'admin Vừa đăng xuất khỏi hệ thống', '2023-04-19 15:46:16'),
(238, 1, 'Đăng nhập', 'admin Vừa đăng nhập vào hệ thống', '2023-04-19 16:12:39'),
(239, 1, 'Đăng xuất', 'admin Vừa đăng xuất khỏi hệ thống', '2023-04-19 16:14:23'),
(241, 1, 'Đăng nhập', 'admin Vừa đăng nhập vào hệ thống', '2023-04-19 16:25:43'),
(242, 1, 'Đăng xuất', 'admin Vừa đăng xuất khỏi hệ thống', '2023-04-19 16:25:45'),
(244, 22, 'Đăng xuất', '2024802010403@student.tdmu.edu.vn Vừa đăng xuất khỏi hệ thống', '2023-04-19 16:30:43'),
(245, 22, 'Đăng xuất', '2024802010403@student.tdmu.edu.vn Vừa đăng xuất khỏi hệ thống', '2023-04-19 16:31:00'),
(246, 22, 'Đăng xuất', '2024802010403@student.tdmu.edu.vn Vừa đăng xuất khỏi hệ thống', '2023-04-19 16:31:13'),
(247, 1, 'Đăng nhập', 'admin Vừa đăng nhập vào hệ thống', '2023-04-19 16:31:19'),
(248, 1, 'Sửa', 'Sửa thông tin người dùng có Mã ND: 22', '2023-04-19 16:33:51'),
(249, 1, 'Đăng xuất', 'admin Vừa đăng xuất khỏi hệ thống', '2023-04-19 16:33:56'),
(250, 22, 'Đăng xuất', '2024802010403@student.tdmu.edu.vn Vừa đăng xuất khỏi hệ thống', '2023-04-19 16:56:37'),
(251, 1, 'Đăng nhập', 'admin Vừa đăng nhập vào hệ thống', '2023-04-19 16:57:31'),
(252, 1, 'Sửa', 'Vừa chỉnh sửa trạng thái thành đã sửa chữa xong với Mã báo lỗi là: 18', '2023-04-19 17:07:42'),
(253, 1, 'Đăng xuất', 'admin Vừa đăng xuất khỏi hệ thống', '2023-04-19 17:12:00'),
(254, 2, 'Đăng nhập', 'admin1 Vừa đăng nhập vào hệ thống', '2023-04-19 17:12:02'),
(255, 2, 'Đăng xuất', 'admin1 Vừa đăng xuất khỏi hệ thống', '2023-04-19 17:12:51'),
(256, 1, 'Đăng nhập', 'admin Vừa đăng nhập vào hệ thống', '2023-04-19 17:12:52'),
(257, 1, 'Đăng xuất', 'admin Vừa đăng xuất khỏi hệ thống', '2023-04-19 17:14:17'),
(258, 1, 'Đăng nhập', 'admin Vừa đăng nhập vào hệ thống', '2023-04-19 17:14:19'),
(259, 1, 'Thêm', 'Thêm mới người dùng có Tên đăng nhập là: adminkk1', '2023-04-19 17:14:48'),
(260, 1, 'Sửa', 'Sửa thông tin người dùng có Mã ND: 23', '2023-04-19 17:14:59'),
(261, 1, 'Đăng xuất', 'admin Vừa đăng xuất khỏi hệ thống', '2023-04-19 19:11:47'),
(262, 23, 'Đăng nhập', 'adminkk1 Vừa đăng nhập vào hệ thống', '2023-04-19 19:11:50'),
(263, 23, 'Đăng xuất', 'adminkk1 Vừa đăng xuất khỏi hệ thống', '2023-04-19 19:14:05'),
(264, 1, 'Đăng nhập', 'admin Vừa đăng nhập vào hệ thống', '2023-04-19 20:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `nhomtaisan`
--

CREATE TABLE `nhomtaisan` (
  `MaNTS` int(11) NOT NULL,
  `TenNTS` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `NgayCapNhat` datetime NOT NULL,
  `NgayTao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `nhomtaisan`
--

INSERT INTO `nhomtaisan` (`MaNTS`, `TenNTS`, `NgayCapNhat`, `NgayTao`) VALUES
(1, 'Máy điều hòa', '2023-03-06 09:32:48', '2023-02-07 16:02:14'),
(2, 'Camera', '2023-02-07 16:02:50', '2023-02-07 16:02:50'),
(3, 'Tivi', '2023-02-07 16:02:55', '2023-02-07 16:02:55'),
(4, 'Tủ lạnh', '2023-02-07 16:03:00', '2023-02-07 16:03:00'),
(5, 'Máy in', '2023-02-23 17:51:41', '2023-02-07 16:03:04'),
(6, 'Bộ máy vi tính', '2023-02-07 16:03:11', '2023-02-07 16:03:11'),
(7, 'Kệ', '2023-02-07 16:03:19', '2023-02-07 16:03:19'),
(8, 'Tủ', '2023-02-07 16:03:23', '2023-02-07 16:03:23'),
(9, 'Ghế', '2023-02-07 16:03:27', '2023-02-07 16:03:27'),
(10, 'Bàn', '2023-02-23 17:51:39', '2023-02-07 16:57:08'),
(13, 'Máy chiếu', '2023-03-18 22:32:19', '2023-03-18 22:32:19');

-- --------------------------------------------------------

--
-- Table structure for table `phanbo`
--

CREATE TABLE `phanbo` (
  `MaPB` int(11) NOT NULL,
  `MaTS` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `MaP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `GhiChu` varchar(300) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `NgayCapNhat` datetime NOT NULL,
  `NgayTao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `phanbo`
--

INSERT INTO `phanbo` (`MaPB`, `MaTS`, `MaND`, `MaP`, `SoLuong`, `GhiChu`, `NgayCapNhat`, `NgayTao`) VALUES
(47, 4, 1, 23, 40, 'Không có', '2023-03-18 22:35:16', '2023-03-18 22:35:16'),
(48, 8, 1, 23, 40, 'Không có', '2023-03-18 22:35:27', '2023-03-18 22:35:27'),
(49, 10, 1, 23, 40, 'Không có', '2023-03-18 22:35:35', '2023-03-18 22:35:35'),
(50, 27, 1, 23, 2, 'Không có', '2023-03-18 22:36:26', '2023-03-18 22:36:26'),
(51, 20, 1, 23, 3, 'Không có', '2023-03-18 22:36:36', '2023-03-18 22:36:36'),
(52, 21, 1, 1, 6, 'Không có', '2023-03-18 22:40:25', '2023-03-18 22:40:25'),
(53, 24, 1, 1, 1, 'Không có', '2023-03-18 22:40:33', '2023-03-18 22:40:33'),
(54, 8, 1, 1, 120, 'Không có', '2023-03-18 22:40:41', '2023-03-18 22:40:41'),
(55, 9, 1, 1, 2, 'Không có', '2023-03-18 22:40:45', '2023-03-18 22:40:45'),
(56, 11, 1, 1, 2, 'Không có', '2023-03-18 22:40:50', '2023-03-18 22:40:50'),
(57, 10, 1, 1, 120, 'Không có', '2023-03-18 22:40:55', '2023-03-18 22:40:55'),
(58, 24, 1, 15, 1, 'Không có', '2023-03-18 22:43:22', '2023-03-18 22:43:22'),
(59, 9, 1, 15, 1, 'Không có', '2023-03-18 22:43:31', '2023-03-18 22:43:31'),
(60, 11, 1, 15, 1, 'Không có', '2023-03-18 22:43:35', '2023-03-18 22:43:35'),
(61, 8, 1, 15, 60, 'Không có', '2023-03-18 22:43:50', '2023-03-18 22:43:50'),
(62, 10, 1, 15, 60, 'Không có', '2023-03-18 22:44:06', '2023-03-18 22:44:00'),
(63, 6, 1, 22, 5, 'Không có', '2023-04-15 08:39:30', '2023-04-15 08:39:30'),
(64, 24, 1, 2, 1, 'Không có', '2023-04-19 20:24:17', '2023-04-19 20:24:17'),
(65, 7, 1, 2, 20, 'Không có', '2023-04-19 20:24:24', '2023-04-19 20:24:24'),
(66, 8, 1, 2, 10, 'Không có', '2023-04-19 20:24:30', '2023-04-19 20:24:30'),
(67, 10, 1, 2, 50, 'Không có', '2023-04-19 20:24:37', '2023-04-19 20:24:37'),
(68, 8, 1, 4, 10, 'Không có', '2023-04-19 20:25:14', '2023-04-19 20:25:14'),
(69, 10, 1, 4, 50, 'Không có', '2023-04-19 20:25:19', '2023-04-19 20:25:19'),
(70, 9, 1, 4, 2, 'Không có', '2023-04-19 20:25:28', '2023-04-19 20:25:28'),
(71, 24, 1, 5, 1, 'Không có', '2023-04-19 20:29:07', '2023-04-19 20:29:07'),
(72, 21, 1, 5, 2, 'Không có', '2023-04-19 20:29:15', '2023-04-19 20:29:15'),
(73, 8, 1, 5, 30, 'Không có', '2023-04-19 20:29:20', '2023-04-19 20:29:20'),
(74, 10, 1, 5, 30, 'Không có', '2023-04-19 20:29:25', '2023-04-19 20:29:25');

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaPQ` int(11) NOT NULL,
  `TenPQ` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `MoTaPQ` varchar(300) COLLATE utf8_vietnamese_ci NOT NULL,
  `NgayTao` datetime NOT NULL,
  `NgayCapNhat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `phanquyen`
--

INSERT INTO `phanquyen` (`MaPQ`, `TenPQ`, `MoTaPQ`, `NgayTao`, `NgayCapNhat`) VALUES
(1, 'Admin', '', '2023-02-02 06:10:31', '2023-02-02 06:10:31'),
(2, 'User', '', '2023-02-02 06:10:31', '2023-02-02 06:10:31'),
(3, 'KiemKe', '', '2023-04-19 11:39:18', '2023-04-19 11:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `phieukiemke`
--

CREATE TABLE `phieukiemke` (
  `MaPhieu` int(11) NOT NULL,
  `MaP` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `GhiChu` varchar(300) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `TrangThai` smallint(6) NOT NULL,
  `NgayCapNhat` datetime NOT NULL,
  `NgayTao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `phieukiemke`
--

INSERT INTO `phieukiemke` (`MaPhieu`, `MaP`, `MaND`, `GhiChu`, `TrangThai`, `NgayCapNhat`, `NgayTao`) VALUES
(31, 1, 1, 'Không có', 1, '2023-04-17 03:20:59', '2023-04-17 03:20:59'),
(32, 23, 1, 'Không có', 1, '2023-04-17 03:38:02', '2023-04-17 03:38:02'),
(33, 22, 1, 'Không có', 1, '2023-04-19 15:39:39', '2023-04-19 15:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `phong`
--

CREATE TABLE `phong` (
  `MaP` int(11) NOT NULL,
  `MaLP` int(11) NOT NULL,
  `MaKVP` int(11) NOT NULL,
  `TenP` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `NgayCapNhat` datetime NOT NULL,
  `NgayTao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `phong`
--

INSERT INTO `phong` (`MaP`, `MaLP`, `MaKVP`, `TenP`, `NgayCapNhat`, `NgayTao`) VALUES
(1, 1, 2, 'Phòng E3-103', '2023-02-23 09:42:26', '2023-02-05 13:59:35'),
(2, 1, 2, 'Phòng E3-104', '2023-02-05 14:05:41', '2023-02-05 14:05:41'),
(3, 1, 2, 'Phòng E3-105', '2023-02-05 14:05:47', '2023-02-05 14:05:47'),
(4, 1, 2, 'Phòng E3-302', '2023-02-05 14:05:53', '2023-02-05 14:05:53'),
(5, 1, 1, 'Phòng H1-202', '2023-02-05 14:06:03', '2023-02-05 14:06:03'),
(12, 1, 2, 'Phòng E3-301', '2023-03-16 12:24:56', '2023-03-13 15:59:56'),
(13, 1, 2, 'Phòng E3-102', '2023-03-16 12:24:25', '2023-03-16 12:24:25'),
(14, 1, 2, 'Phòng E3-101', '2023-03-16 12:24:34', '2023-03-16 12:24:34'),
(15, 1, 7, 'Phòng I1-101', '2023-03-16 12:24:48', '2023-03-16 12:24:48'),
(16, 1, 7, 'Phòng I1-102', '2023-03-16 12:25:16', '2023-03-16 12:25:16'),
(17, 1, 7, 'Phòng I1-103', '2023-03-16 12:25:26', '2023-03-16 12:25:26'),
(18, 1, 7, 'Phòng I1-104', '2023-03-16 12:25:34', '2023-03-16 12:25:34'),
(19, 1, 7, 'Phòng I1-105', '2023-03-16 12:25:42', '2023-03-16 12:25:42'),
(20, 1, 2, 'Phòng E2-101', '2023-03-16 12:25:50', '2023-03-16 12:25:50'),
(21, 1, 2, 'Phòng E2-102', '2023-03-16 12:26:18', '2023-03-16 12:26:18'),
(22, 1, 8, 'Phòng F2-101', '2023-03-16 12:30:49', '2023-03-16 12:30:49'),
(23, 2, 9, 'Phòng C2.103-P3', '2023-03-18 19:00:07', '2023-03-18 18:59:19'),
(24, 2, 9, 'Phòng C2.201-P5', '2023-03-18 19:00:22', '2023-03-18 18:59:42');

-- --------------------------------------------------------

--
-- Table structure for table `taisan`
--

CREATE TABLE `taisan` (
  `MaTS` int(11) NOT NULL,
  `MaNTS` int(11) NOT NULL,
  `MaLTS` int(11) NOT NULL,
  `TenTS` varchar(200) COLLATE utf8_vietnamese_ci NOT NULL,
  `GiaTri` int(11) DEFAULT NULL,
  `SLNhapVao` int(11) NOT NULL,
  `SLHienCon` int(11) NOT NULL,
  `HangSanXuat` varchar(100) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `NuocSanXuat` varchar(50) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `NamSanXuat` year(4) DEFAULT NULL,
  `LinkHinhAnh` text COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `GhiChu` varchar(300) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `NgayCapNhat` datetime NOT NULL,
  `NgayTao` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `taisan`
--

INSERT INTO `taisan` (`MaTS`, `MaNTS`, `MaLTS`, `TenTS`, `GiaTri`, `SLNhapVao`, `SLHienCon`, `HangSanXuat`, `NuocSanXuat`, `NamSanXuat`, `LinkHinhAnh`, `GhiChu`, `NgayCapNhat`, `NgayTao`) VALUES
(4, 6, 1, 'Bộ máy vi tính - LG', 0, 50, 10, 'Không có', 'Không có', 2022, NULL, 'Không có', '2023-02-07 16:55:37', '2023-02-07 16:55:37'),
(5, 6, 1, 'Bộ máy vi tính - Samsung', 0, 50, 50, 'Không có', 'Không có', 2022, NULL, 'Không có', '2023-02-07 16:56:00', '2023-02-07 16:56:00'),
(6, 8, 2, 'Tủ sắt', 0, 50, 45, 'Không có', 'Không có', 0000, NULL, 'Không có', '2023-02-07 16:56:09', '2023-02-07 16:56:09'),
(7, 8, 2, 'Tủ gỗ 4 ngăn', 0, 50, 30, 'Không có', 'Không có', 0000, NULL, 'Không có', '2023-02-07 16:56:16', '2023-02-07 16:56:16'),
(8, 9, 2, 'Ghế nhựa', 0, 500, 230, 'Không có', 'Không có', 0000, NULL, 'Không có', '2023-03-23 21:29:59', '2023-02-07 16:56:27'),
(9, 1, 2, 'Ghế gỗ', 0, 50, 45, 'Không có', 'Không có', 2022, NULL, 'Không có', '2023-02-07 16:56:38', '2023-02-07 16:56:38'),
(10, 10, 2, 'Bàn học', 0, 500, 150, 'Không có', 'Không có', 0000, NULL, 'Không có', '2023-02-07 16:57:25', '2023-02-07 16:57:25'),
(11, 10, 2, 'Bàn làm việc', 0, 50, 47, 'Không có', 'Không có', 0000, NULL, 'Không có', '2023-02-07 16:57:32', '2023-02-07 16:57:32'),
(12, 10, 2, 'Bàn uống nước', 0, 50, 50, 'Không có', 'Không có', 0000, NULL, 'Không có', '2023-02-07 16:57:39', '2023-02-07 16:57:39'),
(18, 5, 1, 'Máy In laser Trắng Đen Brother HL L2321D', 0, 50, 50, 'Không có', 'Không có', 2022, NULL, 'Không có', '2023-03-18 22:29:36', '2023-03-18 22:29:36'),
(19, 5, 1, 'Máy in Laser Trắng Đen HP 107w WiFi (4ZB78A)', 0, 50, 50, 'Không có', 'Không có', 2022, NULL, 'Không có', '2023-03-18 22:30:07', '2023-03-18 22:30:07'),
(20, 1, 1, 'Toshiba Inverter 1 HP RAS-H10C4KCVG-V', 0, 30, 27, 'Không có', 'Không có', 2022, NULL, 'Không có', '2023-03-18 22:30:59', '2023-03-18 22:30:59'),
(21, 1, 1, 'Toshiba Inverter 1.5 HP RAS-H13C4KCVG-V', 0, 50, 42, 'Không có', 'Không có', 2022, NULL, 'Không có', '2023-03-18 22:31:10', '2023-03-18 22:31:10'),
(22, 3, 1, 'LG Smart TV 43UQ8000PSC', 0, 10, 10, 'Không có', 'Không có', 0000, NULL, 'Không có', '2023-03-18 22:31:35', '2023-03-18 22:31:35'),
(23, 3, 1, 'LG Smart TV 55UQ8000PSC', 0, 10, 10, 'Không có', 'Không có', 0000, NULL, 'Không có', '2023-03-18 22:31:47', '2023-03-18 22:31:47'),
(24, 13, 1, 'Máy chiếu Led Viewsonic M1 Pro', 0, 20, 16, 'Không có', 'Không có', 0000, NULL, 'Không có', '2023-03-18 22:32:42', '2023-03-18 22:32:42'),
(25, 1, 1, 'Máy chiếu Vimgo P10 Full HD', 0, 30, 30, 'Không có', 'Không có', 0000, NULL, 'Không có', '2023-03-18 22:32:51', '2023-03-18 22:32:51'),
(26, 1, 1, 'Máy chiếu Wanbo T6 Max Full HD', 0, 50, 50, 'Không có', 'Không có', 0000, NULL, 'Không có', '2023-03-18 22:32:58', '2023-03-18 22:32:58'),
(27, 2, 1, 'Camera IP 360 Độ 1536P TP-Link Tapo C210', 0, 30, 28, 'Không có', 'Không có', 0000, NULL, 'Không có', '2023-03-18 22:36:00', '2023-03-18 22:36:00'),
(28, 1, 1, 'Camera IP Ngoài Trời 2MP Imou Bullet 2E-D', 0, 30, 30, 'Không có', 'Không có', 0000, NULL, 'Không có', '2023-03-18 22:36:13', '2023-03-18 22:36:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bankiemke`
--
ALTER TABLE `bankiemke`
  ADD PRIMARY KEY (`Mabkk`) USING BTREE,
  ADD KEY `MaND` (`MaND`),
  ADD KEY `MaPhieu` (`MaPhieu`);

--
-- Indexes for table `baoloi`
--
ALTER TABLE `baoloi`
  ADD PRIMARY KEY (`MaBL`),
  ADD KEY `MaPB` (`MaPB`);

--
-- Indexes for table `chitietphieukiemke`
--
ALTER TABLE `chitietphieukiemke`
  ADD PRIMARY KEY (`MaCTPKK`),
  ADD KEY `MaPhieu` (`MaPhieu`,`MaPB`),
  ADD KEY `MaPB` (`MaPB`);

--
-- Indexes for table `chucdanh`
--
ALTER TABLE `chucdanh`
  ADD PRIMARY KEY (`MaCD`);

--
-- Indexes for table `donvi`
--
ALTER TABLE `donvi`
  ADD PRIMARY KEY (`MaDV`);

--
-- Indexes for table `khuvucphong`
--
ALTER TABLE `khuvucphong`
  ADD PRIMARY KEY (`MaKVP`);

--
-- Indexes for table `loaiphong`
--
ALTER TABLE `loaiphong`
  ADD PRIMARY KEY (`MaLP`);

--
-- Indexes for table `loaitaisan`
--
ALTER TABLE `loaitaisan`
  ADD PRIMARY KEY (`MaLTS`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`),
  ADD KEY `MaDV` (`MaDV`,`MaCD`,`MaPQ`),
  ADD KEY `MaCD` (`MaCD`),
  ADD KEY `MaPQ` (`MaPQ`);

--
-- Indexes for table `nhatkyhoatdong`
--
ALTER TABLE `nhatkyhoatdong`
  ADD PRIMARY KEY (`MaNKHD`),
  ADD KEY `MaND` (`MaND`);

--
-- Indexes for table `nhomtaisan`
--
ALTER TABLE `nhomtaisan`
  ADD PRIMARY KEY (`MaNTS`);

--
-- Indexes for table `phanbo`
--
ALTER TABLE `phanbo`
  ADD PRIMARY KEY (`MaPB`),
  ADD KEY `MaTS` (`MaTS`,`MaND`,`MaP`),
  ADD KEY `MaND` (`MaND`),
  ADD KEY `MaP` (`MaP`);

--
-- Indexes for table `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaPQ`);

--
-- Indexes for table `phieukiemke`
--
ALTER TABLE `phieukiemke`
  ADD PRIMARY KEY (`MaPhieu`),
  ADD KEY `MaP` (`MaP`,`MaND`),
  ADD KEY `MaND` (`MaND`);

--
-- Indexes for table `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`MaP`),
  ADD KEY `MaLP` (`MaLP`,`MaKVP`),
  ADD KEY `MaKVP` (`MaKVP`);

--
-- Indexes for table `taisan`
--
ALTER TABLE `taisan`
  ADD PRIMARY KEY (`MaTS`),
  ADD KEY `MaNTS` (`MaNTS`,`MaLTS`),
  ADD KEY `MaLTS` (`MaLTS`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bankiemke`
--
ALTER TABLE `bankiemke`
  MODIFY `Mabkk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `baoloi`
--
ALTER TABLE `baoloi`
  MODIFY `MaBL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `chitietphieukiemke`
--
ALTER TABLE `chitietphieukiemke`
  MODIFY `MaCTPKK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `chucdanh`
--
ALTER TABLE `chucdanh`
  MODIFY `MaCD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `donvi`
--
ALTER TABLE `donvi`
  MODIFY `MaDV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `khuvucphong`
--
ALTER TABLE `khuvucphong`
  MODIFY `MaKVP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `loaiphong`
--
ALTER TABLE `loaiphong`
  MODIFY `MaLP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `loaitaisan`
--
ALTER TABLE `loaitaisan`
  MODIFY `MaLTS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `nhatkyhoatdong`
--
ALTER TABLE `nhatkyhoatdong`
  MODIFY `MaNKHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `nhomtaisan`
--
ALTER TABLE `nhomtaisan`
  MODIFY `MaNTS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `phanbo`
--
ALTER TABLE `phanbo`
  MODIFY `MaPB` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `MaPQ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `phieukiemke`
--
ALTER TABLE `phieukiemke`
  MODIFY `MaPhieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `phong`
--
ALTER TABLE `phong`
  MODIFY `MaP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `taisan`
--
ALTER TABLE `taisan`
  MODIFY `MaTS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bankiemke`
--
ALTER TABLE `bankiemke`
  ADD CONSTRAINT `bankiemke_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `bankiemke_ibfk_2` FOREIGN KEY (`MaPhieu`) REFERENCES `phieukiemke` (`MaPhieu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `baoloi`
--
ALTER TABLE `baoloi`
  ADD CONSTRAINT `baoloi_ibfk_1` FOREIGN KEY (`MaPB`) REFERENCES `phanbo` (`MaPB`);

--
-- Constraints for table `chitietphieukiemke`
--
ALTER TABLE `chitietphieukiemke`
  ADD CONSTRAINT `chitietphieukiemke_ibfk_1` FOREIGN KEY (`MaPhieu`) REFERENCES `phieukiemke` (`MaPhieu`),
  ADD CONSTRAINT `chitietphieukiemke_ibfk_2` FOREIGN KEY (`MaPB`) REFERENCES `phanbo` (`MaPB`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`MaCD`) REFERENCES `chucdanh` (`MaCD`),
  ADD CONSTRAINT `nguoidung_ibfk_2` FOREIGN KEY (`MaDV`) REFERENCES `donvi` (`MaDV`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `nguoidung_ibfk_3` FOREIGN KEY (`MaPQ`) REFERENCES `phanquyen` (`MaPQ`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `nhatkyhoatdong`
--
ALTER TABLE `nhatkyhoatdong`
  ADD CONSTRAINT `nhatkyhoatdong_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Constraints for table `phanbo`
--
ALTER TABLE `phanbo`
  ADD CONSTRAINT `phanbo_ibfk_1` FOREIGN KEY (`MaTS`) REFERENCES `taisan` (`MaTS`),
  ADD CONSTRAINT `phanbo_ibfk_2` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `phanbo_ibfk_3` FOREIGN KEY (`MaP`) REFERENCES `phong` (`MaP`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `phieukiemke`
--
ALTER TABLE `phieukiemke`
  ADD CONSTRAINT `phieukiemke_ibfk_1` FOREIGN KEY (`MaP`) REFERENCES `phong` (`MaP`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `phieukiemke_ibfk_2` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `phong_ibfk_1` FOREIGN KEY (`MaKVP`) REFERENCES `khuvucphong` (`MaKVP`),
  ADD CONSTRAINT `phong_ibfk_2` FOREIGN KEY (`MaLP`) REFERENCES `loaiphong` (`MaLP`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `taisan`
--
ALTER TABLE `taisan`
  ADD CONSTRAINT `taisan_ibfk_1` FOREIGN KEY (`MaLTS`) REFERENCES `loaitaisan` (`MaLTS`),
  ADD CONSTRAINT `taisan_ibfk_2` FOREIGN KEY (`MaNTS`) REFERENCES `nhomtaisan` (`MaNTS`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
