-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 16, 2020 lúc 05:22 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `qlbanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `image` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `color`
--

CREATE TABLE `color` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

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
(1, 'Samsung'),
(2, 'Iphone'),
(3, 'Huawei'),
(4, 'Xiaomi'),
(5, 'Vsmart'),
(6, 'Oppo');

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
(3, 'Samsung Galaxy Note 20 Ultra (Phiên bản 5G) - Chính hãng\r\n\r\n', 27190000, 1, '2020-10-13', 1, 'images/samsung/ss1.jpg'),
(4, 'Samsung Galaxy Note 20 - Chính hãng', 21390000, 1, '2020-10-13', 1, 'images/samsung/ss5.jpg'),
(5, 'Samsung Galaxy A11 - Chính hãng', 3350000, 1, '2020-10-13', 1, 'images/samsung/ss9.jpg'),
(6, 'Samsung Galaxy Note 10 Lite - Chính hãng', 9490000, 1, '2020-10-13', 1, 'images/samsung/ss13.jpg'),
(7, 'Samsung Galaxy S20 Ultra - Chính hãng', 23390000, 1, '2020-10-13', 1, 'images/samsung/ss17.jpg'),
(8, 'Samsung Galaxy Z Flip - Chính hãng', 22190000, 1, '2020-10-13', 1, 'images/samsung/ss18.jpg'),
(9, 'Samsung Galaxy A51 - Chính hãng', 6490000, 1, '2020-10-13', 1, 'images/samsung/ss19.jpg'),
(10, 'Samsung Galaxy S20 - Chính hãng', 19190000, 1, '2020-10-15', 1, 'images/samsung/ss20.jpg'),
(11, 'Huawei Y7 Pro 2019 - Chính hãng', 2890000, 1, '2020-10-15', 3, 'images/huawei/ss21.jpg'),
(12, 'Huawei Y9s - 6GB/128GB - Chính hãng', 6000000, 1, '2020-10-15', 3, 'images/huawei/ss22.jpg'),
(13, 'Huawei Nova 5T - Chính hãng', 9000000, 1, '2020-10-15', 3, 'images/huawei/ss23.jpg'),
(14, 'Huawei Y9 Prime 2019 - Chính hãng', 4800000, 1, '2020-10-15', 3, 'images/huawei/ss24.jpg'),
(15, 'Vsmart Live 4 - 6GB/64GB - Chính hãng', 4290000, 1, '2020-10-15', 5, 'images/vsmart/ss25.jpg'),
(16, 'Vsmart Active 3 - 6GB/64GB - Chính hãng', 3600000, 1, '2020-10-15', 5, 'images/vsmart/ss26.jpg'),
(17, 'Vsmart Active 3 - 4GB/64GB - Chính hãng', 3000000, 1, '2020-10-15', 5, 'images/vsmart/ss27.jpg\r\n'),
(18, 'Vsmart Aris Pro - 8GB/128GB - Chính hãng', 10000000, 1, '2020-10-15', 5, 'images/vsmart/ss28.jpg'),
(19, 'Vsmart Bee 3 - Chính Hãng', 1490000, 1, '2020-10-16', 5, 'images/vsmart/ss29.jpg'),
(20, 'Vsmart Joy 3 - 4GB/64GB - Chính Hãng', 2690000, 1, '2020-10-16', 5, 'images/vsmart/ss30.jpg'),
(21, 'Vsmart Joy 4 - 4GB/64GB - Chính Hãng', 3290000, 1, '2020-10-16', 5, 'images/vsmart/ss31.jpg'),
(22, 'Vsmart Aris - 6GB/64GB - Chính hãng', 5590000, 1, '2020-10-16', 5, 'images/vsmart/ss32.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_detail`
--

CREATE TABLE `product_detail` (
  `id` int(11) NOT NULL,
  `ram` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `screen` float NOT NULL,
  `CPU` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `camera` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pin` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `id_product` int(11) NOT NULL,
  `image1` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `image2` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `image3` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `detail` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_detail`
--

INSERT INTO `product_detail` (`id`, `ram`, `rom`, `screen`, `CPU`, `camera`, `pin`, `id_product`, `image1`, `image2`, `image3`, `detail`) VALUES
(5, '12GB', '256GB', 6.9, 'Exynos 990 (7 nm+)', '108 MP - 12MP - 12MP', '4500, Sạc siêu nhanh 25W, Sạc không dây, Chia sẻ pin không dây', 3, 'images/samsung/ss2.jpg', 'images/samsung/ss3.jpg', 'images/samsung/ss4.jpg', '<h2>Mua điện thoại chính hãng, giá rẻ tại Smartphone 24h </h2>\r\n					<br>\r\n					Công nghệ mạng 5G đang trên đà phát triển mạnh mẽ với hàng loạt các smartphone mới ra mắt hỗ trợ băng tần này. Người dùng sẽ được trải nghiệm tốc độ mạng “nhanh như cắt”, cùng tất cả tinh hoa của nhà sản xuất điện thoại di động Hàn Quốc Samsung, tập hợp lại trên siêu phẩm Galaxy Note 20 Ultra 5G cuối năm nay. Hãy cùng khám phá những điểm cải tiến cực đáng giá trên siêu phẩm dòng Note này nhé!</br>\r\n\r\n<h3> Sự trở lại của thiết kế dòng Note cổ điển</h3>\r\n					<img style=\"    margin-left: 100px; width: 620px; height: 360px;\" src=\"images/samsung/ss4.1.jpg\" with=\"100%\" ><br>\r\n					<br>\r\n					Có thể nói, từ trước đến nay, thiết kế của dòng Galaxy Note luôn khiến cho người dùng phải thích thú và mê đắm bởi độ tinh xảo kết hợp với những phiên bản màu sắc cực kì hài hòa. Galaxy Note 20 Ultra 5G sở hữu một thiết kế nguyên khối kim loại, cùng với mặt lưng được hoàn thiện từ kính cường lực cao cấp, tạo cho máy một vẻ bề ngoài bóng bẩy, sang trọng. Những ai không thích sự mềm mại của những mẫu smartphone cao cấp trên thị trường chắc chắn sẽ thích mê Galaxy Note 20 Ultra 5G với vẻ đẹp nam tính và khoẻ khoắn nhờ thiết kế các cạnh vuông vức. Chiếc Note năm nay cũng đánh dấu sự trở lại của màu sắc vàng đồng vô cùng được ưa chuộng trên những đời Note trước đây sau một thời gian dài vắng bóng.\r\n\r\nGalaxy Note 20 Ultra 5G sở hữu một màn hình với kích thước lớn 6.9 inch, độ phân giải Quad HD+. Tương tự như Galaxy S20 Series, Samsung cũng đã mang công nghệ màn hình Dynamic AMOLED 2X lên những sản phẩm của Galaxy Note 20 Ultra 5G. Đây cũng là những chiếc smartphone tiếp theo của Samsung sở hữu tần số quét lên tới 120Hz cho trải nghiệm hiện thị mượt mà, giúp người dùng đắm chìm trong từng pha hành động và các thao tác vuốt chạm. Triết lý thiết kế màn hình Infinity-O cũng sẽ giúp màn hình được mở rộng ra tối đa để bạn có được những giây phút tuyệt vời với Galaxy Note 20 Ultra 5G.\r\n					<br><br>\r\n					<h3>Cây bút S Pen quyền năng</h3>\r\n					<img style=\"margin-left: 100px;width: 620px;height: 360px;\" src=\"images/samsung/ss4.2.png\" with=\"100%\">\r\n					<br><br>\r\n					Nhắc tới dòng Note chắc chắn không thể bỏ chiếc bút S Pen thần thánh đi cùng năm tháng. Chiếc bút S Pen năm nay được tích hợp thêm tính năng Anywhere với 5 cử chỉ khi chụp ảnh như Xoay để Zoom, nâng lên - xuống để đổi camera, vuốt sang ngang để chuyển chế độ bằng cách nhấn giữ nút. Bên cạnh đó là âm thanh khi viết - vẽ trên thiết bị. Bên cạnh đó, S Pen vẫn thực hiện được sứ mệnh “ngàn đời” của nó là giúp cho người dùng tương tác với điện thoại như một cuốn sổ. Galaxy Note 20 Ultra 5G với màn hình lớn và S Pen hứa hẹn đem lại trải nghiệm vẽ viết và ghi chú tốt nhất trong thế giới smartphone.<br>'),
(6, '8GB', '256GB', 6.7, 'Exynos 990 (7 nm+)', '64MP x 12MP x 12MP.', 'Dung lượng pin (mAh):4.300mAh ( sạc siêu nhanh 25w), Chia sẻ pin không dây, Sạc không dây', 4, 'images/samsung/ss6.jpg', 'images/samsung/ss7.jpg', 'images/samsung/ss8.jpg', '<h2>Mua điện thoại chính hãng, giá rẻ tại Smartphone 24h </h2>\r\n					<br>\r\n					Với những thành công mà Samsung đã gặt hái được từ các thế hệ Galaxy Note đi trước, ông lớn tới từ Hàn Quốc lại tiếp tục làm cho người hâm mộ một lần nữa phải phát cuồng vì Galaxy Note20 – thế hệ Galaxy Note mới nhất của họ. Với Galaxy Note20, người dùng giờ đây sẽ có được những trải nghiệm mượt mà mà hơn, đẳng cấp hơn trong một thiết kế cực kì sang trọng và hoàn hảo.</br>\r\n\r\n<h3> Thiết kế</h3>\r\n					<img style=\"    margin-left: 100px; width: 620px; height: 360px;\" src=\"images/samsung/ss5.1.png\" with=\"100%\" ><br>\r\n					<br>\r\n					Có thể nói, từ trước đến nay, thiết kế của dòng Galaxy Note luôn khiến cho người dùng phải thích thú và mê đắm bởi độ tinh xảo kết hợp với những phiên bản màu sắc cực kì hài hòa. Và Galaxy Note20 cũng không phải là ngoại lệ. Máy sở hữu một thiết kế sang trọng, cùng với mặt lưng tuy chỉ được hoàn thiện từ nhựa nhưng đây là loại nhựa Reinforced Polycarbonate cao cấp có độ bền cao, vừa giúp tăng độ bền lại vừa tạo cho máy một vẻ bề ngoài bóng bẩy. Galaxy Note20 mang trên mình một vẻ đẹp nam tính với các cạnh vuông vức, tạo cảm giác cầm nắm cực kì tốt cho chủ sở hữu\r\n					<br><br>\r\n					<h3>Màn hình</h3>\r\n					<img style=\"margin-left: 100px;width: 620px;height: 360px;\" src=\"images/samsung/ss5.2.png\" with=\"100%\">\r\n					<br><br>\r\n					Galaxy Note 20 sở hữu một màn hình với kích thước cực lớn lên tới 6.7 inch, giúp người dùng có một trải nghiệm tốt hơn rất nhiều so với các thế hệ Galaxy Note trước đây. Với màn hình rộng như vậy, giờ đây bạn có thể tha hồ chơi game hoặc trải nghiệm những thước phim theo cách hoàn hảo nhất. Samsung cũng đã mang công nghệ màn hình Super AMOLED+ lên Galaxy Note20. Công nghệ màn hình Super AMOLED sẽ giúp máy có thể tái tạo được những dải màu sắc siêu chân thực, theo sát với thực tế để mang tới trài nghiệm đã mắt nhất cho người dùng.<br>'),
(7, '3GB', '32GB', 6.4, 'Snapdragon 450 8 nhân', 'Chính 13 MP & Phụ 5 MP, 2 MP', '4000 mAh', 5, 'images/samsung/ss10.jpg', 'images/samsung/ss11.jpg', 'images/samsung/ss12.jpg', '<h2>Mua điện thoại chính hãng, giá rẻ tại Smartphone 24h </h2>\r\n					<br>\r\n					Samsung Galaxy A11 với thiết kế màn hình Infinity-O siêu tràn viền, bộ ba camera ấn tượng, đi kèm với mức giá phải chăng hứa hẹn sẽ tạo nên cơn sốt trên thị trường điện thoại giá rẻ.</br>\r\n\r\n<h3> Màn hình Infinity-O siêu tràn viền 6.4 inch</h3>\r\n					<img style=\"    margin-left: 100px; width: 620px; height: 360px;\" src=\"images/samsung/ss9.1.jpg\" with=\"100%\" ><br>\r\n					<br>\r\n					Vì là smartphone giá rẻ, Galaxy A11 không dùng màn hình AMOLED thường thấy của Samsung, thay vào đó là màn hình PLS TFT độ phân giải HD+. Điểm cộng cho màn hình của máy là kích thước đến 6.4 inch rộng rãi, phù hợp nhiều nhu cầu sử dụng khác nhau.\r\n					<br><br>\r\n					<h3>Lưu giữ khoảnh khắc thường ngày với bộ 3 camera đa dụng</h3>\r\n					<img style=\"margin-left: 100px;width: 620px;height: 360px;\" src=\"images/samsung/ss9.2.jpg\" with=\"100%\">\r\n					<br><br>\r\n					Về camera, Galaxy A11 được trang bị 3 camera mặt sau bao gồm: 13 MP + 5 MP + 2 MP, trong khi mặt trước là camera selfie với thiết kế đục lỗ độ phân giải 8 MP để người dùng chụp ảnh “tự sướng” và gọi video call.<br>'),
(8, '8GB', '128GB', 6.7, 'Exynos 9810 8 nhân', 'Chính 12 MP & Phụ 12 MP, 12 MP', '4500 mAH', 6, 'images/samsung/ss14.jpg', 'images/samsung/ss15.jpg', 'images/samsung/ss16.jpg', '<h2>Mua điện thoại chính hãng, giá rẻ tại Smartphone 24h </h2>\r\n					<br>\r\n					Samsung Galaxy Note Lite ra mắt mang đến trải nghiệm màn hình vô cực tuyệt vời cho người dùng. Phiên bản này có thiết kế nhỏ gọn, tính năng ưu việt và giá rẻ hơn so với bộ đôi Note 10, Note 10 +.</br>\r\n\r\n<h3> Vẻ đẹp hiện đại, màn hình tuyệt mỹ</h3>\r\n					<img style=\"    margin-left: 100px; width: 620px; height: 360px;\" src=\"images/samsung/ss13.1.png\" with=\"100%\" ><br>\r\n					<br>\r\n					Samsung Galaxy Note 10 Lite chính hãng sở hữu thiết kế đẳng cấp quen thuộc với các góc bo tròn đẹp mắt. Phần viền kim loại được uốn cong giúp tăng thêm sự thanh lịch và cầm nắm dễ dàng hơn. Cùng với đó là mặt kính bóng bẩy với màu sắc thu hút. Từng chi tiết trên chiếc smartphone đều được chế tác tỉ mỉ, toát lên sự đẳng cấp.\r\n\r\nMàn hình vô cực Infinity-O cũng là một trong những điểm hấp dẫn của Galaxy Note 10 Lite. Màn hình này có kích thước 6,7 inch, lớn hơn Note 10 và nhỏ hơn Note 10 + một chút. Nó sẽ mang đến không gian sử dụng rộng, hiển thị đầy đủ các nội dung. Với tấm nền Super AMOLED cao cấp, độ phân giải Full HD +, chiếc điện thoại này sẽ giúp bạn tận hưởng chất lượng hiển thị tuyệt vời, chân thực.\r\n\r\n\r\n					<br><br>\r\n					<h3>Bộ ba camera cực chuyên nghiệp, chất lượng hàng đầu</h3>\r\n					<img style=\"margin-left: 100px;width: 620px;height: 360px;\" src=\"images/samsung/ss13.2.jpg\" with=\"100%\">\r\n					<br><br>\r\n					Camera của Samsung Galaxy Note 10 Lite đã được nâng cấp để đáp ứng tốt hơn nhu cầu của người dùng. Bạn sẽ được trải nghiệm camera chính 12 MP với khả năng lấy nét kép Dual Pixel, tạo ra những bức ảnh tuyệt vời. Bên cạnh đó là cảm biến góc siêu rộng 12 MP 123 độ cho phép chụp mọi cảnh thiên nhiên hung vĩ. Và cuối cùng là camera tele 12 MP giúp zoom 2x cận cảnh. Đặc biệt máy còn có camera selfie 32 MP thiết kế hình giọt nước ở mặt trước.\r\n\r\nHệ thống camera chuyên nghiệp sẽ nâng cao chất lượng chụp ảnh và quay video siêu sắc nét. Nhờ đó, bạn có thể lưu giữ lại mọi khoảnh khắc đẹp trong cuộc sống của mình. Galaxy Note 10 Lite cũng có tính năng chụp ảnh xóa phông Live Focus cực đẹp. Nó sẽ giúp làm mờ hậu cảnh và khiến cho bức ảnh trở nên sinh động hơn.<br>'),
(9, '12GB', '128GB', 6.9, 'Exynos 990 (7 nm+)', '108 MP, f/1.8, 26mm (wide), PDAF, OIS Camera siêu ', '5000 mAh, Sạc nhanh 45W, Sạc không dây 15W', 7, 'images/samsung/ss17.1.jpg', 'images/samsung/ss17.2.jpg', 'images/samsung/ss17.3.jpg', '<h2>Mua điện thoại chính hãng, giá rẻ tại Smartphone 24h </h2>\r\n					<br>\r\n					Galaxy S20 là dòng sản phẩm mới sắp được Samsung cho ra mắt. Trong ba phiên bản đã giới thiệu trước đó thì Samsung Galaxy S20 Ultra là phiên bản cao cấp nhất. Máy được trang bị nhiều tính năng tuyệt vời cùng thông số ấn tượng.</br>\r\n\r\n<h3> Màn hình AMOLED Full HD kích thước lên tới 6.9 inch</h3>\r\n					<img style=\"    margin-left: 100px; width: 620px; height: 360px;\" src=\"images/samsung/ss17.4.jpg\" with=\"100%\" ><br>\r\n					<br>\r\n					Thiết kế của Samsung Galaxy S20 Ultra tương đối giống với hai phiên bản Galaxy S20 và Galaxy S20 +. Có lẽ điểm khác biệt rõ ràng nhất là kích thước của sản phẩm. Galaxy S20 Ultra sở hữu màn hình với kích thước lên tới 6.9 inch, lớn hơn hẳn hai thiết bị còn lại. Tấm nền AMOLED cùng độ phân giải Full HD sẽ mang đến hình ảnh hiển thị vô cùng sắc nét.\r\n\r\nMặc dù vẫn là màn hình lỗ bấm nhưng máy lại được trang bị tần số quét lên tới 120 Hz. Tần số này sẽ tăng độ nhạy cho cảm ứng. Nhờ đó các thao tác vuốt, chạm sẽ trở nên chân thực, mượt mà hơn. Bạn sẽ cảm nhận rất rõ điều này khi chơi các tựa game đồ họa cao. Đặc biệt công nghệ cảm ứng vân tay ngay trên màn hình cũng giúp thao tác nhanh chóng, thuận tiện. Bên cạnh đó, mặt lưng của máy được làm bằng kính cường lực cao cấp, sang trọng và chống va đập tốt.\r\n					<br><br>\r\n					<h3>Samsung Galaxy S20 Ultra có tơi 4 camera đẳng cấp</h3>\r\n					<img style=\"margin-left: 100px;width: 620px;height: 360px;\" src=\"images/samsung/ss17.5.jpg\" with=\"100%\">\r\n					<br><br>\r\n					Samsung đã mang đến bộ tứ camera đẳng cấp cho Galaxy S20 Ultra. Đầu tiên phải kể đến camera chính với độ phân giải lên tới 108 MP. Có thể đây không phải là chiếc smartphone đầu tiên trang bị cảm biến 108 MP nhưng chắc chắn camera của Samsung sẽ được tinh chỉnh để giúp tạo ra những bức ảnh đẹp nhất. Camera này còn có thể zoom quang 5x.\r\n\r\nTiếp theo là camera ToF 3D tương tự như Galaxy Note 10. Còn lại là bộ đôi camera tele 48 MP và cảm biến góc siêu rộng 12 MP. Với cụm camera này, bạn có thể quay video 8K 30 fps, zoom quang 10x hoặc zoom điện tử 100x. Và tất nhiên máy sẽ không thể hoàn chỉnh nếu như thiếu camera selfie 40 MP ở mặt trước. Samsung đã tích hợp thêm các chế độ làm đẹp nhằm giúp người dùng có được bức ảnh đẹp nhất.<br>'),
(11, '8GB', '256GB', 6.7, 'Qualcomm Snapdragon 855 Plus', 'Chính 12 MP & Phụ 12 MP', '3300 mAh', 8, 'images/samsung/ss18.1.jpg', 'images/samsung/ss18.2.jpg', 'images/samsung/ss18.3.jpg', '<h2>Mua điện thoại chính hãng, giá rẻ tại Smartphone 24h </h2>\r\n					<br>\r\n					Samsung đã ra mắt điện thoại Galaxy Z Flip tại sự kiện Unpacked 2020. Chỉ vài giờ sau đó, tuyệt tác màn hình gập này đã ra được giới thiệu tại Việt Nam với một kiểu dáng hoàn toàn khác so với Galaxy Fold.</br>\r\n\r\n<h3> Thiết kế màn hình gập bằng kính lần đầu tiên xuất hiện trên Galaxy Z Flip</h3>\r\n					<img style=\"    margin-left: 100px; width: 620px; height: 360px;\" src=\"images/samsung/ss18.4.jpg\" with=\"100%\" ><br>\r\n					<br>\r\n					Galaxy Z Flip chính hãng được Samsung trang bị công nghệ độc quyền Infinity Flex và Ultra Thin Glass (UTG). Nhờ đó, chiếc điện thoại này đã trở thành sản phẩm đầu tiên trên thế giới sở hữu màn hình gập bằng kính. Thiết kế của Galaxy Z Flip mỏng và cao cấp hơn so với các thiết bị khác. Đặc biệt các góc bo tròn giúp âm thanh khi gập máy trở nên dễ chịu hơn. \r\n\r\nTheo như Samsung đã tiết lộ, thiết bị này có thể gập được tới 200.000 lần. Vậy là kể cả khi bạn đóng/mở 100 lần/ngày thì vẫn dùng được trong 5 năm. Cơ chế đóng/mở của Z Flip cũng được đánh giá là dễ hơn Galaxy Fold. Bên cạnh đó máy còn có chế độ Flex Mode cho phép mở máy ở góc 90 độ. Nhờ đó, bạn có thể chụp ảnh selfie ngay cả khi để máy trên bàn. Ngoài ra, bạn có thể sử dụng hai ứng dụng cùng một lúc bằng cách chia đôi màn hình.\r\n					<br><br>\r\n					<h3>Màn hình AMOLED Full HD + với tỷ lệ lên tới 21,9:9</h3>\r\n					<img style=\"margin-left: 100px;width: 620px;height: 360px;\" src=\"images/samsung/ss18.5.jpg\" with=\"100%\">\r\n					<br><br>\r\n					Samsung Galaxy Z Flip được trang bị tấm nền AMOLED, độ phân giải Full HD +. Với kích thước 6.7 inch cùng tỷ lệ 21,9:9, màn hình của máy mang đến trải nghiệm cực kỳ tuyệt vời. Sản phẩm này có ba phiên bản màu sắc tương đối dễ chọn lựa là đen, tím và vàng.\r\n\r\nKhi gập lại, Galaxy Z Flip chỉ nhỏ như một hộp phấn trang điểm và rất thuận tiện khi mang bên người. Phía bên ngoài của máy có một màn hình nhỏ kích thước 1,1 inch. Nhờ đó, bạn có thể xem giờ, xem phần trăm pin, nhận thông báo... mà không cần mở máy.<br>'),
(12, '6GB', '128GB', 6.5, 'Exynos 9611', 'Camera chính 48 MP & Phụ 12 MP, 5 MP, 5 MP', '4000 mAh', 9, 'images/samsung/ss19.1.jpg', 'images/samsung/ss19.2.jpg', 'images/samsung/ss19.3.jpg', '<h2>Mua điện thoại chính hãng, giá rẻ tại Smartphone 24h </h2>\r\n					<br>\r\n					Galaxy A là dòng điện thoại tầm trung dẫn đầu về doanh thu tại thị trường Việt Nam. Ngày 12/12/2019, Công ty Điện tử Samsung Vina đã cho ra mắt Samsung Galaxy A51, chiếc smartphone sở hữu Camera Macro ấn tượng.</br>\r\n\r\n<h3> Galaxy A51 đánh dấu sự thành công của dòng Galaxy A tại Việt Nam</h3>\r\n					<img style=\"    margin-left: 100px; width: 620px; height: 360px;\" src=\"images/samsung/ss19.4.jpg\" with=\"100%\" ><br>\r\n					<br>\r\n					Samsung đã liên tục tạo ra những cải tiến công nghệ mới trên thị trường. Và Samsung Galaxy A51 chính là chiếc điện thoại thông minh tiếp theo gắn liền với những bước tiên phong đột phá ấy. Bởi vì đây là sản phẩm sở hữu Camera Macro chụp ảnh cận cảnh ấn tượng. Nó sẽ giúp bạn ghi lại mọi hình ảnh một cách chi tiết nhất. Kể cả những vật thể vô cùng nhỏ bé cũng có thể được chụp lại rõ nét, thể hiện phong cách Macro đầy nghệ thuật.\r\n\r\nÔng Nguyễn Quang Hiền Huy, đại diện Công ty Điện tử Samsung Vina chia sẻ rằng Galaxy A luôn là dòng Smartphone được ưa chuộng nhất và dẫn đầu thị phần tại Việt Nam. Và sự ra đời của Galaxy A51 đã mở đầu cho Galaxy A 2020, đồng thời đưa Việt Nam trở thành nước đầu tiên trên thế giới cho ra mắt sản phẩm này.\r\n					<br><br>\r\n					<h3>Camera Macro chụp ảnh cận cảnh xuất hiện lần đầu tiên trên dòng Galaxy A</h3>\r\n					<img style=\"margin-left: 100px;width: 620px;height: 360px;\" src=\"images/samsung/ss19.5.jpg\" with=\"100%\">\r\n					<br><br>\r\n					Samsung Galaxy A51 chính hãng được trang bị tới 4 camera ở mặt lưng. Ấn tượng nhất là camera Macro 5 MP chụp ảnh cận cảnh, lấy nét cực tốt. Nó có thể ghi lại từng chi tiết nhỏ nhất một cách nghệ thuật. Bên cạnh đó là camera chính 48 MP giúp tạo ra những hình ảnh chân thực, sinh động. Tiếp theo là camera góc siêu rộng 123 độ 12 MP cùng tính năng chuyển đổi thông minh. Nghĩa là khi thấy cần thiết, máy sẽ tự động chuyển đổi chế độ chụp. Cuối cùng là camera cảm biến chiều sâu 5 MP với hiệu ứng xóa phông độc đáo. Camera trước 32 MP cũng sẽ mang đến cho bạn những hình ảnh selfie đẹp.\r\n\r\nSản phẩm còn sở hữu công nghệ AI với khả năng nhận diện đến 30 chủ thể, đồng thời tối ưu hóa hình ảnh cực tốt. Cùng với đó, tính năng Super Steady Video giúp quay video ổn định, mượt mà hơn. Tính năng này cũng sẽ giảm bớt tình trạng rung khi quay video. Vậy nên cho dù bạn đang vận động hay quay vật thể chuyển động thì vẫn đảm bảo lưu giữ hình ảnh sắc nét.<br>'),
(13, '8 GB', '128 GB', 6.2, 'Exynos 990 (7 nm+)', '64MP x 12MP x 12Mp', '4000 mAh, Sạc nhanh 25W', 10, 'images/samsung/ss20.1.jpg', 'images/samsung/ss20.2.jpg', 'images/samsung/ss20.3.jpg', '<h2>Mua điện thoại Samsung Galaxy S20 giá rẻ tại Smartphone24h </h2>\r\n					<br>\r\n					Galaxy S20 – Chiếc flagship mới nhất của Samsung đã được ra mắt vào đầu năm 2020 đem tới cho người dùng nhiều cải tiến về hiệu năng cũng như các tính năng mới cực hữu ích.</br>\r\n<h3>Màn hình siêu đẹp</h3>\r\n					<img style=\"    margin-left: 100px; width: 620px; height: 360px;\" src=\"images/samsung/ss20.jpg\" with=\"100%\" ><br>\r\n					<br>\r\n					iPhone 11 vẫn sở hữu thiết kế tràn viền với “tai thỏ” giống iPhone X.Mặt lưng Sở hữu một màn hình vô cực 6.2 inch, độ phân giải WQHD+ 3200x1440P với tần số quét lên tới 120Hz, trên tấm nền Super AMOLED trứ danh; tất cả những điều đó đã làm nên một Galaxy S20 với màn hình sắc nét nhất từ trước đến nay. Các chi tiết được tái hiện cực kì mượt mà, đảm bảo cho người dùng sẽ có những trải nghiệm tốt nhất có thể. Ngoài ra, ẩn bên dưới màn hình sẽ là cảm biến vân tay Qualcomm 3D Sonic Max thế hệ mới nhất, cho độ phủ rộng hơn gấp 17 lần so với người tiền nhiệm Galaxy S10.\r\n					<br><br>\r\n					<h3>Cấu hình mạnh mẽ với con chip Exynos 990</h3>\r\n					<img style=\"margin-left: 100px;width: 620px;height: 360px;\" src=\"images/samsung/ss20.4.jpg\" with=\"100%\">\r\n					<br><br>\r\n					Galaxy S20 sẽ được Samsung trang bị cho con chip “cây nhà lá vườn” mới nhất Exynos 990, được sản xuất trên quy trình 7nm, đảm bảo cho máy được vận hành một cách trơn tru, mượt mà nhất mà vẫn tiết kiệm được điện năng. Với con chip Exynos 990, Galaxy S20 có thể xử lý mượt các tác vụ hàng ngày cho đến chiến những tựa game nặng đô.<br>'),
(14, '3 GB', '32 GB', 6.26, 'Qualcomm Snapdragon 450 8 nhân 64-bit', '13MP + 2MP', '4000 mAh', 11, 'images/huawei/ss21.1.jpg', 'images/huawei/ss21.2.jpg', 'images/huawei/ss21.3.jpg', '<h2>Mua Huawei Y7 Pro 2019 chính hãng tại Smartphone24h </h2>\r\n					<br>\r\n					Huawei Y7 Pro 2019 là mẫu điện thoại phổ thông mới nhất của Huawei đã có mặt tại Hoàng Hà Mobile. Với người dùng cần một chiếc smartphone màn hình lớn, thiết kế đẹp, camera chất lượng với mức giá phải chăng thì Huawei Y7 Pro 2019 là dành cho bạn.\r\n					<img style=\"    margin-left: 100px; width: 620px; height: 360px;\" src=\"images/huawei/ss21.4.jpg\" with=\"100%\" ><br>\r\n					<br>\r\n					Huawei Y7 Pro 2019 có phần lưng máy và khung viền hoàn thiện bằng chất liệu nhựa, chất liệu giúp máy nhẹ nhẹ hơn và để giảm được chi phí sản xuất cho một chiếc điện thoại phổ thông.\r\n					<br><br>\r\n					<h3>Tối ưu hiển thị với màn hình giọt nướcXR</h3>\r\n					<img style=\"margin-left: 100px;width: 620px;height: 360px;\" src=\"images/huawei/ss21.5.jpg\" with=\"100%\">\r\n					<br><br>\r\n					Huawei Y7 Pro 2019 trang bị màn hinh lớn kích thước 6.26inch, độ phân giải HD+, tấm màn hình IPS LCD, đây là những trang bị tốt trong phân khúc giá của máy.\r\n\r\nThiết kế màn hình giọt nước thay vì notch “tai thỏ” giúp không gian hiển lên tới 86,7%, khu vực giọt nước sẽ chứa camera selfie, cảm biến và loa thoại. Thiết kế phần viền của máy không quá mỏng, phần cằm dưới vẫn sẽ có chỗ dành cho logo Huawei. Việc tối ưu hóa màn hình trên Huawei Y7 Pro 2019 chưa thể hoàn hảo do phần viền bezel chưa được mỏng nhưng so với các mẫu điện thoại ở cùng phần khúc thì Huawei Y7 Pro 2019 hoàn toàn không thua kém.<br>'),
(15, '6GB', '128 GB', 6.59, 'Kirin 710F 8 nhân', 'Chính 48 MP & Phụ 8 MP, 2 MP', '4000 mAh', 12, 'images/huawei/ss22.1.jpg', 'images/huawei/ss22.2.jpg', 'images/huawei/ss22.3.jpg', '<h2>Mua điện thoại chính hãng, giá rẻ tại Smartphone 24h </h2>\r\n					<br>\r\n					Huawei Y9s là chiếc smartphone nối tiếp sự thành công của Huawei Y9 2019. Với sự nâng cấp về hiệu năng, cải tiến về thiết kế, sản phẩm này hữa hẹn sẽ mang đến trải nghiệm thú vị cho người dùng.</br>\r\n<h3> Thiết kế tràn viền, mặt lưng gradient bắt mắt</h3>\r\n					<img style=\"    margin-left: 100px; width: 620px; height: 360px;\" src=\"images/huawei/ss22.4.jpg\" with=\"100%\" ><br>\r\n					<br>\r\n					Huawei Y9s chính hãng sở hữu thiết kế màn hình tràn viền với tỷ lệ hiển thị lên đến 91%. Không có “tai thỏ” hay “nốt ruồi” như đa số sản phẩn trên thị trường. Màn hình của máy vô cùng hoàn hảo, gần như không khuyết điểm. Bên cạnh đó, mặt lưng phía sau cũng được làm cong 3D mang đến vẻ đẹp tinh xảo. Các đường vân nano càng làm cho máy trở nên bóng bẩy, sang trọng hơn.\r\n\r\nĐặc biệt Huawei nổi tiếng với những thiết kế được yêu thích hàng đầu. Hãng đã sử dụng mặt kính gradient nhằm tạo ra hiệu ứng chuyển màu bắt mắt. Màu sắc sẽ thay đổi theo ánh sáng vậy nên chỉ cần nghiêng máy là bạn sẽ cảm nhận được. Huawei Y9s có sức hấp dẫn lớn đối với người dùng là nhờ hai màu sắc quyến rũ Đen Bóng Đêm và Xanh Thiên Thanh.\r\n					<br><br>\r\n					<h3>Màn hình Full HD + với kích thước lên tới 6.59 inch</h3>\r\n					<img style=\"margin-left: 100px;width: 620px;height: 360px;\" src=\"images/huawei/ss22.5.jpg\" with=\"100%\">\r\n					<br><br>\r\n					Màn hình của Huawei Y9s có kích thước 6.59 icnh, một kích thước lớn hơn so với các sản phẩm cùng tầm giá. Và nó sẽ mang đến những trải nghiệm xem phim, lướt web, chơi game… cực thú vị cho bạn. Tấm nền Ultra Fullview cùng độ phân giải Full HD + cũng sẽ giúp hình ảnh hiển thị rõ nét, đúng màu sắc.\r\n\r\nHuawei đã trang bị cho Y9s tính năng bảo vệ mắt người dùng. Nghĩa là khi bật chế độ này máy sẽ tự động lọc ánh sáng xanh gây hại cho mắt, mang lại cảm giác dịu nhẹ kể cả khi nhìn vào màn hình suốt thời gian dài. Chế độ này đã được chứng nhận bởi TUV Rheinland và chắc chắn an toàn tuyệt đối với mắt. Vậy nên bạn có thể thoải mái sử dụng chiếc smartphone của mình kể cả trong bóng tối.<br>'),
(16, '8 GB', '128 GB', 6.26, 'Hisilicon Kirin 980 8 nhân 64-bit', 'Chính 48 MP & Phụ 16 MP, 2 MP, 2 MP', '3750 mAh', 13, 'images/huawei/ss23.1.jpg', 'images/huawei/ss23.2.jpg', 'images/huawei/ss23.3.jpg', '<h2>Mua điện thoại chính hãng, giá rẻ tại Smartphone 24h </h2>\r\n					<br>\r\n					Mặc dù chỉ mới được ra mắt đợt tháng 9/2019 nhưng Huawei Nova 5T đã tạo nên cơn sốt trên thị trường. Với thiết kế sang trọng, chip Kirin 980 8 nhân mạnh mẽ, sản phẩm này thực sự đáng để bạn sở hữu.</br>\r\n\r\n<h3> Thiết kế hiện đại, màn hình IPS LCD tràn viền độc đáo</h3>\r\n					<img style=\"    margin-left: 100px; width: 620px; height: 360px;\" src=\"images/huawei/ss23.4.jpg\" with=\"100%\" ><br>\r\n					<br>\r\n					Huawei Nova 5T được làm từ kim loại cao cấp kết hợp với hiệu ứng gradient đẹp mắt. Đây là hiệu ứng chuyển màu xảy ra khi bạn nghiêng máy ở các góc nhìn khác nhau. Phần viền máy cong tròn mềm mại giúp cầm nắm dễ dàng trong lòng bàn tay. Huawei Nova 5T chính hãng có 3 màu xanh, tím, đen sang trọng, đẳng cấp, phù hợp với sở thích người dùng.\r\n\r\nSản phẩm sở hữu màn hình IPS LCD kích thước 6.26 inch. Cùng với đó là độ phân giải Full HD mang đến những hình ảnh tươi sáng, sắc nét, màu sắc đúng chuẩn. Vì có tới 16,7 triệu điểm màu, 96% độ bão hòa màu nên chiếc điện thoại này hiện đang là một trong những thiết bị có màn hình đẹp nhất. Đặc biệt thay cho thiết kế tai thỏ, giọt nước là thiết kế tràn viền. Huawei vẫn để camera phía trước màn hình nhưng lại nằm ở góc trái. Nhờ đó người dùng sẽ có những bức ảnh với góc chụp tự nhiên hơn.\r\n					<br><br>\r\n					<h3>Bộ 4 camera siêu ấn tượng, có độ phân giải cao</h3>\r\n					<img style=\"margin-left: 100px;width: 620px;height: 360px;\" src=\"images/huawei/ss23.5.jpg\" with=\"100%\">\r\n					<br><br>\r\n					Huawei Nova 5T sở hữu tới 4 camera đẳng cấp, ấn tượng. Một camera chính 48 MB, khẩu độ f/1.8 với khả năng tự động lấy nét chuyên nghiệp. Một camera góc rộng 16 MP, khẩu độ f/2.2 giúp bắt trọn mọi khoảnh khắc. Còn lại là camera cảm biến độ sâu 2 MP f/2.4 và camera macro 2 MP f/2.4. Bên cạnh đó, máy còn được tích hợp cảm biến AI nhằm tăng khả năng chống rung, hiệu ứng đặc sắc, làm video đẹp hơn...Bạn sẽ có thể tạo ra những bức ảnh, thước phim vô cùng sống động.\r\n\r\nCamera selfie trên màn hình có độ phân giải 32 MP. Nhờ đó hình ảnh selfie của bạn sẽ đẹp hơn, chuyên nghiệp hơn. Đặc biệt nếu chụp trong điều kiện thiếu sáng, chế độ Super Night cùng thuật toán Light Fushion 4 trong 1 sẽ tăng khả năng thu hút ánh sáng, khử độ nhiễu để tránh bị mờ ảnh. Các hiệu ứng dễ thương cũng được tích hợp trên máy để bạn dễ dàng tạo ra bức hình đáng yêu, trẻ trung.<br>'),
(17, '4GB', '128 GB', 6.59, 'HiSilicon Kirin 710F 8 nhân', 'Chính 16 MP & Phụ 8 MP, 2 MP', '4000 mAh', 14, 'images/huawei/ss24.1.jpg', 'images/huawei/ss24.2.jpg', 'images/huawei/ss24.3.jpg', '<h2>Mua điện thoại chính hãng, giá rẻ tại Smartphone 24h </h2>\r\n					<br>\r\n					Đặc điểm nổi bật của Huawei Y9 Prime (2019)\r\n\r\nTìm hiểu thêm\r\nBộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, Sách hướng dẫn, Cáp, Cây lấy sim, Ốp lưng\r\n\r\nHuawei Y9 Prime (2019) là phiên bản kế nhiệm của chiếc Y9 Prime (2018) đã ra mắt năm ngoái và cũng là chiếc điện thoại đầu tiên của Huawei được trang bị công nghệ camera trượt và màn hình tràn viền ra bốn cạnh.</br>\r\n\r\n<h3> Thiết kế tràn viền đúng nghĩa</h3>\r\n					<img style=\"    margin-left: 100px; width: 620px; height: 360px;\" src=\"images/huawei/ss24.4.jpg\" with=\"100%\" ><br>\r\n					<br>\r\n					Gần đây thì xu thế làm smartphone \"tai thỏ\" hay \"giọt nước\" đã không còn được yêu thích như trước mà thay vào đó là màn hình tràn viền đúng nghĩa.\r\n					<br><br>\r\n					<h3>Camera \"thoắt ẩn thoắt hiện\"\r\n</h3>\r\n					<img style=\"margin-left: 100px;width: 620px;height: 360px;\" src=\"images/huawei/ss24.5.jpg\" with=\"100%\">\r\n					<br><br>\r\nĐiểm nhấn trên Huawei Y9 Prime (2019) chính là cụm camera trước đó là khả năng “thò thụt” giúp chiếc máy trông cực ngầu và hiện đại.\r\nỐng kính được trang bị trên cụm camera trước là 16 MP cho phép người dùng ghi lại những khoảnh khắc rất chân thật.<br>'),
(18, '6GB', '64GB', 6.5, 'Snapdragon 675 8 nhân', 'Camera chính 48MP Camera góc siêu rộng 8MP Camera ', '5000 mAh', 15, 'images/vsmart/ss25.1.jpg', 'images/vsmart/ss25.2.jpg', 'images/vsmart/ss25.3.jpg', '<h2>Mua điện thoại chính hãng, giá rẻ tại Smartphone 24h </h2>\r\n					<br>\r\n					Vsmart là dòng điện thoại thông minh thuộc phân khúc giá rẻ được sản xuất bởi tập đoàn Vingroup. Và mới đây, Vsmart Live 4 đã chính thức được ra mắt với nhiều tính năng hiện đại cùng nhiều cải tiến hơn so với người tiền nhiệm, tự hào là chiếc điện thoại đầu tiên đánh dấu bước tự chủ từ khâu thiết kế cho tới phần cứng, hệ điều hành và sản xuất đều 100% do VinSmart đảm nhiệm.</br>\r\n\r\n<h3> Màn hình “đục lỗ” thời thượng, bắt kịp xu thế</h3>\r\n					<img style=\"    margin-left: 100px; width: 620px; height: 360px;\" src=\"images/vsmart/ss25.4.jpg\" with=\"100%\" ><br>\r\n					<br>\r\n					Vsmart Live 4 sở hữu một màn hình tràn viền dạng “đục lỗ” với kích thước 6.5 inch. Hãng đã bắt kịp xu hướng hiện nay khi đã sản xuất ra một thiết bị có thiết kế màn hình gần như đã đạt tới sự hoàn hảo. Với màn hình “đục lỗ” tràn viền này, bạn sẽ có thể thoải mái thao tác chỉ bằng một tay mà không lo bị giới hạn. Độ phân giải Full HD+ kết hợp cùng tấm nền LTPS LCD cao cấp sẽ mang tới cho người dùng những trải nghiệm hình ảnh sắc nét nhất.\r\n\r\nMặt lưng sau của máy tuy chỉ được hoàn thiện từ nhựa nhưng điều đó cũng không làm mất đi vẻ đẹp hiện đại và sang trọng của máy. Phần mặt lưng được bo cong về hai bên mềm mại, mang tới cảm giác cấm nắm vô cùng chắc chắn. Thiết kế này càng làm tăng thêm vẻ đẹp sang trọng của sản phẩm.\r\n					<br><br>\r\n					<h3>Khả năng nhiếp ảnh chuyên nghiệp với bộ 4 camera 48MP</h3>\r\n					<img style=\"margin-left: 100px;width: 620px;height: 360px;\" src=\"images/vsmart/ss25.5.jpg\" with=\"100%\">\r\n					<br><br>\r\n					Mặc dù chỉ là một chiếc điện thoại chỉ thuộc phân khúc giá rẻ nhưng Vsmart Live 4 vẫn được trang bị tới 4 camera sau. Trong đó có camera chính độ phân giải 48MP khẩu độ f/1.79 siêu chụp đêm; camera góc siêu rộng 119 độ 8MP f/2.2, camera xóa phông chuyên nghiệp 5MP và cuối cùng là một camera Macro 2MP. Camera Macro cũng là điểm cải tiến lớn của Vsmart Live 4 so với mẫu Live thế hệ đầu. Ngoài ra còn vô vàn những tính năng thú vị khác như HDR, làm đẹp bằng AI, chế độ chụp chuyên nghiệp mới, chế độ Timelapse, quay phim Slow-Motion và quay phim chân dung hoàn toàn mới. Bộ 4 camera này chắc chắn sẽ mang tới cho người dùng những bức hình lung linh và ưng ý nhất.\r\n\r\nCamera selfie của máy được đặt trong phần “đục lỗ” ở phía mặt trước, độ phân giải 13MP, hỗ trợ quay video với độ phân giải lên tới 4K@30fps.<br>'),
(19, '6GB', '64GB', 6.39, 'MediaTek Helio P60 8 nhân', 'Chính 48 MP & Phụ 8 MP, 2 MP', '4020 mAh', 16, 'images/vsmart/ss26.1.jpg', 'images/vsmart/ss26.2.jpg', 'images/vsmart/ss26.3.jpg', '<h2>Mua điện thoại chính hãng, giá rẻ tại Smartphone 24h </h2>\r\n					<br>\r\n					Vsmart là điện thoại thông minh thuộc phân khúc giá rẻ được sản xuất bởi tập đoàn Vingroup. Mới đây, Vsmart Active 3 đã ra mắt với nhiều tính năng hiện đại, cấu hình cao hơn thế hệ trước.</br>\r\n\r\n<h3> Màn hình tràn viền cùng mặt lưng kính cao cấp\r\n</h3>\r\n					<img style=\"    margin-left: 100px; width: 620px; height: 360px;\" src=\"images/vsmart/ss26.4.jpg\" with=\"100%\" ><br>\r\n					<br>\r\n					Vsmart Active 3 sở hữu màn hình tràn viền với kích thước 6.39 inch. Hãng đã bắt kịp xu hướng hiện nay khi sản xuất ra thiết bị có thiết kế màn hình hoàn hảo 100%. Tỉ lệ màn hình lên tới 19.5:9 và không có camera hình giọt nước hay đục lỗ phía trước. Như vậy bạn sẽ thoải mái thao tác một tay mà không lo bị giới hạn bởi phần không tràn viền. Độ phân Full HD+ 2340 x 1080 sẽ mang đến hình ảnh hiển thị sắc nét.\r\n\r\nMặt lưng còn có hiệu ứng chuyển màu độc đáo, đẹp mắt. Thiết kế này càng làm tăng thêm vẻ sang trọng cho sản phẩm.\r\n					<br><br>\r\n					<h3>Bộ ba camera sau kết hợp với camera selfie “thò thụt”</h3>\r\n					<img style=\"margin-left: 100px;width: 620px;height: 360px;\" src=\"images/vsmart/ss26.5.jpg\" with=\"100%\">\r\n					<br><br>\r\n					Mặc dù là điện thoại thuộc phân khúc giá rẻ nhưng Vsmart Active 3 vẫn được trang bị tới ba camera sau. Trong đó có camera chính 48 MP f/1.79; camera góc siêu rộng 118.8 độ 8 MP f/2.2 và camera xóa phông chuyên nghiệp 2 MP. Bộ ba camera này chắc chắn sẽ mang đến những bức hình lung linh cho bạn. Đặc biệt khả năng chụp ảnh trong đêm tối của máy cũng rất ấn tượng.\r\n\r\nCamera selfie của Active 3 được thiết kế kiểu pop-up “thò thụt” với độ phân giải lên tới 16 MP. Ngay khi bạn chuyển sang chế độ selfie thì camera sẽ tự động đưa lên trên một cách linh hoạt, nhanh chóng. Bên cạnh đó, Vsmart Active 3 cũng có chế độ mở khóa bằng vân tay cực an toàn, tiện dụng.<br>'),
(20, '4GB', '64GB', 6.39, 'MediaTek Helio P60 8 nhân', 'Chính 48 MP & Phụ 8 MP, 2 MP', '4020 mAh', 17, 'images/vsmart/ss27.1.jpg', 'images/vsmart/ss27.2.jpg', 'images/vsmart/ss27.3.jpg', '<h2>Mua điện thoại chính hãng, giá rẻ tại Smartphone 24h </h2>\r\n					<br>\r\n					Vào tháng 1/2020, Vsmart cho ra mắt Vsmart Active 3 4GB/64GB - điện thoại thuộc phân khúc tầm trung nhưng sở hữu những công nghệ vô cùng hiện đại. Điểm đặc biệt của chiếc điện thoại này nằm ở cụm camera sau chuyên nghiệp, cho phép người dùng thoả sức sáng tạo, ghi lại những khoảnh khắc đẹp.</br>\r\n\r\n<h3> Mặt lưng cá tính với vỏ kính hiệu ứng gradient</h3>\r\n					<img style=\"    margin-left: 100px; width: 620px; height: 360px;\" src=\"images/vsmart/ss27.4.jpg\" with=\"100%\" ><br>\r\n					<br>\r\n					Active 3 được ra mắt với 4 phiên bản màu thịnh hành: Xanh lục bảo, Xanh sapphire, Đen thạch anh và Tím ngọc. Thiết kế cong nhẹ và bo tròn các góc mềm mại.\r\n					<br><br>\r\n					<h3>Màn hình vượt chuẩn tầm nhìn</h3>\r\n					<img style=\"margin-left: 100px;width: 620px;height: 360px;\" src=\"images/vsmart/ss27.5.jpg\" with=\"100%\">\r\n					<br><br>\r\n					Kiểu thiết kế tràn viền kích thước 6.39 inch chiếm đến 92% kích thước máy, mang đến không gian nhìn cực rộng. \r\n\r\nMàn hình của Vsmart Active 3 sở hữu tấm nền AMOLED cho ra độ sáng và độ tương phản rất cao, đảm bảo hình ảnh hiển thị đã mắt và rõ ràng, độ tương phản lẫn màu sắc được tái hiện tốt nhất.<br>'),
(21, '8 GB', '128 GB', 6.39, 'Snapdragon 730 8 nhân, Tốc độc CPU: 2 nhân 2.208 G', 'Camera chính 64MP Camera góc siêu rộng 8MP Camera ', '4000 mAh, Sạc nhanh QC 3.0 9V/2A, 18W', 18, 'images/vsmart/ss28.1.jpg', 'images/vsmart/ss28.2.jpg', 'images/vsmart/ss28.3.jpg', '<h2>Mua điện thoại chính hãng, giá rẻ tại Smartphone 24h </h2>\r\n					<br>\r\n					Được trang bị một cấu hình mạnh mẽ đi cùng với công nghệ camera ẩn dưới màn hình ấn tượng, Vsmart Aris Pro hứa hẹn sẽ là chiếc điện thoại “bom tấn” tại thị trường di động Việt cuối năm nay, mang tới những trải nghiệm khác lạ và độc đáo nhất tới cho người dùng</br>\r\n\r\n<h3> Thiết kế sang trọng, màn hình sắc nét</h3>\r\n					<img style=\"    margin-left: 100px; width: 620px; height: 360px;\" src=\"images/vsmart/ss28.4.jpg\" with=\"100%\" ><br>\r\n					<br>\r\n					Vsmart Aris Pro mang một thiết kế tổng thể không có quá nhiều sự khác biệt so với người anh em Aris của mình. Máy cũng được hoàn thiện từ một bộ khung kim loại chắc chắn và bền bỉ, mặt lưng được làm từ kính được phủ một lớp sơn mờ, bo cong nhẹ nhàng về hai bên cùng một logo Vsmart nổi bật nằm ở chính giữa. Cảm biến vân tay được tích hợp thẳng vào phím nguồn ở bên phía cạnh phải. Loại cảm biến vân tay này sẽ có ưu điểm và lợi thế hơn so với cảm biến vân tay quang học trong màn hình về độ chính xác và tốc độ mở khóa.\r\n					<br><br>\r\n					<h3>Hiệu năng mạnh mẽ cùng Snapdragon 730</h3>\r\n					<img style=\"margin-left: 100px;width: 620px;height: 360px;\" src=\"images/vsmart/ss28.5.jpg\" with=\"100%\">\r\n					<br><br>\r\n					Kết hợp với bộ vi xử lý này là thanh RAM 8GB cùng với bộ nhớ trong 128GB, giúp khả năng đa nhiệm cũng như lưu trữ dữ liệu của người dùng đuọc mượt mà và thoải mái hơn rất nhiều mà không cần phải lắp thêm thẻ nhớ microSD rời. Vsmart Aris Pro chắc chắn sẽ được cài đặt giao diện VOS 3.0 mới nhất được tùy biến trên nền hệ điều hành Android 10. Không chỉ vậy, cung cấp năng lượng cho Vsmart Aris Pro là một viên pin với dung lượng 4000mAh, kết hợp với khả năng sạc nhanh Quick Charge 3.0 công suất 18W, đảm bảo chắc chắn rằng người dùng sẽ có thể sử dụng máy trong một ngày dài mà không cần phải lo lắng về việc máy bị cạn năng lượng<br>'),
(22, '2GB', '16GB', 6, 'MediaTek MT6739WW 4 nhân', '8 MP', '3000mAh', 19, 'images/vsmart/ss29.1.jpg', 'images/vsmart/ss29.2.jpg', 'images/vsmart/ss29.3.jpg', '<h2>Mua điện thoại chính hãng, giá rẻ tại Smartphone 24h </h2>\r\n					<br>\r\n					Vsmart Bee 3 là một chiếc smartphone với mức giá siêu rẻ được ra đời để phục vụ người dùng. Máy sở hữu hiệu năng đủ dùng cùng camera chất lượng tốt, màn hình lớn thoải mái và hệ điều hành VOS được tối ưu dành riêng cho người Việt.</br>\r\n\r\n<h3> Màn hình rộng rãi lên đến 6 inch</h3>\r\n					<img style=\"    margin-left: 100px; width: 620px; height: 360px;\" src=\"images/vsmart/ss29.4.jpg\" with=\"100%\" ><br>\r\n					<br>\r\n					Độ phân giải ở mức HD+, vừa đủ sắc nét và cũng giúp thiết bị tiết kiệm pin đáng kể so với những màn hình có độ phân giải cao hơn.\r\n\r\nCông nghệ màn hình IPS cho góc nhìn siêu rộng, người dùng không cần phải nhìn trực diện vẫn có thể trải nghiệm hết chất lượng hình ảnh tốt nhất.\r\n					<br><br>\r\n					<h3>Camera sắc nét trong tầm giá</h3>\r\n					<img style=\"margin-left: 100px;width: 620px;height: 360px;\" src=\"images/vsmart/ss29.5.jpg\" with=\"100%\">\r\n					<br><br>\r\n					Vsmart Bee 3 với độ phân giải 8 MP cho camera sau giúp hình ảnh sắc nét. Máy có khả năng tự động lấy nét nhanh đặc biệt là ở điều kiện đủ ánh sáng. Máy hỗ trợ quay phim với độ phân giải Full HD.<br>'),
(23, '4GB', '64GB', 6.5, 'Snapdragon 632 8 nhân', 'Chính 13 MP & Phụ 8 MP, 2 MP', '5000 mAh, Tiết kiệm pin, Sạc nhanh Quick Charge 3.0', 20, 'images/vsmart/ss30.1.jpg', 'images/vsmart/ss30.2.jpg', '', '<h2>Mua điện thoại chính hãng, giá rẻ tại Smartphone 24h </h2>\r\n					<br>\r\n					Với một thiết kế hiện đại, Vsmart Joy 3 gây ấn tượng với người dùng ngay từ cái nhìn đầu tiên. Sản phẩm này đã được nâng cấp cả về hiệu năng và pin so với thế hệ trước.</br>\r\n\r\n<h3> Thiết kế màn hình giọt nước HD +</h3>\r\n					<img style=\"    margin-left: 100px; width: 620px; height: 360px;\" src=\"images/samsung/ss30.3.jpg\" with=\"100%\" ><br>\r\n					<br>\r\n					Vsmart Joy 3 vẫn sở hữu màn hình giọt nước quen thuộc. Thế nhưng với thiết kế tràn viền, các thao tác của bạn không còn bị giới hạn bởi các cạnh nữa. Viền màn hình được chế tác cong 2.5D tạo cảm giác liền mạch, dễ thao tác. Bên cạnh đó, mặt lưng của máy cũng có các góc bo tròn mềm mại, mang tính thẩm mỹ cao. Hiệu ứng chuyển màu độc đáo là một điểm hấp dẫn của sản phẩm này.\r\n\r\nVới kích thước siêu khủng lên tới 6.5 inch, màn hình Vsmart Joy 3 mang đến cho bạn những hình ảnh vô cùng sống động, chân thực. Mặc dù có màn hình lớn nhưng kích thước của sản phẩm này lại khá nhỏ gọn. Tấm nền IPS LCD cùng độ phân giải HD + sẽ giúp tăng độ sáng và độ tương phản khi sử dụng. Bạn chắc chắn sẽ có những giây phút giải trí tuyệt vời khi trải nghiệm Vsmart Joy 3.\r\n					<br><br>\r\n					<h3>Bộ 3 camera sắc nét cùng camera selfie phong cách</h3>\r\n					<img style=\"margin-left: 100px;width: 620px;height: 360px;\" src=\"images/samsung/ss30.4.jpg\" with=\"100%\">\r\n					<br><br>\r\n					Vsmart Joy 3 được trang bị tới ba camera sau cực kỳ chuyên nghiệp. Ấn tượng nhất là camera chính 13 MP với khả năng chụp ảnh sắc nét trong điều kiện đủ ánh sáng. Kể cả trong điều kiện thiếu ánh sáng thì camera này vẫn mang đến những bức ảnh đầy tính nghệ thuật nhờ công nghệ nhận diện AI. Bên cạnh đó, máy còn có camera góc siêu rộng 8 MP. Nó có góc chụp lên tới 120 độ, rộng gấp đôi so với camera thông thường. Cuối cùng là camera mono với độ phân giải 2 MP.\r\n\r\nBộ ba camera cho phép bạn thoải mái sáng tạo, lưu giữ những khoảnh khắc đẹp nhất. Chế độ xóa phông sẽ giúp làm mờ nền một cách ảo diệu đồng thời làm nổi bật chủ thể chính. Ngoài ra, máy còn có một camera selfie 8 MP ở mặt trước. Camera này không chỉ chụp ảnh sắc nét mà còn tự làm đẹp bằng các chế độ xóa khuyết điểm, làm mịn da, xóa phông.<br>'),
(24, '4GB', '64GB', 6.53, 'Snapdragon 665 8 nhân', 'Camera chính 16MP Camera góc rộng 8MP Camera xóa p', '5000 mAh, 18W, Sạc nhanh QC 3.0 3A', 21, 'images/vsmart/ss31.1.jpg', 'images/vsmart/ss31.2.jpg', 'images/vsmart/ss31.3.jpg', '<h2>Mua điện thoại chính hãng, giá rẻ tại Smartphone 24h </h2>\r\n					<br>\r\n					Là mẫu smartphone nối tiếp sự thành công trước đó của Vsmart Joy 3, Vsmart Joy 4 mang trong mình nhiều nâng cấp và cải tiển đáng giá về phần cứng trong khi vẫn giữ được mức giá hợp lý, giúp cho Vsmart tiếp tục khẳng định vị thể của hãng trong lòng người dùng Việt.</br>\r\n\r\n<h3> Thiết kế hiện đại, bắt kịp xu thế</h3>\r\n					<img style=\"    margin-left: 100px; width: 620px; height: 360px;\" src=\"images/vsmart/ss31.4.jpg\" with=\"100%\" ><br>\r\n					<br>\r\n					Vsmart Joy 4 mang trên mình một triết lý thiết kế khác biệt hẳn so với Joy 3, đặc biệt là về phần màn hình. Thay vì màn hình giọt nước, màn hình của Vsmart Joy 4 giờ đây đã được chuyển sang dạng “nốt ruồi”, xu hướng những mẫu smartphone của năm 2020. Phía mặt lưng tuy vẫn chỉ được hoàn thiện từ nhựa nhưng 2 phần cạnh bên của máy lại được bo cong theo dạng 3D mềm mại tạo cảm giác cầm nắm rất tốt, cùng với việc khi người dùng bỏ máy vào trong túi quần sẽ không tạo cảm giác bị cấn hoặc khó chịu.\r\n					<br><br>\r\n					<h3>Hiệu năng mượt mà với Snapdragon 665</h3>\r\n					<img style=\"margin-left: 100px;width: 620px;height: 360px;\" src=\"images/vsmart/ss31.5.jpg\" with=\"100%\">\r\n					<br><br>\r\n					Không chỉ thay đổi về diện mạo bên ngoài mà bên trong Vsmart Joy 4 cũng được nâng cấp đáng kể so với Vsmart Joy 3. Theo đó, máy được hãng trang bị bộ vi xử lý mạnh mẽ Qualcomm Snapdragon 665, cho hiệu năng tốt và vượt trội hơn so với vi xử lý Snapdragon 632 của Joy 3. Bộ vi xử lý này cũng được trang bị cả trí tuệ thông minh nhân tạo AI giúp cho máy xử lý các tác vụ hàng ngày ổn định và mượt mà hơn.<br>'),
(26, '6GB', '64GB', 6.39, 'Snapdragon 730 8 nhân', 'Camera chính 64MP Camera góc siêu rộng 8MP Camera ', '4000 mAh, Sạc nhanh QC 3.0 9V/2A, 18W', 22, 'images/vsmart/ss32.1.jpg', 'images/vsmart/ss32.2.jpg', 'images/vsmart/ss32.3.jpg', '<h2>Mua điện thoại chính hãng, giá rẻ tại Smartphone 24h </h2>\r\n					<br>\r\n					Là mẫu smartphone ra đời bởi sự hợp tác giữa Vinsmart và Qualcomm, Vsmart Aris mang trong mình nhiều cải tiến cũng như thiết kế bên ngoài có phần mới mẻ hơn so với các thế hệ tiền nhiệm trước đây. Đặc biệt, Vsmart Aris còn sở hữu nhiều tính năng cực kì ấn tượng mà nổi bật trong đó chính là khả năng bảo mật lượng tử.</br>\r\n\r\n<h3>Khung kim loại bền bỉ, mặt lưng kính sang trọng</h3>\r\n					<img style=\"    margin-left: 100px; width: 620px; height: 360px;\" src=\"images/vsmart/ss32.4.jpg\" with=\"100%\" ><br>\r\n					<br>\r\n					Điểm khác biệt đầu tiên của Vsmart Aris so với các thế hệ tiền nhiệm trước đây như Vsmart Live hay Active 3 đó chính là vật liệu cấu thành nên sản phẩm. Toàn bộ phần khung của Vsmart Aris được gia cố bằng khung kim loại chắc chắn, bền bỉ chứ không còn là khung viền bằng nhựa nữa. Mặt mặt lưng cũng không còn là một tấm nhựa Polycarbonat như trước đây mà thay vào đó là một tấm kính sang trọng, được phủ một lớp sơn mờ. Kiểu thiết kế này chúng ta đã thấy trên rất nhiều những dòng sản phẩm cao cấp của Apple hoặc Samsung.\r\n					<br><br>\r\n					<h3>ụm 4 camera 64MP nhiếp ảnh chuyên nghiệp</h3>\r\n					<img style=\"margin-left: 100px;width: 620px;height: 360px;\" src=\"images/vsmart/ss32.5.jpg\" with=\"100%\">\r\n					<br><br>\r\n					Không chỉ có vẻ bề ngoài sang trọng và hấp dẫn, Vsmart Aris cũng sở hữu một hệ thống camera cực kì chuyên nghiệp. Cụm camera với 4 ống kính của máy được xếp ngay ngắn trong một mô đun hình vuông và ngay ở bên dưới sẽ là đèn flash LED trợ sáng. Camera chính có độ phân giải lớn lên tới 64MP, những ống kính phụ còn lại sẽ bao gồm một camera góc siêu rộng 8MP, một camera tele 8MP và cuối cùng là một camera hỗ trợ chụp macro 2MP. Vsmart Aris cũng sẽ hỗ trợ người dùng quay video 4K@30fps một cách dễ dàng cùng chế độ chụp ảnh chuyên nghiệp dành cho những người dùng thực sự có niềm đam mê chụp ảnh.<br>');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
