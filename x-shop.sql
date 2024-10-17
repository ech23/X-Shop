-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th10 16, 2024 lúc 01:19 PM
-- Phiên bản máy phục vụ: 8.0.17
-- Phiên bản PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `x-shop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `id` int(11) NOT NULL,
  `noidung` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `iduser` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `ngaybl` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binh_luan`
--

INSERT INTO `binh_luan` (`id`, `noidung`, `iduser`, `idsp`, `ngaybl`) VALUES
(15, 'chat luong tot', 29, 60, '08:57:05am 03/06/2024'),
(16, 'chat luong tot', 35, 63, '11:20:05am 03/06/2024');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danh_muc`
--

CREATE TABLE `danh_muc` (
  `id` int(11) NOT NULL,
  `namedm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danh_muc`
--

INSERT INTO `danh_muc` (`id`, `namedm`) VALUES
(74, 'Bình siêu tốc'),
(75, 'Bếp điện'),
(76, 'Bếp ga'),
(77, 'Máy lọc nước'),
(78, 'Nồi cơm điện'),
(79, 'Bình nóng lạnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gio_hang`
--

CREATE TABLE `gio_hang` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idsp` int(11) NOT NULL,
  `anhsp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `namesp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `giasp` int(11) NOT NULL DEFAULT '0',
  `soluong` int(11) NOT NULL,
  `thanhtien` int(11) NOT NULL,
  `idbill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `gio_hang`
--

INSERT INTO `gio_hang` (`id`, `iduser`, `idsp`, `anhsp`, `namesp`, `giasp`, `soluong`, `thanhtien`, `idbill`) VALUES
(141, 29, 62, 'c3.jpg', 'NỒI CƠM ĐIỆN 5151RB', 70, 1, 70, 89),
(142, 32, 63, 'bep1.jpg', 'BẾP ĐIỆN TỪ HỖN HỢP', 60, 1, 60, 91),
(143, 34, 63, 'bep1.jpg', 'BẾP ĐIỆN TỪ HỖN HỢP', 60, 1, 60, 92),
(144, 35, 63, 'bep1.jpg', 'BẾP ĐIỆN TỪ HỖN HỢP', 60, 1, 60, 93);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL DEFAULT '0',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `diachi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sdt` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pttt` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1.Thanh toán khi nhận hàng 2.Chuyển khoản ngân hàng 3.Thanh toán online',
  `ngaydathang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tongdonhang` int(11) NOT NULL DEFAULT '0',
  `trangthai` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0.Đơn hàng mới 1.Đang xử lý 2.Đang giao hàng 3.Đã giao hàng',
  `tennhan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `diachinhan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sdtnhan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_don`
--

INSERT INTO `hoa_don` (`id`, `iduser`, `user`, `diachi`, `sdt`, `email`, `pttt`, `ngaydathang`, `tongdonhang`, `trangthai`, `tennhan`, `diachinhan`, `sdtnhan`) VALUES
(87, 20, 'huy', 'Xuân Phương, Nam Từ Liêm, Hà Nội', '0981497901', 'tvh00002gmail.com', 1, '04:14:13am 31/05/2024', 40, 0, NULL, NULL, NULL),
(89, 29, 'huy', 'Yên phụ- Yên phong-Bắc Ninh', '0352901842', 'tovanhuy2003@gamil.com', 1, '03:24:50pm 31/05/2024', 70, 0, NULL, NULL, NULL),
(90, 29, 'huy', 'Yên phụ- Yên phong-Bắc Ninh', '0352901842', 'tovanhuy2003@gamil.com', 2, '03:25:16pm 31/05/2024', 0, 0, NULL, NULL, NULL),
(91, 32, 'huy123', '', '', 'tovanhy2003@gmail.com', 1, '02:42:41am 03/06/2024', 60, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `id` int(11) NOT NULL,
  `namesp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `giasp` double(10,2) NOT NULL DEFAULT '0.00',
  `anhsp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `motasp` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `luotxemsp` int(11) DEFAULT '0',
  `iddm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `san_pham`
--

INSERT INTO `san_pham` (`id`, `namesp`, `giasp`, `anhsp`, `motasp`, `luotxemsp`, `iddm`) VALUES
(52, 'Bếp ga SHK-8301', 890000.00, 'g1.png', '', 0, 76),
(53, 'Bếp ga SHK-8302', 1690000.00, 'g2.png', 'Luôn đảm bảo rằng núm vặn bật tắt luôn ở vị trí Tắt “OFF”\r\nTrước khi đánh lửa phải kiểm tra đầu đốt và họng đốt phải được lắp ngay ngắn và cân bằng trên thanh đỡ đầu đốt.\r\nĐể bật bếp bạn cần phải mở bình gas, ấn núm vặn xoay ngược chiều kim đồng hồ và giữ khoảng 3-5 giây sau đó thả ra… Các tia lửa sẽ đều và trong tầm kiểm soát.\r\nĐiều chỉnh lượng nhiệt bằng cách vặn núm theo hướng dầu tăng dần và ngược lại.\r\nĐể tắt bếp, xoay núm vặn theo chiều kim đồng hồ về vị trí Tắt “OFF”.', 0, 76),
(54, 'NỒI CƠM ĐIỆN KORECOOK', 10.00, 'c1.jpg', 'Kiểu dáng và công nghệ hiện đại được thiết kế bởi chuyên gia Hàn Quốc.\r\nCông nghệ nấu 3D, giúp cơm giữ nhiệt trong 48h, luôn nóng dẻo thơm ngon.\r\nSản phẩm nồi cơm điện đạt tem hiệu suất năng lượng 5 sao, tiết kiệm điện năng đến 12%.\r\nMàu sắc tinh tế, đa dạng phù hợp với mọi căn bếp\r\nBảo hành 24 tháng', 0, 78),
(55, 'Máy lọc nước RO ELEGANT', 100.00, 'loc1.jpg', 'Màng RO 50GPD Dupont – Mỹ(Dow) liền khối\r\nCông suất : 12 lít/giờ\r\nSố lõi : 8 – 10\r\nBảo hành 24 tháng', 0, 77),
(56, 'MÁY LỌC NƯỚC RO SILVER', 130.00, 'loc2.png', 'Sản phẩm máy lọc nước RO SILVER được sản xuất trên dây chuyền hàng đầu thế giới với màng lọc RO LG CHEM NanoH2O nhập khẩu từ Hàn Quốc. Máy loc nước RO SILVER – Nước sạch vì sức khỏe người Việt.', 0, 77),
(57, 'MÁY LỌC NƯỚC RO ECO', 90.00, 'loc3.png', 'Sản phẩm máy lọc nước RO ECO được sản xuất trên dây chuyền hàng đầu thế giới với màng lọc RO LG CHEM NanoH2O nhập khẩu từ Hàn Quốc. Máy lọc nước RO ECO – Nước sạch vì sức khỏe người Việt.\r\n\r\nĐặc điểm sản phẩm:\r\n\r\nMàng lọc RO LG CHEM NanoH2O\r\nCông suất: 10 lít/giờ\r\nSố lõi: 8, 10', 0, 77),
(58, 'BÌNH NÓNG LẠNH NAVY', 200.00, 'nong1.jpg', 'BÌNH NÓNG LẠNH NAVY\r\nTính năng nổi bật:\r\nAn toàn tuyệt đối khi sử dụng\r\nTiết kiệm điện năng tối đa\r\nGiữ nhiệt lâu\r\nThiết kế vượt trội\r\nVật liệu siêu bền', 0, 79),
(59, 'BÌNH NÓNG LẠNH GOLD', 500.00, 'nong2.jpg', 'Hệ thống chống giật ELCB toàn tuyệt đối \r\nThanh magie tiêu chuẩn Châu Âu \r\nLớp bảo ôn PU dày, giữ nhiệt tốt\r\nELCB và Rơ le bảo vệ 2 cấp độ', 0, 79),
(60, 'BÌNH NÓNG LẠNH SMART', 400.00, 'nong3.jpg', 'An toàn tuyệt đối \r\nELCB và Rơ le bảo vệ 2 cấp độ\r\nTíết kiệm điện năng\r\nTiêu chuẩn chống nước IPX1', 0, 79),
(61, 'NỒI CƠM ĐIỆN AJB', 60.00, 'c2.jpg', 'Kiểu dáng và công nghệ hiện đại được thiết kế bởi chuyên gia Hàn Quốc.\r\nCông nghệ nấu 3D, giúp cơm giữ nhiệt trong 48h, giúp cơm luôn nóng dẻo thơm ngon.\r\nSản phẩm nồi cơm điện đầu đạt tem hiệu suất năng lượng 5 sao, tiết kiệm điện năng đến 12%.\r\nMàu sắc tinh tế, đa dạng phù hợp với mọi căn bếp\r\nBảo hành 24 tháng', 0, 78),
(62, 'NỒI CƠM ĐIỆN 5151RB', 70.00, 'c3.jpg', 'Kiểu dáng và công nghệ hiện đại được thiết kế bởi chuyên gia Hàn Quốc.\r\nCông nghệ nấu 3D, giúp cơm giữ nhiệt trong 48h, giúp cơm luôn nóng dẻo thơm ngon.\r\nSản phẩm nồi cơm điện đạt tem hiệu suất năng lượng 5 sao, tiết kiệm điện năng đến 12%.\r\nMàu sắc tinh tế, đa dạng phù hợp với mọi căn bếp\r\nBảo hành 24 tháng', 0, 78),
(63, 'BẾP ĐIỆN TỪ HỖN HỢP', 600.00, 'bep1.jpg', 'MẶT KÍNH SCHOTT BỀN BỈ\r\nTHIẾT KẾ TINH TẾ, HIỆN ĐẠI THEO PHONG CÁCH ITALY\r\nChức năng bảo vệ chống tràn\r\nChức năng bảo vệ chống quá nhiệt  \r\nPhím điều khiển dạng cảm ứng sang trọng\r\nHiển thị nhiệt dư, có phím khóa an toàn cho trẻ em\r\nBếp có 2 chức năng hẹn giờ: cài đặt hẹn giờ tắt, cài đặt hẹn giờ nhắc nhở\r\nChức năng nấu nhanh P (Booster),\r\nTích hợp mạch lọc nguồn AC (lọc điện áp cấp cho bếp chống sốc điện, chống sung nhiễu do sấm sét)', 0, 75);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `id` int(11) NOT NULL,
  `user` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `diachi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sdt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `vaitro` tinyint(4) NOT NULL DEFAULT '0',
  `anhuser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tai_khoan`
--

INSERT INTO `tai_khoan` (`id`, `user`, `password`, `email`, `diachi`, `sdt`, `vaitro`, `anhuser`) VALUES
(20, 'loidv', 'daovanloi', 'daoloi00002gmail.com', 'Xuân Phương, Nam Từ Liêm, Hà Nội', '0981497901', 1, ''),
(29, 'huy', '1234', 'tovanhuy2003@gamil.com', 'Yên phụ- Yên phong-Bắc Ninh', '0352901842', 1, ''),
(32, 'huy123', '12345678', 'tovanhy2003@gmail.com', 'Yên phụ- Yên phong-Bắc Ninh', '0352901842', 0, ''),
(34, 'tovanhuy', '1234', 'tovanhuy2003@gmail.com', 'Yên phụ- Yên phong-Bắc Ninh', '035290184', 0, ''),
(35, 'huy1', '123456', 'tovanhuy203@gmail', 'Yên phụ- Yên phong-Bắc Ninh', '0352901842', 0, '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_iduser_taikhoan` (`iduser`),
  ADD KEY `lk_idsp_sanpham` (`idsp`),
  ADD KEY `lk_idbill_hoa_don` (`idbill`);

--
-- Chỉ mục cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_danhmuc_sanpham` (`iddm`);

--
-- Chỉ mục cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binh_luan`
--
ALTER TABLE `binh_luan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `danh_muc`
--
ALTER TABLE `danh_muc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT cho bảng `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT cho bảng `tai_khoan`
--
ALTER TABLE `tai_khoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `gio_hang`
--
ALTER TABLE `gio_hang`
  ADD CONSTRAINT `lk_idsp_sanpham` FOREIGN KEY (`idsp`) REFERENCES `san_pham` (`id`),
  ADD CONSTRAINT `lk_iduser_taikhoan` FOREIGN KEY (`iduser`) REFERENCES `tai_khoan` (`id`);

--
-- Các ràng buộc cho bảng `san_pham`
--
ALTER TABLE `san_pham`
  ADD CONSTRAINT `lk_danhmuc_sanpham` FOREIGN KEY (`iddm`) REFERENCES `danh_muc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
