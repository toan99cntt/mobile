create database qlbanhang;
use qlbanhang;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producer`
--

CREATE TABLE `producer` (
  `id` int(11) NOT NULL,
  `hangsx` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `producer`
--

INSERT INTO `producer` (`id`, `hangsx`) VALUES
(1, 'samsung'),
(2, 'iphone'),
(3, 'sony'),
(4, 'xiaomi'),
(5, 'LG'),
(6, 'oppo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `tensp` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gia` float NOT NULL,
  `trangthai` tinyint(4) NOT NULL,
  `ngaynhap` date NOT NULL,
  `id_hang` int(11) NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `tensp`, `gia`, `trangthai`, `ngaynhap`, `id_hang`, `image`) VALUES
(1, 'Samsung Galaxy Note 20 Ultra - Chính hãng', 20550000, 1, '2020-10-05', 1, 'https://hoanghamobile.com/Uploads/Originals/2020/08/06/202008061113540485_Samsung Galaxy Note 20 - Chính hãng (1).png;width=720;height=500;watermark=logo;crop=auto;quality=80;format=jpg'),
(2, 'Samsung Galaxy Note 20 Ultra (Phiên bản 5G) - Chính hãng', 22950000, 1, '2020-10-05', 1, 'https://hoanghamobile.com/Uploads/Originals/2020/08/06/202008061116414539_thumbb.png;width=720;height=500;watermark=logo;crop=auto;quality=80;format=jpg'),
(3, 'Apple iPhone 11 - 128GB - Chính hãng VN/A', 18590000, 1, '2020-10-05', 2, 'https://hoanghamobile.com/Uploads/Originals/2019/11/05/201911051610300966_%C4%91een.png;width=720;height=500;watermark=logo;crop=auto;quality=80;format=jpg'),
(12, ' iPhone SE 64GB 2020 - Black - Chính hãng VN/A', 9186000, 1, '2020-10-05', 2, 'https://hoanghamobile.com/Uploads/Originals/2020/04/20/202004201700561465_HHM-Khung-%E1%BA%A3nh-s%E1%BA%A3n-ph%E1%BA%A9m-1.png;width=720;height=500;watermark=logo;crop=auto;quality=80;format=jpg'),
(14, 'Apple iPhone 8 Plus - 128GB - Chính hãng (VN/A)', 13500000, 1, '2020-10-12', 2, 'https://hoanghamobile.com/Uploads/Originals/2019/12/06/201912061725093653_HHM-Khung-%E1%BA%A3nh-s%E1%BA%A3n-ph%E1%BA%A9m-14.png;width=720;height=500;watermark=logo;crop=auto;quality=80;format=jpg'),
(15, 'Xiaomi Redmi Note 9 Pro - 6GB/128GB - Chính hãng DGW', 6290000, 1, '2020-10-12', 4, 'https://hoanghamobile.com/Uploads/Originals/2020/05/16/202005160936566154_2.png;width=720;height=500;watermark=logo;crop=auto;quality=80;format=jpg'),
(16, 'Oppo A92 - 8GB/128GB - Pin 5000 mAh - Chính hãng', 10750000, 1, '2020-10-05', 6, 'https://hoanghamobile.com/Uploads/Originals/2020/05/25/202005251500093201_HHM-Khung-%E1%BA%A3nh-s%E1%BA%A3n-ph%E1%BA%A9m-1.png;width=720;height=500;watermark=logo;crop=auto;quality=80;format=jpg'),
(17, 'Xiaomi Redmi Note 8 - 4GB/64GB - Chính hãng DGW', 3750000, 1, '2020-10-05', 4, 'https://hoanghamobile.com/Uploads/Originals/2019/10/02/201910021048421691_HHM-Khung-%E1%BA%A3nh-s%E1%BA%A3n-ph%E1%BA%A9m-1.png;width=720;height=500;watermark=logo;crop=auto;quality=80;format=jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_detail`
--

CREATE TABLE `product_detail` (
  `id` int(11) NOT NULL,
  `ram` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `screen` int(11) NOT NULL,
  `CPU` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `camera` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_product` int(11) NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `image1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image3` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_detail`
--

INSERT INTO `product_detail` (`id`, `ram`, `rom`, `screen`, `CPU`, `camera`, `pin`, `id_product`, `detail`, `image1`, `image2`, `image3`) VALUES
(1, '12', '128', 7, 'Exynos 990 (7 nm+)', '108 MP - 12MP - 12MP', '3000', 1, '<h2>Samsung Galaxy Note 20 Ultra giá rẻ chính hãng tại Hoàng Hà Mobile</h2><br>\r\n<h3>Sự trở lại của thiết kế dòng Note cổ điển</h3>\r\n<img style=\"margin-left: 100px\" src=\"https://hoanghamobile.com/Uploads/Originals/2020/08/06/202008060901571211_1.jpg;width=500\" with=\"100%\" ><br>\r\n<br>\r\nCó thể nói, từ trước đến nay, thiết kế của dòng Galaxy Note luôn khiến cho người dùng phải thích thú và mê đắm bởi độ tinh xảo kết hợp với những phiên bản màu sắc cực kì hài hòa. Galaxy Note 20 Ultra 5G sở hữu một thiết kế nguyên khối kim loại, cùng với mặt lưng được hoàn thiện từ kính cường lực cao cấp, tạo cho máy một vẻ bề ngoài bóng bẩy, sang trọng.Chiếc Note năm nay cũng đánh dấu sự trở lại của màu sắc vàng đồng vô cùng được ưa chuộng trên những đời Note trước đây sau một thời gian dài vắng bóng.\r\n<br><br>\r\n<img style=\"margin-left: 165px\" src=\"https://hoanghamobile.com/Uploads/Originals/2020/08/06/202008060857243273_amsung%20Galaxy%20Note%20Note%2020%20Ultra%20(1).png;width=500\" with=\"100%\">\r\n<br><br>\r\n<h3>Cấu hình cực khủng cho trải nghiệm mượt mà. Băng tần mạng 5G cực nhanh</h3><br>\r\nGalaxy Note 20 Ultra 5G sở hữu một màn hình với kích thước lớn 6.9 inch, độ phân giải Quad HD+. Tương tự như Galaxy S20 Series, Samsung cũng đã mang công nghệ màn hình Dynamic AMOLED 2X lên những sản phẩm của Galaxy Note 20 Ultra 5G. Đây cũng là những chiếc smartphone tiếp theo của Samsung sở hữu tần số quét lên tới 120Hz cho trải nghiệm hiện thị mượt mà, giúp người dùng đắm chìm trong từng pha hành động và các thao tác vuốt chạm.', 'https://hoanghamobile.com/Uploads/Originals/2020/08/24/202008241657199651_Samsung%20Galaxy%20Note%2020%20Ultra%20(Phi%C3%AAn%20b%E1%BA%A3n%205G)%20(1).png;width=720;height=500;watermark=logo;crop=auto;quality=80;format=jpg', 'https://hoanghamobile.com/Uploads/Originals/2020/08/06/202008061340177297_Note%2020%20%E1%BA%A3nh%20sp%20(5).png;width=720;height=500;watermark=logo;crop=auto;quality=80;format=jpg', 'https://hoanghamobile.com/Uploads/Originals/2020/08/24/202008241657199651_Samsung%20Galaxy%20Note%2020%20Ultra%20(Phi%C3%AAn%20b%E1%BA%A3n%205G)%20(4).png;width=720;height=500;watermark=logo;crop=auto;quality=80;format=jpg'),
(2, '12', '128', 6, 'Snapdragon 857', '12 MP', '3200', 2, 'Mua Samsung Galaxy Note 20 Ultra 5G giá rẻ chính hãng tại Hoàng Hà Mobile\r\nCông nghệ mạng 5G đang trên đà phát triển mạnh mẽ với hàng loạt các smartphone mới ra mắt hỗ trợ băng tần này. Người dùng sẽ được trải nghiệm tốc độ mạng “nhanh như cắt”, cùng tất cả tinh hoa của nhà sản xuất điện thoại di động Hàn Quốc Samsung, tập hợp lại trên siêu phẩm Galaxy Note 20 Ultra 5G cuối năm nay. Hãy cùng khám phá những điểm cải tiến cực đáng giá trên siêu phẩm dòng Note này nhé!\r\n\r\nSự trở lại của thiết kế dòng Note cổ điển\r\n\r\n\r\nCó thể nói, từ trước đến nay, thiết kế của dòng Galaxy Note luôn khiến cho người dùng phải thích thú và mê đắm bởi độ tinh xảo kết hợp với những phiên bản màu sắc cực kì hài hòa. Galaxy Note 20 Ultra 5G sở hữu một thiết kế nguyên khối kim loại, cùng với mặt lưng được hoàn thiện từ kính cường lực cao cấp, tạo cho máy một vẻ bề ngoài bóng bẩy, sang trọng. Những ai không thích sự mềm mại của những mẫu smartphone cao cấp trên thị trường chắc chắn sẽ thích mê Galaxy Note 20 Ultra 5G với vẻ đẹp nam tính và khoẻ khoắn nhờ thiết kế các cạnh vuông vức. Chiếc Note năm nay cũng đánh dấu sự trở lại của màu sắc vàng đồng vô cùng được ưa chuộng trên những đời Note trước đây sau một thời gian dài vắng bóng.\r\n\r\nGalaxy Note 20 Ultra 5G sở hữu một màn hình với kích thước lớn 6.9 inch, độ phân giải Quad HD+. Tương tự như Galaxy S20 Series, Samsung cũng đã mang công nghệ màn hình Dynamic AMOLED 2X lên những sản phẩm của Galaxy Note 20 Ultra 5G. Đây cũng là những chiếc smartphone tiếp theo của Samsung sở hữu tần số quét lên tới 120Hz cho trải nghiệm hiện thị mượt mà, giúp người dùng đắm chìm trong từng pha hành động và các thao tác vuốt chạm. Triết lý thiết kế màn hình Infinity-O cũng sẽ giúp màn hình được mở rộng ra tối đa để bạn có được những giây phút tuyệt vời với Galaxy Note 20 Ultra 5G.', '', '', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hang` (`id_hang`);

--
-- Chỉ mục cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `producer`
--
ALTER TABLE `producer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);

--
-- Các ràng buộc cho bảng `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_hang`) REFERENCES `producer` (`id`);

--
-- Các ràng buộc cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `product_detail_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
