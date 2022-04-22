-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2022 at 03:21 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdienthoai`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE IF NOT EXISTS `chitiethoadon` (
  `mahd` varchar(20) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `phuongthucthanhtoan` int(11) NOT NULL,
  `id_hdct` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`mahd`, `tensp`, `soluong`, `gia`, `phuongthucthanhtoan`, `id_hdct`) VALUES
('19', 'Galaxy Core GT-I8262', 1, 3000000, 3, 2),
('19', 'HTC 8X', 1, 9000000, 3, 3),
('19', 'Samsung Galaxy Star GT-S5282', 1, 6500000, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE IF NOT EXISTS `danhmuc` (
  `madm` int(11) NOT NULL,
  `tendm` varchar(50) NOT NULL,
  `dequi` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`madm`, `tendm`, `dequi`) VALUES
(1, 'Điện thoại', 0),
(2, 'Phụ kiện', 0),
(3, 'Samsung', 1),
(4, 'Xiaomi', 1),
(5, 'Iphone', 1),
(6, 'Realme', 1),
(7, 'Pin', 2),
(8, 'Bao da - Ốp lưng', 2),
(9, 'Tai nghe', 2),
(10, 'Thẻ nhớ', 2),
(11, 'Oppo', 1),
(12, 'Vivo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE IF NOT EXISTS `hoadon` (
  `mahd` int(11) NOT NULL,
  `idnd` int(11) NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ngaydathang` date NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`mahd`, `idnd`, `hoten`, `diachi`, `dienthoai`, `email`, `ngaydathang`, `trangthai`) VALUES
(19, 4, 'Thành Đạt', 'an thượng', 978164307, 'thanhdat21293@gmail.com', '2014-06-03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hotro`
--

CREATE TABLE IF NOT EXISTS `hotro` (
  `idht` int(11) NOT NULL,
  `chude` varchar(255) NOT NULL,
  `noidung` text NOT NULL,
  `hoten` varchar(50) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ngaygui` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotro`
--

INSERT INTO `hotro` (`idht`, `chude`, `noidung`, `hoten`, `dienthoai`, `email`, `ngaygui`) VALUES
(2, 'Điện thoại', 'Làm ăn uy tín, chất lượng. Cảm ơn website rất nhiều.', 'Nguyễn Thành Đạt', 978164307, 'thanhdat21293@gmail.com', '2014-05-20');

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE IF NOT EXISTS `nguoidung` (
  `idnd` int(11) NOT NULL,
  `tennd` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ngaysinh` date NOT NULL,
  `gioitinh` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `ngaydangky` date NOT NULL,
  `phanquyen` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`idnd`, `tennd`, `username`, `password`, `ngaysinh`, `gioitinh`, `email`, `dienthoai`, `diachi`, `ngaydangky`, `phanquyen`) VALUES
(3, 'administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2014-05-02', 'nam', 'thanhdat21293@gmail.com', 978164307, 'an thuong', '2014-05-26', 0),
(4, 'Thành Đạt', 'thanhdat21293', '96e79218965eb72c92a549dd5a330112', '1993-12-02', 'nam', 'thanhdat21293@gmail.com', 978164307, 'an thượng', '2014-06-01', 1),
(5, 'Teo123', 'nguyenvanteo', '0bdfae2eba9151c72c8fe7d5264d8a81', '2000-06-13', 'nam', 'teonguyen@gmail.com', 122345678, 'ĐỒng Tháp', '2022-01-13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhasx`
--

CREATE TABLE IF NOT EXISTS `nhasx` (
  `idnsx` int(11) NOT NULL,
  `tennsx` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `dienthoai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE IF NOT EXISTS `sanpham` (
  `idsp` int(11) NOT NULL,
  `tensp` varchar(50) NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `mau` varchar(20) NOT NULL,
  `chitiet` text NOT NULL,
  `soluong` int(11) NOT NULL,
  `daban` int(11) NOT NULL,
  `gia` int(11) NOT NULL,
  `khuyenmai1` int(11) NOT NULL,
  `khuyenmai2` varchar(255) NOT NULL,
  `madm` int(11) NOT NULL,
  `ngaycapnhat` date NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idsp`, `tensp`, `hinhanh`, `mau`, `chitiet`, `soluong`, `daban`, `gia`, `khuyenmai1`, `khuyenmai2`, `madm`, `ngaycapnhat`, `trangthai`) VALUES
(1, 'Iphone 13 Pro 128GB', 'iPhone-13-Pro-128.jpg', 'Vàng', '<table border="0" cellpadding="0" cellspacing="0" style="width:570px">\r\n                            <tbody>\r\n                                <tr>\r\n                                    <td rowspan="2" style="background-color:rgb(246, 246, 246); height:20px; vertical-align:baseline; width:150px !important">\r\n                                    <p>Th&ocirc;ng tin chung</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); height:20px; vertical-align:baseline">Hệ điều h&agrave;nh</td>\r\n                                    <td style="background-color:rgb(252, 252, 252); height:20px; vertical-align:baseline">Android 4.2.2 (Jelly Bean)</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Ng&ocirc;n ngữ</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">Tiếng Việt, Tiếng Anh</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td rowspan="6" style="background-color:rgb(246, 246, 246); height:20px; vertical-align:baseline; width:150px !important">\r\n                                    <p>M&agrave;n h&igrave;nh</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); height:20px; vertical-align:baseline">Loại m&agrave;n h&igrave;nh</td>\r\n                                    <td style="background-color:rgb(252, 252, 252); height:20px; vertical-align:baseline">TFT</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>M&agrave;u m&agrave;n h&igrave;nh</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">16 triệu m&agrave;u</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Chuẩn m&agrave;n h&igrave;nh</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">Full HD</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Độ ph&acirc;n giải</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">1080 x 1920 pixels</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>M&agrave;n h&igrave;nh rộng</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">5.0&quot;</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>C&ocirc;ng nghệ cảm ứng</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">Cảm ứng điện dung đa điểm</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td rowspan="6" style="background-color:rgb(246, 246, 246); height:20px; vertical-align:baseline; width:150px !important">\r\n                                    <p>Chụp h&igrave;nh &amp; Quay phim</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); height:20px; vertical-align:baseline">Camera sau</td>\r\n                                    <td style="background-color:rgb(252, 252, 252); height:20px; vertical-align:baseline">20.7 MP</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Camera trước</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">2.0 MP</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Đ&egrave;n Flash</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">C&oacute;</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>T&iacute;nh năng camera</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">Tự động lấy n&eacute;t, chạm lấy n&eacute;t<br />\r\n                                    Nhận diện khu&ocirc;n mặt, nụ cười<br />\r\n                                    Chống rung</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Quay phim</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">Quay phim FullHD 1080p@30fps</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Videocall</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">Hỗ trợ VideoCall qua Skype</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td rowspan="5" style="background-color:rgb(246, 246, 246); height:20px; vertical-align:baseline; width:150px !important">\r\n                                    <p>CPU &amp; RAM</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); height:20px; vertical-align:baseline">Tốc độ CPU</td>\r\n                                    <td style="background-color:rgb(252, 252, 252); height:20px; vertical-align:baseline">2.2 GHz</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Số nh&acirc;n</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">4 nh&acirc;n</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Chipset</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">Qualcomm MSM8974</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>RAM</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">2 GB</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Chip đồ họa (GPU)</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">Adreno 330</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td rowspan="4" style="background-color:rgb(246, 246, 246); height:20px; vertical-align:baseline; width:150px !important">\r\n                                    <p>Bộ nhớ &amp; Lưu trữ</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); height:20px; vertical-align:baseline">Danh bạ</td>\r\n                                    <td style="background-color:rgb(252, 252, 252); height:20px; vertical-align:baseline">Kh&ocirc;ng giới hạn</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Bộ nhớ trong (ROM)</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">16 GB</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Thẻ nhớ ngo&agrave;i</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">MicroSD (T-Flash)</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Hỗ trợ thẻ tối đa</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">64 GB</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td rowspan="3" style="background-color:rgb(246, 246, 246); height:20px; vertical-align:baseline; width:150px !important">\r\n                                    <p>Thiết kế &amp; Trọng lượng</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); height:20px; vertical-align:baseline">Kiểu d&aacute;ng</td>\r\n                                    <td style="background-color:rgb(252, 252, 252); height:20px; vertical-align:baseline">Thanh + Cảm ứng</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>K&iacute;ch thước</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">144 x 74 x 8.5 mm</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Trọng lượng (g)</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">170</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td rowspan="3" style="background-color:rgb(246, 246, 246); height:20px; vertical-align:baseline; width:150px !important">\r\n                                    <p>Th&ocirc;ng tin pin</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); height:20px; vertical-align:baseline">Loại pin</td>\r\n                                    <td style="background-color:rgb(252, 252, 252); height:20px; vertical-align:baseline">Pin chuẩn Li-Ion</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Dung lượng pin</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">3000 mAh</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Pin c&oacute; thể th&aacute;o rời</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">Kh&ocirc;ng</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td rowspan="13" style="background-color:rgb(246, 246, 246); height:20px; vertical-align:baseline; width:150px !important">\r\n                                    <p>Kết nối &amp; Cổng giao tiếp</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); height:20px; vertical-align:baseline">3G</td>\r\n                                    <td style="background-color:rgb(252, 252, 252); height:20px; vertical-align:baseline">HSDPA, 42 Mbps; HSUPA, 5.76 Mbps</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>4G</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">C&oacute;</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Loại Sim</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">Micro SIM</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Khe gắn Sim</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">1 Sim</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Wifi</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">Wi-Fi 802.11 a/b/g/n/ac, dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>GPS</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">A-GPS v&agrave; GLONASS</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Bluetooth</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">V4.0 with A2DP</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>GPRS/EDGE</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">Up to 107 kbps / Up to 296 kbps</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Jack tai nghe</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">3.5 mm</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>NFC</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">C&oacute;</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Kết nối USB</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">Micro USB</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Kết nối kh&aacute;c</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">Kh&ocirc;ng</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Cổng sạc</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">Micro USB</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td rowspan="6" style="background-color:rgb(246, 246, 246); height:20px; vertical-align:baseline; width:150px !important">\r\n                                    <p>Giải tr&iacute; &amp; Ứng dụng</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); height:20px; vertical-align:baseline">Xem phim</td>\r\n                                    <td style="background-color:rgb(252, 252, 252); height:20px; vertical-align:baseline">MP4, WMV, H.263, H.264(MPEG4-AVC)</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Nghe nhạc</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">MP3, WAV, WMA, eAAC+, FLAC</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Ghi &acirc;m</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">C&oacute;</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Giới hạn cuộc gọi</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">Kh&ocirc;ng</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>FM radio</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">FM radio với RDS</td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">\r\n                                    <p>Chức năng kh&aacute;c</p>\r\n                                    </td>\r\n                                    <td style="background-color:rgb(252, 252, 252); border-color:rgb(255, 255, 255); height:20px; vertical-align:baseline">Mạng x&atilde; hội ảo<br />\r\n                                    Google Search, Maps, Gmail, YouTube, Calendar, Google Talk<br />\r\n                                    Micro chuy&ecirc;n dụng chống ồn</td>\r\n                                </tr>\r\n                            </tbody>\r\n                        </table>', 20, 10, 29990000, 10, '', 5, '2022-01-24', 0),
(2, 'Iphone 13 Pro Max128GB', 'iPhone-13-Pro-max-128.jpg', 'Vàng', '', 50, 5, 31490000, 0, '', 5, '2022-01-24', 0),
(3, 'Iphone SE (2020) 64GB', 'iphone-se-2020-trang.jpg', 'Trắng', '', 60, 30, 11490000, 10, '', 5, '2022-01-24', 0),
(4, 'Iphone XR 128GB', 'iPhone-xr-128.jpg', 'TRắng', '', 50, 40, 14990000, 10, '', 5, '2022-01-24', 0),
(5, 'Iphone 11 64GB', 'iPhone-11-64.jpg', 'Đỏ', '', 50, 24, 14490000, 20, '', 5, '2022-01-30', 0),
(6, 'Iphone 12 Mini 64GB', 'iPhone-12-mini-64.jpg', 'Xanh ', '', 50, 23, 15990000, 0, '', 5, '2022-01-24', 0),
(7, 'Iphone 12', 'iphone-12-thumb.jpg', 'Trắng', '', 30, 15, 18990000, 0, '', 5, '2022-01-24', 0),
(8, 'Iphone 13 128GB', 'iPhone-13-128.jpg', 'Đen', '', 34, 12, 23490000, 10, '', 5, '2022-01-24', 0),
(9, 'Iphone 13 Mini 128GB', 'iPhone-13-mini-128.jpg', 'Xanh', '', 34, 12, 19990000, 0, '', 5, '2022-01-24', 0),
(10, 'Samsung A12 4GB', 'samsung-galaxy-a12-4gb.jpg', 'Xanh', '', 90, 36, 4290000, 5, '', 3, '2022-01-24', 0),
(11, 'Samsung A22 4GB', 'samsung-galaxy-a22-4g.jpg', 'Xanh nhạt', '', 56, 14, 5890000, 0, '', 3, '2022-01-24', 0),
(12, 'Samsung Galaxy A52 128GB', 'samsung-galaxy-a52.jpg', 'Tím', '', 23, 21, 9290000, 0, 'Tai nghe', 3, '2022-01-24', 0),
(13, 'Samsung Galaxy A52 5G', 'samsung-galaxy-a52-5g.jpg', 'xanh', '', 67, 35, 10990000, 0, '', 3, '2022-01-24', 0),
(14, 'Samsung Galaxy Note 20', 'samsung-galaxy-note-20.jpg', 'xanh', '', 56, 25, 14990000, 10, '', 3, '2022-01-24', 0),
(15, 'Samsung Galaxy S21 FE', 'Samsung-Galaxy-S21-FE-tim.jpg', 'Tim', '', 60, 34, 15490000, 10, '', 3, '2022-01-24', 0),
(16, 'Samsung Galaxy S21 Ultra 5G 128GB', 'samsung-galaxy-s21-ultra.jpg', 'Xanh', '', 45, 23, 22990000, 10, 'Tai nghe', 3, '2022-01-24', 0),
(17, 'Samsung Galaxy Z Flip 3 5G 128GB', 'samsung-galaxy-z-flip-3.jpg', 'TRắng', '', 30, 5, 24990000, 0, 'Tai nghe', 3, '2022-01-24', 0),
(18, 'Samsung Galaxy Z Fold 3 Silver 5G 256GB', 'samsung-galaxy-z-fold-3-silver.jpg', '', '', 25, 3, 41990000, 10, 'Tai Nghe', 3, '2022-01-24', 0),
(19, 'Oppo A15 Seria', 'oppo-a15-black.jpg', '', '', 70, 50, 3290000, 0, '', 11, '2022-01-24', 0),
(20, 'Oppo A16', 'oppo-a16k.jpg', 'Xanh', '', 67, 50, 3690000, 0, '', 11, '2022-01-24', 0),
(21, 'Oppo A74 ', 'oppo-a74-black.jpg', 'Đen', '', 46, 15, 6990000, 0, '', 11, '2022-01-24', 0),
(22, 'Oppo Reno 4 Pro ', 'oppo-reno4-pro-trang.jpg', 'Trắng', '', 34, 14, 10090000, 10, '', 11, '2022-01-24', 0),
(23, 'Oppo Reno 5 5GB', 'oppo-reno5-5g.jpg', 'Trắng', '', 30, 15, 11690000, 10, '', 11, '2022-01-24', 0),
(24, 'Oppo Reno 6 5GB Arora', 'oppo-reno6-5g-aurora.jpg', 'Xanh', '', 50, 25, 12990000, 10, 'Tai nghe', 11, '2022-01-24', 0),
(25, 'Realme 7 Series', 'realme-7-white.jpg', 'Xanh', '', 30, 14, 6990000, 0, '', 6, '2022-01-24', 0),
(26, 'Realme Serise', 'realme-8-silver.jpg', 'Xám', '', 50, 13, 7290000, 10, 'Sạc dự phòng', 6, '2022-01-24', 0),
(27, 'Realme 9i', 'Realme-9i-xanh.jpg', 'Xanh', '', 50, 31, 6390000, 0, '', 6, '2022-01-24', 0),
(28, 'Reame C11', 'realme-c11-2021-blue.jpg', 'xah', '', 90, 80, 2990000, 0, '', 6, '2022-01-24', 0),
(29, 'Realme C225', 'realme-c25s-grey.jpg', 'xanh', '', 70, 30, 4990000, 0, '', 6, '2022-01-24', 0),
(30, 'Xiaomi Redmi 10', 'redmi-10-gray.jpg', 'Xám', '', 70, 23, 4690000, 0, '', 4, '2022-01-24', 0),
(31, 'Xiaomi 11T 5G Pro', 'xiaomi-11t-pro-5g-8gb.jpg', 'Xanh', '', 34, 14, 13490000, 10, 'Sạc dự phòng', 4, '2022-01-24', 0),
(32, 'Xiaomi Redmi Note 10 Pro', 'xiaomi-redmi-note-10-pro.jpg', 'Vàng', '', 40, 17, 7490000, 10, '', 4, '2022-01-24', 0),
(33, 'Vivo 5G', 'vưe23-5g-vang.jpg', 'vàng', '', 56, 35, 12990000, 10, 'Tai nghe', 12, '2022-01-24', 0),
(34, 'Vivo V21 5G', 'vivo-v21-5g.jpg', 'Trắng', '', 50, 14, 9990000, 10, '', 12, '2022-01-24', 0),
(36, 'Vivo Y21 ', 'vivo-y21-white.jpg', 'Xanh phản quang', '', 69, 14, 4290000, 0, '', 12, '2022-01-24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tintuc`
--

CREATE TABLE IF NOT EXISTS `tintuc` (
  `matt` int(11) NOT NULL,
  `tieude` varchar(255) NOT NULL,
  `ndngan` text NOT NULL,
  `noidung` text NOT NULL,
  `hinhanh` varchar(255) NOT NULL,
  `ngaydangtin` date NOT NULL,
  `tacgia` varchar(50) NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tintuc`
--

INSERT INTO `tintuc` (`matt`, `tieude`, `ndngan`, `noidung`, `hinhanh`, `ngaydangtin`, `tacgia`, `trangthai`) VALUES
(1, 'Lumia 1020 tiếp tục giảm giá, chỉ còn dưới 10 triệu đồng', 'Chỉ với 10 triệu đồng, chúng ta đã có thể sở hữu chiếc điện thoại chụp hình tốt nhất hiện nay - Lumia 1020.', '<p><a class="auto-link" href="http://www.techz.vn/topic/nokia-lumia-1020-146.html" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">Lumia 1020</a>&nbsp;- chiếc si&ecirc;u di động chụp h&igrave;nh đẹp nhất tr&ecirc;n thế giới thời điểm hiện tại - đang được b&aacute;n với gi&aacute; 10 triệu đồng tại một số đại l&yacute; lớn. C&aacute;c si&ecirc;u thị điện m&aacute;y,&nbsp;<a class="auto-link" href="http://www.techz.vn/C/dien-thoai" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">điện thoại</a>&nbsp;cũng đang b&aacute;n Lumia 1020 với gi&aacute; thấp hơn 12 triệu đồng, như Nguyễn Kim (11 triệu), Viễn Th&ocirc;ng A v&agrave; Viettel Store (10 triệu đồng).</p>\r\n\r\n<p>Đ&acirc;y tiếp tục l&agrave; những động th&aacute;i giảm gi&aacute; kh&ocirc;ng ch&iacute;nh thức từ ph&iacute;a đại l&yacute; nhằm th&uacute;c đẩy doanh số sản phẩm. Cho đến thời điểm hiện tại, gi&aacute; b&aacute;n của Nokia 1020 vẫn được ni&ecirc;m yết ở mức 14,99 triệu đồng tr&ecirc;n website ch&iacute;nh thức của Nokia Việt Nam.</p>\r\n\r\n<p><img alt="Lumia 1020 tiếp tục giảm giá, chỉ còn dưới 10 triệu đồng" src="http://cache.media.techz.vn/upload/2014/05/20/image-1400559926-lumia-1020-giam-gia.JPG" style="background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline" title="Lumia 1020 tiếp tục giảm giá, chỉ còn dưới 10 triệu đồng" /></p>\r\n\r\n<p>Trao đổi với một chủ&nbsp;<a class="auto-link" href="http://www.techz.vn/dia-chi-cong-nghe.html" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">cửa h&agrave;ng</a>&nbsp;tại H&agrave; Nội, gi&aacute; b&aacute;n của Lumia 1020 đ&atilde; được điều chỉnh giảm khoảng một tuần nay. Doanh số của sản phẩm nhờ đ&oacute; c&oacute; tăng nhưng kh&ocirc;ng đ&aacute;ng kể, trong khi lượng h&agrave;ng c&ograve;n trong kho cũng kh&ocirc;ng qu&aacute; nhiều.</p>\r\n\r\n<p>Theo nhận định chung của giới kinh doanh, Lumia 1020 l&agrave; một sản phẩm tốt nhưng kh&ocirc;ng hot. &ldquo;Lumia 1020 c&oacute; thiết kế đẹp, cấu h&igrave;nh phần cứng kh&ocirc;ng qu&aacute; mạnh nhưng vẫn cho trải nghiệm mượt m&agrave;, trong khi camera của m&aacute;y xứng đ&aacute;ng l&agrave; vua tr&ecirc;n thị trường. Tuy nhi&ecirc;n, ngoại trừ giai đoạn mới về Việt Nam, sản phẩm n&agrave;y &iacute;t khi nằm trong top b&aacute;n chạy, ngay cả khi c&oacute; gi&aacute; b&aacute;n tốt&rdquo;, một chủ đại l&yacute; nhận định.</p>\r\n\r\n<p>Tr&ecirc;n thực tế, c&aacute;c sản phẩm cao cấp của Nokia d&ugrave; tốt vẫn chưa tạo được ưu thế so với&nbsp;<a class="auto-link" href="http://www.techz.vn/topic/dien-thoai-iphone-126.html" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">iPhone</a>&nbsp;v&agrave; d&ograve;ng Galaxy S của Samsung. Những sản phẩm b&aacute;n chạy của Nokia chủ yếu nằm ở ph&acirc;n kh&uacute;c tầm thấp như&nbsp;<a class="auto-link" href="http://www.techz.vn/tag/Lumia-520" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">Lumia 520</a>, 525 hay 620.</p>\r\n\r\n<p><img alt="Lumia 1020 tiếp tục giảm giá, chỉ còn dưới 10 triệu đồng" src="http://cache.media.techz.vn/upload/2014/05/20/image-1400559927-lumia-1020-giam-gia-2.JPG" style="background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline" title="Lumia 1020 tiếp tục giảm giá, chỉ còn dưới 10 triệu đồng" /></p>\r\n\r\n<p>&ldquo;Kh&aacute;ch mua sản phẩm tầm thấp c&oacute; thể h&agrave;i l&ograve;ng với trải nghiệm tr&ecirc;n&nbsp;<a class="auto-link" href="http://www.techz.vn/tag/Windows-Phone" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">Windows Phone</a>&nbsp;8, bởi m&aacute;y chạy mượt, c&oacute; đủ c&aacute;c&nbsp;<a class="auto-link" href="http://www.techz.vn/C/ung-dung" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">ứng dụng</a>&nbsp;cơ bản, nhưng với c&aacute;c sản phẩm cao cấp như Lumia 1020, họ cần nhiều hơn thế, đặc biệt l&agrave; yếu tố t&ugrave;y biến như giao diện, c&aacute;c phần mềm lạ v&agrave; hay. Đ&acirc;y cũng l&agrave; một phần nguy&ecirc;n nh&acirc;n dẫn đến việc, một số người ch&ecirc; Lumia 1020 hay 1520 nh&agrave;m ch&aacute;n&rdquo;, nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng tại một si&ecirc;u thị cho hay.</p>\r\n\r\n<p>Hiện, chưa c&oacute; một smartphone n&agrave;o được trang bị tối t&acirc;n hơn Lumia 1020 tr&ecirc;n lĩnh vực camera. M&aacute;y d&ugrave;ng camera 41 megapixel, k&iacute;ch thước cảm biến 1/1,5 inch, ống k&iacute;nh quang học 6 th&agrave;nh phần Carl Zeiss khẩu độ f/2.2 v&agrave; đ&egrave;n flash Xenon, kết hợp với phần mềm chụp ảnh Nokia Camera, cho ph&eacute;p t&ugrave;y chỉnh dễ d&agrave;ng những th&ocirc;ng số như c&acirc;n bằng trắng, khả năng phơi s&aacute;ng, ISO.</p>\r\n', '20140520083240image-1400560084-lumia-1020-giam-gia-3.JPG', '2014-05-20', 'Zing', 0),
(2, 'Samsung quay lại sản xuất điện thoại nắp gập cao cấp với G9098', 'Chiếc điện thoại có tên G9098 của Samsung dành riêng cho nhà mạng China Mobile', '<p>Điện thoại nắp trượt (slide) hay gập kiểu vỏ s&ograve; (flip) từng l&agrave; những sản phẩm thời thượng của thập ni&ecirc;n trước. Nhưng khi m&agrave; kỷ nguy&ecirc;n của&nbsp;<a class="auto-link" href="http://www.techz.vn/C/dien-thoai" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">điện thoại</a>&nbsp;m&agrave;n h&igrave;nh cảm ứng lớn l&ecirc;n ng&ocirc;i, c&aacute;c nh&agrave; sản xuất cũng kh&ocirc;ng c&ograve;n tung ra những mẫu điện thoại c&oacute; thiết kế độc đ&acirc;&oacute; n&agrave;y nữa.</p>\r\n\r\n<p>Mặc d&ugrave; kh&ocirc;ng được ưa chuộng nhiều nhưng kh&ocirc;ng phải n&oacute; kh&ocirc;ng c&ograve;n được y&ecirc;u th&iacute;ch v&agrave; điện thoại gập cũng c&oacute; những ưu điểm ri&ecirc;ng. Samsung được cho l&agrave; đang quay trở lại sản xuất một chiếc điện thoại nắp gập d&agrave;nh ri&ecirc;ng cho nh&agrave; mạng lớn nhất thế giới China Mobile. Sản phẩm c&oacute; t&ecirc;n m&atilde;n G9098, c&oacute; thiết kế mặt trược vu&ocirc;ng vắn vốn đ&atilde; kh&ocirc;ng xuất hiện tr&ecirc;n c&aacute;c sản phẩm của Samsung từ sau chiếc Galaxy SII, mặt sau bằng nhựa giả da như tr&ecirc;n chiếc Note III.</p>\r\n\r\n<p><img alt="Samsung quay lại sản xuất điện thoại nắp gập cao cấp với G9098" src="http://cache.media.techz.vn/upload/2014/05/20/image-1400556669-Samsung-G9098.jpg" style="background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline" title="Samsung quay lại sản xuất điện thoại nắp gập cao cấp với G9098" /></p>\r\n\r\n<p>Điểm độc đ&aacute;o của chiếc điện thoại n&agrave;y ở chỗ, n&oacute; c&oacute; 2 m&agrave;n h&igrave;nh 3,67 inch b&ecirc;n trong v&agrave; b&ecirc;n ngo&agrave;i, đều l&agrave; Super AMOLED độ ph&acirc;n giải 480 x 800 pixel. M&aacute;y được trang bị vi xử l&yacute; l&otilde;i tứ 2,3GHz (c&oacute; thể l&agrave; Snapdragon 800), RAM 2GB, camera ch&iacute;nh 13MP, phụ 2MP, c&oacute; khe cắm thẻ nhớ v&agrave; đi k&egrave;m vi&ecirc;n pin 1900mAh.</p>\r\n\r\n<p>Với cấu h&igrave;nh tr&ecirc;n th&igrave; Samsung G9098 kh&ocirc;ng phải l&agrave; một sản phẩm b&igrave;nh d&acirc;n, v&agrave; chắc chắn l&agrave; cao cấp nhất trong c&aacute;c d&ograve;ng điện thoại nắp gập hiện nay. M&aacute;y sẽ chỉ được b&aacute;n tại thị trường Trung Quốc v&agrave; gi&aacute; cả vẫn chưa được tiết lộ.</p>\r\n', '20140520083543image-1400556662-Samsung-G9098-2.jpg', '2014-05-20', 'Techz', 0),
(3, 'HTC One M8 Prime có khả năng chống nước, cấu hình siêu khủng', 'Khả năng rất cao, chúng ta sẽ có 2 mẫu smartphone siêu cao cấp ‘Prime’ đến từ 2 nhà sản xuất khác nhau...', '<p>Sau những th&ocirc;ng tin v&agrave; h&igrave;nh ảnh kh&aacute; chi tiết về&nbsp;<a class="auto-link" href="http://www.techz.vn/topic/samsung-galaxy-s5-162.html" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">Samsung Galaxy S5</a>&nbsp;Prime bằng vỏ kim loại. Trang tin chuy&ecirc;n r&ograve; rỉ @evleaks lại tiếp tục tiết lộ mẫu flagship tiếp theo của&nbsp;<a class="auto-link" href="http://www.techz.vn/topic/htc-65.html" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">HTC</a>, thật th&uacute; vị l&agrave; m&aacute;y cũng c&oacute; t&ecirc;n m&atilde; &lsquo;Prime&rsquo;.</p>\r\n\r\n<p><img alt="HTC One M8 Prime có khả năng chống nước, cấu hình siêu khủng" src="http://cache.media.techz.vn/upload/2014/05/20/image-1400543309-HTC-One-M8-Prime-features-01.png" style="background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline" title="HTC One M8 Prime có khả năng chống nước, cấu hình siêu khủng" /></p>\r\n\r\n<p>Những th&ocirc;ng tin n&agrave;y được đăng tải kh&aacute; cụ thể tr&ecirc;n trang tweet của @evleaks, đặc biệt chất liệu h&igrave;nh th&agrave;nh ch&iacute;nh&nbsp;<a class="auto-link" href="http://www.techz.vn/topic/htc-m8-213.html" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">HTC M8</a>&nbsp;Prime sẽ được kết tinh từ &ldquo;nh&ocirc;m v&agrave; silicon lỏng&rdquo;. Kh&ocirc;ng những thế M8 Prime c&ograve;n c&oacute; thể chống thấm nước, m&agrave;n h&igrave;nh 5.5 inch độ ph&acirc;n giải l&ecirc;n tới Quad HD (1440<a class="auto-link" href="http://www.techz.vn/topic/moto-x2-214.html" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">x2</a>560 pixels), vi xử l&yacute; 4 nh&acirc;n Snapdragon 805 tốc độ 2.5GHz, 3GB RAM, hỗ trợ mạng kết nối &lsquo;si&ecirc;u tốc&rsquo; LTE-A Cat. 6.</p>\r\n\r\n<p><img alt="HTC One M8 Prime có khả năng chống nước, cấu hình siêu khủng" src="http://cache.media.techz.vn/upload/2014/05/20/image-1400543391-HTC-One-M8-3-700x393.jpg" style="background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline" title="HTC One M8 Prime có khả năng chống nước, cấu hình siêu khủng" /></p>\r\n\r\n<p>Thời điểm Qualcomm tr&igrave;nh l&agrave;ng loại chipset Snapdragon 805 c&oacute; thể phải chờ đến sự kiện&nbsp;<a class="auto-link" href="http://www.techz.vn/su-kien-cong-nghe/15/mwc-2014-mobile-world-congress-2014.html" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">MWC 2014</a>diễn ra v&agrave;o th&aacute;ng 2, v&igrave; vậy vẫn c&ograve;n kh&aacute; l&acirc;u để ch&uacute;ng ta được chi&ecirc;m ngưỡng dung nhan ch&iacute;nh thức từ M8 Prime. Ngo&agrave;i ra, mạng kết nối LTE-A Cat. 6. c&oacute; khả năng download l&ecirc;n đến 300Mbps, chắc hẳn đ&acirc;y l&agrave; thiết bị đầu ti&ecirc;n của HTC đạt đến &#39;cảnh giới&#39; n&agrave;y.</p>\r\n\r\n<p>Mặc d&ugrave; trang bị nhiều&nbsp;<a class="auto-link" href="http://www.techz.vn/" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">c&ocirc;ng nghệ</a>&nbsp;v&agrave; cải tiến vượt trội như vậy, nhưng v&oacute;c d&aacute;ng của One M8 Prime hứa hẹn sẽ kh&ocirc;ng mấy đổi kh&aacute;c so với mẫu M8 hiện tại (v&agrave;&nbsp;<a class="auto-link" href="http://www.techz.vn/tag/HTC-One-mini" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">One Mini</a>&nbsp;2).</p>\r\n', '20140520083628image-1400543386-HTC-One-M8-Harman-Kardon-Edition-rear.jpg', '2014-05-20', 'Techz', 0),
(4, 'Đánh giá camera 5 Mpx không đèn LED của Lumia 630', 'Nằm trong phân khúc thấp của thị trường smartphone, Lumia 630 chỉ được trang bị một camera 5 Mpx, không có cả đèn LED hỗ trợ chụp ban đêm. Tuy nhiên, Lumia 630 vẫn có thể chụp được những tấm ảnh có chất lượng khá tốt, độ nét sâu...', '<p>Nằm trong ph&acirc;n kh&uacute;c thấp của thị trường&nbsp;<a class="auto-link" href="http://www.techz.vn/C/dien-thoai" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">smartphone</a>,&nbsp;<a class="auto-link" href="http://www.techz.vn/topic/lumia-630-239.html" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">Lumia 630</a>&nbsp;chỉ được trang bị một camera 5 Mpx, kh&ocirc;ng c&oacute; cả đ&egrave;n LED hỗ trợ chụp ban đ&ecirc;m. Tuy nhi&ecirc;n, Lumia 630 vẫn c&oacute; thể chụp được những tấm ảnh c&oacute; chất lượng kh&aacute; tốt, độ n&eacute;t s&acirc;u.</p>\r\n\r\n<p><img alt="Đánh giá camera 5 Mpx không đèn LED của Lumia 630" src="http://cache.media.techz.vn/upload/2014/05/19/image-1400509766-Nokia_Lumia_630_camera_1.jpg" style="background-color:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline" title="Đánh giá camera 5 Mpx không đèn LED của Lumia 630" />&nbsp;</p>\r\n\r\n<p><em>Ảnh chụp ngo&agrave;i trời, m&agrave;u sắc kh&aacute; trung thực</em></p>\r\n\r\n<p><em><img alt="Đánh giá camera 5 Mpx không đèn LED của Lumia 630" src="http://cache.media.techz.vn/upload/2014/05/19/image-1400509767-Nokia_Lumia_630_camera_5.jpg" style="background-color:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline" title="Đánh giá camera 5 Mpx không đèn LED của Lumia 630" /></em></p>\r\n\r\n<p><em>Ảnh chụp ở chế độ cận cảnh (macro)</em><br />\r\n<em>v&ugrave;ng ở giữa thể hiện chi tiết kh&aacute; tốt (chữ &quot;eclipse&quot;), nhưng c&agrave;ng gần m&eacute;p tấm ảnh th&igrave; c&agrave;ng soft</em></p>\r\n\r\n<p>Ở chế độ chụp chuy&ecirc;n nghiệp, người d&ugrave;ng c&oacute; thể tự điều chỉnh c&aacute;c th&ocirc;ng số theo &yacute; m&igrave;nh, c&aacute;c th&ocirc;ng số kh&ocirc;ng được điều chỉnh c&ograve;n lại sẽ tự động nhận biết ở mức độ ph&ugrave; hợp, để cho ra những tấm ảnh chụp tốt nhất. Những th&ocirc;ng số c&oacute; thể điều chỉnh bao gồm c&acirc;n bằng s&aacute;ng, ti&ecirc;u cự, ISO, tốc độ chụp, độ b&ugrave; s&aacute;ng.</p>\r\n\r\n<p>&nbsp;<img alt="Đánh giá camera 5 Mpx không đèn LED của Lumia 630" src="http://cache.media.techz.vn/upload/2014/05/19/image-1400509768-Nokia_Lumia_630_camera_7.jpg" style="background-color:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline" title="Đánh giá camera 5 Mpx không đèn LED của Lumia 630" /></p>\r\n\r\n<p><em>Ảnh chụp ngo&agrave;i trời ở chế độ tự động, m&agrave;u sắc hơi n&oacute;ng</em></p>\r\n\r\n<p><img alt="Đánh giá camera 5 Mpx không đèn LED của Lumia 630" src="http://cache.media.techz.vn/upload/2014/05/19/image-1400509768-Nokia_Lumia_630_camera_8.jpg" style="background-color:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline" title="Đánh giá camera 5 Mpx không đèn LED của Lumia 630" /></p>\r\n\r\n<p><em>Ảnh chụp ngo&agrave;i trời ở chế độ tự điều chỉnh c&acirc;n bằng s&aacute;ng, b&ugrave; s&aacute;ng, tốc độ chụp</em></p>\r\n\r\n<p>Với hỗ trợ ISO 1600 v&agrave; thời gian phơi s&aacute;ng 1 gi&acirc;y, Lumia 630 vẫn c&oacute; thể chụp được những tấm ảnh phơi s&aacute;ng dưới &aacute;nh đ&egrave;n trong buổi tối kh&aacute; đẹp.</p>\r\n\r\n<p><img alt="Đánh giá camera 5 Mpx không đèn LED của Lumia 630" src="http://cache.media.techz.vn/upload/2014/05/19/image-1400509766-Nokia_Lumia_630_camera_2.jpg" style="background-color:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline" title="Đánh giá camera 5 Mpx không đèn LED của Lumia 630" /></p>\r\n\r\n<p><em>Ảnh chụp bằng chế độ chụp đ&ecirc;m (night-scene)</em></p>\r\n\r\n<p><img alt="Đánh giá camera 5 Mpx không đèn LED của Lumia 630" src="http://cache.media.techz.vn/upload/2014/05/19/image-1400509766-Nokia_Lumia_630_camera_3.jpg" style="background-color:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline" title="Đánh giá camera 5 Mpx không đèn LED của Lumia 630" /></p>\r\n\r\n<p><em>Ảnh chụp phơi s&aacute;ng với tốc độ 1/1s</em></p>\r\n\r\n<p><em><img alt="Đánh giá camera 5 Mpx không đèn LED của Lumia 630" src="http://cache.media.techz.vn/upload/2014/05/19/image-1400509767-Nokia_Lumia_630_camera_4.jpg" style="background-color:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline" title="Đánh giá camera 5 Mpx không đèn LED của Lumia 630" /></em></p>\r\n\r\n<p>&nbsp;<em>Ảnh chụp buổi tối vẫn cho chi tiết kh&aacute; r&otilde; với &aacute;nh đ&egrave;n huỳnh quang trắng</em></p>\r\n\r\n<p><em><img alt="Đánh giá camera 5 Mpx không đèn LED của Lumia 630" src="http://cache.media.techz.vn/upload/2014/05/19/image-1400509769-Nokia_Lumia_630_camera_9.jpg" style="background-color:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline" title="Đánh giá camera 5 Mpx không đèn LED của Lumia 630" /></em></p>\r\n\r\n<p>&nbsp;<em>Ảnh chụp trực tiếp mặt trăng, ISO c&agrave;ng thấp th&igrave; hiện tượng flare c&agrave;ng r&otilde;,<br />\r\nnh&igrave;n giống như 1 vi&ecirc;n đạn lửa từ mặt trăng bắn xuống</em></p>\r\n\r\n<p>&nbsp;Tuy nhi&ecirc;n, nếu chụp trong một kh&ocirc;ng gian nhỏ như trong một qu&aacute;n caf&eacute; d&ugrave;ng đ&egrave;n m&agrave;u th&igrave; Lumia 630 sẽ cho ra ảnh bị nhiễu kh&aacute; r&otilde;, đồng thời bị ng&atilde; t&iacute;m ở phần dưới, kể cả khi đặt tốc độ chụp chậm nhất.</p>\r\n\r\n<p>&nbsp;<img alt="Đánh giá camera 5 Mpx không đèn LED của Lumia 630" src="http://cache.media.techz.vn/upload/2014/05/19/image-1400509768-Nokia_Lumia_630_camera_6.jpg" style="background-color:transparent; border:0px; height:auto; margin:0px; max-width:100%; outline:0px; padding:0px; vertical-align:baseline" title="Đánh giá camera 5 Mpx không đèn LED của Lumia 630" /></p>\r\n\r\n<p><em>Ảnh bị nhiễu v&agrave; ng&atilde; sang m&agrave;u t&iacute;m</em></p>\r\n\r\n<p>D&ugrave; sao đi nữa, trong tầm chi ph&iacute; của những chiếc smartphone tương đương th&igrave; chất lượng ảnh c&oacute; được từ Lumia 630 được&nbsp;<a class="auto-link" href="http://www.techz.vn/C/danh-gia-san-pham" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">đ&aacute;nh gi&aacute;</a>&nbsp;l&agrave; kh&aacute; tốt. Nhu cầu chụp ảnh trong m&ocirc;i trường thiếu s&aacute;ng v&agrave; buổi tối cũng kh&ocirc;ng nhiều, người d&ugrave;ng kh&ocirc;ng cần c&acirc;n nhắc qu&aacute; kỹ đến yếu tố n&agrave;y.</p>\r\n', '20140520083722image-1400556298-camera-nokia-lumia-630.jpg', '2014-05-20', '', 0),
(5, 'Cận ngày ra mắt, LG G3 tiếp tục lộ giá bán', 'Chỉ còn khoảng 1 tuần nữa, ‘bom tấn’ LG G3 sẽ chính thức đổ bộ...', '<p>V&agrave;o thời điểm n&agrave;y, những th&ocirc;ng tin về&nbsp;<a class="auto-link" href="http://www.techz.vn/topic/lg-g3-216.html" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">LG G3</a>&nbsp;đ&atilde; lộ kh&aacute; chi tiết, từ h&igrave;nh ảnh cho đến th&ocirc;ng số cấu h&igrave;nh, v&agrave; cho đến h&ocirc;m nay l&agrave; mức gi&aacute;.</p>\r\n\r\n<p><img alt="Cận ngày ra mắt, LG G3 tiếp tục lộ giá bán" src="http://cache.media.techz.vn/upload/2014/05/20/image-1400541863-image-1400472203-lg-g3-horz.jpg" style="background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline" title="Cận ngày ra mắt, LG G3 tiếp tục lộ giá bán" /></p>\r\n\r\n<p><em>LG G3 phi&ecirc;n bản v&agrave;ng v&agrave; trắng c&oacute; mức gi&aacute; dao động từ 17~20 triệu đồng</em></p>\r\n\r\n<p>Một&nbsp;<a class="auto-link" href="http://www.techz.vn/dia-chi-cong-nghe.html" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">cửa h&agrave;ng</a>&nbsp;b&aacute;n lẻ c&oacute; t&ecirc;n l&agrave; Kasuplan tại Phần Lan đ&atilde; tiết lộ mức gi&aacute; &lsquo;bom tấn&rsquo; LG G3, được biết phi&ecirc;n bản m&agrave;u v&agrave;ng c&oacute; dung lượng 16GB l&agrave; 613 Euros (tương đương 17,8 triệu đồng ). Phi&ecirc;n bản 32GB bản m&agrave;u trắng c&oacute; gi&aacute; cao hơn với 659 Euros (~19,2 triệu đồng).</p>\r\n\r\n<p>Cũng tại khu vực n&agrave;y, nhưng nh&agrave; b&aacute;n lẻ Multitronic lại đưa ra mức gi&aacute; 678 Euro cho phi&ecirc;n bản G3 16GB m&agrave;u v&agrave;ng, v&agrave; 730 Euro cho bản 32GB m&agrave;u trắng. N&ecirc;n nhớ rằng, mức gi&aacute; n&agrave;y vẫn chưa phải l&agrave; ch&iacute;nh thức, v&agrave; n&oacute; c&oacute; thể thay đổi cho đến ph&uacute;t ch&oacute;t (thời điểm sản phẩm l&ecirc;n kệ), được biết gi&aacute; tr&ecirc;n đ&atilde; bao gồm 22% thuế VAT.</p>\r\n\r\n<p><img alt="Cận ngày ra mắt, LG G3 tiếp tục lộ giá bán" src="http://cache.media.techz.vn/upload/2014/05/20/image-1400541938-image-1400085717-LG-G3-press-renders-appear%20(4).jpg" style="background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline" title="Cận ngày ra mắt, LG G3 tiếp tục lộ giá bán" /></p>\r\n\r\n<p><em>LG G3 sẽ c&oacute; m&agrave;n h&igrave;nh si&ecirc;u n&eacute;t 2K</em></p>\r\n\r\n<p>G3 dự kiến sẽ trang bị m&agrave;n h&igrave;nh 5.5 inch, độ ph&acirc;n giải si&ecirc;u n&eacute;t 1440<a class="auto-link" href="http://www.techz.vn/topic/moto-x2-214.html" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">x2</a>560 pixels (QHD), mật độ diểm ảnh l&ecirc;n đến 534ppi. Chạy vi xử l&yacute; Snapdragon 801 (c&oacute; thể Snapdragon 805), 3GB RAM, 32GB/16GB bộ nhớ trong, c&oacute; hỗ trợ khe cắm thẻ nhớ. Camera ch&iacute;nh 16MP v&agrave; phụ 2.1MP, chạy<a class="auto-link" href="http://www.techz.vn/topic/android-22.html" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">Android</a>&nbsp;4.4.2 KitKat.</p>\r\n', '20140520083812image-1400541884-image-.jpg', '2014-05-20', 'Techz', 0),
(6, 'Sẽ không thể vừa sử dụng Xperia Z2, vừa đeo kính râm', 'Sự phân cực trên màn hình và trên kính sẽ khiến người dùng không thể nhìn thấy gì từ màn hình của chiếc Xperia Z2...', '<p>Mới đ&acirc;y, một người d&ugrave;ng tr&ecirc;n Xperia Blog đ&atilde; ph&aacute;t hiện ra một chi tiết kh&aacute; bất ngờ, đ&oacute; l&agrave; chiếc&nbsp;<a class="auto-link" href="http://www.techz.vn/topic/sony-xperia-z2-228.html" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">Sony Xperia Z2</a>&nbsp;gặp vấn đề khi người d&ugrave;ng đeo k&iacute;nh r&acirc;m. Cụ thể, với một số loại k&iacute;nh r&acirc;m m&agrave; người d&ugrave;ng sử dụng, khi m&agrave;n h&igrave;nh ở chế độ xoay ngang, ch&uacute;ng ta sẽ kh&ocirc;ng thể nh&igrave;n thấy g&igrave; tr&ecirc;n m&agrave;n h&igrave;nh, v&igrave; n&oacute; đ&atilde; &hellip; tối đen.</p>\r\n\r\n<p>C&oacute; vẻ như kh&ocirc;ng li&ecirc;n quan lắm, nhưng điều n&agrave;y l&agrave; c&oacute; thực, bạn c&oacute; thể xem video v&agrave; ảnh so s&aacute;nh dưới đ&acirc;y:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Điều n&agrave;y chỉ xảy ra với c&aacute;c loại k&iacute;nh m&aacute;t ph&acirc;n cực khi đeo k&iacute;nh ở đ&uacute;ng tư thế, v&agrave; ho&agrave;n to&agrave;n c&oacute; thể giải th&iacute;ch. Tất cả&nbsp;<a class="auto-link" href="http://www.techz.vn/C/dien-thoai" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">điện thoại</a>&nbsp;hiện nay đều được trang bị một m&agrave;ng lọc ph&acirc;n cực tr&ecirc;n m&agrave;n h&igrave;nh để đảm bảo g&oacute;c nh&igrave;n tốt khi nh&igrave;n nghi&ecirc;ng v&agrave; c&aacute;c tia s&aacute;ng từ m&agrave;n h&igrave;nh kh&ocirc;ng chiếu trực tiếp đến mắt người, g&acirc;y ch&oacute;i v&agrave; nhức mắt khi sử dụng. K&iacute;nh r&acirc;m cũng vậy, lớp m&agrave;ng ph&acirc;n cực tr&ecirc;n k&iacute;nh d&acirc;m n&agrave;y c&oacute; thể so s&aacute;nh như một chiếc cửa chớp v&ocirc; h&igrave;nh, chỉ cho &aacute;nh s&aacute;ng ph&acirc;n cực theo một hướng n&agrave;o đ&oacute; đi qua.</p>\r\n\r\n<p><img alt="Sẽ không thể vừa sử dụng Xperia Z2, vừa đeo kính râm" src="http://cache.media.techz.vn/upload/2014/05/19/image-1400486092-Xperia-Z2-kinh-ram-2.jpg" style="background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline" title="Sẽ không thể vừa sử dụng Xperia Z2, vừa đeo kính râm" /></p>\r\n\r\n<p>Thật tr&ugrave;ng hợp l&agrave; sự ph&acirc;n cực n&agrave;y v&agrave; ph&acirc;n cực tr&ecirc;n m&agrave;n h&igrave;nh chiếc Xperia Z2 ở chế độ xoay ngang m&agrave;n h&igrave;nh l&agrave; ngược nhau, v&igrave; vậy ch&uacute;ng ta chỉ thấy m&agrave;n h&igrave;nh đen v&igrave; &aacute;nh s&aacute;ng kh&ocirc;ng thể truyền từ m&agrave;n h&igrave;nh điện thoại tới mắt. Điều n&agrave;y &iacute;t nhất sẽ khiến ch&uacute;ng ta gặp kh&oacute; khăn khi muốn chụp h&igrave;nh hoặc lướt web ở ngo&agrave;i trời nắng, khi vừa đeo k&iacute;nh vừa sử dụng. V&igrave; vậy bạn h&atilde;y c&acirc;n nhắc khi mua Z2, hoặc chọn 1 loại k&iacute;nh ph&ugrave; hợp.</p>\r\n', '20140520083934image-1400486083-Xperia-Z2-kinh-ram.jpg', '2014-05-20', 'Techz', 0),
(7, 'LG G3 đã lộ diện hoàn toàn: Đâu còn gì để mất', 'Với những người đã từng trót năng lòng với G2, chắc hẳn ai cũng sẽ cảm thấy xốn xang khi chứng kiến sự xuất hiện phiên bản tiếp theo của mẫu điện thoại này...', '<p>Sau m&agrave;n ra mắt của&nbsp;<a class="auto-link" href="http://www.techz.vn/topic/lg-g-pro-2-243.html" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">LG G Pro 2</a>, h&atilde;ng&nbsp;<a class="auto-link" href="http://www.techz.vn/C/dien-thoai" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">điện thoại</a>&nbsp;đến từ H&agrave;n Quốc LG đang chuẩn bị cho sự xuất hiện của một mẫu điện thoại mới c&oacute; t&ecirc;n gọi&nbsp;<a class="auto-link" href="http://www.techz.vn/topic/lg-g3-216.html" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">LG G3</a>. Đ&acirc;y l&agrave; sản phẩm cao cấp nhất của nh&agrave; sản xuất n&agrave;y trong năm 2014.&nbsp;</p>\r\n\r\n<p><img alt="LG G3 đã lộ diện hoàn toàn: Đâu còn gì để mất" src="http://cache.media.techz.vn/upload/2014/05/19/image-1400472203-lg-g3.jpg" style="background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline" title="LG G3 đã lộ diện hoàn toàn: Đâu còn gì để mất" /></p>\r\n\r\n<p>D&ugrave; đ&atilde; nhiều lần xuất hiện tr&ecirc;n c&aacute;c phương tiện truyền th&ocirc;ng với những h&igrave;nh ảnh r&ograve; rỉ nhưng phải đến ng&agrave;y h&ocirc;m nay ch&uacute;ng ta mới c&oacute; c&aacute;i nh&igrave;n r&otilde; n&eacute;t nhất về mẫu điện thoại n&agrave;y. V&agrave; người đưa ra c&aacute;c th&ocirc;ng tin n&agrave;y kh&ocirc;ng phải ai kh&aacute;c ngo&agrave;i Evleaks - &ocirc;ng ch&ugrave;m của c&aacute;c&nbsp;<a class="auto-link" href="http://www.techz.vn/C/tin-tuc-cong-nghe" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">tin tức</a>&nbsp;r&ograve; rỉ. Những h&igrave;nh ảnh vừa được Evleaks đăng tải tr&ecirc;n trang Twitter của m&igrave;nh đ&atilde; cho thấy tất cả c&aacute;c g&oacute;c độ kh&aacute;c nhau của LG G3.</p>\r\n\r\n<p><img alt="LG G3 đã lộ diện hoàn toàn: Đâu còn gì để mất" src="http://cache.media.techz.vn/upload/2014/05/19/image-1400472214-lg-g3-1.jpg" style="background-color:transparent; border:0px; display:block; height:auto; margin:0px auto; max-width:100%; outline:0px; padding:0px; vertical-align:baseline" title="LG G3 đã lộ diện hoàn toàn: Đâu còn gì để mất" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Theo đ&oacute; đ&acirc;y sẽ l&agrave; một bản n&acirc;ng cấp của&nbsp;<a class="auto-link" href="http://www.techz.vn/topic/lg-g2-148.html" style="border: 0px; outline: 0px; vertical-align: baseline; background-color: transparent; margin: 0px; padding: 0px; text-decoration: none; color: rgb(41, 41, 41);" target="_blank">G2</a>&nbsp;với kh&aacute; nhiều sự thay đổi về ngoại h&igrave;nh. Vẫn l&agrave; một chiếc điện thoại với viền m&agrave;n h&igrave;nh mỏng như trước kia, tuy nhi&ecirc;n LG G3 sẽ c&oacute; c&aacute;c cạnh được thiết kế v&agrave; cắt gọt một c&aacute;ch tỉ mỉ hơn, đồng thời bộ ph&iacute;m nguồn v&agrave; cặp ph&iacute;m tăng giảm &acirc;m lượng ở mặt sau cũng được cải tiến kh&aacute; nhiều về kiểu d&aacute;ng v&agrave; ngoại h&igrave;nh so với trước. B&ecirc;n cạnh đ&oacute;, ch&uacute;ng ta cũng thấy sự xuất hiện của một phi&ecirc;n bản với m&agrave;u v&agrave;ng champagne, m&agrave;u sắc đ&atilde; trở th&agrave;nh xu thế chủ đạo cho năm 2014 n&agrave;y. G3 sẽ được ra mắt ngay cuối th&aacute;ng n&agrave;y trong một sự kiện được tổ chức v&agrave;o ng&agrave;y 27/5. H&atilde;y theo d&otilde;i Techz.vn thường xuy&ecirc;n để nhận được những th&ocirc;ng tin mới nhất v&agrave; cập nhật nhất về sản phẩm.</p>\r\n', '20140520084020image-1400472196-LG-G3-2.jpg', '2014-05-20', 'Techz', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_hdct`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`madm`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahd`);

--
-- Indexes for table `hotro`
--
ALTER TABLE `hotro`
  ADD PRIMARY KEY (`idht`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`idnd`);

--
-- Indexes for table `nhasx`
--
ALTER TABLE `nhasx`
  ADD PRIMARY KEY (`idnsx`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idsp`);

--
-- Indexes for table `tintuc`
--
ALTER TABLE `tintuc`
  ADD PRIMARY KEY (`matt`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_hdct` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `madm` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahd` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `hotro`
--
ALTER TABLE `hotro`
  MODIFY `idht` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `idnd` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `nhasx`
--
ALTER TABLE `nhasx`
  MODIFY `idnsx` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idsp` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `tintuc`
--
ALTER TABLE `tintuc`
  MODIFY `matt` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
