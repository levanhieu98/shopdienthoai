-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 21, 2019 lúc 04:23 PM
-- Phiên bản máy phục vụ: 10.1.40-MariaDB
-- Phiên bản PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `idBinhLuan` int(11) NOT NULL,
  `hoTen` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `tieuDe` varchar(255) DEFAULT NULL,
  `noiDung` varchar(255) DEFAULT NULL,
  `ngayBinhLuan` date DEFAULT NULL,
  `kiemDuyet` tinyint(4) DEFAULT NULL,
  `idDT` int(11) NOT NULL,
  `idKH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`idBinhLuan`, `hoTen`, `email`, `tieuDe`, `noiDung`, `ngayBinhLuan`, `kiemDuyet`, `idDT`, `idKH`) VALUES
(1, 'Lê Văn HIểu', 'lehieu1142@gmail.com', 'bình luận', 'máy pin trâu có khi 3 ngày , sử dụng quá ok , rất ngầu và sướng tay. không hối hận khi mua', '2019-11-12', 1, 51, 1),
(2, 'Lê Thị Phơ Ni', 'aaa@gmail.com', 'Bình Luận', 'máy pin trâu có khi 3 ngày , sử dụng quá ok , rất ngầu và sướng tay. không hối hận khi mua', '2019-11-22', 1, 11, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dienthoai`
--

CREATE TABLE `dienthoai` (
  `idDT` int(11) NOT NULL,
  `tenDT` varchar(255) DEFAULT NULL,
  `moTa` varchar(255) DEFAULT NULL,
  `ngayCapNhap` date DEFAULT NULL,
  `gia` int(11) DEFAULT NULL,
  `giaKM` int(11) DEFAULT NULL,
  `ngayKM` date DEFAULT NULL,
  `ngayKT` date DEFAULT NULL,
  `urlHinh` varchar(255) DEFAULT NULL,
  `soLuongTonKho` int(11) DEFAULT NULL,
  `soLanMua` int(11) DEFAULT NULL,
  `anHien` int(11) DEFAULT NULL,
  `idNCC` int(11) NOT NULL,
  `idKho` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dienthoai`
--

INSERT INTO `dienthoai` (`idDT`, `tenDT`, `moTa`, `ngayCapNhap`, `gia`, `giaKM`, `ngayKM`, `ngayKT`, `urlHinh`, `soLuongTonKho`, `soLanMua`, `anHien`, `idNCC`, `idKho`) VALUES
(1, 'BlackBerry 8220 ', '    * Màn hình TFT, 65.536 màu, rộng 2.6 inches\r\n    * Hỗ trợ đa Sim: Không\r\n    * Máy ảnh Không có\r\n    * Đài FM tích hợp: Không\r\n    * Nghe nhạc: WMA, AAC+, MP3\r\n    * Xem Phim: AVI, 3GP, MP4, WMV\r\n    * Kết nối 3G: Không, Wifi Wi-Fi 802.11 b/g, GPS: Kh', '2019-10-15', 1450900, 1333333, '2019-10-23', '2019-11-22', 'images/BlackBerry 8220_1.jpg', 100, 84, 1, 4, 1),
(2, 'BlackBerry Torch 9800 ', '    * Thiết kế kiểu trượt thanh mảnh thời trang\r\n    * Máy ảnh 5.0 MP, hỗ trợ quay phim\r\n    * Máy nghe nhạc MP3/WMA/eAAC+/FlAC/OGG\r\n    * Mạng 3G với tốc độ truyền tải 384 Kbps\r\n    * Kết nối GPS, Wifi, Bluetooth, USB\r\n    * Chỉnh sửa văn bản (Word, Exce', '2019-10-23', 15359000, 14000000, '2019-10-18', '2019-10-31', 'images/BlackBerry_Torch_9800_b.jpg', 120, 23, 1, 4, 1),
(3, 'iPhone 4 ', '    * Màn hình TFT, 16 triệu màu, rộng 3.5 inches\r\n    * Hỗ trợ đa Sim: Không\r\n    * Máy ảnh 5.0 MP (2592 x 1944 pixels)\r\n    * Đài FM tích hợp: Không\r\n    * Nghe nhạc: MP3, WAV, AAC+, AAC++, WMA, AAC\r\n    * Xem Phim: MP4, 3GP, WMV\r\n    * Kết nối 3G: HSDP', '2019-10-30', 1770900, 1699999, '2019-10-31', '2019-11-08', 'images/ip4.jpg', 199, 15, 1, 1, 2),
(4, 'Nokia N8 ', 'Thân máy, Pin BL-4D(1200mAh),tai nghe WH-102, sạc AC-15, cáp USB(CA-101D), bao da, sách hướng dẫn\r\n    * Hệ điều hành Symbian\r\n    * Máy ảnh 12 MP, máy ảnh phụ VGA\r\n    * Mạng 3G với HSDPA, 7.2 Mbps\r\n    * HSUPA, 5.76 Mbps\r\n    * Wi-Fi 802.11 b/g, UPnP te', '2019-10-11', 1149900, 1000000, '2019-10-31', '2019-11-27', 'images/Nokia_N8_bac.jpg', 100, 9, 1, 2, 3),
(5, 'Nokia N900 ', '    * Điện thoại truyền thông đa phương tiện\r\n    * Camera 5.0 MP, Camera phụ VGA\r\n    * Kết nối mạng 3.5G với tốc độ lên đến 10 Mbps\r\n    * Hỗ trợ A-GPS, OVI Maps\r\n    * Kết nối Wifi tốc độ cao, Bluetooth, USB\r\n    * Document viewer (Word, Excel, PowerPo', '2019-10-06', 9898000, 8999999, '2019-10-23', '2019-10-31', 'images/N900_b.jpg', 99, 56, 1, 2, 3),
(6, 'Nokia-5800', 'Hệ điều hành: Symbian Series 60, 5th\r\nĐộ phân giải: 360 x 640 pixels\r\nMàn hình rộng: 3.2 inches\r\nCamera sau: 3.15 MP\r\nRAM: 128 MB\r\nBộ nhớ trong ( Rom): 81 MB\r\nCamera trước: QVGA\r\nDung lượng pin: 1320 mAh', '2019-11-05', 499000, 499000, '0000-00-00', '0000-00-00', 'images/00000000000bNokia-5800.jpg', 100, 0, 1, 2, 3),
(7, 'Nokia_6303i', 'Danh bạ lưu tới 500 tên và mỗi tên có nhiều mục khác nhau\r\nLịch cải tiến vớ phần ghi chú giúp bạn sắp xếp công việc dễ dàng hơn.\r\nTính nắng Dự đoán văn bản ứng dụng cho tin nhắn nhắn (SMS), lịch, mục nhập WAP và việc cần làm trong ngày.\r\nTính nắng kết nối', '2019-11-05', 375000, 299999, '2019-11-19', '2019-11-30', 'images/00000000000Nokia_6303i_b.jpg', 99, 23, 1, 2, 3),
(8, 'Nokia-7 plus', 'Phần mềm hệ thống và ứng dụng được cài đặt sẵn sử dụng một phần đáng kể trong dung lượng bộ nhớ.\r\n\r\n2 Lưu trữ miễn phí hình ảnh có chất lượng cao, yêu cầu phải có tài khoản Google và kết nối internet.\r\n\r\n3 Pin có chu kỳ sạc lại giới hạn và công suất pin g', '2019-11-05', 2300000, 2300000, '0000-00-00', '0000-00-00', 'images/mNokia 7 - Copy.png', 250, 50, 1, 2, 3),
(9, 'OPPO_Neo_5s', 'IMEI.info: Device type:SmartphoneDesign:ClassicReleased:2015 r.DualSIM:YES iconSIM card size:Micro Sim, Nano SimGSM:YES icon850 900 1800 1900HSDPA:YES icon850 900 1900 2100 HSPA+LTE:YES iconLTE-FDD: 1800, 2100, 2600\r\nDimensions (H/L/W):131.9 x 65.5 x 8 mm', '2019-11-05', 2580000, 2400000, '2019-11-22', '2019-11-29', 'images/oppo-f9-.jpeg', 245, 25, 1, 7, 4),
(10, 'Iphone-7-plus', 'Màn hình:	LED-backlit IPS LCD, 5.5\", Retina HD\r\nHệ điều hành:	iOS 12\r\nCamera sau:	Chính 12 MP & Phụ 12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A10 Fusion 4 nhân 64-bit\r\nRAM:	3 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ SIM:\r\n1 Nano SIM, Hỗ trợ 4G\r\nHOTSIM Mobi Big 70 (3GB da', '2019-11-05', 4580000, 4400000, '2019-11-22', '2019-11-29', 'images/Iphone-7-plus - Copy.png', 245, 25, 1, 1, 2),
(11, 'iPhone-3', 'Màn hình:LED-backlit IPS LCD, 5.5\", Retina HDHệ điều hành:iOS 12Camera sau:Chính 12 MP & Phụ 12 MPCamera trước:7 MPCPU:Apple A10 Fusion 4 nhân 64-bit RAM:3 GBBộ nhớ trong:	32 GBThẻ SIM:1 Nano SIM, Hỗ trợ 4G\r\nHOTSIM Mobi Big 70 (3GB da', '2019-11-05', 180000, 180000, '0000-00-00', '0000-00-00', 'images/iPhone-3 - Copy.jpg', 245, 25, 1, 1, 2),
(12, 'iPhone-4', 'Màn hình:	LED-backlit IPS LCD, 5.5\", Retina HD\r\nHệ điều hành:	iOS 12\r\nCamera sau:	Chính 12 MP & Phụ 12 MP\r\nCamera trước:	7 MP\r\nCPU:	Apple A10 Fusion 4 nhân 64-bit\r\nRAM:	3 GB\r\nBộ nhớ trong:	32 GB\r\nThẻ SIM:\r\n1 Nano SIM, Hỗ trợ 4G\r\nHOTSIM Mobi Big 70 (3GB da', '2019-11-05', 299999, 249999, '2019-11-01', '2019-11-10', 'images/ip4s.jpg', 245, 25, 1, 1, 2),
(13, 'iPhone 2G ', '    * Màn hình TFT, 16 triệu màu, rộng 3.5 inches\r\n    * Hỗ trợ đa Sim: Không\r\n    * Máy ảnh 2.0 MP (1600x1200 pixels)\r\n    * Đài FM tích hợp: Không\r\n    * Nghe nhạc: AAC, MP3, eAAC+, AAC+, AAC++\r\n    * Xem Phim: MP4, 3GP\r\n    * Kết nối 3G: Không, Wifi Wi', '2019-11-05', 1000000, 1000000, '0000-00-00', '0000-00-00', 'images/bApple-iPhone0.jpg', 100, 15, 1, 1, 2),
(14, 'iPhone 3G ', '# Hỗ trợ đa Sim: Không\r\n# Máy ảnh 2.0 MP (1600x1200 pixels)\r\n# Đài FM tích hợp: Không\r\n# Nghe nhạc: WMA, AAC+, MP3, AAC\r\n# Xem Phim: AVI, MP4, 3GP\r\n# Kết nối 3G: Có, Wifi Wi-Fi 802.11 b/g, GPS: A-GPS, Bluetooth: Có\r\n# Ứng dụng văn phòng: Không ', '2019-11-05', 1500000, 1000000, '2019-11-05', '2019-11-14', 'images/iphone_3G_b.jpg', 300, 50, 1, 1, 2),
(15, 'BlackBerry Curve 8520 ', '    * Màn hình rộng và bàn phím QWERTY đầy đủ\r\n    * Camera 2.0 MP, hỗ trợ quay phim\r\n    * Máy nghe nhạc, xem phim nhiều định dạng\r\n    * Chức năng định vị GPS\r\n    * Kết nối Wifi tốc độ cao\r\n    * BlackBerry map \r\n\r\n', '2019-11-05', 6349000, 5349000, '2019-11-06', '2019-11-27', 'images/Blackberry_8520_b.jpg', 100, 15, 1, 4, 1),
(16, 'BlackBerry ', ' (Hàng sắp về hoặc đã hết hàng) \r\n    * Màn hình TFT, 65.536 màu, rộng 2.4 inches\r\n    * Hỗ trợ đa Sim: Không\r\n    * Máy ảnh Không có\r\n    * Đài FM tích hợp: Không\r\n    * Nghe nhạc: AAC, MP3\r\n    * Xem Phim: 3GP, MP4\r\n    * Kết nối 3G: Không, Wifi Wi-Fi 8', '2019-11-05', 5349000, 5349000, '0000-00-00', '0000-00-00', 'images/BlackBerry_1.jpg', 100, 15, 1, 4, 1),
(17, 'BlackBerry Dakota ', '\r\n    * Hệ điều hành BlackBerry 6.1\r\n    * Máy ảnh 5.0 MP (2592 x 1944 pixels)\r\n    * Nghe nhạc: MP3, WAV, WMA, eAAC+\r\n    * Xem Phim: H.263, H.264(MPEG4-AVC), MP4, WMV\r\n    * Kết nối 3G, Wi-Fi 802.11 b/g/n, A-GPS, Bluetooth V2.1 với A2DP\r\n    * Ứng dụng ', '2019-11-05', 4349000, 4000000, '2019-11-06', '2019-11-28', 'images/bb_dokato_b.jpg', 100, 15, 1, 4, 1),
(18, 'BlackBerry ', ' (Hàng sắp về hoặc đã hết hàng) \r\n    * Màn hình TFT, 65.536 màu, rộng 2.4 inches\r\n    * Hỗ trợ đa Sim: Không\r\n    * Máy ảnh Không có\r\n    * Đài FM tích hợp: Không\r\n    * Nghe nhạc: AAC, MP3\r\n    * Xem Phim: 3GP, MP4\r\n    * Kết nối 3G: Không, Wifi Wi-Fi 8', '2019-11-05', 5349000, 5249000, '0000-00-00', '0000-00-00', 'images/BlackBerry_1.jpg', 100, 15, 1, 4, 1),
(19, 'BlackBerry Dakota ', '\r\n    * Hệ điều hành BlackBerry 6.1\r\n    * Máy ảnh 5.0 MP (2592 x 1944 pixels)\r\n    * Nghe nhạc: MP3, WAV, WMA, eAAC+\r\n    * Xem Phim: H.263, H.264(MPEG4-AVC), MP4, WMV\r\n    * Kết nối 3G, Wi-Fi 802.11 b/g/n, A-GPS, Bluetooth V2.1 với A2DP\r\n    * Ứng dụng ', '2019-11-05', 4349000, 4299000, '2019-11-08', '2019-11-29', 'images/bb_dokato_b.jpg', 100, 15, 1, 4, 1),
(20, 'BlackBerry 9530 ', '\r\n       * Màn hình TFT, 65.536 màu, rộng -\r\n    * Hỗ trợ đa Sim: Không\r\n    * Máy ảnh Không có\r\n    * Đài FM tích hợp: Không\r\n    * Nghe nhạc: MP3\r\n    * Xem Phim: MP4\r\n    * Kết nối 3G: Có, Wifi Không, GPS: A-GPS, Bluetooth: Có\r\n    * Ứng dụng văn phòng', '2019-11-05', 3349000, 3149000, '0000-00-00', '0000-00-00', 'images/BlackBerry 9530_1.jpg', 100, 15, 1, 4, 1),
(21, 'BlackBerry 8220', '\r\n    * Hệ điều hành BlackBerry 6.1\r\n    * Máy ảnh 5.0 MP (2592 x 1944 pixels)\r\n    * Nghe nhạc: MP3, WAV, WMA, eAAC+\r\n    * Xem Phim: H.263, H.264(MPEG4-AVC), MP4, WMV\r\n    * Kết nối 3G, Wi-Fi 802.11 b/g/n, A-GPS, Bluetooth V2.1 với A2DP\r\n    * Ứng dụng ', '2019-11-05', 7349000, 6349000, '2019-11-13', '2019-11-29', 'images/BlackBerry 8220_1.jpg', 100, 15, 1, 4, 1),
(22, 'BlackBerry 8110 ', '\r\n    * Hệ điều hành BlackBerry 6.1\r\n    * Máy ảnh 5.0 MP (2592 x 1944 pixels)\r\n    * Nghe nhạc: MP3, WAV, WMA, eAAC+\r\n    * Xem Phim: H.263, H.264(MPEG4-AVC), MP4, WMV\r\n    * Kết nối 3G, Wi-Fi 802.11 b/g/n, A-GPS, Bluetooth V2.1 với A2DP\r\n    * Ứng dụng ', '2019-11-05', 7349000, 6349000, '0000-00-00', '0000-00-00', 'images/bSE-W595.jpg', 100, 15, 1, 4, 1),
(23, 'lgv30mm', '    * Màn hình cảm ứng rộng 3.2 inches\r\n    * CPU: ARM 11, 434 MHz processor, RAM 128 MB\r\n    * Camera 5 MP, 2592x1944 pixels, ống kính Carl Zeiss\r\n    * Camera phụ VGA hỗ trợ thực hiện VideoCall\r\n    * Máy nghe nhạc xem phim nhiều định dạng\r\n    * Mạng 3', '2019-11-05', 3750000, 2400000, '2019-11-06', '2019-11-29', 'images/lgv30mm - Copy.jpg', 100, 15, 1, 6, 5),
(24, 'LG-Optimus-L9', '   \r\n * Màn hình cảm ứng rộng 3.2 inches\r\n    \r\n* CPU: ARM 11, 434 MHz processor, RAM 128 MB\r\n \r\n * Camera 5 MP, 2592x1944 pixels, ống kính Carl Zeiss\r\n \r\n* Camera phụ VGA hỗ trợ thực hiện VideoCall\r\n    * Máy nghe nhạc xem phim nhiều định dạng\r\n \r\n* Mạng', '2019-11-05', 2750000, 2400000, '2019-11-06', '2019-11-29', 'images/LG-Optimus-L9-P760-l (1).jpg', 100, 15, 1, 6, 5),
(25, 'LG_stylus-2-k520', '   \r\n * Màn hình cảm ứng rộng 3.2 inches\r\n    \r\n* CPU: ARM 11, 434 MHz processor, RAM 128 MB\r\n \r\n * Camera 5 MP, 2592x1944 pixels, ống kính Carl Zeiss\r\n \r\n* Camera phụ VGA hỗ trợ thực hiện VideoCall\r\n    * Máy nghe nhạc xem phim nhiều định dạng\r\n \r\n* Mạng', '2019-11-05', 1750000, 1400000, '2019-11-08', '2019-11-20', 'images/lg-stylus-2-k520.jpg', 100, 15, 1, 6, 5),
(26, 'LG_V30m', '   \r\n * Màn hình cảm ứng rộng 3.2 inches\r\n    \r\n* CPU: ARM 11, 434 MHz processor, RAM 128 MB\r\n \r\n * Camera 5 MP, 2592x1944 pixels, ống kính Carl Zeiss\r\n \r\n* Camera phụ VGA hỗ trợ thực hiện VideoCall\r\n    * Máy nghe nhạc xem phim nhiều định dạng\r\n \r\n* Mạng', '2019-11-05', 3750000, 4400000, '2019-11-01', '2019-11-20', 'images/LG1.jpg', 100, 15, 1, 6, 5),
(27, 'LG-GT540', '   \r\n * Màn hình cảm ứng rộng 3.2 inches\r\n    \r\n* CPU: ARM 11, 434 MHz processor, RAM 128 MB\r\n \r\n * Camera 5 MP, 2592x1944 pixels, ống kính Carl Zeiss\r\n \r\n* Camera phụ VGA hỗ trợ thực hiện VideoCall\r\n    * Máy nghe nhạc xem phim nhiều định dạng\r\n \r\n* Mạng', '2019-11-05', 750000, 400000, '2019-11-01', '2019-11-20', 'images/LG.jpg', 100, 15, 1, 6, 5),
(28, 'LG-GS290', '   \r\n * Màn hình cảm ứng rộng 3.2 inches\r\n    \r\n* CPU: ARM 11, 434 MHz processor, RAM 128 MB\r\n \r\n * Camera 5 MP, 2592x1944 pixels, ống kính Carl Zeiss\r\n \r\n* Camera phụ VGA hỗ trợ thực hiện VideoCall\r\n    * Máy nghe nhạc xem phim nhiều định dạng\r\n \r\n* Mạng', '2019-11-05', 550000, 400000, '2019-11-01', '2019-11-20', 'images/LG-GS290_b.jpg', 100, 15, 1, 6, 5),
(29, 'LG_GW305', '   \r\n * Màn hình cảm ứng rộng 3.2 inches\r\n    \r\n* CPU: ARM 11, 434 MHz processor, RAM 128 MB\r\n \r\n * Camera 5 MP, 2592x1944 pixels, ống kính Carl Zeiss\r\n \r\n* Camera phụ VGA hỗ trợ thực hiện VideoCall\r\n    * Máy nghe nhạc xem phim nhiều định dạng\r\n \r\n* Mạng', '2019-11-05', 950000, 9400000, '2019-11-01', '2019-11-20', 'images/LG_GW305_b.jpg', 100, 15, 1, 6, 5),
(30, 'LG_C310', '   \r\n * Màn hình cảm ứng rộng 3.2 inches\r\n    \r\n* CPU: ARM 11, 434 MHz processor, RAM 128 MB\r\n \r\n * Camera 5 MP, 2592x1944 pixels, ống kính Carl Zeiss\r\n \r\n* Camera phụ VGA hỗ trợ thực hiện VideoCall\r\n    * Máy nghe nhạc xem phim nhiều định dạng\r\n \r\n* Mạng', '2019-11-05', 650000, 534900, '0000-00-00', '0000-00-00', 'images/LG_C310_b.jpg', 100, 15, 1, 6, 5),
(31, 'LG_BL40', '   \r\n * Màn hình cảm ứng rộng 3.2 inches\r\n    \r\n* CPU: ARM 11, 434 MHz processor, RAM 128 MB\r\n \r\n * Camera 5 MP, 2592x1944 pixels, ống kính Carl Zeiss\r\n \r\n* Camera phụ VGA hỗ trợ thực hiện VideoCall\r\n    * Máy nghe nhạc xem phim nhiều định dạng\r\n \r\n* Mạng', '2019-11-05', 2650000, 2650000, '0000-00-00', '0000-00-00', 'images/LG_BL40_b.jpg', 100, 15, 1, 6, 5),
(32, 'LG_GS500', '   \r\n * Màn hình cảm ứng rộng 3.2 inches\r\n    \r\n* CPU: ARM 11, 434 MHz processor, RAM 128 MB\r\n \r\n * Camera 5 MP, 2592x1944 pixels, ống kính Carl Zeiss\r\n \r\n* Camera phụ VGA hỗ trợ thực hiện VideoCall\r\n    * Máy nghe nhạc xem phim nhiều định dạng\r\n \r\n* Mạng', '2019-11-05', 350000, 350000, '0000-00-00', '0000-00-00', 'images/LG_GS500_b.jpg', 100, 15, 1, 6, 5),
(33, 'Samsung S3500 ', '    * Thiết kế trượt thời trang\r\n    * Màn hình 16 triệu màu\r\n    * Camera 2.0 MP, hỗ trợ quay phim\r\n    * Máy nghe nhạc nhiều định dạng\r\n    * Chế độ giả lập cuộc gọi ản\r\n    * Kết nối Bluetooth, USB, đài FM \r\n\r\n', '2019-11-13', 1999000, 1999000, '0000-00-00', '0000-00-00', 'images/dellstreak_bb.jpg', 100, 0, 1, 3, 6),
(34, 'Samsung C3200 Monte Bar ', '    * Thiết kế thời trang với kiểu dáng lạ mắt\r\n    * Máy ảnh 2.0 MP, hỗ trợ quay phim\r\n    * Máy nghe nhạc MP3/WMA/eAAC+, xem phim MP4, 3GP\r\n    * Đài FM tích hợp\r\n    * Kết nối Bluetooth, USB \r\n\r\n', '2019-10-11', 1699000, 1599000, '2019-11-18', '2019-11-28', 'images/N86_b.jpg', 100, 50, 1, 3, 6),
(35, '0Samsung_C3200_1.jpg', '    * Màn hình cảm ứng rộng 2.4 inches\r\n    * Máy ảnh 1.3 MP, hỗ trợ quay phim\r\n    * Máy nghe nhạc MP3/WMA/eAAC+\r\n    * Đài FM tích hợp, jack tai nghe 3.5mm\r\n    * Kết nối Bluetooth, USB, GPRS \r\n\r\n', '2019-10-15', 1679000, 1679000, '0000-00-00', '0000-00-00', 'images/Samsung_C3300_b.jpg', 100, 15, 1, 3, 6),
(36, 'Samsung E2530 ', '    * Thiết kế nắp gập thời trang\r\n    * Máy ảnh 1.3 MP, hỗ trợ quay phim\r\n    * Máy nghe nhạc MP3\r\n    * Kết nối Bluetooth, USB, GPRS \r\n\r\na', '2019-10-11', 1589000, 1389000, '2019-11-13', '2019-11-20', 'images/samsung_e2530_b.jpg', 100, 50, 1, 3, 6),
(37, 'Samsung E2550 Monte Slider ', '    * Kiểu dáng trượt thời trang\r\n    * Máy ảnh 1.3 MP, hỗ trợ quay phim\r\n    * Máy nghe nhạc MP3/WMA/eAAC+\r\n    * Đài FM tích hợp\r\n    * Kết nối Bluetooth, USB \r\n\r\n', '2019-11-05', 1519000, 1367100, '2019-11-06', '2019-11-14', 'images/Samsung_E2550_b.jpg', 100, 15, 1, 3, 6),
(38, 'Samsung C3053 ', '    * Kiểu trượt thời trang\r\n    * Camera VGA, có chế độ chụp panorama\r\n    * Hỗ trợ thẻ nhớ ngoài\r\n    * Máy nghe nhạc MP3, với công nghệ âm thanh 3D\r\n    * Kết nối USB, Bluetooth\r\n    * Đài FM với chức năng ghi âm \r\n\r\n', '2019-11-06', 1359000, 1291050, '2019-11-04', '2019-11-15', 'images/motorola-ex300.jpg', 100, 50, 1, 3, 6),
(39, 'HTC TOUCH PRO2', 'Công năng với Windows Mobile 6.1® Professional.\r\nHSDPA/WCDMA cùng với kết nối GSM đa băng tầng, GPRS, EDGE .\r\nMàn hình TFT-LCD cảm ứng chạm 2.8 inch với độ phân giải VGA.\r\nGiao diện TouchFlo™ 3D thân thiện cho các thao tác trên màn hình cảm ứng.\r\nCamera 3', '2019-11-06', 9989000, 9689330, '2019-11-13', '2019-11-22', 'images/HTC Touch pro2_1.jpg', 100, 10, 1, 8, 7),
(40, 'SONY ERICSSON SATIO U1', 'Điện thoại cảm ứng màn hình rộng\r\nMáy ảnh12 MP, camera phụ VGA thực hiện Videocall\r\nMáy nghe nhạc MP3/WMA/WAV/RA/AAC/M4A\r\nXem phim WMV/RV/MP4/3GP\r\nKết nối 3G, GPS, Wifi, Bluetooth\r\nĐài FM\r\nOut-Tivi, Google map', '2019-11-05', 9989000, 9989000, '0000-00-00', '0000-00-00', 'images/U1_satio_b.jpg', 100, 12, 1, 9, 8),
(41, 'HTC ARIA', 'Hệ điều hành Android 2.1\r\nMáy ảnh 5.0 MP, lấy nét tự động\r\nMạng 3G với tốc độ truyền tải 7.2 Mbps\r\nKết nối Wifi, GPS, Bluetooth\r\nGoogle Search, Maps, Gmail\r\nYouTube, Google Talk, Picasa integration', '2019-11-07', 9949000, 9009000, '0000-00-00', '0000-00-00', 'images/aria_b.jpg', 100, 14, 1, 8, 7),
(42, 'SAMSUNG S8530 WAVE II', 'Hệ điều hành Bada 1.2\r\nMáy ảnh 5.0 MP, hỗ trợ máy ảnh phụ\r\nQuay phim chuẩn HD\r\nMạng 3G với tốc độ truyền tải 7.2 Mbps\r\nCông nghệ âm thanh DNSe (Digital Natural Sound Engine)\r\nKết nối Wifi, Tivi, Bluetooth,..', '2019-11-13', 9479000, 9229000, '2019-11-04', '2019-11-14', 'images/samsung_s8530_b.jpg', 100, 15, 1, 3, 6),
(43, 'HTC HERO', 'Kết nối 3.5G tốc độ cao và công nghệ Wi-Fi\r\nTăng khả năng duyệt web với việc mở nhiều cửa sổ cùng lúc và tìm từ khoá ngay trên trang\r\nLuôn giữ liên lạc với văn phòng cùng Microsoft Exchange ActiveSync®\r\nTrình quản lý ứng dụng - SlideME với khả năng truy c', '2019-11-20', 8999000, 8000000, '0000-00-00', '0000-00-00', 'images/HTC Hero_1.jpg', 100, 50, 1, 8, 7),
(44, 'HTC HD7 ', '    * Hệ điều hành Microsoft Windows Phone 7\r\n    * Màn hình Super Clear LCD 16 triệu màu, rộng 4.3 inches\r\n    * Máy ảnh 5.0 MP (2592 x 1944 pixels)\r\n    * Nghe nhạc: MP3, WMA, WAV, eAAC+\r\n    * Xem Phim: 3GP, MP4, H.264(MPEG4-AVC), H.263, WMV\r\n    * Kết', '2019-11-13', 14990000, 13990000, '0000-00-00', '0000-00-00', 'images/htc-hd7_b.jpg', 100, 0, 1, 8, 7),
(45, 'HTC TOUCH CRUISE T4242', 'Giao diện sử dụng HTC TouchFLO 3D trực quan và thân thiện với đầu ngón tay\r\nPocket Office (Word, Excel, PowerPoint, PDF viewer) và Push Email\r\nLướt web trên tốc độ băng thông rộng với WiFi hoặc HSDPA lên đến 7.2Mbps\r\nChức năng định vị GPS\r\nChế độ NaviPane', '2019-11-05', 8888000, 8443600, '2019-11-08', '2019-11-29', 'images/htc_desire_hd_b.jpg', 100, 1, 1, 8, 7),
(46, 'Sony Ericsson XPERIA X10 ', '    * Màn hình cảm ứng rộng 4.0 inches\r\n    * Máy ảnh 8.1 MP, hỗ trợ LED Flash\r\n    * Bộ nhớ trọng 1GB, RAM 384MB\r\n    * CPU: Qualcomm QSD8250 Snapdragon 1 GHz processor\r\n    * Mạng 3G tốc độ truyền lên đến 10.2 Mbps\r\n    * Kết nối internet với Wifi tốc đ', '2019-11-14', 12989000, 12339550, '2019-11-18', '2019-11-30', 'images/sony_x10_b.jpg', 100, 34, 1, 9, 8),
(47, 'HTC WILDFIRE', 'Hệ điều hành Android 2.1 (Eclair)\r\nMáy ảnh 5.0 MP, hỗ trợ LED flash\r\nMạng 3G với tốc độ truyền tải 7.2 Mbps\r\nKết nối Wifi, chức năng định vị GPS\r\nPhím tìm kiếm chuyên dụng\r\nGoogle Search, Maps, Gmail, YouTube, Google Talk, Picasa\r\nFacebook, Flickr, Twitte', '2019-11-06', 6989000, 6989000, '0000-00-00', '0000-00-00', 'images/wildfire_b.jpg', 100, 23, 1, 8, 7),
(48, 'HTC Desire Z ', '    * Hệ điều hành Android 2.2 Froyo\r\n    * Màn hình cảm ứng đa điểm, rộng 3.7 inches\r\n    * Máy ảnh 5 MP, hỗ trợ LED flash\r\n    * Mạng 3G với HSDPA, 7.2 Mbps\r\n    * HSUPA, 2 Mbps\r\n    * Kết nối Wifi, Bluetooth, A-GPS \r\n\r\n', '2011-11-02', 13699000, 12699000, '2019-11-21', '2019-11-30', 'images/htc_desirez_2.png', 100, 22, 1, 8, 7),
(49, 'LG GD880 MINI', 'Màn hình cảm ứng rộng 3.2 inches\r\nMáy ảnh 5.0 MP, chức năng nhận diện khuôn mặt\r\nÂm thanh vòm Dolby Mobile\r\nMạng 3G với HSDPA 7.2 Mbps\r\nChức năng định vị toàn cầu GPS\r\nKết nối Wifi, Bluetooth', '2019-11-14', 6599000, 5939100, '2019-11-20', '2019-11-29', 'images/GD880_b.jpg', 100, 1, 1, 6, 6),
(50, 'NOKIA X6 8GB', 'Màn hình cảm ứng rộng 3.2 inches\r\nCPU: ARM 11, 434 MHz processor, RAM 128 MB\r\nCamera 5 MP, ống kính Carl Zeiss\r\nCamera phụ VGA hỗ trợ thực hiện VideoCall\r\nMạng 3G tốc độ truyền tải lên đến 3.6 Mbps\r\nChức năng định vị GPS tích hợp, Ovi Maps 3.0\r\nTV-out, Fl', '2011-11-02', 6379000, 6255530, '2019-11-06', '2019-11-14', 'images/Nokia_X6-8G_b.jpg', 100, 0, 1, 2, 3),
(51, 'HTC HD2 ', '    * Hệ điều hành Windows Mobile 6.5 Professional\r\n    * CPU: Qualcomm Snapdragon QSD2850, 1 GHz processor\r\n    * 448 MB RAM, 512 MB ROM\r\n    * Máy nghe nhạc MP3/WAV/WMA/eAAC+\r\n    * Xem phim AVI(DiVX/XviD)/MP4/WMV/H.264/H.263\r\n    * Facebook and Twitter', '2019-11-06', 12900000, 6989000, '2019-11-30', '2019-12-17', 'images/HTC_HD2_b.jpg', 100, 0, 1, 2, 7),
(52, 'SONY ERICSSON XPERIA X8', 'Hệ điều hành Android\r\nMáy ảnh 3.2 MP, hỗ trợ quay phim\r\nMáy nghe nhạc MP3/eAAC+/WMA/WAV\r\nMạng 3G, kết nối Wifi, Bluetooth, USB\r\nĐài FM tích hợp, jack tai nghe 3.5mm\r\nGoogle Search, Maps, Gmail, YouTube, Calendar, Google Talk\r\nXem file văn bản', '2019-10-23', 5889000, 5300100, '2019-11-30', '2019-12-17', 'images/Sony_X8_bbb.jpg', 100, 15, 1, 9, 8),
(53, 'Sony Ericsson W205 ', '    * Điện thoại nghe nhạc thời trang\r\n    * Camera 1.3 MP, hỗ trợ quay phim\r\n    * Máy nghe nhạc/xem phim MP3, AAC, MP4, 3GP\r\n    * Đài FM\r\n    * Kết nối USB, Bluetooth, GPRS \r\n\r\n', '2011-11-02', 1749000, 1749000, '2019-11-30', '2019-12-17', 'images/w205_b.jpg', 100, 1, 1, 9, 8),
(54, 'SONY ERICSSON W20I ZYLO', 'Máy nghe nhạc walkman chuyên nghiệp\r\nMáy ảnh 3.2 MP, hỗ trợ quay phim\r\nMáy nghe nhạc FLAC/MP3/AAC++/WAV với Walkman 4.0\r\nĐài FM tích hợp\r\nMạng 3G với HSDPA, 7.2 Mbps\r\nHSUPA, 2 Mbps\r\nKết nối Bluetooth, GPS', '2019-11-06', 3589000, 2599999, '2019-11-13', '2019-11-29', 'images/SE_zylo_b.jpg', 100, 1, 1, 9, 8),
(55, 'SONY ERICSSON SPIRO W100I', 'SONY ERICSSON SPIRO W100I', '2019-11-05', 2389000, 2389000, '2019-11-13', '2019-11-13', 'images/SE_Spiro_b.jpg', 100, 12, 1, 9, 8),
(56, 'Vertu Diamond ', '- Độ đàn hồi độc đáo\r\n- Màn hình bằng đá sarphia quý hiếm\r\n- Bàn phím hoàn hảo đến từng chi tiết\r\n- Vỏ ngoài quý giá\r\n- Từ điển T9 đoán trước văn bản nhập\r\n- Lịch\r\n- Máy tính\r\n- Chức năng ghi âm\r\n- Loa thoại rảnh tay (Handsfree)', '2019-11-14', 43000000, 35890000, '2019-11-13', '2019-11-13', 'images/bVertu-Diamond.jpg', 100, 0, 1, 5, 9),
(57, 'Vertu Ascent ', '- Độ đàn hồi độc đáo\r\n- Màn hình bằng đá sarphia quý hiếm\r\n- Bàn phím hoàn hảo đến từng chi tiết\r\n- Vỏ ngoài quý giá\r\n- Từ điển T9 đoán trước văn bản nhập\r\n- Lịch\r\n- Máy tính\r\n- Chức năng quay số khẩu lệnh\r\n- Loa thoại rảnh tay (Handsfree) ', '2019-11-05', 80000000, 75999999, '2019-11-14', '2019-11-21', 'images/bVertu-Ascent.jpg', 100, 15, 1, 5, 9),
(58, 'SONY ERICSSON AINO U10', 'Thiết kế trượt hiện đại\r\nCamera 8.1 MP, hỗ trợ quay phim VGA@30fps\r\nKết nối 3G với tốc độ truyền dữ liệu 7.2Mb\r\nChức năng định vị toàn cầu GPS, Google Maps\r\nDuyệt internet tốc độ cao với Wifi\r\nMáy nghe nhạc, đài FM\r\nRemote play for Playstation 3\r\nBluetoot', '2019-11-05', 10989000, 10000000, '2019-11-14', '2019-11-21', 'images/sony_aino_b.jpg', 100, 22, 1, 9, 8),
(59, 'SONY ERICSSON XPERIA X2', 'Kiểu trượt với bàn phím QWERTY đầy đủ,\r\nHệ điều hành Windows Mobile 6.5 Professional\r\n256 MB RAM, 512 MB ROM\r\nCamera 8.0 MP, LED flash\r\nCamera phụ\r\nMáy nghe nhạc, xem phim nhiều định dạng MP3/WAV/eAAC+/WMA\r\nChức năng Out Tivi\r\nPocket Office (Word, Excel, ', '2019-11-06', 8799000, 5939100, '2019-11-19', '2019-11-26', 'images/SE_X2_b.jpg', 100, 1, 1, 9, 8),
(60, 'SONY ERICSSON VIVAZ', 'Màn hình cảm ứng rộng 3.2 inches\r\nMáy ảnh 8.0 MP, LED flash\r\nMáy nghe nhạc, xem phim nhiều định dạng\r\nMạng 3G với tốc độ truyền tải 10.2 Mbps\r\nKết nối internet với tốc độ cao\r\nTV out (VGA resolution)\r\nNhiều ứng dụng hỗ trợ (Google maps, Facebook, Picasa i', '2019-11-05', 7888000, 6255530, '2019-11-18', '2019-11-25', 'images/SE_Vivaz_b.jpg', 100, 12, 1, 9, 8),
(61, 'Vertu Signature', ' Vertu Signature  \r\n- Độ đàn hồi độc đáo\r\n- Màn hình bằng đá sarphia quý hiếm\r\n- Bàn phím hoàn hảo đến từng chi tiết\r\n- Vỏ ngoài quý giá\r\n- Từ điển T9 đoán trước văn bản nhập\r\n- Lịch\r\n- Máy tính\r\n- Loa thoại rảnh tay (Handsfree) ', '2019-11-06', 56000000, 54320000, '2019-11-18', '2019-11-30', 'images/bVertu-Signature.jpg', 100, 2, 1, 5, 9),
(62, 'Vertu Ascent White Special Edition ', ' Vertu Vertu Ascent White Special Edition  \r\n- Thi...', '2019-11-05', 50452000, 50452000, '2019-11-18', '2019-11-30', 'images/bVertu-Ascent-White-Special-edition.jpg', 100, 15, 1, 5, 9),
(63, 'SONY ERICSSON W995', 'Thiết kế ấn tượng với màn hình sáng\r\nCamera 8.1 MP, Tự động lấy nét, hỗ trợ flash\r\nMáy nghe nhạc với các nút bấm và giống chống lên để xem phim\r\nĐài FM với RDS\r\nKết nối 3G, Wifi, Bluetooth, USB\r\nChức năng định vị toàn cầu GPS\r\nChỉnh sửa hình ảnh, ứng dụng', '2019-11-05', 7189000, 6189000, '2019-11-20', '2019-11-27', 'images/00000000SonyericW995b_b.jpg', 100, 22, 1, 9, 8),
(64, 'SONY ERICSSON J20I HAZEL', 'Điện thoại thân thiện với môi trường\r\nMáy ảnh 5 MP...', '2019-11-06', 5089000, 4989000, '2019-11-20', '2019-11-27', 'images/j20i_b.jpg', 100, 1, 1, 9, 8),
(65, 'Vertu Constellation18 Carat ', ' Vertu Constellation18 Carat  \r\n- Ứng dụng Java MIDP 2.0\r\n- Thiết kế độc đáo, được trau chuốt kỹ lưỡng\r\n- Đồng bộ máy tính và làm Modem tốc độ cao.\r\n- Chức năng báo thức\r\n- Tích hợp sổ tay-lịch cao cấp\r\n- Bộ đóan trước ký tự đa ngôn ngữ\r\n- Hỗ trợ đa ngôn ', '2019-10-01', 72000000, 62555300, '2019-11-06', '2019-11-14', 'images/bVertuConstellation18.jpg', 100, 12, 1, 5, 9),
(66, 'SONY ERICSSON W980', 'Tận hưởng âm nhạc\r\nThiết kế nắp gập thời trang\r\nBộ nhớ trong 8 GB\r\nMáy nghe nhạc Walkman với các phím chơi nhạc chuyên dụng\r\nĐài FM với RDS\r\nMáy phát FM\r\nBộ điều khiển rung\r\nChức năng xem và chỉnh sửa hình ảnh', '2019-11-14', 4989000, 3989000, '2019-11-18', '2019-11-30', 'images/bsonyericsson-w9800.jpg', 100, 6, 1, 9, 8),
(67, 'Vertu Ascent 2010 ', ' Vertu Ascent 2010  \r\n- Vỏ titanium, nhôm, mặt kính saphia, da và cao su cao cấp\r\n- Máy ảnh 5.0 MP, hỗ trợ quay phim\r\n- Mạng 3G với HSDPA; HSUPA\r\n- Chức năng định vị toàn cầu GPS\r\n- Kết nối Bluetooth, USB, GPRS', '2019-11-05', 85745000, 75745000, '2019-11-22', '2019-11-29', 'images/Ascent_2010_b.jpg', 100, 23, 1, 5, 9),
(68, ' Vertu Constellation Satin brown', ' Vertu Constellation Satin brown  \r\n- Ứng dụng Java MIDP 2.0\r\n- Thiết kế độc đáo, được trau chuốt kỹ lưỡng\r\n- Đồng bộ máy tính và làm Modem tốc độ cao.\r\n- Chức năng báo thức\r\n- Tích hợp sổ tay-lịch cao cấp\r\n- Bộ đóan trước ký tự đa ngôn ngữ\r\n- Hỗ trợ đa n', '2019-10-11', 85236000, 75745000, '2019-11-13', '2019-11-22', 'images/bConstellationSatinbrown.jpg', 100, 4, 1, 5, 9),
(69, 'SONY ERICSSON T715', 'Thiết kế chắc chắn với dáng trượt thời trang\r\nKết ...', '2019-11-06', 4589000, 4289000, '2019-11-13', '2019-11-22', 'images/Sony Ericsson T715_1.jpg', 100, 1, 1, 9, 8),
(70, 'Vertu Signature S ', ' Vertu Signature S  \r\n- Kiểu dáng sành điệu\r\n- Bộ nhớ trong 4GB\r\n- Màn hình bằng kính sapphire\r\n- 4.75 carats ruby bearings được tích hợp trên phím\r\n- Hỗ trợ wifi, mạng 3G, Bluetooth', '2019-11-05', 164258000, 154258000, '2019-11-14', '2019-11-21', 'images/Vertu_SignS_b.jpg', 100, 12, 1, 5, 9),
(71, 'Vertu Constellation Ayxta ', ' Vertu Constellation Ayxta  \r\n- Thiết kế nắp gập thời trang\r\n- Máy ảnh 3.15 MP, hỗ trợ Flash\r\n- Máy nghe nhạc, xem phim MP3, MP4, AAC+\r\n- Chức năng định vị GPS, hỗ trợ google map', '2019-11-05', 100000000, 89999999, '2019-11-13', '2019-11-20', 'images/Vertu_Ayxta_b.jpg', 100, 6, 1, 5, 9),
(72, 'NOKIA X6 8GB', 'Màn hình cảm ứng rộng 3.2 inches\r\nCPU: ARM 11, 434 MHz processor, RAM 128 MB\r\nCamera 5 MP, ống kính Carl Zeiss\r\nCamera phụ VGA hỗ trợ thực hiện VideoCall\r\nMạng 3G tốc độ truyền tải lên đến 3.6 Mbps\r\nChức năng định vị GPS tích hợp, Ovi Maps 3.0\r\nTV-out, Fl', '2019-11-05', 6449000, 5999999, '2019-11-07', '2019-11-14', 'images/Nokia_X6-8G_b.jpg', 100, 0, 1, 2, 3),
(73, 'Nokia 2700 ', '    * Thiết kế dạng thanh thời trang\r\n    * Camera 2MP, hỗ trợ quay phim\r\n    * Nghe nhạc/xem phim MP3, Mp4, jack loa 3.5 mm\r\n    * Đài FM, Bluetooth, USB \r\n\r\n', '2019-11-05', 1769000, 1680550, '2019-11-18', '2019-11-28', 'images/Nokia 2700_1.jpg', 100, 4, 1, 2, 3),
(74, 'NOKIA E71', 'Màn hình rộng\r\nBàn phím QWERTY đầy đủ\r\nCamera 3.2 MP, video(VGA 22fps)\r\nChức năng định vị GPS\r\nỨng dụng văn phòng\r\nĐài FM', '2019-11-06', 5849000, 5673530, '2019-11-20', '2019-11-29', 'images/bNokia-E713.jpg', 100, 1, 1, 2, 3),
(75, 'NOKIA E66', 'Màn hinh rộng 2.4 inches\r\nCamera 3.2 MP, camera phụ VGA\r\nMáy nghe nhạc, xem phim nhiều định dạng\r\nWifi tốc độ cao\r\nĐầy đủ kết nối: bluetooth, 3.5G', '2019-11-05', 5459000, 5000000, '2019-11-28', '2019-12-10', 'images/bNokia-E660.jpg', 100, 1, 1, 2, 3),
(76, 'NOKIA E5', 'Hệ điều hành Symbian v9.3\r\nMáy ảnh 5.0 MP, hỗ trợ quay phim\r\nMáy nghe nhạc MP3/WAV/WMA/eAAC+\r\nĐài FM tích hợp, jack tai nghe 3.5mm\r\nMạng 3G với HSDPA 10.2 Mbps\r\nHSUPA 2.0 Mbps\r\nXem văn bản (Excel, PDF, Powerpoint, Word)\r\nFlash Lite v3.0', '2019-11-06', 4999000, 4849030, '2019-11-13', '2019-11-20', 'images/nokia_E5_bla.jpg', 100, 6, 1, 2, 3),
(77, 'iPhone-5 ', '# Hỗ trợ đa Sim: Không\r\n# Máy ảnh 2.0 MP (1600x1200 pixels)\r\n# Đài FM tích hợp: Không\r\n# Nghe nhạc: WMA, AAC+, MP3, AAC\r\n# Xem Phim: AVI, MP4, 3GP\r\n# Kết nối 3G: Có, Wifi Wi-Fi 802.11 b/g, GPS: A-GPS, Bluetooth: Có\r\n# Ứng dụng văn phòng: Không ', '2019-11-05', 6500000, 5500000, '2019-11-13', '2019-11-20', 'images/iPhone-5 - Copy.jpeg', 100, 25, 1, 1, 2),
(78, 'iphone6s', '    * Hệ điều hành iOS 4.2.5\r\n    * Máy ảnh 5.0 MP (2592 x 1944 pixels)\r\n    * Nghe nhạc: AAC, AAC+, AAC++, MP3, WMA, eAAC+\r\n    * Xem Phim: AVI, MP4, WMV\r\n    * Kết nối 3G CDMA, Wi-Fi 802.11 b/g/n, A-GPS, Bluetooth V2.1 với A2DP\r\n\r\n', '2019-11-05', 6349000, 5349000, '2019-11-08', '2019-11-14', 'images/iphone6s-plus-rsgld-sku-header - Copy.png', 100, 15, 1, 1, 2),
(79, 'iphone7', '    * Màn hình TFT, 16 triệu màu, rộng 3.5 inches\r\n    * Hỗ trợ đa Sim: Không\r\n    * Máy ảnh 5.0 MP (2592 x 1944 pixels)\r\n    * Đài FM tích hợp: Không\r\n    * Nghe nhạc: MP3, WAV, AAC+, AAC++, WMA, AAC\r\n    * Xem Phim: MP4, 3GP, WMV\r\n    * Kết nối 3G: HSDP', '2019-11-05', 15359000, 12910500, '2019-11-20', '2019-11-27', 'images/Iphone-7-plus - Copy.png', 100, 4, 1, 1, 2),
(80, 'iPhone-8', '    * Hệ điều hành iOS 4.2.5\r\n    * Máy ảnh 5.0 MP (2592 x 1944 pixels)\r\n    * Nghe nhạc: AAC, AAC+, AAC++, MP3, WMA, eAAC+\r\n    * Xem Phim: AVI, MP4, WMV\r\n    * Kết nối 3G CDMA, Wi-Fi 802.11 b/g/n, A-GPS, Bluetooth V2.1 với A2DP\r\n\r\n', '2019-11-05', 17709000, 16999999, '2019-11-22', '2019-11-29', 'images/iPhone-8- - Copy.jpg', 100, 15, 1, 1, 2),
(81, 'iPhone-sxmax', '    * Hệ điều hành iOS 4.2.5\r\n    * Máy ảnh 5.0 MP (2592 x 1944 pixels)\r\n    * Nghe nhạc: AAC, AAC+, AAC++, MP3, WMA, eAAC+\r\n    * Xem Phim: AVI, MP4, WMV\r\n    * Kết nối 3G CDMA, Wi-Fi 802.11 b/g/n, A-GPS, Bluetooth V2.1 với A2DP\r\n\r\n', '2019-11-05', 22000000, 21999999, '2019-11-18', '2019-11-28', 'images/ipxsmax - Copy.jpg', 100, 22, 1, 1, 2),
(82, 'OPPO_A39', '    * Kiểu trượt cảm ứng sành điệu\r\n    * Camera 5 MP, camera phụ thực hiện videocall\r\n    * Bộ nhớ 32 GB, RAM 128 MB\r\n    * Chức năng định vị GPS\r\n    * Chức năng Out-Tivi, jack tai nghe 3.5mm\r\n    * Pocket Office (Word, Excel, PowerPoint, PDF viewer)\r\n ', '2019-11-05', 3750000, 2349000, '2019-11-13', '2019-11-29', 'images/OPPO_A39_L_1.jpg', 100, 15, 1, 7, 4),
(83, 'OPPO_F1s', '    * Kiểu trượt cảm ứng sành điệu\r\n    * Camera 5 MP, camera phụ thực hiện videocall\r\n    * Bộ nhớ 32 GB, RAM 128 MB\r\n    * Chức năng định vị GPS\r\n    * Chức năng Out-Tivi, jack tai nghe 3.5mm\r\n    * Pocket Office (Word, Excel, PowerPoint, PDF viewer)\r\n ', '2019-11-05', 3999999, 3750000, '2019-11-13', '2019-11-29', 'images/OPPO_F1s_L_1.jpg', 100, 4, 1, 7, 4),
(84, 'Oppo-a37', '    * Thiết kế trượt thời trang với màn hình AMOLED 2.6 inch\r\n    * Camera 8.0 MP, Camera phụ VGA, đèn LED hỗ trợ, kính chống xước\r\n    * Hỗ trợ định dạng: MP3, WMA, AAC, AAC+, eAAC, eAAC+, MPEG-4, AVC (H.264), WMV, Flash video, 3GPP (H.263), RealVideo\r\n ', '2019-11-06', 4089000, 3999999, '2019-11-13', '2019-11-22', 'images/oppo_oppo-a37-.jpg', 100, 1, 1, 7, 4),
(85, 'Oppo-f9', '    * Kiểu trượt cảm ứng sành điệu\r\n    * Camera 5 MP, camera phụ thực hiện videocall\r\n    * Bộ nhớ 32 GB, RAM 128 MB\r\n    * Chức năng định vị GPS\r\n    * Chức năng Out-Tivi, jack tai nghe 3.5mm\r\n    * Pocket Office (Word, Excel, PowerPoint, PDF viewer)\r\n ', '2019-11-05', 3389000, 3000000, '2019-11-14', '2019-11-21', 'images/oppo-f9-.jpeg', 100, 1, 1, 7, 4),
(86, 'Oppo-r9', '    * Kiểu trượt cảm ứng sành điệu\r\n    * Camera 5 MP, camera phụ thực hiện videocall\r\n    * Bộ nhớ 32 GB, RAM 128 MB\r\n    * Chức năng định vị GPS\r\n    * Chức năng Out-Tivi, jack tai nghe 3.5mm\r\n    * Pocket Office (Word, Excel, PowerPoint, PDF viewer)\r\n ', '2019-11-06', 2999999, 2599999, '2019-11-14', '2019-11-29', 'images/oppo-r9.jpg', 100, 6, 1, 7, 4),
(87, 'Oppo-r15', '    * Thiết kế trượt thời trang với màn hình AMOLED 2.6 inch\r\n    * Camera 8.0 MP, Camera phụ VGA, đèn LED hỗ trợ, kính chống xước\r\n    * Hỗ trợ định dạng: MP3, WMA, AAC, AAC+, eAAC, eAAC+, MPEG-4, AVC (H.264), WMV, Flash video, 3GPP (H.263), RealVideo\r\n ', '2019-11-05', 3000000, 2599999, '2019-11-14', '2019-11-21', 'images/oppo-r15-trang-400x400.jpg', 100, 24, 1, 7, 4),
(88, 'Oppo-R7', '    * Thiết kế trượt thời trang với màn hình AMOLED 2.6 inch\r\n    * Camera 8.0 MP, Camera phụ VGA, đèn LED hỗ trợ, kính chống xước\r\n    * Hỗ trợ định dạng: MP3, WMA, AAC, AAC+, eAAC, eAAC+, MPEG-4, AVC (H.264), WMV, Flash video, 3GPP (H.263), RealVideo\r\n ', '2019-11-06', 1999999, 1800000, '2019-11-07', '2019-11-14', 'images/oppo-r15-trang-400x400.jpg', 100, 15, 1, 7, 4),
(89, 'OPPO-A71', '    * Thiết kế trượt thời trang với màn hình AMOLED 2.6 inch\r\n    * Camera 8.0 MP, Camera phụ VGA, đèn LED hỗ trợ, kính chống xước\r\n    * Hỗ trợ định dạng: MP3, WMA, AAC, AAC+, eAAC, eAAC+, MPEG-4, AVC (H.264), WMV, Flash video, 3GPP (H.263), RealVideo\r\n ', '2019-11-05', 2500000, 2300000, '2019-11-15', '2019-11-22', 'images/OPPO-A71.jpg', 100, 10, 1, 7, 4),
(90, 'OPPO_R7', '    * Thiết kế trượt thời trang với màn hình AMOLED 2.6 inch\r\n    * Camera 8.0 MP, Camera phụ VGA, đèn LED hỗ trợ, kính chống xước\r\n    * Hỗ trợ định dạng: MP3, WMA, AAC, AAC+, eAAC, eAAC+, MPEG-4, AVC (H.264), WMV, Flash video, 3GPP (H.263), RealVideo\r\n ', '2019-11-09', 3999999, 3500000, '2019-11-23', '2019-11-30', 'images/OPPO_R7_L_1.jpg', 100, 20, 1, 7, 4),
(91, 'OPPO-A5', '    * Thiết kế trượt thời trang với màn hình AMOLED 2.6 inch\r\n    * Camera 8.0 MP, Camera phụ VGA, đèn LED hỗ trợ, kính chống xước\r\n    * Hỗ trợ định dạng: MP3, WMA, AAC, AAC+, eAAC, eAAC+, MPEG-4, AVC (H.264), WMV, Flash video, 3GPP (H.263), RealVideo\r\n ', '2019-11-05', 4349000, 3999999, '2019-10-23', '2019-10-31', 'images/OPPO-A5.jpg', 100, 15, 1, 7, 4),
(92, 'htc1', '', '2019-12-10', 13232, 7777, '2019-12-23', '2019-12-10', 'images/', NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `idDH` int(11) NOT NULL,
  `thoiDiemDatHang` date DEFAULT NULL,
  `tenNguoiNhan` varchar(255) DEFAULT NULL,
  `diaChi` varchar(255) DEFAULT NULL,
  `tongTien` int(11) DEFAULT NULL,
  `tinhTrang` int(11) DEFAULT NULL,
  `ghiChu` varchar(255) DEFAULT NULL,
  `dtNguoiNhan` varchar(11) NOT NULL,
  `ptThanhToan` varchar(100) NOT NULL,
  `ptGiaoHang` varchar(100) NOT NULL,
  `idKH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`idDH`, `thoiDiemDatHang`, `tenNguoiNhan`, `diaChi`, `tongTien`, `tinhTrang`, `ghiChu`, `dtNguoiNhan`, `ptThanhToan`, `ptGiaoHang`, `idKH`) VALUES
(1, '2019-11-28', 'Hieu', '49Cle quang Kim', 9939099, 1, NULL, '01629254223', 'chuyenkhoan', 'giaotannha', 6),
(2, '2019-11-28', 'Hieu', '49Cle quang Kim', 4999999, 1, NULL, '01629254223', 'khinhanhang', 'chuyenphatnhanh', 6),
(4, '2019-11-28', 'Hieu', '49Cle quang Kim', 29298000, 1, NULL, '01629254223', 'chuyenkhoan', 'hoatoc', 6),
(5, '2019-12-11', 'HIeu', 'Tp.HCM', 2300000, 1, NULL, '01639838882', 'khinhanhang', 'chuyenphatnhanh', 6),
(6, '2019-12-19', 'HIeu', 'Tp.HCM', 6349000, 1, NULL, '01639838882', 'chuyenkhoan', 'hoatoc', 1),
(7, '2019-12-20', 'Hieus', 'Tp.HCM', 2349000, 1, NULL, '01639838882', 'khinhanhang', 'giaotannha', 1),
(8, '2019-12-21', 'HIeu', 'Tp.HCM', 43685000, 1, NULL, '01639838882', 'khinhanhang', 'giaotannha', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhangchitiet`
--

CREATE TABLE `donhangchitiet` (
  `idDT` int(11) NOT NULL,
  `idDH` int(11) NOT NULL,
  `tenDT` varchar(255) DEFAULT NULL,
  `gia` int(11) DEFAULT NULL,
  `soluong` int(11) NOT NULL,
  `idChiTiet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `donhangchitiet`
--

INSERT INTO `donhangchitiet` (`idDT`, `idDH`, `tenDT`, `gia`, `soluong`, `idChiTiet`) VALUES
(48, 4, 'HTC Desire Z ', 13699000, 2, 1),
(29, 4, 'LG_GW305', 950000, 2, 2),
(89, 5, 'OPPO-A71', 2300000, 1, 3),
(21, 6, 'BlackBerry 8220', 6349000, 1, 4),
(82, 7, 'OPPO_A39', 2349000, 1, 5),
(52, 8, 'SONY ERICSSON XPERIA X8', 5889000, 3, 6),
(41, 8, 'HTC ARIA', 9009000, 2, 7),
(43, 8, 'HTC HERO', 8000000, 1, 8);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giamgia`
--

CREATE TABLE `giamgia` (
  `idGiamGia` int(11) NOT NULL,
  `soLuongGiamGia` int(11) DEFAULT NULL,
  `idDT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `giamgia`
--

INSERT INTO `giamgia` (`idGiamGia`, `soLuongGiamGia`, `idDT`) VALUES
(1, 150, 18),
(2, 100, 39),
(3, 100, 87),
(4, 160, 50),
(9, 160, 33);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaohang`
--

CREATE TABLE `giaohang` (
  `idGH` int(11) NOT NULL,
  `tenNV` varchar(255) DEFAULT NULL,
  `sdtNV` int(11) DEFAULT NULL,
  `idDH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `giaohang`
--

INSERT INTO `giaohang` (`idGH`, `tenNV`, `sdtNV`, `idDH`) VALUES
(1, 'Lê Văn A', 968405017, 2),
(2, 'Lê Văn B', 163938882, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `idKH` int(11) NOT NULL,
  `hoTen` varchar(255) DEFAULT NULL,
  `matKhau` varchar(255) DEFAULT NULL,
  `diaChi` varchar(255) DEFAULT NULL,
  `dienThoai` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ngayDangKy` date DEFAULT NULL,
  `gioiTinh` tinyint(4) DEFAULT NULL,
  `kichHoat` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`idKH`, `hoTen`, `matKhau`, `diaChi`, `dienThoai`, `email`, `ngayDangKy`, `gioiTinh`, `kichHoat`) VALUES
(1, 'Lê Văn A', '25f9e794323b453885f5181f1b624d0b', 'Tp.HCM ', '111111', 'abc@gmail.com', '2019-10-18', 1, 1),
(2, 'Le Thị C', '25f9e794323b453885f5181f1b624d0b', 'Binh Đình', '114', 'bbb@gmail.com', '2019-10-20', 0, 1),
(3, 'Hieu', 'e10adc3949ba59abbe56e057f20f883e', '49c le quang kim', '1234567891', 'abcs@gmail.com', '2019-11-16', 1, 1),
(4, 'thuc', '2a76070a83a2472778d10aa775a68e9f', '49c le quang kim', '0329254223', 'vutru1142@gmail.com', '2019-11-16', 1, 1),
(5, 'Hieu', '25f9e794323b453885f5181f1b624d0b', '49c le quang kim', '0339838882', 'teo@gmail.com', '2019-11-20', 1, 1),
(6, 'thuc', '25f9e794323b453885f5181f1b624d0b', '49c le quang kim', '1234567891', 'lehieu1142@gmail.com', '2019-11-27', 1, 1),
(7, 'TTT', '96e79218965eb72c92a549dd5a330112', 'ss', '1111111111', 'ttt@gmail.com', '2019-12-02', 0, 1),
(8, 'Long', 'e10adc3949ba59abbe56e057f20f883e', 'Tp.HCM', '9999999999', 'long@gmail.com', '2019-12-19', 1, 1),
(9, 'manh', '25f9e794323b453885f5181f1b624d0b', 'Tp.HCM', '9999999999', 'manh@gmail.com', '2019-12-20', 0, 1),
(10, 'Long', '25f9e794323b453885f5181f1b624d0b', 'Tp.HCM', '9999999999', 'aaa@gmail.com', '2019-12-21', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khosp`
--

CREATE TABLE `khosp` (
  `idKho` int(11) NOT NULL,
  `tenKho` varchar(39) NOT NULL,
  `slBanDau` int(11) DEFAULT NULL,
  `slHienTai` int(10) DEFAULT NULL,
  `ngayNhapSL` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `khosp`
--

INSERT INTO `khosp` (`idKho`, `tenKho`, `slBanDau`, `slHienTai`, `ngayNhapSL`) VALUES
(1, 'BlackBery', 100, 100, '2019-10-31'),
(2, 'Iphone', 99, 80, '2019-10-24'),
(3, 'Nokia', 200, 199, '2019-10-18'),
(4, 'Oppo', 199, 150, '2019-10-19'),
(5, 'LG', 100, 100, '2019-10-31'),
(6, 'SamSung', 99, 80, '2019-10-24'),
(7, 'HTC', 200, 199, '2019-10-18'),
(8, 'Sony', 199, 150, '2019-10-19'),
(9, 'Vertu', 99, 80, '2019-11-29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `idNCC` int(11) NOT NULL,
  `tenNCC` varchar(255) DEFAULT NULL,
  `thuTu` int(11) DEFAULT NULL,
  `anHien` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`idNCC`, `tenNCC`, `thuTu`, `anHien`) VALUES
(1, 'Iphones', 1, 1),
(2, 'Nokia', 2, 1),
(3, 'SamSung', 3, 1),
(4, 'BlackBerry ', 4, 1),
(5, 'Vertu', 5, 1),
(6, 'LG', 6, 1),
(7, 'Oppo', 7, 1),
(8, 'HTC', 8, 1),
(9, 'Sony', 9, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhomkh`
--

CREATE TABLE `nhomkh` (
  `idNhom` int(11) NOT NULL,
  `tenNhom` varchar(255) DEFAULT NULL,
  `idKH` int(11) NOT NULL,
  `idGiamGia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quantri`
--

CREATE TABLE `quantri` (
  `idQT` int(11) NOT NULL,
  `tenQT` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `matKhau` int(11) DEFAULT NULL,
  `ngayDangKy` date DEFAULT NULL,
  `gioiTinh` tinyint(4) DEFAULT NULL,
  `kichHoat` tinyint(4) DEFAULT NULL,
  `diaChi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `quantri`
--

INSERT INTO `quantri` (`idQT`, `tenQT`, `email`, `matKhau`, `ngayDangKy`, `gioiTinh`, `kichHoat`, `diaChi`) VALUES
(17, 'Hiểu', 'admin@gmail.com', 25, '2019-12-14', 1, 1, '49c le quang kim'),
(18, 'Long', 'lehieu1142@gmail.com', 25, '2019-12-19', 1, 1, '49c le quang kim');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slider`
--

CREATE TABLE `slider` (
  `tenHinh` varchar(255) NOT NULL,
  `Hinh` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `slider`
--

INSERT INTO `slider` (`tenHinh`, `Hinh`) VALUES
('hinh1', 'slider/1.jpg'),
('hinh2', 'slider/2.jpg'),
('hinh3', 'slider/3.jpg'),
('hinh4', 'slider/4.jpg'),
('hinh5', 'slider/5.jpg'),
('hinh6', 'slider/6.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin`
--

CREATE TABLE `tin` (
  `idTin` int(11) NOT NULL,
  `tieuDe` text NOT NULL,
  `urlHinh` varchar(100) NOT NULL,
  `panner` varchar(100) NOT NULL,
  `baiViet` text NOT NULL,
  `tomTat` varchar(255) NOT NULL,
  `ngayDang` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tin`
--

INSERT INTO `tin` (`idTin`, `tieuDe`, `urlHinh`, `panner`, `baiViet`, `tomTat`, `ngayDang`) VALUES
(1, 'HTC Aria - ng&ocirc;i sao mới của smartphone Android', 'images/htc_desirez_2.png', 'images/4_HTC-Aria---ngoi-sao-moi-cua-smartphone-Android-tam.jpg', '<h2 style=\"color: #ff9501; padding: 5px 0px 3px 10px; margin: 0px; font-weight: bolder;\">HTC Aria - ng&ocirc;i sao mới của smartphone Android tầm trung</h2>\r\n<div class=\"news_description\" style=\"color: #606060; padding: 0px 0px 0px 10px; margin-bottom: 10px;\">Thiết kế đơn giản, chắc chắn m&agrave; tinh tế của HTC Aria được nhiều người đ&aacute;nh gi&aacute; cao ở ph&acirc;n kh&uacute;c điện thoại th&ocirc;ng minh nền tảng Android tầm trung.</div>\r\n<div class=\"new_pro_detail_contet\" style=\"padding: 5px 3px 5px 10px;\">\r\n<p style=\"margin: 14px 0px; line-height: 18px;\"><span class=\"PBody\" style=\"font-size: 11px;\">Về ngoại h&igrave;nh, HTC Aria chỉ kh&aacute;c HD Mini ở c&aacute;c n&uacute;t bấm b&ecirc;n dưới m&agrave;n h&igrave;nh. C&aacute;c n&uacute;t bấm tr&ecirc;n HD Mini được thay bằng c&aacute;c ph&iacute;m cảm ứng Home, Menu, Back, v&agrave; Search theo đ&uacute;ng phong c&aacute;ch của hệ điều h&agrave;nh Google Android. Ph&iacute;a giữa c&aacute;c ph&iacute;m tr&ecirc;n l&agrave; n&uacute;m điều hướng quang học giống như ở &ldquo;h&agrave;ng khủng&rdquo; Motorola Droid Incredible.</span></p>\r\n<p style=\"margin: 14px 0px; line-height: 18px;\"><span class=\"PBody\" style=\"font-size: 11px;\">HTC Aria c&oacute; m&agrave;n h&igrave;nh HVGA rộng 3,2 inch, độ ph&acirc;n giải 480 x 320 pixel hỗ trợ cảm ứng đa điểm. Trong ph&ograve;ng, m&agrave;n h&igrave;nh hiển thị s&aacute;ng r&otilde;, h&igrave;nh ảnh v&agrave; video đều sắc n&eacute;t, m&agrave;u sống động nhưng chưa thể so s&aacute;nh với c&aacute;c m&agrave;n h&igrave;nh độ ph&acirc;n giải cao như ở Google Nexus One. Ngo&agrave;i trời, dưới &aacute;nh s&aacute;ng trực tiếp, m&agrave;n h&igrave;nh gần như &ldquo;v&ocirc; dụng&rdquo; v&igrave; l&oacute;a do lớp gương phủ qu&aacute; b&oacute;ng.</span></p>\r\n<p style=\"margin: 14px 0px; line-height: 18px;\"><span class=\"PBody\" style=\"font-size: 11px;\"><img title=\"HTC Aria - ng&ocirc;i sao mới của smartphone Android tầm trung\" src=\"http://images.thegioididong.com/Files/2010/07/20/14392/2_HTC-Aria---ngoi-sao-moi-cua-smartphone-Android-tam.jpg\" alt=\"HTC Aria - ng&ocirc;i sao mới của smartphone Android tầm trung\" /></span></p>\r\n<p style=\"margin: 14px 0px; line-height: 18px;\"><span class=\"PBody\" style=\"font-size: 11px;\">Với k&iacute;ch thước vừa xinh 11,7 x 5,8cm, mỏng 12mm v&agrave; nặng gần 250mg, Aria nằm gọn g&agrave;ng trong t&uacute;i &aacute;o của người d&ugrave;ng v&agrave; vừa tay khi sử dụng. Thiết kế mới được t&ocirc; điểm bởi đường viền cr&ocirc;m ở cạnh tr&ecirc;n v&agrave; n&uacute;t bấm tăng giảm &acirc;m lượng. C&aacute;c ốc v&iacute;t kim loại s&aacute;ng lo&aacute;ng ở mặt sau tăng th&ecirc;m vẻ chắc chắn v&agrave; cao cấp của smartphone xinh xắn n&agrave;y. Một điểm nhấn kh&aacute;c, ruột m&aacute;y được sơn một m&agrave;u v&agrave;ng tươi trẻ lại ở ph&iacute;a trong &iacute;t lộ ra. B&ecirc;n cạnh tr&aacute;i l&agrave; n&uacute;t tăng giảm &acirc;m lượng, tr&ecirc;n đỉnh l&agrave; ph&iacute;m nguồn v&agrave; giắc cắm headphone 3,5 mm. Micro t&iacute;ch hợp v&agrave; ch&acirc;n kết nối USB được đặt ở cạnh dưới của điện thoại.</span></p>\r\n<p style=\"margin: 14px 0px; line-height: 18px;\"><span class=\"PBody\" style=\"font-size: 11px;\"><img title=\"HTC Aria - ng&ocirc;i sao mới của smartphone Android tầm trung\" src=\"http://images.thegioididong.com/Files/2010/07/20/14392/3_HTC-Aria---ngoi-sao-moi-cua-smartphone-Android-tam.jpg\" alt=\"HTC Aria - ng&ocirc;i sao mới của smartphone Android tầm trung\" /></span></p>\r\n<p style=\"margin: 14px 0px; line-height: 18px;\"><span class=\"PBody\" style=\"font-size: 11px;\">Thực sự giao diện Sense tr&ecirc;n nền hệ điều h&agrave;nh Android 2.1 của HTC Aria d&ugrave;ng rất tuyệt, c&aacute;c chuy&ecirc;n gia của LaptopMag đ&aacute;nh gi&aacute;. Ngo&agrave;i ra, giao diện phần mềm chơi nhạc Sense Music App cũng kh&aacute; bắt mắt, hơi giống của Apple iPod. Nghe nhạc v&agrave; xem video trực tuyến từ YouTube mượt m&agrave; qua mạng 3G, chỉ c&oacute; điều loa của Aria khi mở tối đa sẽ hơi bị m&eacute;o tiếng.</span></p>\r\n<p style=\"margin: 14px 0px; line-height: 18px;\"><span class=\"PBody\" style=\"font-size: 11px;\">HTC Aria, thuộc ph&acirc;n kh&uacute;c smartphone tầm trung, với cấu h&igrave;nh vừa phải sử dụng bộ vi xử l&yacute; Qualcomm MSM 7227 tốc độ 600 MHz, bộ nhớ RAM 384MB, ROM 512MB. Điện thoại hỗ trợ đầy đủ c&aacute;c kết nối như Bluetooth, Wi-Fi v&agrave; 3G HSPA 7,2 Mbs, GPS, t&iacute;ch hợp sẵn la b&agrave;n số v&agrave; trang bị cả cảm biến &aacute;nh s&aacute;ng.</span></p>\r\n<p style=\"margin: 14px 0px; line-height: 18px;\"><span class=\"PBody\" style=\"font-size: 11px;\">Phần cứng kh&ocirc;ng qu&aacute; mạnh nhưng khả năng xử l&yacute;, chuyển đổi giữa c&aacute;c ứng dụng phần mềm rất nhanh v&agrave; thuyết phục. Bản đồ Google Maps chạy mượt ngay cả khi đột ngột chuyển sang d&ugrave;ng email khi c&oacute; mail mới đến, hay c&ugrave;ng l&uacute;c lướt web v&agrave; tải phần mềm. Thời gian truy cập c&aacute;c trang web tr&ecirc;n mạng 3G của AT&amp;T rất nhanh trung b&igrave;nh khoảng 8 gi&acirc;y. V&agrave; để download file dữ liệu 1,22 MB về m&aacute;y chỉ cần c&oacute; 8,8 gi&acirc;y.</span></p>\r\n<p style=\"margin: 14px 0px; line-height: 18px;\"><span class=\"PBody\" style=\"font-size: 11px;\"><img title=\"HTC Aria - ng&ocirc;i sao mới của smartphone Android tầm trung\" src=\"http://images.thegioididong.com/Files/2010/07/20/14392/4_HTC-Aria---ngoi-sao-moi-cua-smartphone-Android-tam.jpg\" alt=\"HTC Aria - ng&ocirc;i sao mới của smartphone Android tầm trung\" /></span></p>\r\n<p style=\"margin: 14px 0px; line-height: 18px;\"><span class=\"PBody\" style=\"font-size: 11px;\">Camera 5 megapixel chụp ảnh với tốc độ lấy n&eacute;t nhanh, trong điều kiện &aacute;nh s&aacute;ng tốt cho ảnh chất lượng v&agrave; chi tiết. Với c&aacute;c cảnh chuyển động nhanh như người đi bộ tr&ecirc;n vỉa h&egrave; hay d&ograve;ng xe qua lại tấp nập tr&ecirc;n đường phố, quay video bằng điện thoại ở độ ph&acirc;n giải 640 x 480 (VGA), tốc độ 28 khung h&igrave;nh/gi&acirc;y, h&igrave;nh ảnh kh&aacute; r&otilde; n&eacute;t v&agrave; kh&ocirc;ng bị rung. Nhưng v&igrave; kh&ocirc;ng được trang bị đ&egrave;n flash, chụp ảnh buổi tối l&agrave; kh&ocirc;ng khả thi ngoại trừ h&igrave;nh chụp thu về chỉ l&agrave; những vệt đ&egrave;n đường s&aacute;ng l&oacute;a.</span></p>\r\n<p style=\"margin: 14px 0px; line-height: 18px;\"><span class=\"PBody\" style=\"font-size: 11px;\">Khả năng tiếp nhận s&oacute;ng di động của HTC Aria kh&ocirc;ng gặp trục trặc g&igrave; v&agrave; chất lượng thoại rất tốt, ngay cả khi nhận c&aacute;c cuộc gọi đường d&agrave;i hay quốc tế. Song nếu để &acirc;m lượng qu&aacute; lớn, tiếng đ&agrave;m thoại sẽ bị m&eacute;o. Điểm cần cải tiến hơn nữa ở điện thoại n&agrave;y l&agrave; hệ thống loa ngo&agrave;i. HTC Aria chạy tr&ecirc;n mạng GSM của AT&amp;T, hoạt động tốt tr&ecirc;n tất cả c&aacute;c tần số 850/900/1800 hay 1900MHz. HTC Aria c&oacute; thời lượng đ&agrave;m thoại li&ecirc;n tục l&ecirc;n tới 6 giờ. Pin của m&aacute;y c&oacute; thể lướt web tr&ecirc;n mạng 3G trong 4 giờ 32 ph&uacute;t, đủ để người d&ugrave;ng phổ th&ocirc;ng y&ecirc;n t&acirc;m sử dụng cả ng&agrave;y.</span></p>\r\n<p style=\"margin: 14px 0px; line-height: 18px;\"><span class=\"PBody\" style=\"font-size: 11px;\">Tại Mỹ, HTC Aria được nh&agrave; mạng AT&amp;T cung cấp với gi&aacute; chỉ 129,99 USD nhưng k&egrave;m hợp đồng 2 năm sử dụng bắt buộc. C&ograve;n ở Việt Nam, phi&ecirc;n bản smartphone Android xinh xắn với ng&ocirc;n ngữ tiếng Việt sẽ được ch&iacute;nh thức b&aacute;n ra v&agrave;o th&aacute;ng 8 với mức gi&aacute; tương đương HTC HD mini, tr&ecirc;n 10 triệu đồng.</span></p>\r\n</div>\r\n<p><br class=\"Apple-interchange-newline\" /></p>', 'HTC Aria - ng&ocirc;i sao mới của smartphone Android tầm trung', '2019-11-13'),
(2, 'Điện thoại Acer đầu ti&ecirc;n sử dụng Android', 'images/0acer_liquid-e_b.jpg', 'images/download.jpg', '<div class=\"newstitle\">\r\n<h1>Liquid E - Điện thoại Acer đầu ti&ecirc;n sử dụng Android </h1>\r\n</div>\r\n<div class=\"newsintro\">\r\n<p style=\"text-align: justify;\">Nh&agrave; sản xuất m&aacute;y  t&iacute;nh Acer vừa th&ocirc;ng b&aacute;o cho ra mắt sản phẩm điện thoại  đầu ti&ecirc;n của  h&atilde;ng chạy tr&ecirc;n hệ điều h&agrave;nh Android 2.1. Thiết bị n&agrave;y c&oacute;  t&ecirc;n gọi Liquid  E.</p>\r\n</div>\r\n<p style=\"text-align: center;\"><img style=\"border: 1px solid black;\" src=\"http://www.mainguyen.vn/img/inposts/1003/Acer-Liquid.jpg\" alt=\"\" /></p>\r\n<p style=\"text-align: justify;\">L&atilde;nh đạo của Acer cho biết, Liquid E l&agrave;  bản cập nhật của chiếc Liquid A1 đ&atilde; xuất hiện tr&ecirc;n thị trường v&agrave;o nửa  cuối năm 2009. Đ&acirc;y l&agrave; thiết bị đầu ti&ecirc;n m&agrave; Acer sử dụng hệ điều h&agrave;nh mới  nhất hiện nay, Android 2.1.<br /><br />C&aacute;c th&ocirc;ng tin ban đầu cho thấy,  Liquid E được trang bị m&agrave;n h&igrave;nh cảm ứng 3,5 inch với độ ph&acirc;n giải 480 x  800 pixel, camera 5 MP hỗ trợ tự động lấy n&eacute;t tự động, RAM 256MB, ROM  512MB.<br /><br />Ngo&agrave;i ra, Liquid E t&iacute;ch hợp c&ocirc;ng nghệ định vị A-GPS, kết  nối bluetooth, hỗ trợ thẻ nhớ ngo&agrave;i l&ecirc;n tới 32 GB, giắc cắm tay nghe  chuẩn 3,5 mm. Sản phẩm mới của Acer sử dụng bộ xử l&yacute; Qualcomm Snapdragon  8250 với tốc độ 768 MHz.<br /><br />B&ecirc;n cạnh đ&oacute;, Liquid E sở hữu một loạt  c&aacute;c t&iacute;nh năng của hệ điều h&agrave;nh Android 2.1, MMS, Email v&agrave; IM, hỗ trợ  tr&igrave;nh duyệt web HTML5. K&iacute;ch thước của m&aacute;y kh&aacute; nhỏ gọn: 115 x 62.5 x 12.5  mm, nặng 135g.<br /><br />Theo kế hoạch, điện thoại Liquid E sẽ c&oacute; mặt tr&ecirc;n  thị trường trong nửa đầu năm nay với gi&aacute; 500 USD th&ocirc;ng qua nh&agrave; ph&acirc;n  phối Rogers. Sản phẩm sẽ đến tay người d&ugrave;ng với 3 m&agrave;u: đen, trắng v&agrave; đỏ.</p>', 'Liquid E - Điện thoại Acer đầu ti&ecirc;n sử dụng Android \r\n', '2019-11-08'),
(3, '\r\nSamsung ch&iacute;nh thức ra Galaxy Table', 'images/galaxy_tab_1.png', 'images/721_Samsung-chinh-thuc-ra-Galaxy-Tab.jpg', '<h2>Samsung ch&iacute;nh thức ra Galaxy Tab</h2>\r\n<div class=\"news_description\">Đ&uacute;ng như đ&atilde; hẹn, h&ocirc;m nay tại Đức, Samsung đ&atilde; tr&igrave;nh l&agrave;ng chiếc tablet t&iacute;ch hợp chức năng phone Galaxy Tab với m&agrave;n h&igrave;nh 7 inch.</div>\r\n<div class=\"new_pro_detail_contet\">\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img title=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" src=\"http://images.thegioididong.com/Files/2010/09/03/20130/721_Samsung-chinh-thuc-ra-Galaxy-Tab.jpg\" border=\"1\" alt=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" width=\"480\" height=\"320\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Tab xuất hiện sau thời gian d&agrave;i r&ograve; rỉ.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Samsung P1000 Galaxy Tab xuất hiện sau một thời gian d&agrave;i đồn thổi, thiết bị được h&atilde;ng ra mắt tại triển l&atilde;m thương mại IFA 2010 đang diễn ra ở Đức. Chiếc tablet của thương hiệu <span id=\"cpms_link2\" class=\"cmps_it_intextLink\" onclick=\"cpms_Intext.aj(2);\" onmouseover=\"cpms_Intext.f(2);\" onmouseout=\"cpms_Intext.Z();\">H&agrave;n Quốc</span> c&oacute; m&agrave;n h&igrave;nh 7 inch, t&iacute;ch hợp đầy đủ chức năng phone như một chiếc điện thoại th&ocirc;ng minh. M&aacute;y cho ph&eacute;p xem video 7 giờ li&ecirc;n tục, hỗ trợ DivX v&agrave; Flash tr&ecirc;n nền Android, m&agrave;n h&igrave;nh của Tab c&oacute; độ ph&acirc;n giải cao WSVGA.</p>\r\n<p class=\"Normal\">Galaxy Tab sử dụng <span id=\"cpms_link1\" class=\"cmps_it_intextLink\" onclick=\"cpms_Intext.aj(1);\" onmouseover=\"cpms_Intext.f(1);\" onmouseout=\"cpms_Intext.Z();\">c&ocirc;ng nghệ</span> m&agrave;n h&igrave;nh TFT, độ ph&acirc;n giải 1.024 x 600 pixel, vi xử l&yacute; Cortex-A8 tốc độ 1GHz, RAM 512MB, chip đồ họa PowerVR SGX540.</p>\r\n<p class=\"Normal\">Chiếc tablet n&agrave;y chạy tr&ecirc;n hệ điều h&agrave;nh Android 2.2 Froyo, h&atilde;ng kh&ocirc;ng mang giao diện TouchWiz l&ecirc;n m&agrave; tập trung v&agrave;o c&aacute;c g&oacute;i ứng dụng thay thế.</p>\r\n<p>&nbsp;</p>\r\n<table border=\"0\" cellspacing=\"2\" cellpadding=\"2\" width=\"324\" align=\"center\" bgcolor=\"#408080\">\r\n<tbody>\r\n<tr>\r\n<td class=\"BoxLink\" align=\"center\">\r\n<p><strong><span style=\"color: #ffffff;\">Xem những h&igrave;nh ảnh đẹp của Galaxy Tab</span></strong></p>\r\n<p>&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td><img title=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" src=\"http://images.thegioididong.com/Files/2010/09/03/20130/722_Samsung-chinh-thuc-ra-Galaxy-Tab.jpg\" border=\"1\" alt=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" width=\"500\" height=\"333\" /></td>\r\n</tr>\r\n<tr>\r\n<td><img title=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" src=\"http://images.thegioididong.com/Files/2010/09/03/20130/723_Samsung-chinh-thuc-ra-Galaxy-Tab.jpg\" border=\"1\" alt=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" width=\"500\" height=\"333\" /></td>\r\n</tr>\r\n<tr>\r\n<td><img title=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" src=\"http://images.thegioididong.com/Files/2010/09/03/20130/724_Samsung-chinh-thuc-ra-Galaxy-Tab.jpg\" border=\"1\" alt=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" width=\"500\" height=\"333\" /></td>\r\n</tr>\r\n<tr>\r\n<td><img title=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" src=\"http://images.thegioididong.com/Files/2010/09/03/20130/725_Samsung-chinh-thuc-ra-Galaxy-Tab.jpg\" border=\"1\" alt=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" width=\"500\" height=\"333\" /></td>\r\n</tr>\r\n<tr>\r\n<td><img title=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" src=\"http://images.thegioididong.com/Files/2010/09/03/20130/726_Samsung-chinh-thuc-ra-Galaxy-Tab.jpg\" border=\"1\" alt=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" width=\"500\" height=\"333\" /></td>\r\n</tr>\r\n<tr>\r\n<td><img title=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" src=\"http://images.thegioididong.com/Files/2010/09/03/20130/727_Samsung-chinh-thuc-ra-Galaxy-Tab.jpg\" border=\"1\" alt=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" width=\"500\" height=\"333\" /></td>\r\n</tr>\r\n<tr>\r\n<td><img title=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" src=\"http://images.thegioididong.com/Files/2010/09/03/20130/728_Samsung-chinh-thuc-ra-Galaxy-Tab.jpg\" border=\"1\" alt=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" width=\"500\" height=\"333\" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Tab chạy tr&ecirc;n mạng GSM/GPRS/EDGE với kết nối 3G/HSPA, hỗ trợ SMS, MMS. Camera ph&iacute;a trước l&agrave; 1,3 Megapixel, hỗ trợ đ&agrave;m thoại video. Ph&iacute;a sau m&aacute;y l&agrave; camera 3 Megapixel với đ&egrave;n flash LED.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img title=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" src=\"http://images.thegioididong.com/Files/2010/09/03/20130/729_Samsung-chinh-thuc-ra-Galaxy-Tab.jpg\" border=\"1\" alt=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" width=\"480\" height=\"342\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">Samsung Galaxy Tab c&oacute; cấu h&igrave;nh mạnh mẽ.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">Samsung P1000 Galaxy Tab c&oacute; k&iacute;ch thước đầy đủ l&agrave; 190.1 x 120.5 x 11.98 mm, nặng 380 gram, ngoại cỡ so với một chiếc di động. M&aacute;y nhỏ hơn <span id=\"cpms_link0\" class=\"cmps_it_intextLink\" onclick=\"cpms_Intext.aj(0);\" onmouseover=\"cpms_Intext.f(0);\" onmouseout=\"cpms_Intext.Z();\">iPad</span>, vỏ nhựa.</p>\r\n<p class=\"Normal\">Samsung sẽ đưa ra hai t&ugrave;y chọn về bộ nhớ l&agrave; 16 v&agrave; 32GB, ngo&agrave;i ra thiết bị c&ograve;n sở hữu khe cắm thẻ microSD cho ph&eacute;p mở rộng 32GB. M&aacute;y hỗ trợ th&ecirc;m c&aacute;c kết nối gồm Bluetooth 3.0, Wi-Fi chuẩn n, v&agrave; cổng giao tiếp chuẩn giống Apple.</p>\r\n<p class=\"Normal\">Model n&agrave;y cũng c&oacute; một ng&otilde; v&agrave;o HDMI, cho ph&eacute;p chuyễn m&atilde; c&aacute;c định dạng video như DivX, XviD, H.264, Flash 10.1, pin theo m&aacute;y dung lượng 4.000 mAh.</p>\r\n<p class=\"Normal\">Samsung cũng th&ecirc;m phần mềm Readers Hub, hỗ trợ hai triệu cuốn s&aacute;ch v&agrave; h&agrave;ng ngh&igrave;n đầu b&aacute;o, tạp ch&iacute;. M&aacute;y cũng cho ph&eacute;p c&agrave;i đặt ứng dụng từ Android Market. Hiện chưa r&otilde; c&oacute; bao nhiều phần mềm hỗ trợ chuẩn ph&acirc;n giải 1.024 x 600 pixel.</p>\r\n<span style=\"color: #000000;\">&nbsp;</span> \r\n<table border=\"0\" cellspacing=\"2\" cellpadding=\"2\" width=\"296\" align=\"center\" bgcolor=\"#408080\">\r\n<tbody>\r\n<tr>\r\n<td class=\"Normal\" align=\"center\"><strong><span style=\"color: #ffffff;\">Bộ ảnh ch&iacute;nh thức của Galaxy Tab</span></strong></td>\r\n</tr>\r\n<tr>\r\n<td><img title=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" src=\"http://images.thegioididong.com/Files/2010/09/03/20130/730_Samsung-chinh-thuc-ra-Galaxy-Tab.jpg\" border=\"1\" alt=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" width=\"500\" height=\"637\" /></td>\r\n</tr>\r\n<tr>\r\n<td><img title=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" src=\"http://images.thegioididong.com/Files/2010/09/03/20130/731_Samsung-chinh-thuc-ra-Galaxy-Tab.jpg\" border=\"1\" alt=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" width=\"500\" height=\"401\" /></td>\r\n</tr>\r\n<tr>\r\n<td><img title=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" src=\"http://images.thegioididong.com/Files/2010/09/03/20130/732_Samsung-chinh-thuc-ra-Galaxy-Tab.jpg\" border=\"1\" alt=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" width=\"500\" height=\"356\" /></td>\r\n</tr>\r\n<tr>\r\n<td><img title=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" src=\"http://images.thegioididong.com/Files/2010/09/03/20130/733_Samsung-chinh-thuc-ra-Galaxy-Tab.jpg\" border=\"1\" alt=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" width=\"500\" height=\"762\" /></td>\r\n</tr>\r\n<tr>\r\n<td><img title=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" src=\"http://images.thegioididong.com/Files/2010/09/03/20130/734_Samsung-chinh-thuc-ra-Galaxy-Tab.jpg\" border=\"1\" alt=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" width=\"500\" height=\"1039\" /></td>\r\n</tr>\r\n<tr>\r\n<td><img title=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" src=\"http://images.thegioididong.com/Files/2010/09/03/20130/735_Samsung-chinh-thuc-ra-Galaxy-Tab.jpg\" border=\"1\" alt=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" width=\"500\" height=\"768\" /></td>\r\n</tr>\r\n<tr>\r\n<td><img title=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" src=\"http://images.thegioididong.com/Files/2010/09/03/20130/736_Samsung-chinh-thuc-ra-Galaxy-Tab.jpg\" border=\"1\" alt=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" width=\"500\" height=\"726\" /></td>\r\n</tr>\r\n<tr>\r\n<td><img title=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" src=\"http://images.thegioididong.com/Files/2010/09/03/20130/737_Samsung-chinh-thuc-ra-Galaxy-Tab.jpg\" border=\"1\" alt=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" width=\"500\" height=\"335\" /></td>\r\n</tr>\r\n<tr>\r\n<td><img title=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" src=\"http://images.thegioididong.com/Files/2010/09/03/20130/738_Samsung-chinh-thuc-ra-Galaxy-Tab.jpg\" border=\"1\" alt=\"Samsung ch&iacute;nh thức ra Galaxy Tab\" width=\"500\" height=\"197\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Normal\" align=\"center\">\r\n<p><strong><span style=\"color: #ffffff;\">Video giới thiệu Galaxy T</span></strong></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', 'Samsung ch&iacute;nh thức ra Galaxy Table\r\ntai Việt Nam', '2019-11-30'),
(4, 'LG Mini GD880 đẹp vẻ đặc biệt', 'images/GD880_b.jpg', 'images/1_LG-Mini-GD880-dep-ve-dac-biet.jpg', '<h2 style=\"color: #ff9501; padding: 5px 0px 3px 10px; margin: 0px; font-weight: bolder;\">LG Mini GD880 đẹp vẻ đặc biệt</h2>\r\n<div class=\"news_description\" style=\"color: #606060; padding: 0px 0px 0px 10px; margin-bottom: 10px;\">Chiếc điện thoại nhỏ b&eacute; n&agrave;y của LG sử dụng giao diện S-Class m&ocirc; phỏng Android rất lạ. M&aacute;y c&oacute; khả năng chạy đa nhiệm tr&ecirc;n m&agrave;n h&igrave;nh tươi, rực rỡ.</div>\r\n<div class=\"news_pro_link\" style=\"padding: 2px 1px 3px 10px;\"><a style=\"text-decoration: none; color: #767676; font-family: Tahoma; font-weight: bold;\" href=\"http://thegioididong.com/tin-tuc-dien-thoai-di-dong,2333-smartphone-sieu-nho-cua-lg.aspx\">&nbsp;&gt;&nbsp;Smartphone si&ecirc;u nhỏ của LG</a></div>\r\n<div class=\"new_pro_detail_contet\" style=\"padding: 5px 3px 5px 10px;\">\r\n<p class=\"Normal\" style=\"margin: 14px 0px; line-height: 18px;\">Khoảng hai năm trở lại đ&acirc;y, những chiếc di động nằm trong series GD của LG thường c&oacute; kiểu d&aacute;ng kh&aacute;c lạ, đẹp v&agrave; thời trang. Mini GD880 được h&atilde;ng giới thiệu gần đ&acirc;y l&agrave; một trong những thiết kế đặc biệt, d&ugrave; kh&ocirc;ng nằm trong d&ograve;ng cao cấp.</p>\r\n<p class=\"Normal\" style=\"margin: 14px 0px; line-height: 18px;\">Tại thị trường Việt Nam, GD880 vẫn chưa b&aacute;n ch&iacute;nh thức, model n&agrave;y c&oacute; mặt tr&ecirc;n ph&acirc;n kh&uacute;c x&aacute;ch tay với gi&aacute; khoảng 7,5 triệu đồng.</p>\r\n<p class=\"Normal\" style=\"margin: 14px 0px; line-height: 18px;\">D&ugrave; c&oacute; t&ecirc;n Mini, nhưng GD880 kh&ocirc;ng qu&aacute; nhỏ, m&aacute;y chỉ gọn hơn so với BL40 Chocolate, thiết kế chắc chắc v&agrave; gi&agrave;u t&iacute;nh năng. Kh&ocirc;ng chạy hệ điều h&agrave;nh, nhưng GD880 rất th&ocirc;ng minh với giao diện S-Class m&ocirc; phỏng Android, chạy đa nhiệm tr&ecirc;n một m&agrave;n h&igrave;nh tươi sắc, rực rỡ.</p>\r\n<table style=\"border-collapse: collapse; background-color: #ffffff;\" border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td class=\"Image\"><img title=\"LG Mini GD880 đẹp vẻ đặc biệt\" src=\"http://images.thegioididong.com/Files/2010/06/12/12225/1_LG-Mini-GD880-dep-ve-dac-biet.jpg\" border=\"1\" alt=\"LG Mini GD880 đẹp vẻ đặc biệt\" width=\"500\" height=\"384\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">LG GD880 c&oacute; mặt tr&ecirc;n ph&acirc;n kh&uacute;c điện thoại x&aacute;ch tay với gi&aacute; 7,5 triệu đồng. Ảnh:<span class=\"Apple-converted-space\">&nbsp;</span><em>Huy Nguyễn.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"SubTitle\" style=\"margin: 14px 0px; line-height: 18px;\">Những t&iacute;nh năng ch&iacute;nh của LG Mini GD880</p>\r\n<p class=\"Normal\" style=\"margin: 14px 0px; line-height: 18px;\">Kết nối mạng: GSM 850/900/1800/1900 MHz, UMTS 1900/2100 MHz, EDGE class 10, HSDPA 7,2 Mb/gi&acirc;y v&agrave; HSUPA 2 Mb/gi&acirc;y.</p>\r\n<p class=\"Normal\" style=\"margin: 14px 0px; line-height: 18px;\">K&iacute;ch thước: 102 x 47,6 x 10,6 mm, nặng 99 gram.</p>\r\n<p class=\"Normal\" style=\"margin: 14px 0px; line-height: 18px;\">M&agrave;n h&igrave;nh: 3,2 inch, cảm ứng điện dung, TFT, tỷ lệ 16:9, độ ph&acirc;n giải 480 x 854 pixel, đa điểm, mặt k&iacute;nh chống xước.</p>\r\n<p class=\"Normal\" style=\"margin: 14px 0px; line-height: 18px;\">Giao diện: S-class mới nhất.</p>\r\n<p class=\"Normal\" style=\"margin: 14px 0px; line-height: 18px;\">Bộ nhớ: 330 MB bộ nhớ trong k&egrave;m khe cắm thẻ nhớ microSD b&ecirc;n cạnh.</p>\r\n<p class=\"Normal\" style=\"margin: 14px 0px; line-height: 18px;\">Camera: 5 Megapixel, tự động lấy n&eacute;t, chống rung, nhận dạng khu&ocirc;n mặt, nụ cười, quay phim VGA 15 h&igrave;nh/gi&acirc;y.</p>\r\n<p class=\"Normal\" style=\"margin: 14px 0px; line-height: 18px;\">Kết nối: Wi-Fi, Bluetooth với A2DP, cổng microUSB, GPS với A-GPS, giắc cắm tai nghe 3,5 mm.</p>\r\n<p class=\"Normal\" style=\"margin: 14px 0px; line-height: 18px;\">Pin: 900 mAh.</p>\r\n<p class=\"Normal\" style=\"margin: 14px 0px; line-height: 18px;\">T&iacute;nh năng kh&aacute;c: tự động xoay m&agrave;n h&igrave;nh, hỗ trợ Flash đầy đủ, FM, xem phim DivX v&agrave; XviD, &acirc;m thanh Dolby mobile.</p>\r\n</div>', 'LG Mini GD880 đẹp vẻ đặc biệt va hot nhất năm 2019', '2019-12-24'),
(5, 'BlackBerry Torch 9800 ra mắt', 'images/BlackBerry_Torch_9800_b.jpg', 'images/images (1).jpg', '<h2>BlackBerry Torch 9800 ra mắt</h2>\r\n<div class=\"news_description\">H&ocirc;m qua, trong một sự kiện ri&ecirc;ng,  RIM v&agrave; nh&agrave; mạng AT&amp;T đ&atilde; tr&igrave;nh l&agrave;ng chiếc BlackBerry Torch 9800 với  m&agrave;n h&igrave;nh chạm v&agrave; b&agrave;n ph&iacute;m trượt.</div>\r\n<div class=\"new_pro_detail_contet\">\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img title=\"BlackBerry Torch 9800 ra mắt\" src=\"http://images.thegioididong.com/Files/2010/08/05/15228/1_BlackBerry-Torch-9800-ra-mat.jpg\" border=\"1\" alt=\"BlackBerry Torch 9800 ra mắt\" width=\"480\" height=\"332\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\">L&atilde;nh đạo của RIM c&ocirc;ng bố Torch tối qua. Ảnh: <em>Reuters.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">BlackBerry Torch 9800 l&agrave; chiếc smartphone đầu ti&ecirc;n chạy tr&ecirc;n hệ điều h&agrave;nh BlackBerry 6 với nhiều thay đổi lớn.</p>\r\n<p class=\"Normal\">M&aacute;y được trang bị b&agrave;n ph&iacute;m QWERTY đầy đủ b&ecirc;n dưới m&agrave;n  h&igrave;nh cảm ứng HVGA rộng 3,2 inch, độ ph&acirc;n giải 480 x 360 pixel, thiết bị  n&agrave;y mỏng 14,6 mm. Torch chạy tr&ecirc;n 3 băng tần 3G, kết nối Wi-Fi chuẩn  b/g/n, Bluetooth, v&agrave; GPS.</p>\r\n<p class=\"Normal\">Mặt sau của thiết bị l&agrave; camare 5 Megapixel, hỗ trợ chế  độ tự động lấy n&eacute;t, quay phim ph&acirc;n giải VGA. M&aacute;y c&oacute; bộ nhớ trong 4GB,  512 MB RAM, 512 MB ROM, khe cắm thẻ hỗ trợ cho ph&eacute;p mở rộng tới 32GB.</p>\r\n<p class=\"Normal\">BlackBerry Torch 9800 sẽ được b&aacute;n đầu tiền tại Mỹ tr&ecirc;n  mạng AT&amp;T trong ng&agrave;y 12/8 tới đ&acirc;y đi k&egrave;m hợp đồng sử dụng hai năm  sử dụng với gi&aacute; 199 USD.</p>\r\n<p class=\"Normal\">Cũng trong h&ocirc;m qua, một chiếc BlackBerry Tourch 9800  phi&ecirc;n bản d&ugrave;ng thử đ&atilde; xuất hiện tại cửa h&agrave;ng D&acirc;u Đen ở TP HCM. Thiết kế  đẹp, sang trọng l&agrave; những ấn tượng đầu ti&ecirc;n về model n&agrave;y.</p>\r\n<p class=\"Normal\"><img src=\"http://images.thegioididong.com/Files/2010/08/05/15228/434_BlackBerry-Torch-9800-ra-mat.jpg\" border=\"1\" alt=\"BlackBerry Torch 9800 ra mắt\" width=\"480\" height=\"480\" /></p>\r\n<p class=\"Normal\">&nbsp;</p>\r\n<p class=\"Normal\"><img src=\"http://images.thegioididong.com/Files/2010/08/05/15228/435_BlackBerry-Torch-9800-ra-mat.jpg\" border=\"1\" alt=\"BlackBerry Torch 9800 ra mắt\" width=\"480\" height=\"480\" /></p>\r\n<p class=\"Normal\">&nbsp;</p>\r\n<p class=\"Normal\"><img src=\"http://images.thegioididong.com/Files/2010/08/05/15228/436_BlackBerry-Torch-9800-ra-mat.jpg\" border=\"1\" alt=\"BlackBerry Torch 9800 ra mắt\" width=\"480\" height=\"480\" /></p>\r\n<p class=\"Normal\">&nbsp;</p>\r\n<p class=\"Normal\"><img src=\"http://images.thegioididong.com/Files/2010/08/05/15228/437_BlackBerry-Torch-9800-ra-mat.jpg\" border=\"1\" alt=\"BlackBerry Torch 9800 ra mắt\" width=\"480\" height=\"430\" /></p>\r\n<p class=\"Normal\">&nbsp;</p>\r\n<p class=\"Normal\"><img src=\"http://images.thegioididong.com/Files/2010/08/05/15228/438_BlackBerry-Torch-9800-ra-mat.jpg\" border=\"1\" alt=\"BlackBerry Torch 9800 ra mắt\" width=\"480\" height=\"394\" /></p>\r\n<p class=\"Normal\">&nbsp;</p>\r\n<p class=\"Normal\"><img src=\"http://images.thegioididong.com/Files/2010/08/05/15228/439_BlackBerry-Torch-9800-ra-mat.jpg\" border=\"1\" alt=\"BlackBerry Torch 9800 ra mắt\" width=\"480\" height=\"443\" /></p>\r\n<p class=\"Normal\">&nbsp;</p>\r\n<p class=\"Normal\"><img src=\"http://images.thegioididong.com/Files/2010/08/05/15228/440_BlackBerry-Torch-9800-ra-mat.jpg\" border=\"1\" alt=\"BlackBerry Torch 9800 ra mắt\" width=\"480\" height=\"474\" /></p>\r\n<p class=\"Normal\"><strong>Quốc Kh&aacute;nh</strong></p>\r\n</div>', 'H&ocirc;m qua, trong một sự kiện ri&ecirc;ng,  RIM v&agrave; nh&agrave; mạng AT&amp', '2019-11-24'),
(6, 'Smartphone  Nokia ra mắt', 'images/N86_b.jpg', 'images/images.jpg', '<h2>3 smartphone chụp ảnh 8 \'chấm\' của Nokia ra mắt</h2>\r\n<div class=\"news_description\">Tại sự kiện Nokia World diễn ra ở  London (Anh), h&atilde;ng điện thoại Phần Lan giới thiệu 3 model C6-01, C7 v&agrave;  E7 thuộc loại cao cấp với mức gi&aacute; từ 340 USD trở l&ecirc;n.</div>\r\n<p class=\"Normal\">Nokia E7 sử dụng  m&agrave;n h&igrave;nh cảm ứng AMOLED 4 inch 640 x 360 pixel, được bổ sung c&ocirc;ng nghệ  ClearBlack Display độc quyền cho h&igrave;nh ảnh sống động như thật, kh&ocirc;ng thua  k&eacute;m g&igrave; Retina Display tr&ecirc;n iPhone 4. E7 d&agrave;y 13,8 mm, t&iacute;ch hợp m&aacute;y ảnh 8  megapixel, quay video HD, b&agrave;n ph&iacute;m Qwerty c&ugrave;ng 16 GB bộ nhớ trong. Sản  phẩm được Nokia nhắm đến đối tượng doanh nh&acirc;n, hỗ trợ ứng dụng Microsoft  Exchange, hệ thống Ovi v&agrave; c&oacute; gi&aacute; b&aacute;n l&agrave; 650 USD.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img title=\"3 smartphone chụp ảnh 8 \'chấm\' của Nokia ra mắt\" src=\"http://images.thegioididong.com/Files/2010/09/15/21061/1_3-smartphone-chup-anh-8-cham-cua-Nokia-ra-mat.jpg\" border=\"1\" alt=\"3 smartphone chụp ảnh 8 \'chấm\' của Nokia ra mắt\" width=\"450\" height=\"288\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Normal\" align=\"middle\">Ảnh: <em>Nokia.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p class=\"Normal\">C&ograve;n model C7 sử dụng lớp vỏ bằng lớp th&eacute;p chống gỉ  c&ugrave;ng m&agrave;n h&igrave;nh cảm ứng AMOLED 3,5 inch kết hợp với ClearBlack Display  giống E7. M&aacute;y t&iacute;ch hợp camera 8 \"chấm\", hỗ trợ quay video HD v&agrave; được  xuất xưởng v&agrave;o cuối năm nay với mức gi&aacute; 430 USD.</p>\r\n<table border=\"0\" cellspacing=\"0\" cellpadding=\"3\" width=\"1\" align=\"center\">\r\n<tbody>\r\n<tr>\r\n<td><img title=\"3 smartphone chụp ảnh 8 \'chấm\' của Nokia ra mắt\" src=\"http://images.thegioididong.com/Files/2010/09/15/21061/2_3-smartphone-chup-anh-8-cham-cua-Nokia-ra-mat.jpg\" border=\"1\" alt=\"3 smartphone chụp ảnh 8 \'chấm\' của Nokia ra mắt\" width=\"400\" height=\"333\" /></td>\r\n</tr>\r\n<tr>\r\n<td class=\"Image\" align=\"middle\">Nokia C6-01 v&agrave; C7. Ảnh: <em>Nokia.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>Cuối c&ugrave;ng l&agrave; Nokia C6-01 c&oacute; m&agrave;n h&igrave;nh giống với C7  nhưng b&eacute; hơn, chỉ 3,2 inch 640 x 360 pixel. Sản phẩm c&oacute; thiết kế giống  với model C6 nhưng kh&ocirc;ng c&oacute; b&agrave;n ph&iacute;m Qwerty. M&aacute;y hỗ trợ xem TV tr&ecirc;n web,  c&aacute;c mạng x&atilde; hội v&agrave; c&oacute; gi&aacute; 340 USD.</p>', 'Smartphone chụp ảnh 8 \'chấm\' của Nokia ra mắt trong năm 2019....', '2019-11-16');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`idBinhLuan`),
  ADD KEY `idDT` (`idDT`),
  ADD KEY `idKH` (`idKH`);

--
-- Chỉ mục cho bảng `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD PRIMARY KEY (`idDT`),
  ADD KEY `idNCC` (`idNCC`),
  ADD KEY `idKho` (`idKho`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`idDH`),
  ADD KEY `idKH` (`idKH`);

--
-- Chỉ mục cho bảng `donhangchitiet`
--
ALTER TABLE `donhangchitiet`
  ADD PRIMARY KEY (`idChiTiet`),
  ADD KEY `idDT` (`idDT`),
  ADD KEY `idDH` (`idDH`);

--
-- Chỉ mục cho bảng `giamgia`
--
ALTER TABLE `giamgia`
  ADD PRIMARY KEY (`idGiamGia`),
  ADD KEY `idDT` (`idDT`);

--
-- Chỉ mục cho bảng `giaohang`
--
ALTER TABLE `giaohang`
  ADD PRIMARY KEY (`idGH`),
  ADD KEY `idDH` (`idDH`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`idKH`);

--
-- Chỉ mục cho bảng `khosp`
--
ALTER TABLE `khosp`
  ADD PRIMARY KEY (`idKho`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`idNCC`);

--
-- Chỉ mục cho bảng `nhomkh`
--
ALTER TABLE `nhomkh`
  ADD PRIMARY KEY (`idNhom`),
  ADD KEY `idKH` (`idKH`),
  ADD KEY `idGiamGia` (`idGiamGia`);

--
-- Chỉ mục cho bảng `quantri`
--
ALTER TABLE `quantri`
  ADD PRIMARY KEY (`idQT`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `idBinhLuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `dienthoai`
--
ALTER TABLE `dienthoai`
  MODIFY `idDT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `idDH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `donhangchitiet`
--
ALTER TABLE `donhangchitiet`
  MODIFY `idChiTiet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `giamgia`
--
ALTER TABLE `giamgia`
  MODIFY `idGiamGia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `giaohang`
--
ALTER TABLE `giaohang`
  MODIFY `idGH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `idKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `khosp`
--
ALTER TABLE `khosp`
  MODIFY `idKho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `idNCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `quantri`
--
ALTER TABLE `quantri`
  MODIFY `idQT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`idKH`) REFERENCES `khachhang` (`idKH`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`idDT`) REFERENCES `dienthoai` (`idDT`);

--
-- Các ràng buộc cho bảng `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD CONSTRAINT `dienthoai_ibfk_1` FOREIGN KEY (`idNCC`) REFERENCES `nhacungcap` (`idNCC`),
  ADD CONSTRAINT `dienthoai_ibfk_2` FOREIGN KEY (`idKho`) REFERENCES `khosp` (`idKho`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`idKH`) REFERENCES `khachhang` (`idKH`);

--
-- Các ràng buộc cho bảng `donhangchitiet`
--
ALTER TABLE `donhangchitiet`
  ADD CONSTRAINT `donhangchitiet_ibfk_1` FOREIGN KEY (`idDT`) REFERENCES `dienthoai` (`idDT`),
  ADD CONSTRAINT `donhangchitiet_ibfk_2` FOREIGN KEY (`idDH`) REFERENCES `donhang` (`idDH`);

--
-- Các ràng buộc cho bảng `giamgia`
--
ALTER TABLE `giamgia`
  ADD CONSTRAINT `giamgia_ibfk_1` FOREIGN KEY (`idDT`) REFERENCES `dienthoai` (`idDT`);

--
-- Các ràng buộc cho bảng `giaohang`
--
ALTER TABLE `giaohang`
  ADD CONSTRAINT `giaohang_ibfk_1` FOREIGN KEY (`idDH`) REFERENCES `donhang` (`idDH`);

--
-- Các ràng buộc cho bảng `nhomkh`
--
ALTER TABLE `nhomkh`
  ADD CONSTRAINT `nhomkh_ibfk_1` FOREIGN KEY (`idKH`) REFERENCES `khachhang` (`idKH`),
  ADD CONSTRAINT `nhomkh_ibfk_2` FOREIGN KEY (`idGiamGia`) REFERENCES `giamgia` (`idGiamGia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
