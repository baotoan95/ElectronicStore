/*
Navicat MySQL Data Transfer

Source Server         : MySQL56
Source Server Version : 50626
Source Host           : 127.0.0.1:3306
Source Database       : pico

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2016-02-07 12:32:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for banks
-- ----------------------------
DROP TABLE IF EXISTS `banks`;
CREATE TABLE `banks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `accNumb` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of banks
-- ----------------------------
INSERT INTO `banks` VALUES ('1', 'Ngân Hàng Vietinbank', 'Công ty cổ phần Pi Co', '10201 000 1231885', ' Ngân hàng TMCP Công thương Việt Nam - chi nhánh Đống Đa.', 'aaaa');
INSERT INTO `banks` VALUES ('2', 'Ngân Hàng Techcombank', 'Công ty cổ phần Pi Co', '10201 000 1231885', ' Ngân hàng TMCP Công thương Việt Nam - chi nhánh Đống Đa.', 'aaaa');
INSERT INTO `banks` VALUES ('3', 'Ngân Hàng MB Bank', 'Công ty cổ phần Pi Co', '10201 000 1231885', ' Ngân hàng TMCP Công thương Việt Nam - chi nhánh Đống Đa.', 'aaaa');
INSERT INTO `banks` VALUES ('4', 'Ngân Hàng BIDV', 'Công ty cổ phần Pi Co', '10201 000 1231885', ' Ngân hàng TMCP Công thương Việt Nam - chi nhánh Đống Đa.', 'aaaa');
INSERT INTO `banks` VALUES ('5', 'Ngân Hàng HSBC', 'Công ty cổ phần Pi Co', '10201 000 1231885', ' Ngân hàng TMCP Công thương Việt Nam - chi nhánh Đống Đa.', 'aaaa');
INSERT INTO `banks` VALUES ('6', 'Ngân Hàng Agribank', 'Công ty cổ phần Pi Co', '10201 000 1231885', ' Ngân hàng TMCP Công thương Việt Nam - chi nhánh Đống Đa.', 'aaaa');
INSERT INTO `banks` VALUES ('7', 'Ngân Hàng Vietcombank', 'Công ty cổ phần Pi Co', '10201 000 1231885', ' Ngân hàng TMCP Công thương Việt Nam - chi nhánh Đống Đa.', 'aaaa');

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `container` bit(1) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_name_cate` (`name`,`parent`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES ('1', 'Điện tử', null, '/resources/images/screen13.png', '0', '\0', 'dien-tu.html');
INSERT INTO `categories` VALUES ('2', 'Điện thoại và máy tính bảng', null, '/resources/images/screen13.png', '0', '\0', 'dien-thoai-va-may-tinh-bang.html');
INSERT INTO `categories` VALUES ('3', 'Điện lạnh', null, '/resources/images/screen13.png', '0', '\0', 'dien-lanh.html');
INSERT INTO `categories` VALUES ('4', 'Thiết bị tin học', null, '/resources/images/screen13.png', '0', '\0', 'thiet-bi-tin-hoc.html');
INSERT INTO `categories` VALUES ('5', 'Âm thanh', null, '/resources/images/screen13.png', '0', '\0', 'am-thanh.html');
INSERT INTO `categories` VALUES ('6', 'Kỹ thuật số', null, '/resources/images/screen13.png', '0', '\0', 'ky-thuat-so.html');
INSERT INTO `categories` VALUES ('7', 'Đồ gia dụng', null, '/resources/images/screen13.png', '0', '\0', 'do-gia-dung.html');
INSERT INTO `categories` VALUES ('8', 'Xe điện', null, '/resources/images/screen13.png', '0', '\0', 'xe-dien.html');
INSERT INTO `categories` VALUES ('9', 'Phụ kiện', null, '/resources/images/screen13.png', '0', '\0', 'phu-kien.html');
INSERT INTO `categories` VALUES ('10', 'Tivi', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '1', '\0', 'tivi.html');
INSERT INTO `categories` VALUES ('11', 'Đầu phát HD - Smart box', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '1', '\0', 'dau-phat.html');
INSERT INTO `categories` VALUES ('12', 'Thiết bị game', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '1', '\0', 'thiet-bi-game.html');
INSERT INTO `categories` VALUES ('13', 'Truyền hình số', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '1', '\0', 'truyen-hinh-so.html');
INSERT INTO `categories` VALUES ('14', 'Máy tính bảng', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '2', '\0', 'may-tinh-bang.html');
INSERT INTO `categories` VALUES ('15', 'Điện thoại di động', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '2', '\0', 'dien-thoai-di-dong.html');
INSERT INTO `categories` VALUES ('16', 'Điện thoại bàn - kéo dài', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '2', '\0', 'dien-thoai-ban.html');
INSERT INTO `categories` VALUES ('17', 'Phụ kiện khác', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '2', '\0', 'phu-kien-khac.html');
INSERT INTO `categories` VALUES ('18', 'Điều hòa, máy lạnh', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '3', '\0', 'dieu-hoa.html');
INSERT INTO `categories` VALUES ('19', 'Tủ lạnh', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '3', '\0', 'tu-lanh.html');
INSERT INTO `categories` VALUES ('20', 'Máy giặt', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '3', '\0', 'may-giat.html');
INSERT INTO `categories` VALUES ('21', 'Máy sấy quần áo', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '3', '\0', 'may-say-quan-ao.html');
INSERT INTO `categories` VALUES ('22', 'Máy tính xách tay', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '4', '\0', 'may-tinh-sach-tay.html');
INSERT INTO `categories` VALUES ('23', 'Máy tính để bàn - AIO', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '4', '\0', 'may-tinh-de-ban.html');
INSERT INTO `categories` VALUES ('24', 'Loa máy tính', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '4', '\0', 'loa-may-tinh.html');
INSERT INTO `categories` VALUES ('25', 'Màn hình máy tính', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '4', '\0', 'man-hinh-may-tinh.html');
INSERT INTO `categories` VALUES ('26', 'Thiết bị karaoke', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '5', '\0', 'thiet-bi-karaoke.html');
INSERT INTO `categories` VALUES ('27', 'Loa Hi-End, Hi-Fi', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '5', '\0', 'loa.html');
INSERT INTO `categories` VALUES ('28', 'Dàn âm thanh', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '5', '\0', 'dan-am-thanh.html');
INSERT INTO `categories` VALUES ('29', 'Cassette', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '5', '\0', 'cassette.html');
INSERT INTO `categories` VALUES ('30', 'Máy ảnh chuyên nghiệp', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '6', '\0', 'may-anh-chuyen-nghiep.html');
INSERT INTO `categories` VALUES ('31', 'Máy ảnh du lịch', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '6', '\0', 'may-anh-du-lich.html');
INSERT INTO `categories` VALUES ('32', 'Máy quay phim KTS', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '6', '\0', 'may-quay-phim-kts.html');
INSERT INTO `categories` VALUES ('33', 'Máy ghi âm', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '6', '\0', 'may-ghi-am.html');
INSERT INTO `categories` VALUES ('34', 'Lò vi sóng', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '7', '\0', 'lo-vi-song.html');
INSERT INTO `categories` VALUES ('35', 'Cây nước - lọc nước', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '7', '\0', 'cay-nuoc.html');
INSERT INTO `categories` VALUES ('36', 'Máy sưởi - đèn sưởi nhà tắm', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '7', '\0', 'may-suoi.html');
INSERT INTO `categories` VALUES ('37', 'Các loại nồi', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '7', '\0', 'cac-loai-noi.html');
INSERT INTO `categories` VALUES ('38', 'Xe đạp điện', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '8', '\0', 'xe-dap-dien.html');
INSERT INTO `categories` VALUES ('39', 'Xe máy điện', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '8', '\0', 'xe-may-dien.html');
INSERT INTO `categories` VALUES ('40', 'Điện thoại và máy tính bảng', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '9', '\0', 'phu-kien-dien-thoai-may-tinh-bang.html');
INSERT INTO `categories` VALUES ('41', 'Tivi - điện tử', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '9', '\0', 'phu-kien-tv-dien-tu.html');
INSERT INTO `categories` VALUES ('42', 'Phụ kiện thiết bị tin học', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '9', '\0', 'phu-kien-thiet-bi-tin-hoc.html');
INSERT INTO `categories` VALUES ('43', 'Phụ kiện gia dụng', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '9', '\0', 'phu-kien-do-gia-dung.html');
INSERT INTO `categories` VALUES ('44', 'Samsung', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '10', '\0', null);
INSERT INTO `categories` VALUES ('45', 'LG', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '10', '\0', null);
INSERT INTO `categories` VALUES ('46', 'Panasonic', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '10', '\0', null);
INSERT INTO `categories` VALUES ('47', 'Sony', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '10', '\0', null);
INSERT INTO `categories` VALUES ('48', 'Toshiba', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '10', '\0', null);
INSERT INTO `categories` VALUES ('49', 'Arirang', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '11', '\0', null);
INSERT INTO `categories` VALUES ('50', 'Mede8er', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '11', '\0', null);
INSERT INTO `categories` VALUES ('51', 'Tizzbird', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '11', '\0', null);
INSERT INTO `categories` VALUES ('52', 'Vnpt', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '11', '\0', null);
INSERT INTO `categories` VALUES ('53', 'Westerm', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '11', '\0', null);
INSERT INTO `categories` VALUES ('54', 'Thẻ cào truyền hình số', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '13', '\0', null);
INSERT INTO `categories` VALUES ('55', 'Thiết bị game', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '13', '\0', null);
INSERT INTO `categories` VALUES ('56', 'Samsung', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '15', '\0', null);
INSERT INTO `categories` VALUES ('57', 'Nokia, Microsoft', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '15', '\0', null);
INSERT INTO `categories` VALUES ('58', 'Apple', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '15', '\0', null);
INSERT INTO `categories` VALUES ('59', 'LG', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '15', '\0', null);
INSERT INTO `categories` VALUES ('60', 'FPT', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '15', '\0', null);
INSERT INTO `categories` VALUES ('61', 'Blackberry', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '15', '\0', null);
INSERT INTO `categories` VALUES ('62', 'Oppo', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '15', '\0', null);
INSERT INTO `categories` VALUES ('63', 'Sony', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '15', '\0', null);
INSERT INTO `categories` VALUES ('64', 'HTC', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '15', '\0', null);
INSERT INTO `categories` VALUES ('65', 'Asus', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '15', '\0', null);
INSERT INTO `categories` VALUES ('66', 'HP', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '15', '\0', null);
INSERT INTO `categories` VALUES ('67', 'Lenovo', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '15', '\0', null);
INSERT INTO `categories` VALUES ('68', 'Obi', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '15', '\0', null);
INSERT INTO `categories` VALUES ('69', 'Wiko', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '15', '\0', null);
INSERT INTO `categories` VALUES ('70', 'LG', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '16', '\0', null);
INSERT INTO `categories` VALUES ('71', 'Panasonic', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '16', '\0', null);
INSERT INTO `categories` VALUES ('72', 'Widecom', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '16', '\0', null);
INSERT INTO `categories` VALUES ('73', 'Samsung', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '14', '\0', null);
INSERT INTO `categories` VALUES ('74', 'Asus', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '14', '\0', null);
INSERT INTO `categories` VALUES ('75', 'Acer', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '14', '\0', null);
INSERT INTO `categories` VALUES ('76', 'Apple', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '14', '\0', null);
INSERT INTO `categories` VALUES ('77', 'Dell', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '14', '\0', null);
INSERT INTO `categories` VALUES ('78', 'Lenovo', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '14', '\0', null);
INSERT INTO `categories` VALUES ('79', 'Bao da, ốp lưng', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '17', '\0', null);
INSERT INTO `categories` VALUES ('80', 'Loa bluetooth', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '17', '\0', null);
INSERT INTO `categories` VALUES ('81', 'Cáp kết nối', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '17', '\0', null);
INSERT INTO `categories` VALUES ('82', 'Củ sạc', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '17', '\0', null);
INSERT INTO `categories` VALUES ('83', 'Panasonic', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '18', '\0', null);
INSERT INTO `categories` VALUES ('84', 'Samsung', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '18', '\0', null);
INSERT INTO `categories` VALUES ('85', 'Daikin', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '18', '\0', null);
INSERT INTO `categories` VALUES ('86', 'Electrolux', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '18', '\0', null);
INSERT INTO `categories` VALUES ('87', 'Gree', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '18', '\0', null);
INSERT INTO `categories` VALUES ('88', 'Hitachi', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '18', '\0', null);
INSERT INTO `categories` VALUES ('89', 'LG', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '18', '\0', null);
INSERT INTO `categories` VALUES ('90', 'Panasonic', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '19', '\0', null);
INSERT INTO `categories` VALUES ('91', 'Samsung', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '19', '\0', null);
INSERT INTO `categories` VALUES ('92', 'Electrolux', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '19', '\0', null);
INSERT INTO `categories` VALUES ('93', 'Hitachi', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '19', '\0', null);
INSERT INTO `categories` VALUES ('94', 'LG', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '19', '\0', null);
INSERT INTO `categories` VALUES ('95', 'Sanyo', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '19', '\0', null);
INSERT INTO `categories` VALUES ('96', 'Panasonic', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '20', '\0', null);
INSERT INTO `categories` VALUES ('97', 'Haier', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '20', '\0', null);
INSERT INTO `categories` VALUES ('98', 'Ariston', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '20', '\0', null);
INSERT INTO `categories` VALUES ('99', 'Electrolux', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '20', '\0', null);
INSERT INTO `categories` VALUES ('100', 'Hitachi', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '20', '\0', null);
INSERT INTO `categories` VALUES ('101', 'LG', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '20', '\0', null);
INSERT INTO `categories` VALUES ('102', 'Ariston', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '21', '\0', null);
INSERT INTO `categories` VALUES ('103', 'Bosch', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '21', '\0', null);
INSERT INTO `categories` VALUES ('104', 'Electrolux', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '21', '\0', null);
INSERT INTO `categories` VALUES ('105', 'LG', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '21', '\0', null);
INSERT INTO `categories` VALUES ('106', 'Máy tính để bàn', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '22', '\0', null);
INSERT INTO `categories` VALUES ('107', 'Màn hình máy tính', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '22', '\0', null);
INSERT INTO `categories` VALUES ('108', 'Loa máy tính', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '22', '\0', null);
INSERT INTO `categories` VALUES ('109', 'Phần mềm', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '22', '\0', null);
INSERT INTO `categories` VALUES ('110', 'Amply karaoke', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '26', '\0', null);
INSERT INTO `categories` VALUES ('111', 'Đầu karaoke', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '26', '\0', null);
INSERT INTO `categories` VALUES ('112', 'Loa karaoke', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '26', '\0', null);
INSERT INTO `categories` VALUES ('113', 'Micro karaoke', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '26', '\0', null);
INSERT INTO `categories` VALUES ('114', 'Boston', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '27', '\0', null);
INSERT INTO `categories` VALUES ('115', 'Denon', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '27', '\0', null);
INSERT INTO `categories` VALUES ('116', 'Jamo', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '27', '\0', null);
INSERT INTO `categories` VALUES ('117', 'Onkyo', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '27', '\0', null);
INSERT INTO `categories` VALUES ('118', 'Pioneer', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '27', '\0', null);
INSERT INTO `categories` VALUES ('119', 'JVC', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '28', '\0', null);
INSERT INTO `categories` VALUES ('120', 'LG', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '28', '\0', null);
INSERT INTO `categories` VALUES ('121', 'Panasonic', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '28', '\0', null);
INSERT INTO `categories` VALUES ('122', 'Samsung', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '28', '\0', null);
INSERT INTO `categories` VALUES ('123', 'Sony', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '28', '\0', null);
INSERT INTO `categories` VALUES ('124', 'Canon', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '31', '\0', null);
INSERT INTO `categories` VALUES ('125', 'Nikon', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '31', '\0', null);
INSERT INTO `categories` VALUES ('126', 'Samsung', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '31', '\0', null);
INSERT INTO `categories` VALUES ('127', 'Sony', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '31', '\0', null);
INSERT INTO `categories` VALUES ('128', 'Bao da, ốp lưng', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '40', '\0', null);
INSERT INTO `categories` VALUES ('129', 'Loa bluetooth', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '40', '\0', null);
INSERT INTO `categories` VALUES ('130', 'Thẻ nhớ', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '40', '\0', null);
INSERT INTO `categories` VALUES ('131', 'Sạc dự phòng', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '40', '\0', null);
INSERT INTO `categories` VALUES ('132', 'Tai nghe', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '40', '\0', null);
INSERT INTO `categories` VALUES ('133', 'Giá treo tivi', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '41', '\0', null);
INSERT INTO `categories` VALUES ('134', 'Kệ kính tivi', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '41', '\0', null);
INSERT INTO `categories` VALUES ('135', 'Kính xem tivi 3D', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '41', '\0', null);
INSERT INTO `categories` VALUES ('136', 'Tai nghe', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '42', '\0', null);
INSERT INTO `categories` VALUES ('137', 'Bàn phím', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '42', '\0', null);
INSERT INTO `categories` VALUES ('138', 'Túi laptop', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '42', '\0', null);
INSERT INTO `categories` VALUES ('139', 'Đế tản nhiệt', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '42', '\0', null);
INSERT INTO `categories` VALUES ('140', 'Chuột máy tính', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '42', '\0', null);
INSERT INTO `categories` VALUES ('141', 'Phụ kiện bếp', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '43', '\0', null);
INSERT INTO `categories` VALUES ('142', 'Phụ kiện nhà tắm', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '43', '\0', null);
INSERT INTO `categories` VALUES ('143', 'Phụ kiện nước, lọc nước', null, '/resources/images/banner/410_truyen-hinh-so.jpg', '43', '\0', null);

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `parentID` int(11) DEFAULT NULL,
  `display` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_contact_email` (`email`),
  CONSTRAINT `fk_contact_email` FOREIGN KEY (`email`) REFERENCES `users` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('2', 'Nguyễn Hoàng Dạ Thảo', 'baotoan1142@gmail.com', '01649001142', 'dfdsfsdfsdf', '2016-01-21 00:00:00', 'Chưa xem', 'DEFAULT', '0', '\0');
INSERT INTO `contacts` VALUES ('3', 'Nguyễn Hoàng Dạ Thảo', 'baotoan1142@gmail.com', '01649001142', 'fsdsdf', '2016-01-21 00:00:00', 'Chưa xem', 'DEFAULT', '0', '\0');
INSERT INTO `contacts` VALUES ('4', 'baotoan', 'baotoan1142@gmail.com', '234235', 'sdfsdf;kjsdfl', '2016-01-29 00:00:00', 'Chưa xem', 'DEFAULT', '0', '\0');

-- ----------------------------
-- Table structure for deliveries
-- ----------------------------
DROP TABLE IF EXISTS `deliveries`;
CREATE TABLE `deliveries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of deliveries
-- ----------------------------

-- ----------------------------
-- Table structure for digitals
-- ----------------------------
DROP TABLE IF EXISTS `digitals`;
CREATE TABLE `digitals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `group_digitalID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_name_digital` (`name`),
  KEY `fk_group_digital` (`group_digitalID`),
  CONSTRAINT `fk_group_digital` FOREIGN KEY (`group_digitalID`) REFERENCES `groupdigitals` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of digitals
-- ----------------------------
INSERT INTO `digitals` VALUES ('1', 'Hãng sản xuất', null, '1');
INSERT INTO `digitals` VALUES ('2', 'Xuất xứ', null, '1');
INSERT INTO `digitals` VALUES ('3', 'Bảo hành', null, '6');
INSERT INTO `digitals` VALUES ('4', 'Phiên bản', null, '6');
INSERT INTO `digitals` VALUES ('5', 'Màu sắc', null, '6');
INSERT INTO `digitals` VALUES ('6', 'Chip xử lý (CPU)', null, '6');
INSERT INTO `digitals` VALUES ('7', 'Chip đồ họa (GPU)', null, '6');
INSERT INTO `digitals` VALUES ('8', 'RAM', null, '6');
INSERT INTO `digitals` VALUES ('9', 'Bộ nhớ', null, '6');
INSERT INTO `digitals` VALUES ('10', 'Độ phân giải màn hình', null, '6');
INSERT INTO `digitals` VALUES ('11', 'Âm thanh', null, '6');
INSERT INTO `digitals` VALUES ('12', 'Cân nặng', null, '6');
INSERT INTO `digitals` VALUES ('13', 'Chất liệu', null, '6');
INSERT INTO `digitals` VALUES ('14', 'Kích thước', null, '6');
INSERT INTO `digitals` VALUES ('15', 'Kết nối', null, '8');
INSERT INTO `digitals` VALUES ('16', 'Phụ kiện đi kèm', null, '6');
INSERT INTO `digitals` VALUES ('17', 'Loại', null, '6');
INSERT INTO `digitals` VALUES ('18', 'Kích thước màn hình', null, '6');
INSERT INTO `digitals` VALUES ('19', 'Tivi kỹ thuật số', null, '1');
INSERT INTO `digitals` VALUES ('20', 'Công nghệ xử lý hình ảnh', null, '6');
INSERT INTO `digitals` VALUES ('21', 'Độ tương phản', null, '6');
INSERT INTO `digitals` VALUES ('22', 'Công xuất tiêu thụ điện', null, '6');
INSERT INTO `digitals` VALUES ('23', 'Góc nhìn', null, '6');
INSERT INTO `digitals` VALUES ('24', 'Công nghệ âm thanh', null, '3');
INSERT INTO `digitals` VALUES ('25', 'Tổng công suất loa', null, '6');
INSERT INTO `digitals` VALUES ('26', 'Số lượng loa', null, '6');
INSERT INTO `digitals` VALUES ('27', 'Cổng HDMI', null, '8');
INSERT INTO `digitals` VALUES ('28', 'Cổng video composite', null, '8');
INSERT INTO `digitals` VALUES ('29', 'Cổng video component', null, '8');
INSERT INTO `digitals` VALUES ('30', 'USB', null, '8');
INSERT INTO `digitals` VALUES ('31', 'Kích thước có chân', null, '6');
INSERT INTO `digitals` VALUES ('32', 'Khối lượng có chân', null, '6');
INSERT INTO `digitals` VALUES ('33', 'Kích thước không chân', null, '1');
INSERT INTO `digitals` VALUES ('34', 'Khối lượng không chân', null, '6');
INSERT INTO `digitals` VALUES ('35', 'Loại bàn phím', null, '6');
INSERT INTO `digitals` VALUES ('36', 'Sử dụng cho', null, '6');
INSERT INTO `digitals` VALUES ('37', 'Chức năng', null, '1');
INSERT INTO `digitals` VALUES ('38', 'Tốc độ CPU', null, '6');
INSERT INTO `digitals` VALUES ('39', 'Số nhân', null, '6');
INSERT INTO `digitals` VALUES ('40', 'Trọng lượng', null, '6');
INSERT INTO `digitals` VALUES ('41', 'Loại pin', null, '6');
INSERT INTO `digitals` VALUES ('42', 'Dung lượng pin', null, '6');
INSERT INTO `digitals` VALUES ('43', 'Hệ điều hành', null, '6');
INSERT INTO `digitals` VALUES ('44', 'Ngôn ngữ', null, '6');
INSERT INTO `digitals` VALUES ('45', 'Màu màn hình', null, '6');
INSERT INTO `digitals` VALUES ('46', 'Công nghệ cảm ứng', null, '6');
INSERT INTO `digitals` VALUES ('47', 'Chipset', null, '6');
INSERT INTO `digitals` VALUES ('48', 'Thẻ nhớ ngoài', null, '7');
INSERT INTO `digitals` VALUES ('49', 'Hỗ trợ thẻ nhớ tối đa', null, '7');
INSERT INTO `digitals` VALUES ('50', 'Camera sau', null, '6');
INSERT INTO `digitals` VALUES ('51', 'Camera trước', null, '6');
INSERT INTO `digitals` VALUES ('52', 'Quay phim', null, '6');
INSERT INTO `digitals` VALUES ('53', '3G', null, '4');
INSERT INTO `digitals` VALUES ('54', 'Wifi', null, '4');
INSERT INTO `digitals` VALUES ('55', 'Hỗ trợ sim', null, '7');
INSERT INTO `digitals` VALUES ('56', 'Đàm thoại', null, '7');
INSERT INTO `digitals` VALUES ('57', 'GPS', null, '4');
INSERT INTO `digitals` VALUES ('58', 'Bluetooth', null, '4');
INSERT INTO `digitals` VALUES ('59', 'Jack tai nghe', null, '4');
INSERT INTO `digitals` VALUES ('60', 'Xem phim', null, '7');
INSERT INTO `digitals` VALUES ('61', 'Nghe nhạc', null, '7');
INSERT INTO `digitals` VALUES ('62', 'Ghi âm', null, '7');
INSERT INTO `digitals` VALUES ('63', 'Văn phòng', null, '7');
INSERT INTO `digitals` VALUES ('64', 'Chỉnh sửa hình ảnh', null, '7');
INSERT INTO `digitals` VALUES ('65', 'Ứng dụng khác', null, '5');
INSERT INTO `digitals` VALUES ('66', 'Đèn flash', null, '6');
INSERT INTO `digitals` VALUES ('67', 'Tính năng camera', null, '6');
INSERT INTO `digitals` VALUES ('68', 'Videocall', null, '7');
INSERT INTO `digitals` VALUES ('69', 'Danh bạ', null, '6');
INSERT INTO `digitals` VALUES ('70', 'Kiểu dáng', null, '6');
INSERT INTO `digitals` VALUES ('71', 'Loại sim', null, '6');
INSERT INTO `digitals` VALUES ('72', 'GPRS/EDGE', null, '7');
INSERT INTO `digitals` VALUES ('73', 'Báo thức', null, '6');
INSERT INTO `digitals` VALUES ('74', 'Chức năng chuyển cuộc gọi', null, '6');
INSERT INTO `digitals` VALUES ('75', 'Kiểu ống nghe', null, '6');
INSERT INTO `digitals` VALUES ('76', 'Tay con', null, '6');
INSERT INTO `digitals` VALUES ('77', 'Tay con mở rộng tối đa', null, '6');
INSERT INTO `digitals` VALUES ('78', 'Báo số gọi đến', null, '9');
INSERT INTO `digitals` VALUES ('79', 'Hiển thị thời gian gọi đến', null, '9');
INSERT INTO `digitals` VALUES ('80', 'Hạn chế cuộc gọi', null, '9');
INSERT INTO `digitals` VALUES ('81', 'Điều chỉnh âm lượng chuông', null, '9');
INSERT INTO `digitals` VALUES ('82', 'Thiết bị phù hợp', null, '7');
INSERT INTO `digitals` VALUES ('83', 'Loại ổ đĩa', null, '6');
INSERT INTO `digitals` VALUES ('84', 'Tốc độ bus', null, '6');
INSERT INTO `digitals` VALUES ('85', 'Thiết kế card', null, '9');
INSERT INTO `digitals` VALUES ('86', 'Tích hợp', null, '9');
INSERT INTO `digitals` VALUES ('87', 'Cổng giao tiếp', null, '9');
INSERT INTO `digitals` VALUES ('88', 'Tính năng mở rộng', null, '9');
INSERT INTO `digitals` VALUES ('89', 'Đọc thẻ nhớ', null, '9');
INSERT INTO `digitals` VALUES ('90', 'Khe đọc thẻ nhớ', null, '6');
INSERT INTO `digitals` VALUES ('91', 'Độ phân giải WC', null, '5');
INSERT INTO `digitals` VALUES ('92', 'Thời gian sử dụng thường', null, '6');
INSERT INTO `digitals` VALUES ('93', 'Hệ điều hành kèm theo', null, '6');
INSERT INTO `digitals` VALUES ('94', 'Chiều dài', null, '6');
INSERT INTO `digitals` VALUES ('95', 'Chiều rộng', null, '6');
INSERT INTO `digitals` VALUES ('96', 'Chiều cao', null, '6');
INSERT INTO `digitals` VALUES ('97', 'Cache size', null, '6');
INSERT INTO `digitals` VALUES ('98', 'Ổ quang', null, '6');
INSERT INTO `digitals` VALUES ('99', 'Chuẩn giao tiếp ổ cứng', null, '7');
INSERT INTO `digitals` VALUES ('100', 'Card màn hình', null, '6');
INSERT INTO `digitals` VALUES ('101', 'Card mạng', null, '6');
INSERT INTO `digitals` VALUES ('102', 'Card Wifi', null, '6');
INSERT INTO `digitals` VALUES ('103', 'Card âm thanh', null, '6');
INSERT INTO `digitals` VALUES ('104', 'Hệ điều hành cài sẵn', null, '6');
INSERT INTO `digitals` VALUES ('105', 'Tỷ số nén nhiễu', null, '6');
INSERT INTO `digitals` VALUES ('106', 'Tổng công suất (W)', null, '6');
INSERT INTO `digitals` VALUES ('107', 'Công suất loa siêu trầm (W)', null, '6');
INSERT INTO `digitals` VALUES ('108', 'Công suất loa vệ tinh (W)', null, '6');
INSERT INTO `digitals` VALUES ('109', 'Jack RCA', null, '6');
INSERT INTO `digitals` VALUES ('110', 'Kích thước điểm ảnh', null, '6');
INSERT INTO `digitals` VALUES ('111', 'Khả năng hiển thị màu', null, '6');
INSERT INTO `digitals` VALUES ('112', 'Thời gian đáp ứng', null, '6');
INSERT INTO `digitals` VALUES ('113', 'Hiệu điện thế vào', null, '6');
INSERT INTO `digitals` VALUES ('114', 'Số sò', null, '6');
INSERT INTO `digitals` VALUES ('115', 'Công suất', null, '6');
INSERT INTO `digitals` VALUES ('116', 'Tổng công suất ngõ ra', null, '6');
INSERT INTO `digitals` VALUES ('117', 'Tần số đáp trả', null, '6');
INSERT INTO `digitals` VALUES ('118', 'Trở kháng', null, '6');
INSERT INTO `digitals` VALUES ('119', 'Độ méo tiếng', null, '6');
INSERT INTO `digitals` VALUES ('120', 'Loại đĩa', null, '6');
INSERT INTO `digitals` VALUES ('121', 'S-Video', null, '6');
INSERT INTO `digitals` VALUES ('122', 'Composite video', null, '6');
INSERT INTO `digitals` VALUES ('123', 'Component video', null, '6');
INSERT INTO `digitals` VALUES ('124', 'Chấm điểm thông minh', null, '7');
INSERT INTO `digitals` VALUES ('125', 'Dạng loa', null, '6');
INSERT INTO `digitals` VALUES ('126', 'Độ nhạy', null, '6');
INSERT INTO `digitals` VALUES ('127', 'Trở kháng loa (Ohm)', null, '6');
INSERT INTO `digitals` VALUES ('128', 'Kích thước cảm biến', null, '6');
INSERT INTO `digitals` VALUES ('129', 'Tốc độ màn chập', null, '6');
INSERT INTO `digitals` VALUES ('130', 'Chế độ quay video', null, '6');
INSERT INTO `digitals` VALUES ('131', 'Kích thước cảm biến (sensor size)', null, '6');
INSERT INTO `digitals` VALUES ('132', 'Độ cảm biến hình ảnh', null, '6');
INSERT INTO `digitals` VALUES ('133', 'Điểm lấy nét', null, '7');
INSERT INTO `digitals` VALUES ('134', 'Độ phân giải lớn nhất', null, '7');
INSERT INTO `digitals` VALUES ('135', 'Tốc độ chụp', null, '7');
INSERT INTO `digitals` VALUES ('136', 'Lấy nét tay', null, '7');
INSERT INTO `digitals` VALUES ('137', 'Lấy nét tự động', null, '7');
INSERT INTO `digitals` VALUES ('138', 'Chuẩn giao tiếp', null, '7');
INSERT INTO `digitals` VALUES ('139', 'Độ sáng nhạy (ISO)', null, '7');
INSERT INTO `digitals` VALUES ('140', 'Số điểm ảnh hiệu dụng', null, '7');
INSERT INTO `digitals` VALUES ('141', 'Độ dài tiêu cự', null, '7');
INSERT INTO `digitals` VALUES ('142', 'Độ mở ống kính', null, '7');
INSERT INTO `digitals` VALUES ('143', 'Optical zoom', null, '7');
INSERT INTO `digitals` VALUES ('144', 'Điểm ảnh hiệu quả', null, '7');
INSERT INTO `digitals` VALUES ('145', 'Chống rung', null, '9');
INSERT INTO `digitals` VALUES ('146', 'Thiết bị lưu trữ', null, '7');
INSERT INTO `digitals` VALUES ('147', 'Cảm biến hình ảnh', null, '9');
INSERT INTO `digitals` VALUES ('148', 'Bộ xử lý hình ảnh', null, '9');
INSERT INTO `digitals` VALUES ('149', 'Chế độ tự động thông minh', null, '7');
INSERT INTO `digitals` VALUES ('150', 'Chép đĩa trực tiếp', null, '7');
INSERT INTO `digitals` VALUES ('151', 'Giải mã HD video', null, '7');
INSERT INTO `digitals` VALUES ('152', 'Zoom quang học', null, '7');
INSERT INTO `digitals` VALUES ('153', 'Zoom kỹ thuật số', null, '7');
INSERT INTO `digitals` VALUES ('154', 'Định dạng âm thanh', null, '9');
INSERT INTO `digitals` VALUES ('155', 'Zoom Mic', null, '9');
INSERT INTO `digitals` VALUES ('156', 'Cơ chế ổn định hình ảnh', null, '9');
INSERT INTO `digitals` VALUES ('157', 'Nhận diện khuân mặt', null, '9');
INSERT INTO `digitals` VALUES ('158', 'Chức năng nhận diện nụ cười', null, '9');
INSERT INTO `digitals` VALUES ('159', 'Tính năng đồng bộ với TV', null, '9');
INSERT INTO `digitals` VALUES ('160', 'Máy chiếu', null, '7');
INSERT INTO `digitals` VALUES ('161', 'Hiệu ứng hình ảnh', null, '7');
INSERT INTO `digitals` VALUES ('162', 'NFC', null, '6');
INSERT INTO `digitals` VALUES ('163', 'Chuẩn phát', null, '7');
INSERT INTO `digitals` VALUES ('164', 'Thời gian ghi âm tối đa', null, '6');
INSERT INTO `digitals` VALUES ('165', 'Chức năng loại bỏ tiếng ồn', null, '9');
INSERT INTO `digitals` VALUES ('166', 'Ngõ cắm micro', null, '9');
INSERT INTO `digitals` VALUES ('167', 'Đài FM', null, '6');
INSERT INTO `digitals` VALUES ('168', 'Nghe nhạc mp3', null, '7');
INSERT INTO `digitals` VALUES ('169', 'Tần số đáp ứng', null, '7');
INSERT INTO `digitals` VALUES ('170', 'Ngõ cắm tai nghe', null, '9');
INSERT INTO `digitals` VALUES ('171', 'Bộ nhớ trong', null, '2');
INSERT INTO `digitals` VALUES ('172', 'Dung tích', null, '6');
INSERT INTO `digitals` VALUES ('173', 'Chức năng chính', null, '6');
INSERT INTO `digitals` VALUES ('174', 'Đèn chiếu sáng', null, '2');
INSERT INTO `digitals` VALUES ('175', 'Bảng điều khiển', null, '2');
INSERT INTO `digitals` VALUES ('176', 'Chuông báo', null, '6');
INSERT INTO `digitals` VALUES ('177', 'Hẹn giờ', null, '6');
INSERT INTO `digitals` VALUES ('178', 'Công nghệ lọc', null, '7');
INSERT INTO `digitals` VALUES ('179', 'Cách sử dụng', null, '1');
INSERT INTO `digitals` VALUES ('180', 'Công suất lọc', null, '2');
INSERT INTO `digitals` VALUES ('181', 'Thể tích bình chứa', null, '7');
INSERT INTO `digitals` VALUES ('182', 'Van khóa nước', null, '7');
INSERT INTO `digitals` VALUES ('183', 'Dung tích bình lạnh', null, '7');
INSERT INTO `digitals` VALUES ('184', 'Dung tích bình nóng', null, '7');
INSERT INTO `digitals` VALUES ('185', 'Nhiệt độ lạnh', null, '7');
INSERT INTO `digitals` VALUES ('186', 'Nhiệt độ nóng', null, '7');
INSERT INTO `digitals` VALUES ('187', 'Công suất nóng', null, '7');
INSERT INTO `digitals` VALUES ('188', 'Công suất lạnh', null, '7');
INSERT INTO `digitals` VALUES ('189', 'Nguyên lý làm lạnh', null, '7');
INSERT INTO `digitals` VALUES ('190', 'Bảo hành khung xe', null, '6');
INSERT INTO `digitals` VALUES ('191', 'Động cơ', null, '6');
INSERT INTO `digitals` VALUES ('192', 'Tải trọng', null, '6');
INSERT INTO `digitals` VALUES ('193', 'Quãng đường tối đa', null, '6');
INSERT INTO `digitals` VALUES ('194', 'Lốp', null, '6');
INSERT INTO `digitals` VALUES ('195', 'Đồng hồ/điều khiển', null, '6');
INSERT INTO `digitals` VALUES ('196', 'Bảo hành ac quy/pin', null, '6');
INSERT INTO `digitals` VALUES ('197', 'Bảo hành phanh, lốp, săm,...', null, '6');
INSERT INTO `digitals` VALUES ('198', 'Bảo hành các bộ phận khác', null, '6');
INSERT INTO `digitals` VALUES ('199', 'Phanh trước/sau', null, '6');
INSERT INTO `digitals` VALUES ('200', 'Tần số quét', null, '2');
INSERT INTO `digitals` VALUES ('201', 'Công suất tiêu thụ điện', null, '2');
INSERT INTO `digitals` VALUES ('202', 'Cổng internet', null, '2');
INSERT INTO `digitals` VALUES ('203', 'video,hình ảnh', null, '2');
INSERT INTO `digitals` VALUES ('204', 'Audio', null, '2');
INSERT INTO `digitals` VALUES ('205', 'Cổng Ethernet (LAN)', null, '6');
INSERT INTO `digitals` VALUES ('206', 'Tên sản phẩm', null, '6');
INSERT INTO `digitals` VALUES ('207', 'ROM', null, '6');
INSERT INTO `digitals` VALUES ('208', 'HDD', null, '6');
INSERT INTO `digitals` VALUES ('209', 'Loại đầu thu', null, '6');
INSERT INTO `digitals` VALUES ('210', 'Số kênh', null, '6');
INSERT INTO `digitals` VALUES ('211', 'Chuẩn màn hình', null, '2');
INSERT INTO `digitals` VALUES ('212', 'Màn hình', null, '6');
INSERT INTO `digitals` VALUES ('213', 'Chế độ hẹn giờ', null, '7');
INSERT INTO `digitals` VALUES ('214', 'Chế độ làm lạnh nhanh', null, '9');
INSERT INTO `digitals` VALUES ('215', 'Loại Gas sử dụng', null, '6');
INSERT INTO `digitals` VALUES ('216', 'Kích thước cực lạnh', null, '6');
INSERT INTO `digitals` VALUES ('217', 'Kích thước cực nóng', null, '6');
INSERT INTO `digitals` VALUES ('218', 'Trọng lượng cực lạnh', null, '6');
INSERT INTO `digitals` VALUES ('219', 'Trọng lượng cực nóng', null, '6');
INSERT INTO `digitals` VALUES ('220', 'Kiểu tủ', null, '6');
INSERT INTO `digitals` VALUES ('221', 'Số cửa', null, '6');
INSERT INTO `digitals` VALUES ('222', 'Dung tích sử dụng', null, '6');
INSERT INTO `digitals` VALUES ('223', 'Công nghệ làm lạnh', null, '7');
INSERT INTO `digitals` VALUES ('224', 'Chất liệu khay ngăn', null, '6');
INSERT INTO `digitals` VALUES ('225', 'Chống đóng tuyết', null, '7');
INSERT INTO `digitals` VALUES ('226', 'Kháng khuẩn khử mùi', null, '7');
INSERT INTO `digitals` VALUES ('227', 'Loại máy giặc', null, '1');
INSERT INTO `digitals` VALUES ('228', 'Lồng giặt', null, '6');
INSERT INTO `digitals` VALUES ('229', 'Lượng nước tiêu thụ', null, '6');
INSERT INTO `digitals` VALUES ('230', 'Tốc độ quay vắt', null, '6');
INSERT INTO `digitals` VALUES ('231', 'Các chế độ giặt', null, '7');
INSERT INTO `digitals` VALUES ('232', 'Điện năng tiêu thụ', null, '2');
INSERT INTO `digitals` VALUES ('233', 'Khối lượng giặt', null, '6');
INSERT INTO `digitals` VALUES ('234', 'Loại sản phẩm', null, '6');
INSERT INTO `digitals` VALUES ('235', 'Công nghệ sấy', null, '7');
INSERT INTO `digitals` VALUES ('236', 'Phương pháp sấy', null, '7');
INSERT INTO `digitals` VALUES ('237', 'Giảm nhăn', null, '9');
INSERT INTO `digitals` VALUES ('238', 'Nguồn điện', null, '5');
INSERT INTO `digitals` VALUES ('239', 'Tổng lõi lọc', null, '5');
INSERT INTO `digitals` VALUES ('240', 'Loại cây nước', null, '5');
INSERT INTO `digitals` VALUES ('241', 'Loại thiết bị', null, '5');
INSERT INTO `digitals` VALUES ('242', 'Công suất (W)', null, '6');
INSERT INTO `digitals` VALUES ('243', 'Điện áp (V)', null, '6');
INSERT INTO `digitals` VALUES ('244', 'Loại máy', null, '6');
INSERT INTO `digitals` VALUES ('245', 'Tiết kiệm điện', null, '6');
INSERT INTO `digitals` VALUES ('246', 'Phạm vi hiệu quả', null, '6');
INSERT INTO `digitals` VALUES ('247', 'Chế độ gió', null, '6');
INSERT INTO `digitals` VALUES ('248', 'Độ phân giải', null, '6');
INSERT INTO `digitals` VALUES ('249', 'Công nghệ xử lý CPU', null, '7');
INSERT INTO `digitals` VALUES ('250', 'Loại CPU', null, '6');
INSERT INTO `digitals` VALUES ('251', 'Dung lượng RAM', null, '6');
INSERT INTO `digitals` VALUES ('252', 'Loại RAM', null, '6');
INSERT INTO `digitals` VALUES ('253', 'Dung lượng đĩa cứng', null, '2');
INSERT INTO `digitals` VALUES ('254', 'Công nghệ MH', null, '6');
INSERT INTO `digitals` VALUES ('255', 'Bộ nhớ đồ họa', null, '6');
INSERT INTO `digitals` VALUES ('256', 'Kênh âm thanh', null, '5');
INSERT INTO `digitals` VALUES ('257', 'Công nghệ', null, '5');
INSERT INTO `digitals` VALUES ('258', 'Thông tin thêm', null, '5');
INSERT INTO `digitals` VALUES ('259', 'Loại đĩa quang', null, '5');
INSERT INTO `digitals` VALUES ('260', 'LAN', null, '4');
INSERT INTO `digitals` VALUES ('261', 'Kết nối không dây khác', null, '4');
INSERT INTO `digitals` VALUES ('262', 'Thông tin Pin', null, '6');
INSERT INTO `digitals` VALUES ('263', 'HĐH kèm theo máy', null, '6');
INSERT INTO `digitals` VALUES ('264', 'Bộ nhớ đệm', null, '5');
INSERT INTO `digitals` VALUES ('265', 'Hỗ trợ RAM tối đa', null, '3');
INSERT INTO `digitals` VALUES ('266', 'Kết nối khác', null, '4');
INSERT INTO `digitals` VALUES ('267', 'Bộ xử lý âm thanh', null, '6');
INSERT INTO `digitals` VALUES ('268', 'Kiểu màn hình ', null, '6');
INSERT INTO `digitals` VALUES ('269', 'Độ sáng màn hình ', null, '6');
INSERT INTO `digitals` VALUES ('270', 'Tính năng khác', null, '5');
INSERT INTO `digitals` VALUES ('271', 'Chất liệu thùng loa', null, '5');
INSERT INTO `digitals` VALUES ('272', 'Tần số', null, '5');
INSERT INTO `digitals` VALUES ('273', 'Loa chính', null, '5');
INSERT INTO `digitals` VALUES ('274', 'Loa surround', null, '5');
INSERT INTO `digitals` VALUES ('275', 'Loa center', null, '5');
INSERT INTO `digitals` VALUES ('276', 'Loa sub', null, '5');
INSERT INTO `digitals` VALUES ('277', 'Tổng công suất cực đại', null, '5');
INSERT INTO `digitals` VALUES ('278', 'Số kênh âm thanh', null, '6');
INSERT INTO `digitals` VALUES ('279', 'Giải mã âm thanh', null, '6');
INSERT INTO `digitals` VALUES ('280', 'Định dạng hỗ trợ', null, '6');
INSERT INTO `digitals` VALUES ('281', 'Đặc điểm khác', null, '5');
INSERT INTO `digitals` VALUES ('282', 'Màn hình hiển thị', null, '9');
INSERT INTO `digitals` VALUES ('283', 'Độ lớn màn hình', null, '6');
INSERT INTO `digitals` VALUES ('284', 'Loại thể nhớ hỗ trợ', null, '6');

-- ----------------------------
-- Table structure for groupdigitals
-- ----------------------------
DROP TABLE IF EXISTS `groupdigitals`;
CREATE TABLE `groupdigitals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groupdigitals
-- ----------------------------
INSERT INTO `groupdigitals` VALUES ('1', 'Tổng quan', null);
INSERT INTO `groupdigitals` VALUES ('2', 'Hiển thị', null);
INSERT INTO `groupdigitals` VALUES ('3', 'Âm thanh', null);
INSERT INTO `groupdigitals` VALUES ('4', 'Kết nối', null);
INSERT INTO `groupdigitals` VALUES ('5', 'Tính năng khác', null);
INSERT INTO `groupdigitals` VALUES ('6', 'Thông tin chung', null);
INSERT INTO `groupdigitals` VALUES ('7', 'Chuẩn hỗ trợ', null);
INSERT INTO `groupdigitals` VALUES ('8', 'Cổng kết nối', null);
INSERT INTO `groupdigitals` VALUES ('9', 'Tính năng', null);
INSERT INTO `groupdigitals` VALUES ('10', 'Not', null);

-- ----------------------------
-- Table structure for imageproducts
-- ----------------------------
DROP TABLE IF EXISTS `imageproducts`;
CREATE TABLE `imageproducts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `prodID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_prod_image` (`prodID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of imageproducts
-- ----------------------------
INSERT INTO `imageproducts` VALUES ('1', null, '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '143');
INSERT INTO `imageproducts` VALUES ('2', null, '/resources/images/products/resize_150195_tivi-led-sony-kdl-40r350c-40-inch-2.jpg', '143');
INSERT INTO `imageproducts` VALUES ('3', null, '/resources/images/products/resize_150196_tivi-led-sony-kdl-40r350c-40-inch-3.jpg', '143');
INSERT INTO `imageproducts` VALUES ('4', null, '/resources/images/products/resize_150192_tivi-led-sony-kdl-40r350c-40-inch_4.jpg', '143');
INSERT INTO `imageproducts` VALUES ('5', null, '/resources/images/products/resize_150193_tivi-led-sony-kdl-40r350c-40-inch_5.jpg', '143');
INSERT INTO `imageproducts` VALUES ('6', null, '/resources/images/products/resize_150194_tivi-led-sony-kdl-40r350c-40-inch_6.jpg', '143');

-- ----------------------------
-- Table structure for newlaters
-- ----------------------------
DROP TABLE IF EXISTS `newlaters`;
CREATE TABLE `newlaters` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newlaters
-- ----------------------------

-- ----------------------------
-- Table structure for orderdetails
-- ----------------------------
DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails` (
  `id` int(11) NOT NULL,
  `orderID` int(11) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `monetized` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orderDetials_orders` (`orderID`),
  KEY `fk_orderDetials_product` (`productID`),
  CONSTRAINT `fk_orderDetials_orders` FOREIGN KEY (`orderID`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdetails
-- ----------------------------

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `monetized` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `paymentID` int(11) DEFAULT NULL,
  `delivery_formID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_orders_users` (`user`),
  KEY `fk_order_deliver` (`delivery_formID`),
  CONSTRAINT `fk_email` FOREIGN KEY (`user`) REFERENCES `users` (`email`),
  CONSTRAINT `fk_order_deliver` FOREIGN KEY (`delivery_formID`) REFERENCES `deliveries` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` text,
  `desc` varchar(255) DEFAULT NULL,
  `publishes_date` datetime DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `postType` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`) USING BTREE,
  KEY `fk_post_type` (`postType`),
  CONSTRAINT `fk_post_type` FOREIGN KEY (`postType`) REFERENCES `post_type` (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', 'Tặng ngay 02 chuyến đi Uber miễn phí mừng khai trương', '<p>Mừng sự kiện khai trương si&ecirc;u thị điện m&aacute;y Pico mới tại số 240 T&ocirc;n Đức Thắng, Pico phối hợp c&ugrave;ng Uber Việt Nam tặng 02 chuyến đi Uber miễn ph&iacute; trị gi&aacute; l&ecirc;n tới 100,000đ/chuyến cho tất cả c&aacute;c kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>Ch&iacute;nh thức mở cửa b&aacute;n h&agrave;ng từ ng&agrave;y 12/1/2016, Pico 240 T&ocirc;n Đức Thắng mở m&agrave;n cho sự b&ugrave;ng nổ của hệ thống si&ecirc;u thị điện m&aacute;y Pico với kế hoạch ph&aacute;t triển v&agrave; mở rộng quy m&ocirc; nhằm mang lại sự tiện lợi tối đa &amp; đ&aacute;p ứng hơn nữa nhu cầu của kh&aacute;ch h&agrave;ng.&nbsp;Những chương tr&igrave;nh ưu đ&atilde;i được triển khai li&ecirc;n tiếp k&eacute;o d&agrave;i tới cận Tết Nguy&ecirc;n Đ&aacute;n như &quot;10 ng&agrave;y gi&aacute; sốc mừng khai trương&quot;, &quot;l&igrave; x&igrave; đ&oacute;n Tết, kết y&ecirc;u thương&quot; v.v... chắc chắn sẽ khiến Pico 240 T&ocirc;n Đức Thắng trở th&agrave;nh điểm mua sắm g&acirc;y b&atilde;o trong những ng&agrave;y cao điểm đ&oacute;n Tết.&nbsp;</p>\r\n\r\n<p>Để đ&aacute;p ứng nhu cầu đi lại của kh&aacute;ch h&agrave;ng cũng như muốn đem tới một m&oacute;n qu&agrave; thiết thực v&agrave; &yacute; nghĩa cho to&agrave;n bộ kh&aacute;ch h&agrave;ng của Pico, từ ng&agrave;y 19/01/2016 - 30/01/2016 kh&aacute;ch h&agrave;ng khi nhập m&atilde; PICOTONDUCTHANG sẽ c&oacute; ngay 02 chuyến đi uber miễn ph&iacute;, mỗi chuyến đi c&oacute; gi&aacute; trị l&ecirc;n tới 100,000đ/chuyến cho chiều đi v&agrave; chiều về đến mua sắm tại Pico.&nbsp;</p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"http://cdn.pico.vn/Files/2016/01/18/1952/big_4336_uber_pico_tdt.jpg\" style=\"height:384px; width:640px\" /></p>\r\n\r\n<p><strong><em>C&aacute;c bước để sử dụng m&atilde; code đặc biệt:</em></strong></p>\r\n\r\n<p><strong><em>Bước 1:&nbsp;</em></strong>Tải ứng dụng Uber ở trong Play Store với Android hoặc iStore với iOS.&nbsp;<br />\r\n<strong><em>Bước 2:&nbsp;</em></strong>Đăng k&iacute; t&agrave;i khoản mới v&agrave; điền&nbsp;<strong>PICOTONDUCTHANG&nbsp;</strong>v&agrave;o phần&nbsp;<strong>M&atilde; Khuyến Mại.&nbsp;</strong>&nbsp;<br />\r\n<strong><em>Bước 3:</em></strong>&nbsp;Chọn địa điểm đến đ&oacute;n v&agrave; y&ecirc;u cầu xe! Trong 5-15 ph&uacute;t, một t&agrave;i xế sẽ đến đ&oacute;n bạn. M&atilde; khuyến mại tặng bạn 2 chuyến; mỗi chuyến trị gi&aacute; tới 100,000 đ.</p>\r\n\r\n<p>&nbsp;<strong>Điều kiện:</strong></p>\r\n\r\n<p><strong>-&nbsp;</strong>Chương tr&igrave;nh khuyến mại &aacute;p dụng cho những người sử dụng mới.</p>\r\n\r\n<p>- M&atilde; khuyến m&atilde;i kh&ocirc;ng c&oacute; gi&aacute; trị quy đổi th&agrave;nh tiền.</p>\r\n\r\n<p>- Nếu cước ph&iacute; của chuyến đi tr&ecirc;n mức khuyến m&atilde;i th&igrave; h&agrave;nh kh&aacute;ch chỉ phải trả phần cước ch&ecirc;nh lệch. Nếu cước ph&iacute; chuyến đi dưới mức khuyến m&atilde;i th&igrave; phần khuyến m&atilde;i c&ograve;n thừa kh&ocirc;ng được ho&agrave;n trả v&agrave; cũng kh&ocirc;ng được t&iacute;ch luỹ.</p>\r\n\r\n<p>Nếu trong qu&aacute; tr&igrave;nh đăng k&yacute; v&agrave; sử dụng, bạn c&oacute; c&acirc;u hỏi hay g&oacute;p &yacute;, c&oacute; thể li&ecirc;n hệ tại&nbsp;<a href=\"mailto:support.hanoi@uber.com\">support.hanoi@uber.com</a>. Bạn c&oacute; thể đọc th&ecirc;m về Uber tại&nbsp;<a href=\"https://www.facebook.com/uberVN\">https://www.facebook.com/uberVN</a>&nbsp;đ&acirc;y nh&eacute;.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ch&uacute;c c&aacute;c bạn c&oacute; trải nghiệp tuyệt vời khi sử dụng dịch vụ Uber v&agrave; mua sắm tại&nbsp;<strong><a href=\"http://pico.vn/\">Hệ thống Si&ecirc;u thị Điện m&aacute;y Pico</a></strong>&nbsp;!</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4133_pc_mat_tien_640x384px-01-01.jpg', 'tang-ngay-02-chuyen-di-uber-mien-phi-mung-khai-truong-ban-tin-1952.html', '1');
INSERT INTO `posts` VALUES ('2', 'Lễ trao thưởng chương trình \"Mua Panasonic - trúng quà thật thích\" tại Pico', '<p>V&agrave;o 10h 16/01/2015, Si&ecirc;u thị Điện m&aacute;y Pico đ&atilde; tổ chức lễ trao thưởng cho c&aacute;c kh&aacute;ch h&agrave;ng đ&atilde; may mắn tr&uacute;ng giải thưởng trong chương tr&igrave;nh &quot;Mua Panasonic - tr&uacute;ng qu&agrave; thật th&iacute;ch&quot;.</p>\r\n\r\n<p>Theo thể lệ chương tr&igrave;nh, tất cả kh&aacute;ch h&agrave;ng c&oacute; h&oacute;a đơn mua sản phẩm tủ lạnh v&agrave; m&aacute;y giặt của thương hiệu Panasonic từ 1 triệu đồng trở l&ecirc;n sẽ được cấp 01 phiếu bốc thăm để tham gia v&agrave;o chương tr&igrave;nh bốc thăm tr&uacute;ng thưởng Mua Panasonic&nbsp;diễn ra từ ng&agrave;y 18/12/2015 đến hết ng&agrave;y 08/01/2016. Với hơn 4000 phiếu bốc thăm may mắn nhưng chỉ c&oacute; 6 kh&aacute;ch h&agrave;ng may mắn nhận được những giải thưởng v&ocirc; c&ugrave;ng gi&aacute; trị của nh&atilde;n h&agrave;ng Panasonic. Pico xin gửi lời ch&uacute;c mừng tới c&aacute;c anh/ chị.&nbsp;</p>\r\n\r\n<p>Khi Tết Nguy&ecirc;n Đ&aacute;n đang đến gần v&agrave; miền Bắc đang nằm trong những đợt kh&ocirc;ng kh&iacute; lạnh nhất của m&ugrave;a đ&ocirc;ng, giải thưởng l&agrave; những chiếc<strong>&nbsp;<a href=\"http://pico.vn/may-giat-nhom-72.html\">m&aacute;y giặt</a></strong>&nbsp;th&ocirc;ng minh đ&atilde; thực sự khiến c&ocirc;ng việc giặt giũ trở n&ecirc;n dễ d&agrave;ng hơn. B&ecirc;n cạnh đ&oacute;, chiếc&nbsp;<strong><a href=\"http://pico.vn/tu-lanh-nhom-71.html\">tủ lạnh</a></strong>&nbsp;cũng trở n&ecirc;n thật cần thiết để gia đ&igrave;nh c&oacute; thể lưu trữ những m&oacute;n thực phẩm tươi ngon để tiện chế biến trong những dịp lễ gi&aacute;ng sinh v&agrave; năm mới đang tới gần. Với giải thưởng l&agrave; những chiếc m&aacute;y giặt v&agrave; tủ lạnh th&ocirc;ng m&igrave;nh, chương tr&igrave;nh đ&atilde; mang lại niềm vui rất lớn cho những kh&aacute;ch h&agrave;ng may mắn tr&uacute;ng giải.&nbsp;</p>\r\n\r\n<p>Giải nhất l&agrave; một chiếc tủ lạnh Panasonic inverter 322l, m&agrave;u th&eacute;p kh&ocirc;ng gỉ trị gi&aacute; 12,590,000đ đ&atilde; thuộc về anh Đỗ Văn Qu&acirc;n (Thanh Xu&acirc;n, H&agrave; Nội). Anh chia sẻ,gia đ&igrave;nh anh rất vui mừng khi nhận được giải thưởng n&agrave;y từ Pico v&agrave; sẽ tiếp tục mua sắm tại Pico trong thời gian tới.&nbsp;Hi vọng rằng kh&ocirc;ng chỉ với anh Qu&acirc;n m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ h&agrave;i l&ograve;ng về dịch vụ v&agrave; chất lượng sản phẩm mua tại Pico, đồng thời tiếp tục &nbsp;tin tưởng Pico trong thời gian tới.</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2016/01/16/1951/big_4333_trao_giai_panasonic_6.jpg\" style=\"height:336px; width:448px\" /></p>\r\n\r\n<p>Hai giải nh&igrave; mỗi giải l&agrave; một chiếc tủ lạnh 255l Inverter trị gi&aacute; 8,490,000đ đ&atilde; thuộc về hai kh&aacute;ch h&agrave;ng may mắn l&agrave; chị L&ecirc; Thị Hằng v&agrave; c&ocirc; Nguyễn Thị Dung. Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2016/01/16/1951/big_4331_trao_giai_panasonic_4.jpg\" style=\"height:267px; width:356px\" />&nbsp;<img alt=\"\" src=\"http://cdn.pico.vn/Files/2016/01/16/1951/big_4332_trao_giai_panasonic_5.jpg\" style=\"height:265px; width:354px\" /></p>\r\n\r\n<p>Ba giải ba đ&atilde; được lần lượt trao cho ba kh&aacute;ch h&agrave;ng l&agrave; anh Ho&agrave;ng Trọng Thịnh, chị Nguyễn Thị Huyền v&agrave; chị Trần Thị Thanh Thủy. Ch&uacute;c mừng c&aacute;c anh chị v&agrave; mong rằng anh/chị v&agrave; những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2016/01/16/1951/big_4334_trao_giai_panasonic_7.jpg\" style=\"height:260px; width:347px\" />&nbsp;<img alt=\"\" src=\"http://cdn.pico.vn/Files/2016/01/16/1951/big_4329_trao_giai_panasonic_2.jpg\" style=\"height:261px; width:349px\" /></p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2016/01/16/1951/big_4330_trao_giai_panasonic_3.jpg\" style=\"height:327px; width:436px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp gần Tết Nguy&ecirc;n Đ&aacute;n hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4206_pico_-_pana-01.jpg', 'le-trao-thuong-chuong-trinh-mua-panasonic--trung-qua-that-thich-tai-pico-ban-tin-1951.html', '1');
INSERT INTO `posts` VALUES ('3', 'Dễ Dàng Sở Hữu Sản Phẩm Công Nghệ Đoạt Giải Tech Awards 2015', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4208_640x384_trao_giai.jpg', 'de-dang-so-huu-san-pham-cong-nghe-doat-giai-tech-awards-2015-ban-tin-1950.html', '1');
INSERT INTO `posts` VALUES ('4', 'Kết quả bốc thăm chương trình \"Mua Panasonic - Trúng quà thật thích\"', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4213_so_sanh_binh_tam.jpg', 'ket-qua-boc-tham-chuong-trinh-mua-panasonic--trung-qua-that-thich-ban-tin-1949.html', '1');
INSERT INTO `posts` VALUES ('5', 'Samsung Galaxy A5 và A7 phiên bản mới: thiết kế hiện đại, nâng cấp pin', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4217_mua_pana-02.jpg', 'samsung-galaxy-a5-va-a7-phien-ban-moi-thiet-ke-hien-dai-nang-cap-pin-ban-tin-1948.html', '1');
INSERT INTO `posts` VALUES ('6', 'Mua trả góp HTC One A9 lãi suất 0% tại Pico', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4219_640x384qua-tang-giang-sinh.jpg', 'mua-tra-gop-htc-one-a9-lai-suat-0-tai-pico-ban-tin-1947.html', '1');
INSERT INTO `posts` VALUES ('7', 'Đổi cũ lấy mới, đón Tết sẻ chia', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4224_vui-tet-ss-trung-loc-ti-phu.jpg', 'doi-cu-lay-moi-don-tet-se-chia-ban-tin-1946.html', '1');
INSERT INTO `posts` VALUES ('8', 'Lễ trao thưởng chương trình \"Bảo hành điện tử AQUA - tăng tiện ích, rước thêm quà\" tại Pico', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4227_can_bep_hien_dai.jpg', 'le-trao-thuong-chuong-trinh-bao-hanh-dien-tu-aqua--tang-tien-ich-ruoc-them-qua--tai-pico-ban-tin-1945.html', '1');
INSERT INTO `posts` VALUES ('9', 'TOP 5 Tivi 4k LG đang bán chạy nhất', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4236_may_giat_hong.jpg', 'top-5-tivi-4k-lg-dang-ban-chay-nhat-ban-tin-1941.html', '1');
INSERT INTO `posts` VALUES ('10', 'Top 5 Tivi 40 inch bán chạy hiện nay', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4253_mua-iphone-6s-va--iphone-6s-plus-0.gif', 'top-5-tivi-40-inch-ban-chay-hien-nay-ban-tin-1942.html', '1');
INSERT INTO `posts` VALUES ('11', 'Trả góp 0% khi mua điện thoại Lenovo tại Pico', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4265_asus-zenpad-8.jpg', 'tra-gop-0-khi-mua-dien-thoai-lenovo-tai-pico-ban-tin-1943.html', '1');
INSERT INTO `posts` VALUES ('12', 'Ưu đãi cho chủ thẻ quốc tế Vietinbank khi mua sắm online tại website Pico', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4266_banner_the_uu_dai_vietinbank-01.jpg', 'uu-dai-cho-chu-the-quoc-te-vietinbank-khi-mua-sam-online-tai-website-pico-ban-tin-1939.html', '1');
INSERT INTO `posts` VALUES ('13', 'Top 5 sản phẩm đáng mua nhất dịp cuối năm', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4267_anh_bai_pr_23-12.jpg', 'top-5-san-pham-dang-mua-nhat-dip-cuoi-nam-ban-tin-1940.html', '1');
INSERT INTO `posts` VALUES ('14', 'Vạch mặt 5 thói quen xấu khiến máy giặt của bạn nhanh hỏng', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4278_top-5-tivi-4k-lg-dang-ban-chay-nhat-0.gif', 'vach-mat-5-thoi-quen-xau-khien-may-giat-cua-ban-nhanh-hong-ban-tin-1936.html', '1');
INSERT INTO `posts` VALUES ('15', 'Mua iPhone 6s và iPhone 6s Plus chính hãng ở đâu?', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4284_tivi-sony-kdl-40r550c-org-1.jpg', 'mua-iphone-6s-va-iphone-6s-plus-chinh-hang-o-dau-ban-tin-1937.html', '1');
INSERT INTO `posts` VALUES ('16', 'Đánh giá ASUS ZenPad Z380KL dòng tablet giá rẻ mới xuất hiện', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4285_tra_gop_0_lenovo.jpg', 'danh-gia-asus-zenpad-z380kl-dong-tablet-gia-re-moi-xuat-hien-ban-tin-1938.html', '1');
INSERT INTO `posts` VALUES ('17', 'Những vật dụng quan trọng làm nên một căn bếp hoàn hảo', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4293_trao_giai_aqua_thumbnail.jpg', 'nhung-vat-dung-quan-trong-lam-nen-mot-can-bep-hoan-hao-ban-tin-1935.html', '1');
INSERT INTO `posts` VALUES ('18', 'Những gợi ý quà tặng đầy ý nghĩa cho bạn trai dịp Giáng Sinh', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4295_doi_cu_lay_moi.jpg', 'nhung-goi-y-qua-tang-day-y-nghia-cho-ban-trai-dip-giang-sinh-ban-tin-1934.html', '1');
INSERT INTO `posts` VALUES ('19', 'Vui tết Samsung trúng lộc tỉ phú tại Pico', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4300_640x384.jpg', 'vui-tet-samsung-trung-loc-ti-phu-tai-pico-ban-tin-1933.html', '1');
INSERT INTO `posts` VALUES ('20', 'Kinh nghiệm chọn mua bình tắm nóng lạnh trực tiếp và gián tiếp', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4307_dien_thoai_galaxy_a5_va_a7.jpg', 'kinh-nghiem-chon-mua-binh-tam-nong--lanh-truc-tiep-va-gian-tiep-ban-tin-1931.html', '1');
INSERT INTO `posts` VALUES ('21', 'Mua Panasonic – Trúng quà thật thích', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4315_lebocthampana.jpg', 'mua-panasonic--trung-qua-that-thich-ban-tin-1932.html', '1');
INSERT INTO `posts` VALUES ('22', 'Trao giải cho những khách hàng may mắn chương trình “ Mua gia dụng Pico, rinh motor”.', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4326_picotechawardsamsungua65js9500-00.jpg', 'trao-giai-cho-nhung-khach-hang-may-man-chuong-trinh--mua-gia-dung-pico-rinh-motor-ban-tin-1930.html', '1');
INSERT INTO `posts` VALUES ('23', 'Tính năng cấp đông mềm độc đáo đến từ tủ lạnh Panasonic', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4328_trao_giai_panasonic_1.jpg', 'tinh-nang-cap-dong-mem-doc-dao-den-tu-tu-lanh-panasonic-ban-tin-1929.html', '1');
INSERT INTO `posts` VALUES ('24', 'Khai trương điểm mới - Cùng tới chung vui', '<p>Sau một th&aacute;ng diễn ra chương tr&igrave;nh từ ng&agrave;y&nbsp;<strong>06/11/2015</strong>&nbsp;đến hết ng&agrave;y&nbsp;<strong>03/12/2015,&nbsp;</strong>Với thể lệ mỗi một triệu đồng kh&aacute;ch h&agrave;ng sẽ nhận được 01 phiếu bốc thăm may mắn, buổi lễ bốc thăm s&ocirc;i động diễn ra v&agrave;o ng&agrave;y&nbsp;<strong>4/12/2015</strong>đ&atilde; t&igrave;m ra những kh&aacute;ch h&agrave;ng may mắn nhận giải thưởng.</p>\r\n\r\n<p>Ng&agrave;y&nbsp;<strong>12/12/2015</strong>, buổi lễ trao giải đ&atilde; ch&iacute;nh thức được diễn ra tại số 324 T&acirc;y Sơn, Đống Đa, H&agrave; Nội. 4 giải thưởng gi&aacute; trị đ&atilde; lần lượt được đại diện đến từ Si&ecirc;u thị điện m&aacute;y Pico trao tặng cho những kh&aacute;ch h&agrave;ng may mắn.</p>\r\n\r\n<p>Cơ cấu giải thưởng:</p>\r\n\r\n<p>01 giải Đặc biệt: 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ</p>\r\n\r\n<p>01 giải Nhất: 01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ</p>\r\n\r\n<p>01 giải Nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ</p>\r\n\r\n<p>01 giải Ba: 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ.</p>\r\n\r\n<p>Anh Trần Anh T&uacute; (Trường Chinh, H&agrave; Nội) đ&atilde; l&agrave; người may mắn nhất khi tr&uacute;ng Giải đặc biệt của chương tr&igrave;nh l&agrave; 01 xe m&aacute;y điện Honda Prinz trị gi&aacute; 28,999,000đ. Anh T&uacute; cho biết anh rất h&agrave;i l&ograve;ng với dịch vụ v&agrave; chất lượng sản phẩm tại Pico. Hi vọng rằng kh&ocirc;ng chỉ với anh T&uacute; m&agrave; tất cả những kh&aacute;ch h&agrave;ng khi đến với Si&ecirc;u thị điện m&aacute;y Pico cũng sẽ c&oacute; những cảm nhận như vậy v&agrave; tiếp tục tin tưởng Pico trong thời gian tới.<img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4209_anh-1.jpg\" style=\"height:394px; width:407px\" /></p>\r\n\r\n<p>Giải nhất&nbsp;01 bếp điện từ đ&ocirc;i BOSCH trị gi&aacute; 18,000,000đ đ&atilde; thuộc về anh Nguyễn Đức Mạnh (H&agrave; Đ&ocirc;ng, H&agrave; Nội). Đến&nbsp;với si&ecirc;u thị đi&ecirc;̣n máy Pico, khách hàng kh&ocirc;ng chỉ có nhi&ecirc;̀u sự lựa chọn cho các mặt hàng phù hợp với nhu c&acirc;̀u của mình và&nbsp;dịch vụ khách hàng chuy&ecirc;n nghi&ecirc;̣p&nbsp;mà còn có cơ h&ocirc;̣i tham gia những chương trình ưu đãi h&acirc;́p d&acirc;̃n.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4210_anh-2.jpg\" style=\"height:352px; width:451px\" /></p>\r\n\r\n<p>Anh Trần Văn Tiến - người tr&uacute;ng giải nh&igrave;: 01 nồi cơm điện tử Philips trị gi&aacute; 2,390,000đ- chia sẻ &quot;Khi m&igrave;nh quyết định mua h&agrave;ng ở Pico kh&ocirc;ng phải v&igrave; chương tr&igrave;nh bốc thăm may mắn m&agrave; l&agrave; v&igrave; chất lượng h&agrave;ng h&oacute;a cũng như dịch vụ của Pico khiến m&igrave;nh rất h&agrave;i l&ograve;ng. Đ&acirc;y kh&ocirc;ng phải lần đầu m&igrave;nh mua h&agrave;ng ở Pico, v&agrave; thật tuyệt vời khi lần n&agrave;y c&ograve;n tr&uacute;ng giải thưởng nữa, quả thật rất may mắn. Ch&uacute;c Pico ng&agrave;y c&agrave;ng ph&aacute;t triển!&quot;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4212_anh-4.jpg\" style=\"height:396px; width:454px\" /></p>\r\n\r\n<p>Anh Nguyễn Quốc T&acirc;n (Ba Đ&igrave;nh, H&agrave; Nội) tr&uacute;ng giải ba - 01 l&ograve; nướng Sanaky trị gi&aacute; 1,890,000đ, ch&uacute;c mừng anh Nguyễn Quốc T&acirc;n m&agrave; mong rằng anh c&ugrave;ng tất cả những kh&aacute;ch h&agrave;ng kh&aacute;c sẽ lu&ocirc;n y&ecirc;u mến v&agrave; ủng hộ Pico.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://cdn.pico.vn/Files/2015/12/12/1930/big_4211_anh-3.jpg\" style=\"height:384px; width:455px\" /></p>\r\n\r\n<p>Sắp tới Pico sẽ tung ra rất nhiều những chương tr&igrave;nh ưu đ&atilde;i hết sức hấp dẫn kh&aacute;c d&agrave;nh cho kh&aacute;ch h&agrave;ng mua sắm trong dịp cuối năm hứa hẹn mang đến rất nhiều bất ngờ v&agrave; niềm vui. H&atilde;y cũng đ&oacute;n chờ v&agrave; tham gia !&nbsp;</p>\r\n', 'Sau buổi lễ bốc thăm sôi động diễn r vào ngày 4-12-2015 để tìm ra những khách hàng may mắn vừa qua, ngày 12-12-2015, buổi lễ trao giải đã chính thức được diễn ra tại số 324 Tây Sơn, Đống Đa, Hà Nội.', '2016-01-19 09:51:12', 'Pico', '/resources/images/banner/big_4335_uber-pico-tdt.jpg', 'khai-truong-diem-moi--cung-toi-chung-vui-ban-tin-1921.html', '1');
INSERT INTO `posts` VALUES ('25', 'Điều khoản bảo mật', '<p><strong>1. TH&Ocirc;NG B&Aacute;O TỪ PICO:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Khi truy cập hệ thống trang web Pico, nghĩa l&agrave; qu&yacute; kh&aacute;ch đồng &yacute; chấp nhận thực hiện những m&ocirc; tả trong Quy định bảo mật. Nếu qu&yacute; kh&aacute;ch kh&ocirc;ng đồng &yacute; với c&aacute;c điều khoản của Quy định bảo mật, vui l&ograve;ng kh&ocirc;ng sử dụng hệ thống trang web Pico.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Trong suốt nhiều năm hoạt động của C&ocirc;ng ty Cổ phần Pico, ch&uacute;ng t&ocirc;i đ&atilde; ph&aacute;t triển những mối quan hệ với kh&aacute;ch h&agrave;ng dựa tr&ecirc;n sự t&ocirc;n trọng v&agrave; niềm tin. Ch&uacute;ng t&ocirc;i nhận thức được sự tin tưởng v&agrave; sự tự tin qu&yacute; kh&aacute;ch thể hiện khi truy cập v&agrave;o hệ thống trang web Pico v&agrave; cung cấp th&ocirc;ng tin cho ch&uacute;ng t&ocirc;i. Th&ocirc;ng b&aacute;o bảo mật n&agrave;y được đưa ra để thể hiện vai tr&ograve; của ch&uacute;ng t&ocirc;i trong vấn đề bảo mật trực tuyến v&agrave; dịch vụ kh&aacute;ch h&agrave;ng.Ch&uacute;ng t&ocirc;i xử l&yacute; th&ocirc;ng tin của qu&yacute; kh&aacute;ch bằng t&iacute;nh trung thực v&agrave; độ nhạy cảm, điều m&agrave; ch&uacute;ng t&ocirc;i đ&atilde; thể hiện xuy&ecirc;n suốt lịch sử h&igrave;nh th&agrave;nh ph&aacute;t triển của C&ocirc;ng ty Cổ phần Pico.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. QUY ĐỊNH TH&Ocirc;NG TIN C&Aacute; NH&Acirc;N ĐƯỢC THU THẬP BỞI HỆ THỐNG WEBSITEPICO (*):</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Pico sử dụng th&ocirc;ng tin thu thập từ kh&aacute;ch v&atilde;ng lai v&agrave; kh&aacute;ch đ&atilde; đăng k&yacute; l&agrave; th&agrave;nh vi&ecirc;n tr&ecirc;n hệ thống website Pico để ph&aacute;t triển website ng&agrave;y c&agrave;ng phong ph&uacute; hơn, ph&ugrave; hợp với nhu cầu mua sắm của qu&yacute; kh&aacute;ch hơn. Ch&uacute;ng t&ocirc;i thu thập c&aacute;c loại th&ocirc;ng tin sau:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>-&nbsp;</em></strong><strong>Th&ocirc;ng tin Qu&yacute; kh&aacute;ch cung cấp cho ch&uacute;ng t&ocirc;i</strong>: Ch&uacute;ng t&ocirc;i thu thập th&ocirc;ng tin c&aacute; nh&acirc;n được cung cấp bởi người sử dụng trang web. &quot;Th&ocirc;ng tin c&aacute; nh&acirc;n&quot; bao gồm t&ecirc;n, địa chỉ, số điện thoại, th&ocirc;ng tin thẻ t&iacute;n dụng hoặc thẻ ghi nợ, địa chỉ email, ng&agrave;y sinh, địa chỉ IP&hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Th&ocirc;ng tin c&aacute; nh&acirc;n được thu thập khi qu&yacute; kh&aacute;ch đăng k&yacute; một t&agrave;i khoản tại hệ thống website Pico, đặt h&agrave;ng tr&ecirc;n website, tham gia những cuộc thi do ch&uacute;ng t&ocirc;i tổ chức th&ocirc;ng qua hệ thống website Pico... hoặc khi qu&yacute; kh&aacute;ch giao tiếp với bất kỳ bộ phận n&agrave;o của ch&uacute;ng t&ocirc;i như dịch vụ chăm s&oacute;c kh&aacute;ch h&agrave;ng, tư vấn, b&aacute;n h&agrave;ng hoặc dịch vụ kỹ thuật th&ocirc;ng qua trang web, điện thoại, email, thư t&iacute;n hoặc fax. Trong một số trường hợp, ch&uacute;ng t&ocirc;i c&oacute; thể c&oacute; được t&ecirc;n v&agrave; địa chỉ email của người kh&aacute;c m&agrave; qu&yacute; kh&aacute;ch chọn để chia sẻ th&ocirc;ng tin như &ldquo;một người bạn&rdquo; tr&ecirc;n hệ thống website Pico.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>-&nbsp;</em></strong><strong>Cookies:</strong>&nbsp;Th&ocirc;ng qua việc sử dụng Cookies, ch&uacute;ng t&ocirc;i thu thập v&agrave; ph&acirc;n t&iacute;ch địa chỉ IP được sử dụng để nối kết m&aacute;y t&iacute;nh của qu&yacute; kh&aacute;ch với internet, m&aacute;y t&iacute;nh v&agrave; th&ocirc;ng tin kết nối như tr&igrave;nh duyệt v&agrave; phi&ecirc;n bản tr&igrave;nh duyệt, hệ điều h&agrave;nh, lịch sử mua h&agrave;ng, x&aacute;c nhận khi qu&yacute; kh&aacute;ch mở email m&agrave; ch&uacute;ng t&ocirc;i gửi cho qu&yacute; kh&aacute;ch, ng&agrave;y giờ v&agrave; c&aacute;c URL đưa đến với website ch&uacute;ng t&ocirc;i. Cookie kh&ocirc;ng thể truy cập hoặc ph&acirc;n lượng dữ liệu trong ổ cứng m&aacute;y t&iacute;nh của qu&yacute; kh&aacute;ch. Th&ocirc;ng thường qu&yacute; kh&aacute;ch c&oacute; thể thiết lập tr&igrave;nh duyệt để v&ocirc; hiệu h&oacute;a cookie hay th&ocirc;ng b&aacute;o cho qu&yacute; kh&aacute;ch biết khi được gửi cookie.Hiện nay tr&ecirc;n thị trường cũng c&oacute; sẵn c&aacute;c phần mềm cho ph&eacute;p qu&yacute; kh&aacute;ch truy cập v&agrave;o trang web m&agrave; kh&ocirc;ng cần cung cấp th&ocirc;ng tin n&agrave;y. Qu&yacute; kh&aacute;ch vẫn được ch&agrave;o đ&oacute;n để viếng thăm hệ thống website Pico khi qu&yacute; kh&aacute;ch sử dụng phần mềm như vậy, nhưng ch&uacute;ng t&ocirc;i sẽ kh&ocirc;ng thể cung cấp cho qu&yacute; kh&aacute;ch dịch vụ ph&ugrave; hợp với qu&yacute; kh&aacute;ch v&agrave; ch&uacute;ng t&ocirc;i cũng c&oacute; quyền từ chối đơn đặt h&agrave;ng trực tuyến từ qu&yacute; kh&aacute;ch khi c&oacute; nghi ngờ vi phạm bảo mật của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>-&nbsp;</em></strong><strong>Đặt h&agrave;ng:</strong>&nbsp;Nếu qu&yacute; kh&aacute;ch thực hiện mua h&agrave;ng trực tuyến tại hệ thống website Pico, qu&yacute; kh&aacute;ch sẽ được y&ecirc;u cầu cung cấp th&ocirc;ng tin li&ecirc;n lạc, phương thức thanh to&aacute;n, th&ocirc;ng tin thanh to&aacute;n v&agrave; địa chỉ giao h&agrave;ng. Qu&yacute; kh&aacute;ch vui l&ograve;ng cung cấp th&ocirc;ng tin đ&uacute;ng v&agrave; đầy đủ để thực hiện xử l&yacute; đơn h&agrave;ng. Nếu c&oacute; một người n&agrave;o b&ecirc;n ngo&agrave;i lợi dụng c&aacute;c th&ocirc;ng tin n&agrave;y dẫn đến những sai s&oacute;t khi giao h&agrave;ng, ch&uacute;ng t&ocirc;i sẽ thực hiện điều tra v&agrave; xử l&yacute;. Nếu lỗi do qu&yacute; kh&aacute;ch bị lộ th&ocirc;ng tin qu&yacute; kh&aacute;ch phải chịu ho&agrave;n to&agrave;n tr&aacute;ch nhiệm.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>-&nbsp;</em></strong><strong>Đăng k&yacute; nhận bản tin Khuyến mại:</strong>&nbsp;Khi qu&yacute; kh&aacute;ch thực hiện mua h&agrave;ng tại website Pico,&nbsp;qu&yacute; kh&aacute;ch sẽnhận được những bản tin khuyến mại của Pico, trừ khi qu&yacute; kh&aacute;ch từ chối th&ocirc;ng tin n&agrave;y nếu kh&ocirc;ng muốn. Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu đăng k&yacute; nhận Newsletter qua email, ch&uacute;ng t&ocirc;i sẽ gửi qu&yacute; kh&aacute;ch một email x&aacute;c nhận y&ecirc;u cầu của qu&yacute; kh&aacute;ch. Nếu qu&yacute; kh&aacute;ch thay đổi v&agrave; quyết định kh&ocirc;ng tham gia v&agrave;o danh s&aacute;ch nhận Newsletter, qu&yacute; kh&aacute;ch c&oacute; thể từ chối ngay trong email đ&oacute;. Hơn nữa, email x&aacute;c nhận sẽ b&aacute;o cho qu&yacute; kh&aacute;ch biết nếu c&oacute; người n&agrave;o kh&aacute;c đ&atilde; sử dụng địa chỉ email của qu&yacute; kh&aacute;ch để đăng k&yacute; nhận Newsletter của ch&uacute;ng t&ocirc;i. Để chắc rằng việc gửi Newsletter qua email l&agrave; hữu &iacute;ch cho qu&yacute; kh&aacute;ch, vui l&ograve;ng x&aacute;c nhận khi qu&yacute; kh&aacute;ch nhận được email&nbsp; từ ch&uacute;ng t&ocirc;i.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3. QUY ĐỊNH SỬ DỤNG TH&Ocirc;NG TIN THU THẬP ĐƯỢC:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Ch&uacute;ng t&ocirc;i sử dụng c&aacute;c th&ocirc;ng tin thu thập được từ việc truy cập Website của ch&uacute;ng t&ocirc;i nhằm mục đ&iacute;ch gi&uacute;p qu&yacute; kh&aacute;ch n&acirc;ng cao kinh nghiệm mua sắm trực tuyến tại hệ thống website Pico, cung cấp c&aacute;c dịch vụ v&agrave; th&ocirc;ng tin qu&yacute; kh&aacute;ch ưa th&iacute;ch. Ch&uacute;ng t&ocirc;i cũng sử dụng những th&ocirc;ng tin n&agrave;y để gi&uacute;p ph&aacute;t triển v&agrave; cải thiện website của ch&uacute;ng t&ocirc;i trở n&ecirc;n hữu &iacute;ch v&agrave; hấp dẫn kh&aacute;ch h&agrave;ng hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. QUY ĐỊNH CHIA SẺ TH&Ocirc;NG TIN VỚI ĐỐI T&Aacute;C THỨ BA:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Ch&uacute;ng t&ocirc;i sẽ kh&ocirc;ng thu&ecirc;, b&aacute;n hoặc tiết lộ Th&ocirc;ng tin c&aacute; nh&acirc;n của qu&yacute; kh&aacute;ch cho b&ecirc;n thứ ba kh&ocirc;ng li&ecirc;n quan m&agrave; kh&ocirc;ng c&oacute; sự đồng &yacute; của qu&yacute; kh&aacute;ch, trừ những điều được n&ecirc;u trong Th&ocirc;ng b&aacute;o bảo mật c&aacute; nh&acirc;n n&agrave;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- C&aacute;c nh&agrave; cung cấp dịch vụ:&nbsp;</strong>Ch&uacute;ng t&ocirc;i c&oacute; thể thu&ecirc; c&aacute;c c&ocirc;ng ty hoặc c&aacute; nh&acirc;n kh&aacute;c cung cấp một số dịch vụ hoặc thay mặt cho ch&uacute;ng t&ocirc;i trong việc ph&acirc;n t&iacute;ch danh s&aacute;ch v&agrave; dữ liệu kh&aacute;ch h&agrave;ng, hoặc thực hiện tiếp thị hay thực hiện dịch vụ tư vấn. C&aacute;c đối t&aacute;c n&agrave;y (&quot;Nh&agrave; cung cấp dịch vụ&quot;) sẽ chỉ được tiếp cận với c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n cần thiết để đại diện ch&uacute;ng t&ocirc;i thực hiện c&aacute;c chức năng n&agrave;y, v&agrave; được y&ecirc;u cầu bảo vệ v&agrave; bảo mật th&ocirc;ng tin của kh&aacute;ch h&agrave;ng như ch&iacute;nh ch&uacute;ng t&ocirc;i. C&aacute;c đối t&aacute;c cung cấp dịch vụ đều bị cấm sử dụng th&ocirc;ng tin c&aacute; nh&acirc;n của qu&yacute; kh&aacute;ch cho bất kỳ mục đ&iacute;ch n&agrave;o kh&aacute;c.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- C&aacute;c c&ocirc;ng ty thẻ t&iacute;n dụng:</strong>&nbsp;Nếu qu&yacute; kh&aacute;ch đặt h&agrave;ng tr&ecirc;n hệ thống website Pico, những th&ocirc;ng tin c&aacute; nh&acirc;n m&agrave; qu&yacute; kh&aacute;ch cung cấp cho ch&uacute;ng t&ocirc;i được chuyển đến ng&acirc;n h&agrave;ng ph&aacute;t h&agrave;nh thẻ t&iacute;n dụng của qu&yacute; kh&aacute;ch để thực hiện kiểm tra v&agrave; x&aacute;c nhận quyền sử dụng thẻ t&iacute;n dụng trong thanh to&aacute;n mua h&agrave;ng của qu&yacute; kh&aacute;ch. C&aacute;c th&ocirc;ng tin n&agrave;y được ho&agrave;n to&agrave;n bảo mật v&agrave; m&atilde; h&oacute;a để đảm bảo t&iacute;nh an to&agrave;n cao nhất khi thanh to&aacute;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- Đối t&aacute;c tiếp thị:</strong>&nbsp;Ch&uacute;ng t&ocirc;i c&oacute; thể chia sẻ t&ecirc;n, địa chỉ nhận thư của qu&yacute; kh&aacute;ch với một v&agrave;i đối t&aacute;c tiếp thị được chọn lọc kỹ, những đối t&aacute;c m&agrave; ch&uacute;ng t&ocirc;i tin l&agrave; sản phẩm hay dịch vụ của họ c&oacute; thể hữu &iacute;ch với qu&yacute; kh&aacute;ch. Ch&uacute;ng t&ocirc;i kh&ocirc;ng bao giờ chia sẻ số điện thoại, địa chỉ email hoặc th&ocirc;ng tin thẻ t&iacute;n dụng m&agrave; qu&yacute; kh&aacute;ch đ&atilde; cung cấp cho ch&uacute;ng t&ocirc;i với bất kỳ một đối t&aacute;c tiếp thị n&agrave;o.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- Th&ocirc;ng tin tổng hợp:</strong>&nbsp;Ch&uacute;ng t&ocirc;i cung cấp th&ocirc;ng tin tổng hợp cho một số đối t&aacute;c kinh doanh của ch&uacute;ng t&ocirc;i. Những th&ocirc;ng tin n&agrave;y l&agrave; những th&ocirc;ng tin chung, kh&ocirc;ng phải l&agrave; th&ocirc;ng tin c&aacute; nh&acirc;n của qu&yacute; kh&aacute;ch. Ch&uacute;ng t&ocirc;i thu thập v&agrave; chia sẻ th&ocirc;ng tin tổng hợp để biết th&ecirc;m th&ocirc;ng tin chung về đối tượng kh&aacute;ch h&agrave;ng của ch&uacute;ng t&ocirc;i từ đ&oacute; ch&uacute;ng t&ocirc;i c&oacute; thể gi&uacute;p n&acirc;ng cao kinh nghiệm mua sắm của qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- C&ocirc;ng ty vận chuyển h&agrave;ng h&oacute;a:</strong>&nbsp;Nếu qu&yacute; kh&aacute;ch thực hiện mua h&agrave;ng tại hệ thống website Pico, t&ecirc;n, số điện thoại v&agrave; th&ocirc;ng tin giao, nhận của qu&yacute; kh&aacute;ch phải được cung cấp cho đối t&aacute;c giao, nhận của ch&uacute;ng t&ocirc;i để thực hiện chuyển h&agrave;ng h&oacute;a đến qu&yacute; kh&aacute;ch. Một số trường hợp, h&agrave;ng h&oacute;a sẽ được chuyển trực tiếp từ c&aacute;c nh&agrave; cung cấp của ch&uacute;ng t&ocirc;i đến qu&yacute; kh&aacute;ch.Trong trường hợp n&agrave;y, chỉ c&oacute; t&ecirc;n, địa chỉ nhận h&agrave;ng, v&agrave; số điện thoại của qu&yacute; kh&aacute;ch được cung cấp cho nh&agrave; cung cấp với mục đ&iacute;ch duy nhất l&agrave; ho&agrave;n th&agrave;nh đơn mua h&agrave;ng của qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- Dữ liệu th&ocirc;ng qua giao dịch của website kh&aacute;c:&nbsp;</strong>Nếu qu&yacute; kh&aacute;ch viếng thăm website Pico từ một website kh&aacute;c, website của b&ecirc;n thứ ba, website n&agrave;y c&oacute; thể truy xuất v&agrave; thu thập th&ocirc;ng tin giao dịch của c&aacute; nh&acirc;n qu&yacute; kh&aacute;ch. Để theo d&otilde;i v&agrave; ghi nhận giao dịch của qu&yacute; kh&aacute;ch, website của b&ecirc;n thứ ba c&oacute; thể cung cấp theo qu&yacute; kh&aacute;ch một m&atilde; lệnh, một cookie hay một h&igrave;nh ảnh duy nhất nhằm định danh qu&yacute; kh&aacute;ch. Điều n&agrave;y chỉ xảy ra nếu qu&yacute; kh&aacute;ch li&ecirc;n kết đến hệ thống website Pico th&ocirc;ng qua một website kh&aacute;c.Những giao dịch bất kỳ tại hệ thống website Pico m&agrave; c&oacute; m&atilde; lệnh như vậy sẽ được gửi b&aacute;o c&aacute;o lại với website đ&oacute;. Ch&uacute;ng t&ocirc;i chỉ gửi những th&ocirc;ng tin kh&ocirc;ng phải l&agrave; th&ocirc;ng tin c&aacute; nh&acirc;n của qu&yacute; kh&aacute;ch, như ng&agrave;y thực hiện giao dịch, những sản phẩm qu&yacute; kh&aacute;ch mua, tổng số tiền mua. Ch&uacute;ng t&ocirc;i sẽ kh&ocirc;ng gửi bất kỳ th&ocirc;ng tin n&agrave;o đến website của b&ecirc;n thứ ba để họ c&oacute; thể x&aacute;c định được qu&yacute; kh&aacute;ch l&agrave; ai. Sự hiện diện của một thanh điều hướng (Navigation bar) tr&ecirc;n đầu bất kỳ trang web n&agrave;o của Pico, điều đ&oacute; c&oacute; nghĩa l&agrave; qu&yacute; kh&aacute;ch đang truy cập website Pico th&ocirc;ng qua một website kh&aacute;c, website của b&ecirc;n thứ ba n&agrave;y c&oacute; thể thấy hoạt động của qu&yacute; kh&aacute;ch tr&ecirc;n website ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- Li&ecirc;n kết đến website của đối t&aacute;c:</strong>Hệ thống website Pico chứa nhiều li&ecirc;n kết đến website của c&aacute;c đối t&aacute;c như c&aacute;c nh&agrave; cung cấp của ch&uacute;ng t&ocirc;i. Ch&uacute;ng t&ocirc;i kh&ocirc;ng c&oacute; tr&aacute;ch nhiệm hay chịu tr&aacute;ch nhiệm về bảo mật th&ocirc;ng tin hoặc nội dung hiển thị tr&ecirc;n những website n&agrave;y. Ch&uacute;ng t&ocirc;i khuyến c&aacute;o qu&yacute; kh&aacute;ch n&ecirc;n kiểm tra t&iacute;nh bảo mật đối với mỗi website m&agrave; qu&yacute; kh&aacute;ch viếng thăm.Việc cung cấp những li&ecirc;n kết đến website của c&aacute;c đối t&aacute;c thứ ba chỉ nhằm gi&uacute;p qu&yacute; kh&aacute;ch tham khảo th&ocirc;ng tin thuận tiện hơn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>- Thực thi ph&aacute;p luật v&agrave; bảo vệ người sử dụng:</strong>&nbsp;Trong phạm vi luật ph&aacute;p cho ph&eacute;p, ch&uacute;ng t&ocirc;i sẽ tiết lộ những th&ocirc;ng tin c&aacute; nh&acirc;n của qu&yacute; kh&aacute;ch cho c&aacute;c cơ quan ch&iacute;nh phủ hoặc c&aacute;c b&ecirc;n thứ ba theo y&ecirc;u cầu ph&aacute;p l&yacute;. Ch&uacute;ng t&ocirc;i cũng c&oacute; thể sử dụng hoặc cung cấp th&ocirc;ng tin của qu&yacute; kh&aacute;ch theo ph&aacute;p luật để thực hiện thẩm định ph&iacute;, b&aacute;o c&aacute;o hoặc thu nợ, chống lại những sự gian lận hoặc bảo vệ quyền lợi của ch&uacute;ng t&ocirc;i cũng như kh&aacute;ch h&agrave;ng của ch&uacute;ng t&ocirc;i, hoặc người sử dụng. Qu&yacute; kh&aacute;ch n&ecirc;n biết rằng, sau khi cung cấp cho b&ecirc;n thứ ba, th&ocirc;ng tin c&aacute; nh&acirc;n của qu&yacute; kh&aacute;ch c&oacute; thể được biết bởi những người kh&aacute;c trong phạm vi cho ph&eacute;p hoặc y&ecirc;u cầu của luật &aacute;p dụng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>5. QUY ĐỊNH LI&Ecirc;N KẾT TH&Agrave;NH VI&Ecirc;N:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Ch&uacute;ng t&ocirc;i duy tr&igrave; mối quan hệ với c&aacute;c website li&ecirc;n kết của đối t&aacute;c. Mặc d&ugrave; ch&uacute;ng t&ocirc;i kh&ocirc;ng v&agrave; kh&ocirc;ng thể quản l&yacute; c&aacute;c hoạt động của đối t&aacute;c để điều h&agrave;nh những website đ&oacute;, nhưng ch&uacute;ng t&ocirc;i sẽ chấm dứt giao dịch với bất kỳ th&agrave;nh vi&ecirc;n c&oacute; những sai phạm, v&iacute; dụ như: gửi thư r&aacute;c, vi phạm thương hiệu h&agrave;ng h&oacute;a, l&agrave;m phương ti&ecirc;n lợi dụng để l&ocirc;i k&eacute;o kh&aacute;ch viếng thăm, hoặc những hoạt động vi phạm ph&aacute;p luật. Vui l&ograve;ng th&ocirc;ng b&aacute;o cho ch&uacute;ng t&ocirc;i khi qu&yacute; kh&aacute;ch ph&aacute;t hiện một li&ecirc;n kết xấu bằng c&aacute;ch gửi email đến địa chỉ&nbsp;<a href=\"mailto:chamsockhachhang@pico.com.vn\">chamsockhachhang@pico.com.vn</a>&nbsp;hoặc<a href=\"mailto:support@pico.com.vn\">support@pico.com.vn</a>. &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>6. QUY ĐỊNH ĐỐI VỚI TRẺ EM V&Agrave; BẢO MẬT:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- C&aacute;c website thương mại n&oacute;i chung kh&ocirc;ng phải được thiết kế d&agrave;nh cho trẻ em dưới 13 tuổi. Ch&uacute;ng t&ocirc;i kh&ocirc;ng cố &yacute; thu thập th&ocirc;ng tin c&aacute; nh&acirc;n của trẻ em dưới 13 tuổi m&agrave; kh&ocirc;ng c&oacute; sự kiểm so&aacute;t của phụ huynh. Nếu qu&yacute; kh&aacute;ch dưới 13 tuổi, xin vui l&ograve;ng kh&ocirc;ng cung cấp cho ch&uacute;ng t&ocirc;i bất kỳ th&ocirc;ng tin c&aacute; nh&acirc;n g&igrave;. Nếu ch&uacute;ng t&ocirc;i x&aacute;c định được người d&ugrave;ng c&oacute; độ tuổi dưới 13 v&agrave; đ&atilde; gửi th&ocirc;ng tin c&aacute; nh&acirc;n m&agrave; kh&ocirc;ng c&oacute; sự kiểm so&aacute;t của phụ huynh, ch&uacute;ng t&ocirc;i sẽ loại bỏ th&ocirc;ng tin c&aacute; nh&acirc;n n&agrave;y khỏi dữ liệu của ch&uacute;ng t&ocirc;i. Ch&uacute;ng t&ocirc;i hiểu rằng trẻ em c&oacute; thể kh&ocirc;ng ho&agrave;n to&agrave;n hiểu tất cả c&aacute;c quy định của Th&ocirc;ng b&aacute;o n&agrave;y, hoặc c&oacute; những lựa chọn m&agrave; website thiết kế chỉ nhằm d&agrave;nh cho người trưởng th&agrave;nh. Ch&uacute;ng t&ocirc;i khuyến c&aacute;o phụ huynh v&agrave; người gi&aacute;m hộ d&agrave;nh thời gian c&ugrave;ng trẻ em khi trẻ em v&agrave;o internet v&agrave; để biết được những trang m&agrave; con m&igrave;nh truy cập. Hệ thống website Pico kh&ocirc;ng b&aacute;n sản phẩm cho người dưới 13 tuổi.Nếu qu&yacute; kh&aacute;ch dưới 13 tuổi, qu&yacute; kh&aacute;ch được y&ecirc;u cầu phải c&oacute; sự đồng &yacute; của cha mẹ hoặc người gi&aacute;m hộ để thực hiện mua h&agrave;ng từ hệ thống website Pico.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>7. QUY ĐỊNH VỀ AN NINH:</strong></p>\r\n\r\n<p>- Ch&uacute;ng t&ocirc;i sử dụng c&ocirc;ng nghệ m&atilde; h&oacute;a 128-bit trong những trang web c&oacute; y&ecirc;u cầu qu&yacute; kh&aacute;ch cung cấp th&ocirc;ng tin c&aacute; nh&acirc;n hoặc t&agrave;i khoản, bao gồm cả những lĩnh vực li&ecirc;n quan đến đặt h&agrave;ng trực tuyến, t&igrave;nh trạng đặt h&agrave;ng, những y&ecirc;u cầu gửi newsletter v&agrave; c&aacute;c h&igrave;nh thức khuyến m&atilde;i.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Website được sử dụng c&ocirc;ng nghệ Tường lửa (firewall) chuy&ecirc;n nghiệp v&agrave; kỹ thuật SSL để m&atilde; h&oacute;a th&ocirc;ng tin nhạy cảm của c&aacute; nh&acirc;n qu&yacute; kh&aacute;ch như t&ecirc;n, địa chỉ v&agrave; th&ocirc;ng tin thẻ t&iacute;n dụng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Tuy nhi&ecirc;n, qu&yacute; kh&aacute;ch n&ecirc;n biết rằng kh&ocirc;ng c&oacute; hệ thống m&aacute;y t&iacute;nh n&agrave;o l&agrave; ho&agrave;n to&agrave;n an to&agrave;n v&agrave; đ&oacute; l&agrave; những rủi ro vốn c&oacute; khi thực hiện c&aacute;c giao dịch tr&ecirc;n internet. Để đảm bảo qu&yacute; kh&aacute;ch c&oacute; c&aacute;c t&iacute;nh năng bảo mật mới nhất tr&ecirc;n tr&igrave;nh duyệt của m&igrave;nh, qu&yacute; kh&aacute;ch n&ecirc;n tải về phi&ecirc;n bản mới nhất của tr&igrave;nh duyệt ưa th&iacute;ch của qu&yacute; kh&aacute;ch phải c&oacute; hỗ trợ SSL đầy đủ v&agrave; cần c&aacute;c giải ph&aacute;p bảo mật cho m&aacute;y t&iacute;nh của qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>8. QUY ĐỊNH SỬA ĐỔI/ XO&Aacute; BỎ/ TỪ CHỐI TH&Ocirc;NG TIN:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Nếu t&ecirc;n, địa chỉ email hoặc địa chỉ nh&agrave;, số điện thoại hoặc c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n kh&aacute;c của qu&yacute; kh&aacute;ch c&oacute; thay đổi, qu&yacute; kh&aacute;ch c&oacute; thể cập nhật, sửa đổi qua t&agrave;i khoản của m&igrave;nh ở website Pico hoặc bỏ đi c&aacute;c th&ocirc;ng tin c&oacute; li&ecirc;n quan bằng c&aacute;ch li&ecirc;n hệ với ch&uacute;ng t&ocirc;i theo email:<a href=\"mailto:support@pico.com.vn\">support@pico.com.vn</a>. Ngo&agrave;i ra, nếu qu&yacute; kh&aacute;ch kh&ocirc;ng muốn tiếp tục nhận th&ocirc;ng tin newsletter qua email từ ch&uacute;ng t&ocirc;i, qu&yacute; kh&aacute;ch vui l&ograve;ng gửi email đến:&nbsp;<a href=\"mailto:support@pico.com.vn\">support@pico.com.vn</a>&nbsp;hoặc bằng c&aacute;ch nhấn chuột v&agrave;o li&ecirc;n kết kh&ocirc;ng tiếp tục nhận th&ocirc;ng tin trong bất kỳ Newsletter email n&agrave;o m&agrave; ch&uacute;ng t&ocirc;i đ&atilde; gửi đến qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>9. QUY ĐỊNH TH&Ocirc;NG TIN LI&Ecirc;N LẠC</strong>:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Nếu qu&yacute; kh&aacute;ch c&oacute; bất kỳ c&acirc;u hỏi hay thắc mắc g&igrave; về điều khoản Bảo mật n&agrave;y, vui l&ograve;ng li&ecirc;n hệ ch&uacute;ng t&ocirc;i qua đường d&acirc;y n&oacute;ng: 1900.6699 hoặc email&nbsp;<a href=\"mailto:info@trade.nguyenkim.com\">chamsockhachhang@pico.com.vn</a>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>10. THAY ĐỔI VỀ CH&Iacute;NH S&Aacute;CH</strong>:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Nội dung của &ldquo;Quy định bảo mật&rdquo; n&agrave;y c&oacute; thể thay đổi để ph&ugrave; hợp với c&aacute;c nhu cầu của Pico cũng như nhu cầu v&agrave; sự phản hồi từ kh&aacute;ch h&agrave;ng nếu c&oacute; m&agrave; kh&ocirc;ng cần b&aacute;o trước. Khi cập nhật nội dung ch&iacute;nh s&aacute;ch n&agrave;y, ch&uacute;ng t&ocirc;i sẽ chỉnh sửa lại thời gian &ldquo;Cập nhật lần cuối&rdquo; b&ecirc;n tr&ecirc;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Nội dung &ldquo;Quy định bảo mật&rdquo; n&agrave;y chỉ &aacute;p dụng tại Pico, kh&ocirc;ng bao gồm hoặc li&ecirc;n quan đến c&aacute;c b&ecirc;n thứ ba đặt quảng c&aacute;o hay c&oacute; links tại Pico. Do đ&oacute;, ch&uacute;ng t&ocirc;i đề nghị bạn đọc v&agrave; tham khảo kỹ nội dung &ldquo;Quy định bảo mật&rdquo; của từng website m&agrave; bạn đang truy cập.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ch&uacute;ng t&ocirc;i lu&ocirc;n hoan ngh&ecirc;nh c&aacute;c &yacute; kiến đ&oacute;ng g&oacute;p, li&ecirc;n hệ v&agrave; phản hồi th&ocirc;ng tin từ bạn về &ldquo;Quy định bảo mật&rdquo; n&agrave;y. Nếu bạn c&oacute; những thắc mắc li&ecirc;n quan xin vui l&ograve;ng li&ecirc;n hệ theo địa chỉ Email:&nbsp;<a href=\"mailto:support@pico.com.vn\">support@pico.com.vn</a><a name=\"_GoBack\"></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&ocirc;ng ty Cổ phần&nbsp;Pico sử dụng 3 (ba) t&ecirc;n miền (tiếng Anh được gọi l&agrave; domain name).T&ecirc;n miền ch&iacute;nh được được Pico sử dụng l&agrave;:&nbsp;<a href=\"http://pico.vn/\">pico.vn</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;c t&ecirc;n miền phụ:</p>\r\n\r\n<ul style=\"list-style-type:circle\">\r\n	<li>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n	<br />\r\n	Đ&atilde; được đăng k&yacute; tại Trung T&acirc;m Internet Việt Nam thuộc BỘ TH&Ocirc;NG TIN V&Agrave; TRUYỀN TH&Ocirc;NG. Ngo&agrave;i 2 (ba) t&ecirc;n miền tr&ecirc;n ch&uacute;ng t&ocirc;i kh&ocirc;ng c&ograve;n sử dụng t&ecirc;n miền n&agrave;o kh&aacute;c.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>C&aacute;c t&ecirc;n miền con (tiếng Anh được gọi l&agrave; sub-domain), v&iacute; dụ như&nbsp;<a href=\"http://123.pico.com.vn/\">http://123.pico.vn/</a>&nbsp;đềuthuộc quyền sở hữu v&agrave; quản l&yacute; của C&ocirc;ng ty Cổ phần Pico.&nbsp;Những t&ecirc;n miền kh&aacute;c được sở hữu bởi Pico m&agrave; kh&ocirc;ng cần liệt k&ecirc; to&agrave;n bộ ở đ&acirc;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Bản quyền của Pico 2007-2011.Bảo lưu mọi quyền.(&copy; 2007-2011 Pico. All rights reserved)</p>\r\n', null, '2016-01-19 09:51:12', 'Pico', null, 'chinh-sach-bao-mat.html', '2');
INSERT INTO `posts` VALUES ('26', 'Chính sách vận chuyển hàng', '<p><strong>1. MỤC Đ&Iacute;CH:</strong></p>\r\n\r\n<p>Quy định ch&iacute;nh s&aacute;ch giao nhận, lắp đặt với mong muốn tạo ra c&aacute;c gi&aacute; trị gia tăng cho sản phẩm khi kh&aacute;ch h&agrave;ng mua sắm tại Hệ thống Si&ecirc;u thị Điện m&aacute;y Pico.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>2. PHẠM VI &Aacute;P DỤNG:</strong></p>\r\n\r\n<p><strong>2.1 Đối tượng &aacute;p dụng:</strong></p>\r\n\r\n<p>Tất cả c&aacute;c kh&aacute;ch h&agrave;ng mua sản phẩm Điện tử, Điện lạnh, Gia dụng, Viễn th&ocirc;ng, IT, KTS tại&nbsp;Hệ thống si&ecirc;u thị Điện m&aacute;y Pico.</p>\r\n\r\n<p><strong>2.2 Khu vực &aacute;p dụng:</strong></p>\r\n\r\n<p>Giao nhận miễn ph&iacute; c&aacute;c khu vực sau:&nbsp;Th&agrave;nh phố H&agrave; Nội v&agrave; c&aacute;c tỉnh: Bắc Ninh, Hải Dương, Vĩnh Ph&uacute;c, Hưng Y&ecirc;n, Th&aacute;i Nguy&ecirc;n, Ninh B&igrave;nh, H&agrave; Nam, Việt Tr&igrave;, Nam Định, Hải Ph&ograve;ng, Bắc Giang...&nbsp;<strong>Ch&iacute;nh s&aacute;ch vận chuyển miễn ph&iacute; dưới 200km &aacute;p dụng cho đơn h&agrave;ng điện tử, điện lạnh, gia dụng trị gi&aacute; từ 500.000 đồng trở l&ecirc;n<em>.</em></strong><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>3. NỘI DUNG:</strong></p>\r\n\r\n<p><strong>3.1 Dịch vụ giao nhận sản phẩm:</strong></p>\r\n\r\n<ul>\r\n	<li>Pico thực hiện dịch vụ giao nhận miễn ph&iacute; tận nh&agrave; cho kh&aacute;ch h&agrave;ng ở c&aacute;c khu vực được quy định tại mục 2.2&nbsp; với c&aacute;c đơn h&agrave;ng trị gi&aacute; từ 500.000 đồng trở l&ecirc;n.</li>\r\n	<li>Pico sẽ giao h&agrave;ng trong v&ograve;ng 3 giờ nếu phạm vi giao h&agrave;ng &le; 30km t&iacute;nh từ c&aacute;c si&ecirc;u thị của&nbsp;Hệ thống Si&ecirc;u thị Điện m&aacute;y Pico, ri&ecirc;ng đơn h&agrave;ng mua Online sẽ được&nbsp;giao h&agrave;ng trong v&ograve;ng 2 giờ đối với c&aacute;c đơn h&agrave;ng c&oacute; gi&aacute; trị từ 200.000 đồng trở l&ecirc;n v&agrave; &aacute;p dụng cho tất cả c&aacute;c ng&agrave;nh h&agrave;ng.</li>\r\n	<li>Pico sẽ giao h&agrave;ng trong v&ograve;ng 05 - 07 ng&agrave;y nếu phạm vi giao h&agrave;ng từ 100km đến 200km t&iacute;nh từ c&aacute;c trung t&acirc;m của hệ thống si&ecirc;u thị điện m&aacute;y Pico.</li>\r\n	<li>Đối với c&aacute;c đơn h&agrave;ng c&oacute; phạm vi giao h&agrave;ng từ 30km - 100km, nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng sẽ trực tiếp thỏa thuận thời gian giao h&agrave;ng với kh&aacute;ch h&agrave;ng.</li>\r\n	<li>Trước khi vận chuyển, bộ phận giao nhận sẽ li&ecirc;n lạc với Qu&yacute; kh&aacute;ch h&agrave;ng để hẹn thời gian, địa điểm cụ thể để giao h&agrave;ng cho Qu&yacute; kh&aacute;ch h&agrave;ng.</li>\r\n	<li>Thời gian giao h&agrave;ng v&agrave; lắp đặt: từ 8h30 đến 21h30 tất cả c&aacute;c ng&agrave;y trong tuần.</li>\r\n</ul>\r\n\r\n<p><strong>3.2 Dịch vụ lắp đặt sản phẩm:</strong></p>\r\n\r\n<ul>\r\n	<li>C&ocirc;ng ty thực hiện việc lắp đặt sản phẩm tại nh&agrave; theo y&ecirc;u cầu của kh&aacute;ch h&agrave;ng.</li>\r\n	<li>Kh&aacute;ch h&agrave;ng sẽ thanh to&aacute;n chi ph&iacute; c&ocirc;ng lắp đặt, vật tư sử dụng thực tế theo &quot;<a href=\"http://pico.vn/23s-bang-bao-gia-lap-dat-dieu-hoa.html\"><strong>Bảng gi&aacute; cung cấp vật tư, dịch vụ giao nhận, lắp đặt&quot;</strong>&nbsp;</a>sau khi kh&aacute;ch h&agrave;ng đ&atilde; được hưởng tất cả c&aacute;c h&igrave;nh thức khuyến mại của c&ocirc;ng ty tại thời điểm mua h&agrave;ng.</li>\r\n	<li>Trường hợp kh&aacute;ch h&agrave;ng tự lắp đặt/ c&agrave;i đặt/ sản phẩm (đối với thiết bị tin học v&agrave; thiết bị viễn th&ocirc;ng): Kh&aacute;ch h&agrave;ng tự chịu tr&aacute;ch nhiệm về kỹ thuật c&agrave;i đặt/ lắp đặt cũng như mọi rủi ro, tổn thất, thiệt hại li&ecirc;n quan đến sản phẩm v&agrave; con người như: rơi rớt l&agrave;m hư hỏng sản phẩm, rơi rớt g&acirc;y nguy hiểm đến t&iacute;nh mạng&hellip;</li>\r\n	<li>Pico chỉ c&agrave;i đặt c&aacute;c phầm mềm tin học c&oacute; bản quyền. Pico chỉ hỗ trợ c&agrave;i đặt h&igrave;nh, nhạc, chu&ocirc;ng, games, &hellip; từ c&aacute;c trang web ch&iacute;nh thức (c&oacute; đăng k&yacute; bản quyền theo luật định).</li>\r\n	<li>Pico chưa phục vụ dịch vụ c&ocirc;ng x&acirc;y dựng (khoan mặt b&agrave;n, lắp r&aacute;p b&agrave;n ghế, m&oacute;c treo m&aacute;y chiếu, ...). Kh&aacute;ch h&agrave;ng tự thu&ecirc; ngo&agrave;i ho&agrave;n tất c&aacute;c hạng mục, vật dụng cần thiết trước khi đề nghị Pico lắp đặt sản phẩm tin học.</li>\r\n</ul>\r\n\r\n<p><strong><strong>Lưu &yacute;</strong>:</strong></p>\r\n\r\n<p><strong>Đối với sản phẩm Tivi LCD:</strong>&nbsp;Khi kh&aacute;ch h&agrave;ng mua tivi k&egrave;m theo gi&aacute; treo, c&ocirc;ng ty sẽ tặng c&ocirc;ng lắp đặt. Đối với c&aacute;c trường hợp kh&aacute;c c&ocirc;ng ty chỉ giao nhận chứ kh&ocirc;ng lắp đặt miễn ph&iacute;..</p>\r\n', null, '2016-01-19 09:51:12', 'Pico', null, 'chinh-sach-van-chuyen-hang.html', '3');
INSERT INTO `posts` VALUES ('27', 'Chính sách bảo hành', '<div>Trong thời gian sử dụng nếu gặp bất kỳ trục trặc n&agrave;o hoặc lỗi do người sử dụng Kh&aacute;ch h&agrave;ng c&oacute; thể li&ecirc;n lạc trực tiếp với Trung t&acirc;m bảo h&agrave;nh của H&atilde;ng hoặc Trung t&acirc;m Chăm s&oacute;c Kh&aacute;ch h&agrave;ng của C&ocirc;ng ty Pico để được trợ gi&uacute;p.&nbsp;<br />\r\n&nbsp;</div>\r\n\r\n<div><strong>I/ Những trường hợp được bảo h&agrave;nh miễn ph&iacute;:</strong><br />\r\n&nbsp;</div>\r\n\r\n<div><strong>Bảo h&agrave;nh sản phẩm l&agrave;:</strong>&nbsp;khắc phục những lỗi hỏng h&oacute;c, sự cố kỹ thuật xảy ra do lỗi của H&atilde;ng sản xuất.<br />\r\n&nbsp;</div>\r\n\r\n<div>- Sản phẩm được bảo h&agrave;nh miễn ph&iacute; nếu sản phẩm đ&oacute; c&ograve;n thời hạn bảo h&agrave;nh được t&iacute;nh kể từ ng&agrave;y giao h&agrave;ng.<br />\r\n&nbsp;</div>\r\n\r\n<div>- Thời hạn bảo h&agrave;nh được ghi tr&ecirc;n Phiếu Bảo H&agrave;nh v&agrave; theo quy định của từng H&atilde;ng sản xuất đối với tất cả c&aacute;c sự cố về mặt kỹ thuật.<br />\r\n&nbsp;</div>\r\n\r\n<div>- C&oacute; Phiếu bảo h&agrave;nh v&agrave; Tem bảo h&agrave;nh của H&atilde;ng sản xuất tr&ecirc;n sản phẩm.<br />\r\n&nbsp;</div>\r\n\r\n<div>- Sản phẩm bảo h&agrave;nh sẽ tu&acirc;n theo qui định bảo h&agrave;nh của từng H&atilde;ng sản xuất đối với c&aacute;c sự cố về mặt kỹ thuật.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><br />\r\n<strong>Danh s&aacute;ch sản phẩm được phục vụ bảo h&agrave;nh tại nh&agrave;:</strong><br />\r\n&nbsp;</div>\r\n\r\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:21px; width:649px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"height:20px; width:165px\"><strong>Điện tử</strong></td>\r\n			<td style=\"width:120px\"><strong>Điện lạnh</strong></td>\r\n			<td style=\"width:187px\"><strong>&Acirc;m thanh</strong></td>\r\n			<td style=\"width:177px\"><strong>Gia dụng</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:20px\">Tivi m&agrave;n h&igrave;nh LCD, LED</td>\r\n			<td>Điều h&ograve;a</td>\r\n			<td>Home Theater</td>\r\n			<td>C&acirc;y lọc nước, m&aacute;y lọc nước</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:20px\">Tivi m&agrave;n h&igrave;nh Plasma</td>\r\n			<td>Tủ lạnh</td>\r\n			<td>Đầu KTS thu t&iacute;n hiệu vệ tinh</td>\r\n			<td>B&igrave;nh tắm n&oacute;ng lạnh</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:20px\">&nbsp;</td>\r\n			<td>M&aacute;y giặt</td>\r\n			<td>&nbsp;</td>\r\n			<td>\r\n			<p>L&ograve; vi s&oacute;ng tr&ecirc;n 30L</p>\r\n\r\n			<p>L&ograve; nướng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:20px\">&nbsp;</td>\r\n			<td>M&aacute;y sấy quần &aacute;o</td>\r\n			<td>&nbsp;</td>\r\n			<td>Bếp gas &acirc;m</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"height:20px\">&nbsp;</td>\r\n			<td>Tủ đ&ocirc;ng, tủ m&aacute;t</td>\r\n			<td>&nbsp;</td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Những sản phẩm thuộc danh s&aacute;ch sản phẩm được phục vụ bảo h&agrave;nh tại nh&agrave;, t&ugrave;y thuộc v&agrave;o mức độ hư hỏng của sản phẩm, Kỹ thuật vi&ecirc;n của C&ocirc;ng ty Pico sẽ trực tiếp khắc phục sự cố tại nh&agrave; hoặc thay mặt Qu&yacute; kh&aacute;ch mang sản phẩm tới Trung T&acirc;m Bảo H&agrave;nh của H&atilde;ng hoặc th&ocirc;ng b&aacute;o với H&atilde;ng để đến bảo h&agrave;nh sản phẩm cho Qu&yacute; kh&aacute;ch.<br />\r\n&nbsp;</div>\r\n\r\n<div>Những sản phẩm kh&ocirc;ng thuộc danh s&aacute;ch sản phẩm được bảo h&agrave;nh tại nh&agrave; (nằm trong khả năng chuy&ecirc;n chở của Qu&yacute; kh&aacute;ch), Qu&yacute; kh&aacute;ch vui l&ograve;ng mang sản phẩm đến Trung t&acirc;m Chăm s&oacute;c kh&aacute;ch h&agrave;ng của C&ocirc;ng ty Pico để được phục vụ nhanh ch&oacute;ng hơn.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<h3><strong>Chi ph&iacute; vận chuyển khi bảo h&agrave;nh:</strong></h3>\r\n\r\n<div>Đối với những y&ecirc;u cầu bảo h&agrave;nh thuộc v&agrave;o khu vực được &aacute;p dụng chuyển h&agrave;ng miễn ph&iacute; ( nội th&agrave;nh H&agrave; Nội), C&ocirc;ng ty CP Pico sẽ miễn ph&iacute; chi ph&iacute; vận chuyển h&agrave;ng v&agrave; giao h&agrave;ng.<br />\r\n&nbsp;</div>\r\n\r\n<div>Đối với những y&ecirc;u cầu bảo h&agrave;nh kh&ocirc;ng thuộc v&agrave;o khu vực được &aacute;p dụng chuyển h&agrave;ng miễn ph&iacute; (ngoại th&agrave;nh H&agrave; Nội), Qu&yacute; kh&aacute;ch vui l&ograve;ng:<br />\r\n&nbsp;</div>\r\n\r\n<div>- Li&ecirc;n lạc trực tiếp với H&atilde;ng hoặc gửi sản phẩm đến Trung T&acirc;m Bảo H&agrave;nh gần nhất của H&atilde;ng. Qu&yacute; kh&aacute;ch tự chịu chi ph&iacute; chuyển h&agrave;ng.<br />\r\n&nbsp;</div>\r\n\r\n<div>-&nbsp;Li&ecirc;n lạc với&nbsp;Trung t&acirc;m chăm s&oacute;c Kh&aacute;ch h&agrave;ng của C&ocirc;ng ty CP Pico, C&ocirc;ng ty Pico sẽ thay mặt Qu&yacute; kh&aacute;ch li&ecirc;n lạc với H&atilde;ng để đến bảo h&agrave;nh cho Qu&yacute; kh&aacute;ch.<br />\r\n&nbsp;</div>\r\n\r\n<div>- Gửi sản phẩm đến Trung t&acirc;m chăm s&oacute;c Kh&aacute;ch h&agrave;ng của C&ocirc;ng ty CP Pico. Qu&yacute; kh&aacute;ch tự chịu chi ph&iacute; chuyển h&agrave;ng.</div>\r\n\r\n<div><br />\r\n<br />\r\n<strong>II/ Những trường hợp sau đ&acirc;y sẽ kh&ocirc;ng được bảo h&agrave;nh (sửa chữa c&oacute; t&iacute;nh ph&iacute;):</strong><br />\r\n&nbsp;</div>\r\n\r\n<div>- Những sản phẩm kh&ocirc;ng thể x&aacute;c định được nguồn gốc mua tại C&ocirc;ng ty Pico, th&igrave; C&ocirc;ng ty Pico c&oacute; quyền từ chối bảo h&agrave;nh.</div>\r\n\r\n<div>- Sản phẩm đ&atilde; qu&aacute; thời hạn ghi tr&ecirc;n Phiếu bảo h&agrave;nh hoặc mất Phiếu bảo h&agrave;nh.</div>\r\n\r\n<div>- Phiếu bảo h&agrave;nh,Tem bảo h&agrave;nh bị r&aacute;ch, kh&ocirc;ng c&ograve;n Tem bảo h&agrave;nh, Tem bảo h&agrave;nh d&aacute;n đ&egrave; hoặc bị sửa đổi.</div>\r\n\r\n<div>- Phiếu bảo h&agrave;nh kh&ocirc;ng ghi r&otilde; số Serial v&agrave; ng&agrave;y mua h&agrave;ng.</div>\r\n\r\n<div>- Số Serial tr&ecirc;n m&aacute;y v&agrave; Phiếu bảo h&agrave;nh kh&ocirc;ng tr&ugrave;ng khớp nhau hoặc kh&ocirc;ng x&aacute;c định được v&igrave; bất kỳ l&yacute; do n&agrave;o.</div>\r\n\r\n<div>- Sản phẩm bị hư hỏng do t&aacute;c động cơ học l&agrave;m rơi, vỡ, va đập, trầy xước, m&oacute;p m&eacute;o, ẩm ướt, hoen rỉ, chảy nước hoặc do hỏa hoạn, thi&ecirc;n tai g&acirc;y n&ecirc;n.</div>\r\n\r\n<div>- Sản phẩm c&oacute; dấu hiệu hư hỏng do chuột bọ hoặc c&ocirc;n tr&ugrave;ng x&acirc;m nhập.</div>\r\n\r\n<div>- Sản phẩm bị hư hỏng do sử dụng kh&ocirc;ng đ&uacute;ng s&aacute;ch hướng dẫn, sử dụng sai điện &aacute;p quy định.</div>\r\n\r\n<div>- C&aacute;c loại phụ kiện k&egrave;m theo như: Điều khiển từ xa, Pin điều khiển, Pin CMOS, d&acirc;y nguồn, d&acirc;y t&iacute;n hiệu, nắn d&ograve;ng, đ&egrave;n t&iacute;n hiệu, tai nghe, quạt tr&ecirc;n thiết bị, hoặc thiết bị do quạt bị hỏng g&acirc;y ra ch&aacute;y nổ.</div>\r\n\r\n<div>- C&aacute;c dữ liệu, t&agrave;i liệu, văn bản v&agrave; phần mềm cung cấp miễn ph&iacute;, lưu trữ k&egrave;m theo sản phẩm (kể cả trong thời gian gửi bảo h&agrave;nh).</div>\r\n\r\n<div>- Tự &yacute; th&aacute;o dỡ, sửa chữa bởi c&aacute;c c&aacute; nh&acirc;n hoặc Kỹ thuật vi&ecirc;n kh&ocirc;ng được sự ủy quyền của C&ocirc;ng ty Pico.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>III// Li&ecirc;n hệ, thắc mắc, khiếu nại về vấn đề bảo h&agrave;nh:</strong><br />\r\n&nbsp;</div>\r\n\r\n<div>Nếu Qu&yacute; kh&aacute;ch chưa thấy h&agrave;i l&ograve;ng hoặc c&oacute; thắc mắc khiếu nại g&igrave; về vấn đề bảo h&agrave;nh, xin Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ:<br />\r\n&nbsp;</div>\r\n\r\n<div><strong>Trung t&acirc;m chăm s&oacute;c Kh&aacute;ch h&agrave;ng &ndash; Hệ thống si&ecirc;u thị điện m&aacute;y Pico&nbsp;</strong><br />\r\n&nbsp;</div>\r\n\r\n<div><strong>Địa chỉ:&nbsp;Số 76 Nguyễn Tr&atilde;i, Thanh Xu&acirc;n, H&agrave; Nội.</strong><br />\r\n<strong>Điện thoại:&nbsp;(04).6277.0000&nbsp;hoặc&nbsp;1900 6699</strong>&nbsp;.<br />\r\n<strong>E-mail:&nbsp;chamsockhachhang@pico.com.vn</strong></div>\r\n', null, '2016-01-19 09:51:12', 'Pico', null, 'chinh-sach-bao-hanh.html', '3');
INSERT INTO `posts` VALUES ('28', 'Chính sách đổi hàng', '<div>\r\n<p><strong>I. MỤC Đ&Iacute;CH:</strong></p>\r\n\r\n<p>Nhằm đảm bảo quyền lợi người ti&ecirc;u d&ugrave;ng, n&acirc;ng cao chất lượng dịch vụ sau b&aacute;n h&agrave;ng, C&ocirc;ng ty Pico sẽ hỗ trợ Qu&yacute; kh&aacute;ch đổi sản phẩm mới c&ugrave;ng loại nếu sản phẩm gặp sự cố kh&ocirc;ng thể khắc phục được ngay (do lỗi kỹ thuật của nh&agrave; sản xuất). Sản phẩm chỉ được đổi khi đ&aacute;p ứng đầy đủ c&aacute;c điều kiện sau dưới đ&acirc;y:</p>\r\n\r\n<p><strong>SẢN PHẨM ĐƯỢC ĐỔI KHI Đ&Aacute;P ỨNG ĐỦ C&Aacute;C ĐIỀU KIỆN DƯỚI Đ&Acirc;Y:</strong><br />\r\n<br />\r\n<strong>1) Thời gian &aacute;p dụng (T&iacute;nh từ thời điểm b&agrave;n giao h&agrave;ng)</strong></p>\r\n\r\n<p><em>Ch&uacute; &yacute;:&nbsp;Kh&ocirc;ng &aacute;p dụng cho c&aacute;c sản phẩm: Điều h&ograve;a nhiệt độ, B&igrave;nh n&oacute;ng lạnh, Tủ đ&ocirc;ng, M&aacute;y in, M&aacute;y fax</em></p>\r\n\r\n<table align=\"center\" border=\"1\" cellpadding=\"0\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Loại h&agrave;ng</strong></td>\r\n			<td><strong>Thời gian</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>H&agrave;ng điện tử, điện lạnh</td>\r\n			<td>7 ng&agrave;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thiết bị truyền h&igrave;nh số(K+, AVG...)</td>\r\n			<td>3&nbsp;ng&agrave;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>H&agrave;ng gia dụng</td>\r\n			<td>15&nbsp;ng&agrave;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>C&aacute;c loại điện thoại di động th&ocirc;ng minh (smartphone), m&aacute;y t&iacute;nh bảng (tablet)</td>\r\n			<td>15&nbsp;ng&agrave;y, &nbsp;xem&nbsp;chi tiết&nbsp;<strong><a href=\"http://pico.vn/41s-chinh-sach-doi-tra-mobile-tablet.html\">tại đ&acirc;y</a></strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>C&aacute;c loại điện thoại di động kh&aacute;c</td>\r\n			<td>2 ng&agrave;y</td>\r\n		</tr>\r\n		<tr>\r\n			<td>Phụ kiện viễn th&ocirc;ng, kỹ thuật số</td>\r\n			<td>30 ng&agrave;y, xem&nbsp;chi tiết&nbsp;<strong><a href=\"http://pico.vn/42s-chinh-sach-doi-phu-kien-vien-thong--kts-trong-30-ngay.html\">tại đ&acirc;y</a></strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>M&aacute;y t&iacute;nh để b&agrave;n, m&agrave;n h&igrave;nh, thiết bị mạng (USB 3G, thiết bị wifi)</td>\r\n			<td>30 ng&agrave;y,&nbsp;xem chi tiết&nbsp;<strong><a href=\"http://pico.vn/43s-chinh-sach-doi-san-pham-it-len-den-60-ngay.html\">tại đ&acirc;y</a></strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Laptop</td>\r\n			<td>30 ng&agrave;y, xem chi tiết&nbsp;<strong><a href=\"http://pico.vn/49s-chinh-sach-doi-san-pham-laptop-len-den-30-ngay.html\">tại đ&acirc;y</a></strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>Thiết bị ngoại vi, phụ kiện (chuột, tai nghe,b&agrave;n ph&iacute;m, loa)</td>\r\n			<td>60 ng&agrave;y,&nbsp;xem chi tiết&nbsp;<strong><a href=\"http://pico.vn/43s-chinh-sach-doi-san-pham-it-len-den-60-ngay.html\">tại đ&acirc;y</a></strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td>C&aacute;c sản phẩm kh&aacute;c</td>\r\n			<td>24 giờ</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. Điều kiện đổi h&agrave;ng:</strong></p>\r\n\r\n<ul>\r\n	<li>Sản phẩm phải c&ograve;n nguy&ecirc;n tem ni&ecirc;m phong của Pico hoặc của nh&agrave; sản xuất.</li>\r\n	<li>Sản phẩm được x&aacute;c định bị lỗi kỹ thuật bởi c&aacute;c Kỹ thuật vi&ecirc;n của Pico hoặc của nh&agrave; sản xuất.</li>\r\n	<li>Sản phẩm nhận lại phải c&ograve;n nguy&ecirc;n vẹn vỏ th&ugrave;ng, xốp v&agrave; đầy đủ c&aacute;c phụ kiện k&egrave;m theo, qu&agrave; khuyến m&atilde;i (nếu c&oacute;)&hellip;</li>\r\n	<li>Sản phẩm nhận lại kh&ocirc;ng bị lỗi h&igrave;nh thức (trầy xước, vỡ, m&oacute;p m&eacute;o, ố v&agrave;ng,&hellip;)</li>\r\n	<li>Sản phẩm khi nhận lại phải c&oacute; đầy đủ c&aacute;c chứng từ k&egrave;m theo như (chứng từ mua h&agrave;ng, h&oacute;a đơn VAT nếu c&oacute;, phiếu bảo h&agrave;nh, s&aacute;ch hướng dẫn, catalogue&hellip;&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>3. Trường hợp kh&ocirc;ng được chấp nhận:</strong></p>\r\n\r\n<ul>\r\n	<li>Kh&aacute;ch h&agrave;ng muốn thay đổi chủng loại, mẫu m&atilde; nhưng kh&ocirc;ng th&ocirc;ng b&aacute;o trước.</li>\r\n	<li>Lỗi hỏng h&oacute;c sản phẩm do kh&aacute;ch h&agrave;ng vận h&agrave;nh kh&ocirc;ng đ&uacute;ng chỉ dẫn.</li>\r\n	<li>Kh&aacute;ch h&agrave;ng kh&ocirc;ng thực hiện c&aacute;c quy định theo y&ecirc;u cầu để được hưởng chế độ bảo h&agrave;nh (v&iacute; dụ kh&ocirc;ng gửi phiếu bảo h&agrave;nh về đ&uacute;ng nơi quy định trong thời gian quy định).</li>\r\n	<li>Kh&aacute;ch h&agrave;ng tự l&agrave;m ảnh hưởng đến t&igrave;nh trạng b&ecirc;n ngo&agrave;i sản phẩm như r&aacute;ch bao b&igrave;, trầy, xước, vỡ,&hellip;</li>\r\n	<li>Lỗi h&igrave;nh thức của sản phẩm (trầy xước, m&oacute;p m&eacute;o, ố v&agrave;ng, vỡ&hellip;) sau khi kh&aacute;ch h&agrave;ng đ&atilde; kiểm tra v&agrave; nhận b&agrave;n giao.&nbsp;</li>\r\n</ul>\r\n\r\n<p><strong>QUY TR&Igrave;NH &amp; THỦ TỤC ĐỔI TRẢ H&Agrave;NG:</strong></p>\r\n\r\n<ul>\r\n	<li>Kh&aacute;ch h&agrave;ng li&ecirc;n hệ trực tiếp với Trung t&acirc;m bảo h&agrave;nh của H&atilde;ng hoặc th&ocirc;ng qua Trung chăm s&oacute;c kh&aacute;ch h&agrave;ng của C&ocirc;ng ty Pico.</li>\r\n	<li>Sau khi c&oacute; Giấy x&aacute;c nhận t&igrave;nh trạng với nội dung h&agrave;ng h&oacute;a hư hỏng do lỗi kỹ thuật kh&ocirc;ng thể sửa chữa được ngay, việc đổi h&agrave;ng sẽ được thực hiện theo đ&uacute;ng quy định của</li>\r\n	<li>C&ocirc;ng ty Pico v&agrave; của nh&agrave; sản xuất hoặc Trung t&acirc;m bảo h&agrave;nh được ủy quyền của nh&agrave; sản xuất.</li>\r\n	<li>Quy tr&igrave;nh xử l&yacute; thủ tục đổi hoặc trả h&agrave;ng được thực hiện trong v&ograve;ng 07 (bảy) ng&agrave;y t&iacute;nh từ ng&agrave;y Pico nhận đủ th&ocirc;ng tin v&agrave; c&aacute;c giấy tờ theo quy định từ ph&iacute;a kh&aacute;ch h&agrave;ng.<br />\r\n	&nbsp;</li>\r\n</ul>\r\n\r\n<p>Điện thoại:&nbsp;<strong>1900 6699 / 04.6277 0000</strong>&nbsp;- Email:&nbsp;<strong>chamsockhachhang@pico.com.vn</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n', null, '2016-01-19 09:51:12', 'Pico', null, 'chinh-sach-doi-hang.html', '3');
INSERT INTO `posts` VALUES ('29', 'Quy định thanh toán', '<div>\r\n<p><strong>I. PHƯƠNG THỨC GIAO H&Agrave;NG - TRẢ TIỀN MẶT</strong>:</p>\r\n\r\n<p>&nbsp;- Phương thức Giao h&agrave;ng - Trả tiền mặt chỉ &aacute;p dụng đối với những khu vực Pico hỗ trợ giao nhận (phạm vi giao h&agrave;ng &le; 20km t&iacute;nh từ c&aacute;c trung t&acirc;m của hệ thống si&ecirc;u thị điện m&aacute;y Pico) hoặc trả tiền mua h&agrave;ng trực tiếp tại Hệ thống si&ecirc;u thị điện m&aacute;y Pico.</p>\r\n\r\n<p>- Với phương thức thanh to&aacute;n trực tiếp Qu&yacute; kh&aacute;ch c&oacute; thể đặt h&agrave;ng tr&ecirc;n Website hoặc đặt h&agrave;ng qua điện thoại (tổng đ&agrave;i&nbsp;<strong>1900 6619</strong>).Nh&acirc;n vi&ecirc;n ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh xuất h&agrave;ng cho Qu&yacute; kh&aacute;ch v&agrave; x&aacute;c nhận ng&agrave;y giờ giao h&agrave;ng với Qu&yacute; kh&aacute;ch sau khi xuất h&agrave;ng.</p>\r\n\r\n<p>- Qu&yacute; kh&aacute;ch c&oacute; tr&aacute;ch nhiệm thanh to&aacute;n đầy đủ to&agrave;n bộ gi&aacute; trị đơn h&agrave;ng cho Nh&acirc;n vi&ecirc;n giao nhận hoặc Nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng v&agrave; chăm s&oacute;c kh&aacute;ch h&agrave;ng của Pico ngay khi ho&agrave;n tất kiểm tra h&agrave;ng h&oacute;a v&agrave; nhận Phiếu giao h&agrave;ng ki&ecirc;m phiếu xuất kho. Qu&yacute; kh&aacute;ch thanh to&aacute;n đ&uacute;ng số tiền tr&ecirc;n Phiếu đ&atilde; ghi, nếu c&oacute; bất cứ thắc mắc n&agrave;o Qu&yacute; kh&aacute;ch gọi lại cho Pico để được th&ocirc;ng tin cụ thể hơn.</p>\r\n\r\n<p><strong>II. PHƯƠNG THỨC THANH TO&Aacute;N TRƯỚC</strong></p>\r\n\r\n<p>&nbsp;Chuyển tiền, chuyển khoản, thanh to&aacute;n trực tiếp bằng tiền mặt hoặc qua thẻ tại c&aacute;c&nbsp;<strong><a href=\"http://pico.vn/6s-cac-hinh-thuc-thanh-toan.html\">hệ thống ng&acirc;n h&agrave;ng</a></strong>&nbsp;hoặc trung t&acirc;m giao dịch của Pico</p>\r\n\r\n<p>&nbsp;<strong>1) Chuyển tiền/chuyển khoản:</strong></p>\r\n\r\n<p><strong>&nbsp;</strong><strong>-</strong><strong>&nbsp;</strong>&Aacute;p dụng cho kh&aacute;ch h&agrave;ng ngo&agrave;i&nbsp; khu vực nội th&agrave;nh (phạm vi giao h&agrave;ng từ 20km đến 100km t&iacute;nh từ c&aacute;c trung t&acirc;m của hệ thống si&ecirc;u thị điện m&aacute;y Pico) v&agrave; kh&aacute;ch h&agrave;ng c&oacute; nhu cầu sử dụng phương thức thanh to&aacute;n n&agrave;y. C&aacute;c bước tiến h&agrave;nh như sau:</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.&nbsp;Đến Ng&acirc;n h&agrave;ng gần nơi ở của Qu&yacute; kh&aacute;ch nhất để chuyển tiền/chuyển khoản theo th&ocirc;ng tin chi tiết&nbsp;Pico cung cấp: Số tiền, T&ecirc;n đơn vị, số t&agrave;i khoản, Ng&acirc;n h&agrave;ng mở t&agrave;i khoản, nội dụng chuyển tiền/chuyển khoản.<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.&nbsp;Th&ocirc;ng b&aacute;o cho Pico (bằng điện thoại, email, SMS, fax, ...) khi Qu&yacute; kh&aacute;ch đ&atilde; thực hiện chuyển tiền/chuyển khoản.<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.&nbsp;Hoặc Qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với Bộ phận B&aacute;n h&agrave;ng trực tuyến của Pico theo số tổng&nbsp;đ&agrave;i&nbsp;&nbsp;<strong>1900 6619</strong><strong>(từ 8h15 đến 17h15 h&agrave;ng ng&agrave;y)</strong>, để th&ocirc;ng b&aacute;o đ&atilde; chuyển tiền.<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4.&nbsp;Ngay khi nhận được b&aacute;o c&aacute;o x&aacute;c nhận từ Ng&acirc;n h&agrave;ng, Pico sẽ tiến h&agrave;nh th&ocirc;ng b&aacute;o lại cho Qu&yacute; kh&aacute;ch đồng thời xuất h&agrave;ng giao h&agrave;ng cho Qu&yacute; kh&aacute;ch trong thời gian quy định trong mục Ch&iacute;nh s&aacute;ch vận chuyển.</p>\r\n\r\n<p>- Pico sẽ kh&ocirc;ng chịu tr&aacute;ch nhiệm về sai s&oacute;t trong qu&aacute; tr&igrave;nh chuyển khoản hoặc chuyển khoản sai th&ocirc;ng tin, Qu&yacute; kh&aacute;ch phải l&agrave;m việc với Ng&acirc;n h&agrave;ng để được xử l&yacute; ổn thỏa, chỉ khi n&agrave;o tiền được chuyển đến t&agrave;i khoản của Pico, Pico sẽ x&aacute;c nhận với Qu&yacute; kh&aacute;ch. Trong một số t&igrave;nh huống Qu&yacute; kh&aacute;ch c&oacute; thể nhờ ph&iacute;a Ng&acirc;n h&agrave;ng m&agrave; Qu&yacute; kh&aacute;ch thực hiện giao dịch hoặc Ng&acirc;n h&agrave;ng của Pico sử dụng để kiểm tra đối chứng cần thiết.</p>\r\n\r\n<p>&nbsp;<strong>2) &nbsp;Thanh to&aacute;n trực tiếp bằng tiền mặt hoặc thẻ (Thẻ Visa, Thẻ t&iacute;n dụng...):</strong></p>\r\n\r\n<p>&nbsp;- Qu&yacute; kh&aacute;ch đến quầy giao dịch thuộc Hệ thống si&ecirc;u thị điện m&aacute;y Pico để thực hiện thanh to&aacute;n, nh&acirc;n vi&ecirc;n của Pico sẽ hướng dẫn Qu&yacute; kh&aacute;ch. Qu&yacute; kh&aacute;ch lưu&nbsp; &yacute; khi thanh to&aacute;n sẽ c&oacute; &ldquo;Phiếu giao h&agrave;ng ki&ecirc;m phiếu xuất kho&rdquo; của c&ocirc;ng ty Cổ Phần Pico.</p>\r\n\r\n<p>- Trong trường hợp Qu&yacute; kh&aacute;ch thanh to&aacute;n bằng thẻ Visa hoặc Master bằng c&aacute;ch quẹt thẻ tại Trung t&acirc;m bất kỳ thuộc hệ thống của Pico, Qu&yacute; kh&aacute;ch phải mang thẻ v&agrave; phải đ&uacute;ng chủ thẻ để lấy phiếu v&agrave; k&yacute; nhận phiếu đ&atilde; thanh to&aacute;n. Pico sẽ kh&ocirc;ng chịu tr&aacute;ch nhiệm khi Qu&yacute; kh&aacute;ch d&ugrave;ng thẻ của người kh&aacute;c để thanh to&aacute;n. Ngay sau khi kiểm tra v&agrave; nhận được x&aacute;c nhận từ Ng&acirc;n h&agrave;ng, Pico sẽ tiến h&agrave;nh xuất h&agrave;ng v&agrave; giao h&agrave;ng cho Qu&yacute; kh&aacute;ch trong thời gian sớm nhất.&nbsp;</p>\r\n</div>\r\n', null, '2016-01-19 09:51:12', 'Pico', null, 'quy-dinh-thanh-toan.html', '2');
INSERT INTO `posts` VALUES ('30', 'Hướng dẫn mua hàng Online', '<div>\r\n<p>Dạo một v&ograve;ng quanh website b&aacute;n h&agrave;ng của Pico, bạn đi đến quyết định đặt mua sản phẩm bạn ưng. Tuy nhi&ecirc;n bạn gặp kh&oacute; trong kh&acirc;u đặt mua sản phẩm đ&oacute;. Ch&uacute;ng t&ocirc;i sẵn s&agrave;ng gi&uacute;p đỡ bạn, nhưng trước hết bạn n&ecirc;n tham khảo qua b&agrave;i hướng dẫn nhanh dưới đ&acirc;y:<br />\r\n<br />\r\n<strong>C&aacute;ch thức Đặt mua nhanh sản phẩm với tinh giản th&ocirc;ng tin v&agrave; c&aacute;c kh&acirc;u thủ tục</strong><br />\r\n<br />\r\n<strong>Bước 1: &nbsp;</strong><br />\r\n<br />\r\nĐể mua nhanh sản phẩm m&agrave; kh&ocirc;ng cần đăng nhập t&agrave;i khoản, bạn chỉ việc nhấp (click) v&agrave;o n&uacute;t&nbsp;<strong>Mua ngay, Giao tận nơi</strong>, lập tức bạn sẽ được chuyển đến trang khai b&aacute;o th&ocirc;ng tin đặt mua.&nbsp;<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Sử dụng tính năng mua nhanh không cần đăng ký\" src=\"http://pico.vn/Uploads/Media/Images/47_paystep001.jpg\" style=\"border:0px; height:325px; vertical-align:middle; width:620px\" /><br />\r\n<br />\r\n<em>Sử dụng t&iacute;nh năng mua nhanh kh&ocirc;ng cần đăng k&yacute;</em></p>\r\n\r\n<p><strong>Bước 2:</strong><br />\r\n<br />\r\nKhai b&aacute;o đầy đủ th&ocirc;ng tin để ho&agrave;n tất thủ tục đặt mua sản phẩm.</p>\r\n\r\n<p><img alt=\"Khai báo đầy đủ thông tin để đơn hàng được thực hiện một cách nhanh nhất\" src=\"http://pico.vn/Uploads/Media/Images/48_paystep002.jpg\" style=\"border:0px; height:456px; vertical-align:middle; width:620px\" /><br />\r\n<br />\r\n<em>Khai b&aacute;o đầy đủ th&ocirc;ng tin để đơn h&agrave;ng được thực hiện một c&aacute;ch nhanh nhất</em></p>\r\n\r\n<p><br />\r\n<strong><u>Ch&uacute; &yacute;</u></strong>: T&iacute;ch v&agrave;o &ocirc;&nbsp;<strong>Lấy từ Th&ocirc;ng tin Người mua&nbsp;</strong>nếu bạn muốn truyền dữ liệu khai b&aacute;o b&ecirc;n phần&nbsp;<strong>Th&ocirc;ng tin người mua</strong>&nbsp;sang phần&nbsp;<strong>Th&ocirc;ng tin người nhận</strong>. Nếu th&ocirc;ng tin b&ecirc;n phần dữ liệu Th&ocirc;ng tin người nhận kh&aacute;c th&igrave; bạn bỏ t&iacute;ch &ocirc; n&agrave;y.<br />\r\n<br />\r\nChọn Phương thức thanh to&aacute;n bạn muốn, tuy nhi&ecirc;n nếu bạn chọn h&igrave;nh thức l&agrave;&nbsp;<strong>C.O.D &ndash; Thanh to&aacute;n trực tiếp khi nhận h&agrave;ng</strong>, th&igrave; sẽ kh&ocirc;ng phải thực hiện những bước tiếp theo b&ecirc;n dưới. L&uacute;c n&agrave;y chỉ đợi nh&acirc;n vi&ecirc;n tư vấn b&aacute;n h&agrave;ng Pico gọi điện thoại để thống nhất với bạn về c&aacute;c th&ocirc;ng tin li&ecirc;n quan đến đơn h&agrave;ng &nbsp;l&agrave; xong.<br />\r\n&nbsp;<br />\r\nHo&agrave;n tất c&aacute;c thủ tục trong bước n&agrave;y xong, bạn nhấp (click) v&agrave;o n&uacute;t&nbsp;<strong>Gửi Đơn H&agrave;ng</strong>. Nếu mọi th&ocirc;ng tin bạn nhập liệu l&agrave; ch&iacute;nh x&aacute;c sẽ được chuyển qua m&agrave;n h&igrave;nh như sau:</p>\r\n\r\n<p><br />\r\n<img alt=\"Màn hình thông báo đặt hàng thành công\" src=\"http://pico.vn/Uploads/Media/Images/49_paystep003.jpg\" style=\"border:0px; height:287px; vertical-align:middle; width:620px\" /><br />\r\n<br />\r\n<em>M&agrave;n h&igrave;nh th&ocirc;ng b&aacute;o đặt h&agrave;ng th&agrave;nh c&ocirc;ng</em></p>\r\n\r\n<p><br />\r\n<strong>Bước 3:</strong><br />\r\n<br />\r\nBước n&agrave;y chỉ sử dụng khi bạn chọn Phương thức thanh to&aacute;n qua c&aacute;c Cổng thanh to&aacute;n điện tử kh&ocirc;ng phải l&agrave; Phương thức thanh to&aacute;n&nbsp;<strong>C.O.D -&nbsp;</strong>&nbsp;<strong>Thanh to&aacute;n trực tiếp khi nhận h&agrave;ng</strong>.<br />\r\n&nbsp;<br />\r\nSau khi nh&acirc;n vi&ecirc;n tư vấn b&aacute;n h&agrave;ng của Pico đ&atilde; tiếp nhận v&agrave; xử l&yacute; đơn h&agrave;ng của bạn. Sẽ gửi mail th&ocirc;ng b&aacute;o cho bạn qua E-mail bạn điền ở&nbsp;<strong>Th&ocirc;ng tin người mua</strong>&nbsp;về số đơn h&agrave;ng bạn cần thanh to&aacute;n với nội dung như sau:<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Email thông báo nội dung đơn hàng từ nhân viên tư vấn bán hàng Pico\" src=\"http://pico.vn/Uploads/Media/Images/50_paystepemail.jpg\" style=\"border:0px; height:665px; vertical-align:middle; width:620px\" /><br />\r\n<br />\r\n<em>Email th&ocirc;ng b&aacute;o nội dung đơn h&agrave;ng từ nh&acirc;n vi&ecirc;n tư vấn b&aacute;n h&agrave;ng Pico</em></p>\r\n\r\n<p><br />\r\n<strong>Bước 4:</strong><br />\r\n<br />\r\nSau khi kiểm tra lại to&agrave;n bộ th&ocirc;ng tin đơn h&agrave;ng của bạn. Bạn tiến h&agrave;nh thanh to&aacute;n cho đơn h&agrave;ng như sau:&nbsp;<br />\r\n<br />\r\nNhấp v&agrave;o đường dẫn (link)&nbsp;<strong>Kiểm tra &amp; Thanh to&aacute;n cho Đơn h&agrave;ng</strong>&nbsp;hoặc truy cập trực tiếp theo đường dẫn:&nbsp;<a href=\"http://pico.vn/kiem-tra-thanh-toan-don-hang\">http://pico.vn/kiem-tra-thanh-toan-don-hang</a>. Sẽ chuyển đến m&agrave;n h&igrave;nh như sau:</p>\r\n\r\n<p><img alt=\"Nhập mã số đơn hàng hệ thống Pico sinh ra và số điện thoại bạn khai báo khi đặt mua sản phẩm\" src=\"http://pico.vn/Uploads/Media/Images/51_paystep004.jpg\" style=\"border:0px; height:250px; vertical-align:middle; width:620px\" /><br />\r\n<br />\r\n<em>Nhập&nbsp;<strong>m&atilde; số đơn h&agrave;ng</strong>&nbsp;hệ thống Pico sinh ra v&agrave; số điện thoại bạn khai b&aacute;o khi đặt mua sản phẩm</em></p>\r\n\r\n<p><strong>Bước 5:</strong><br />\r\n<br />\r\nSau khi vượt bước kiểm tra đơn h&agrave;ng k&egrave;m th&ocirc;ng tin sẽ đưa bạn đến m&agrave;n h&igrave;nh sau:</p>\r\n\r\n<p><img alt=\"Thực hiện thanh toán cho đơn hàng\" src=\"http://pico.vn/Uploads/Media/Images/52_paystep005.jpg\" style=\"border:0px; height:473px; vertical-align:middle; width:620px\" /><br />\r\n<br />\r\n<em>Thực hiện thanh to&aacute;n cho đơn h&agrave;ng</em></p>\r\n\r\n<p>Một lần nữa kiểm tra lại đơn h&agrave;ng. Mọi th&ocirc;ng tin đ&atilde; ổn, bạn nhấp (click) v&agrave;o n&uacute;t&nbsp;<strong>Thanh To&aacute;n Ngay</strong>&nbsp;đơn h&agrave;ng một tức sẽ được kết chuyển qua cổng thanh to&aacute;n điện tử. Trong v&iacute; dụ n&agrave;y t&ocirc;i chọn phương thức thanh to&aacute;n&nbsp;<strong>Ng&acirc;n Lượng &ndash; Thẻ nội địa, V&iacute; điện tử&nbsp;</strong>sẽ xuất hiện m&agrave;n h&igrave;nh cổng như sau:<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Màn hình Cổng thanh toán điện tử với Thẻ nội địa, Ví điện Tử của Ngân Lượng\" src=\"http://pico.vn/Uploads/Media/Images/53_paystep006.jpg\" style=\"border:0px; height:360px; vertical-align:middle; width:620px\" /><br />\r\n<br />\r\n<em>M&agrave;n h&igrave;nh Cổng thanh to&aacute;n điện tử với Thẻ nội địa, V&iacute; điện Tử của Ng&acirc;n Lượng</em><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Cảm ơn Anh/Chị đ&atilde; cho ch&uacute;ng t&ocirc;i cơ hội được phục vụ. Khi cần trợ gi&uacute;p, vui l&ograve;ng gọi 1900.6619 trong giờ h&agrave;nh ch&iacute;nh (8h15 &ndash; 20h00)&nbsp;</strong></p>\r\n</div>\r\n', null, '2016-01-19 09:51:12', 'Pico', null, 'huong-dan-mua-hang.html', '4');
INSERT INTO `posts` VALUES ('31', 'Các hình thức thanh toán', '<div>\r\n<p>C&aacute;c h&igrave;nh thức thanh to&aacute;n cụ thể như sau:</p>\r\n\r\n<p><strong>1. Thanh to&aacute;n tiền mặt cho người giao h&agrave;ng</strong></p>\r\n\r\n<p>Nếu địa điểm giao h&agrave;ng v&agrave; thanh to&aacute;n đều l&agrave; một v&agrave; thuộc nội th&agrave;nh H&agrave; Nội th&igrave; Pico sẽ thu tiền khi giao h&agrave;ng m&agrave; kh&ocirc;ng cần đặt cọc.</p>\r\n\r\n<p><br />\r\n<strong>2. Chuyển khoản qua ng&acirc;n h&agrave;ng</strong></p>\r\n\r\n<p>&nbsp;- Nếu địa điểm giao h&agrave;ng kh&aacute;c với địa điểm thanh to&aacute;n (trong trường hợp Qu&yacute; kh&aacute;ch gửi qu&agrave;, gửi h&agrave;ng cho bạn b&egrave;, đối t&aacute;c &hellip;) Pico sẽ thu tiền trước 100% gi&aacute; trị h&agrave;ng + ph&iacute; vận chuyển theo cước ph&iacute; t&iacute;nh trong chinh s&aacute;ch vận chuyển bằng phương thức chuyển khoản trước khi giao h&agrave;ng.</p>\r\n\r\n<p>- Qu&yacute; kh&aacute;ch thanh to&aacute;n qua ng&acirc;n h&agrave;ng, vui l&ograve;ng chuyển tiền đến t&agrave;i khoản của Cty CP Pico được mở tại một trong c&aacute;c ng&acirc;n h&agrave;ng dưới đ&acirc;y:</p>\r\n\r\n<p><strong>+ Ng&acirc;n H&agrave;ng Vietinbank:</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; T&ecirc;n t&agrave;i khoản : C&ocirc;ng ty cổ phần Pi Co</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; Số T&agrave;i khoản : 10201 000 1231885</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; Mở tại: Ng&acirc;n h&agrave;ng&nbsp;</strong><strong>TMCP</strong><strong>&nbsp;C&ocirc;ng thương Việt Nam - chi nh&aacute;nh Đống Đa.</strong></p>\r\n\r\n<p><br />\r\n<strong>+ Ng&acirc;n H&agrave;ng Techcombank:</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; T&ecirc;n t&agrave;i khoản : C&ocirc;ng ty cổ phần Pi Co</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; Số T&agrave;i khoản :&nbsp;</strong><strong>111.2031.3422.019</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; Mở tại: Ng&acirc;n h&agrave;ng&nbsp;</strong><strong>TMCP</strong><strong>&nbsp;kỹ thương Việt nam - chi nh&aacute;nh H&agrave; Nội.</strong></p>\r\n\r\n<p><br />\r\n<strong>+ Ng&acirc;n H&agrave;ng MB Bank:</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; T&ecirc;n t&agrave;i khoản : C&ocirc;ng ty cổ phần Pi Co</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; Số T&agrave;i khoản :&nbsp;</strong><strong>0511100138888</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; Mở tại: Ng&acirc;n h&agrave;ng TMCP Qu&acirc;n đội - chi nh&aacute;nh Điện Bi&ecirc;n Phủ</strong><br />\r\n<br />\r\n<br />\r\n<strong>+ Ng&acirc;n H&agrave;ng BIDV:</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; T&ecirc;n t&agrave;i khoản : C&ocirc;ng ty cổ phần Pi Co</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; Số T&agrave;i khoản :&nbsp;</strong><strong>222 10 000 272268</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; Mở tại: Ng&acirc;n h&agrave;ng&nbsp;</strong><strong>TMCP&nbsp;</strong><strong>Đầu tư &amp; Ph&aacute;t triển Việt nam - chi nh&aacute;nh Thanh Xu&acirc;n.</strong><br />\r\n&nbsp;</p>\r\n\r\n<p><br />\r\n<strong>+ Ng&acirc;n H&agrave;ng HSBC:</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; T&ecirc;n t&agrave;i khoản : C&ocirc;ng ty cổ phần Pi Co</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; Số T&agrave;i khoản :&nbsp;</strong><strong>002 789 808 001</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; Mở tại:&nbsp;</strong><strong>Ng&acirc;n h&agrave;ng TNHH một th&agrave;nh vi&ecirc;n HSBC - chi nh&aacute;nh H&agrave; Nội.</strong><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>+ Ng&acirc;n H&agrave;ng Agribank:</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; T&ecirc;n t&agrave;i khoản : C&ocirc;ng ty cổ phần Pi Co</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; Số T&agrave;i khoản :&nbsp;</strong><strong>1500 2010 79427</strong></p>\r\n\r\n<p><strong>&nbsp;&nbsp; Mở tại:&nbsp;</strong><strong>Ng&acirc;n h&agrave;ng N&ocirc;ng nghiệp &amp; Ph&aacute;t triển n&ocirc;ng th&ocirc;n Việt nam - chi nh&aacute;nh H&agrave; Nội.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>+ Ng&acirc;n H&agrave;ng Vietcombank:</strong></p>\r\n\r\n<p>&nbsp;<strong>&nbsp;&nbsp; T&ecirc;n t&agrave;i khoản : C&ocirc;ng ty cổ phần Pi Co</strong></p>\r\n\r\n<p>&nbsp;<strong>&nbsp;&nbsp; Số T&agrave;i khoản :&nbsp;</strong><strong>002 1000 311605</strong></p>\r\n\r\n<p>&nbsp;<strong>&nbsp;&nbsp; Mở tại:&nbsp;</strong><strong>Ng&acirc;n h&agrave;ng thương mại cổ phần Ngoại thương Việt Nam&nbsp;- chi nh&aacute;nh H&agrave; Nội.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Sau khi nhận được giấy b&aacute;o nhận tiền từ ng&acirc;n h&agrave;ng, ch&uacute;ng t&ocirc;i sẽ thực hiện đơn h&agrave;ng theo y&ecirc;u cầu của Qu&yacute; kh&aacute;ch.&nbsp;&nbsp;<br />\r\n<br />\r\n<br />\r\n<strong>3. H&igrave;nh thức thanh to&aacute;n trực tuyến - Ng&acirc;n Lượng</strong><br />\r\n<br />\r\nHiện nay tr&ecirc;n website Pico đ&atilde; &aacute;p h&igrave;nh thức thanh to&aacute;n qua&nbsp;<strong>cổng thanh to&aacute;n trực tuyến Ng&acirc;n Lượng</strong>. Qu&yacute; kh&aacute;ch trong qu&aacute; tr&igrave;nh thực hiện đơn h&agrave;ng tr&ecirc;n website Pico đến bước thanh to&aacute;n đơn h&agrave;ng chọn h&igrave;nh thức thanh to&aacute;n&nbsp;<strong>Thẻ Visa, Master Card hoặc ATM qua Ng&acirc;n Lượng</strong>&nbsp;để sử dụng dịch vụ thanh to&aacute;n n&agrave;y.<br />\r\n<br />\r\n-&nbsp;<a href=\"http://help.nganluong.vn/chi-tiet-154/2/4366/Huong-dan-thanh-toan-%28Noi-dung-so%29.html\" target=\"_blank\">Hướng dẫn thanh to&aacute;n bằng t&agrave;i khoản Ng&acirc;n Lượng</a><br />\r\n<br />\r\n-&nbsp;<a href=\"http://help.nganluong.vn/chi-tiet-56/2/421/Huong-dan-mo-tai-khoan-ca-nhan.html\" target=\"_blank\">Hướng dẫn thanh to&aacute;n khi chưa c&oacute; t&agrave;i khoản tr&ecirc;n Ng&acirc;n Lượng</a><br />\r\n<br />\r\n-&nbsp;<a href=\"http://help.nganluong.vn/chi-tiet-95/2/423/Huong-dan-hoan-tra-tien.html\" target=\"_blank\">Quy tr&igrave;nh ho&agrave;n trả tiền cho người mua tr&ecirc;n Ng&acirc;n Lượng</a></p>\r\n</div>\r\n', null, '2016-01-19 09:51:12', 'Pico', null, 'cac-hinh-thuc-thanh-toan.html', '4');
INSERT INTO `posts` VALUES ('32', 'Chính sách hỗ trợ', '<div>\r\n<p><strong>A. CH&Iacute;NH S&Aacute;CH HỖ TRỢ DỊCH VỤ GIAO NHẬN, LẮP ĐẶT, C&Agrave;I ĐẶT THIẾT BỊ TIN HỌC</strong></p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<p>Ch&iacute;nh s&aacute;ch hỗ trợ dịch vụ giao nhận, lắp đặt, c&agrave;i đặt đối với từng chủng loại sản phẩm:</p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:21px; width:643px\">\r\n	<tbody>\r\n		<tr>\r\n			<td rowspan=\"2\" style=\"width:181px\">\r\n			<p><strong>Chủng loại</strong></p>\r\n			</td>\r\n			<td rowspan=\"2\" style=\"width:145px\">\r\n			<p><strong>Dịch vụ giao nhận do TTMS thực hiện</strong></p>\r\n			</td>\r\n			<td colspan=\"3\" style=\"width:375px\">\r\n			<p><strong>C&agrave;i đặt, lắp đặt</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:118px\">\r\n			<p><strong>C&ocirc;ng c&agrave;i đặt phầm mềm</strong></p>\r\n			</td>\r\n			<td style=\"width:157px\">\r\n			<p><strong>C&agrave;i đặt h&igrave;nh ảnh, nhạc, game</strong></p>\r\n			</td>\r\n			<td style=\"width:101px\">\r\n			<p><strong>C&ocirc;ng lắp đặt</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:173px\">\r\n			<p>M&aacute;y vi t&iacute;nh x&aacute;ch tay</p>\r\n			</td>\r\n			<td style=\"width:139px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:113px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:150px\">\r\n			<p>Miễn ph&iacute; tại si&ecirc;u thị</p>\r\n			</td>\r\n			<td style=\"width:97px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:173px\">\r\n			<p>M&aacute;y vi t&iacute;nh để b&agrave;n (PC)</p>\r\n			</td>\r\n			<td style=\"width:139px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:113px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:150px\">\r\n			<p>Miễn ph&iacute; tại si&ecirc;u thị</p>\r\n			</td>\r\n			<td style=\"width:97px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:173px\">\r\n			<p>M&agrave;n h&igrave;nh m&aacute;y vi t&iacute;nh</p>\r\n			</td>\r\n			<td style=\"width:139px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:113px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:150px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:97px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:173px\">\r\n			<p>M&aacute;y văn ph&ograve;ng (m&aacute;y fax, m&aacute;y in, m&aacute;y chiếu&hellip;)</p>\r\n			</td>\r\n			<td style=\"width:139px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:113px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:150px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:97px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:173px\">\r\n			<p>M&aacute;y game vi t&iacute;nh</p>\r\n			</td>\r\n			<td style=\"width:139px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:113px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:150px\">\r\n			<p>Miễn ph&iacute; tại si&ecirc;u thị</p>\r\n			</td>\r\n			<td style=\"width:97px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:173px\">\r\n			<p>Loa nghe nhạc m&aacute;y vi t&iacute;nh</p>\r\n			</td>\r\n			<td style=\"width:139px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:113px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:150px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:97px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:173px\">\r\n			<p>Linh phụ kiện</p>\r\n			</td>\r\n			<td style=\"width:139px\">\r\n			<p>Kh&ocirc;ng &aacute;p dụng</p>\r\n			</td>\r\n			<td style=\"width:113px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:150px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:97px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:173px\">\r\n			<p>Phần mềm (bản gốc)</p>\r\n			</td>\r\n			<td style=\"width:139px\">\r\n			<p>Kh&ocirc;ng &aacute;p dụng</p>\r\n			</td>\r\n			<td style=\"width:113px\">\r\n			<p>Miễn ph&iacute; khi kh&aacute;ch h&agrave;ng mua m&aacute;y PC v&agrave;/hoặc notebook tại Pico</p>\r\n			</td>\r\n			<td style=\"width:150px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n			<td style=\"width:97px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:173px\">\r\n			<p>C&aacute;c sản phẩm kh&aacute;c</p>\r\n			</td>\r\n			<td style=\"width:139px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:113px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:150px\">\r\n			<p>Miễn ph&iacute; tại si&ecirc;u thị</p>\r\n			</td>\r\n			<td style=\"width:97px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<p><strong>B. CH&Iacute;NH S&Aacute;CH HỖ TRỢ DỊCH VỤ GIAO NHẬN, LẮP ĐẶT, C&Agrave;I ĐẶT THIẾT BỊ VIỄN TH&Ocirc;NG</strong></p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<p>Ch&iacute;nh s&aacute;ch hỗ trợ dịch vụ giao nhận, lắp đặt, c&agrave;i đặt đối với từng chủng loại sản phẩm</p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:21px; width:621px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:137px\">\r\n			<p><strong>Chủng loại</strong></p>\r\n			</td>\r\n			<td style=\"width:136px\">\r\n			<p><strong>Dịch vụ giao nhận</strong></p>\r\n			</td>\r\n			<td style=\"width:215px\">\r\n			<p><strong>C&agrave;i đặt h&igrave;nh ảnh, nhạc, game</strong></p>\r\n			</td>\r\n			<td style=\"width:147px\">\r\n			<p><strong>C&ocirc;ng lắp đặt (chiếc)</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:131px\">\r\n			<p>Điện thoại di động</p>\r\n			</td>\r\n			<td style=\"width:130px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:206px\">\r\n			<p>Miễn ph&iacute; tại si&ecirc;u thị</p>\r\n			</td>\r\n			<td style=\"width:141px\">&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:131px\">\r\n			<p>Điện thoại b&agrave;n</p>\r\n			</td>\r\n			<td style=\"width:130px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:206px\">&nbsp;</td>\r\n			<td style=\"width:141px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:131px\">\r\n			<p>Linh kiện</p>\r\n			</td>\r\n			<td style=\"width:130px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:206px\">\r\n			<p>Miễn ph&iacute; tại si&ecirc;u thị</p>\r\n			</td>\r\n			<td style=\"width:141px\">&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<p><strong>C. CH&Iacute;NH S&Aacute;CH HỖ TRỢ DỊCH VỤ GIAO NHẬN, C&Agrave;I ĐẶT THIẾT&nbsp; BỊ GIẢI TR&Iacute;</strong></p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<p>Ch&iacute;nh s&aacute;ch hỗ trợ dịch vụ giao nhận, c&agrave;i đặt đối với từng chủng loại sản phẩm</p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<table border=\"1\" cellpadding=\"0\" cellspacing=\"0\" style=\"line-height:21px; width:647px\">\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"width:169px\">\r\n			<p><strong>Chủng loại</strong></p>\r\n			</td>\r\n			<td style=\"width:209px\">\r\n			<p><strong>Dịch vụ giao nhận do si&ecirc;u thị Pico thực hiện</strong></p>\r\n			</td>\r\n			<td style=\"width:230px\">\r\n			<p><strong>C&agrave;i đặt h&igrave;nh ảnh, nhạc, game</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:162px\">\r\n			<p>M&aacute;y ảnh số</p>\r\n			</td>\r\n			<td style=\"width:189px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:230px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:162px\">\r\n			<p>M&aacute;y quay phim số</p>\r\n			</td>\r\n			<td style=\"width:189px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:230px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:162px\">\r\n			<p>M&aacute;y MP3/MP4</p>\r\n			</td>\r\n			<td style=\"width:189px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:230px\">\r\n			<p>Miễn ph&iacute; tại si&ecirc;u thị</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:162px\">\r\n			<p>DVD x&aacute;ch tay</p>\r\n			</td>\r\n			<td style=\"width:189px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:230px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:162px\">\r\n			<p>M&aacute;y từ điển</p>\r\n			</td>\r\n			<td style=\"width:189px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:230px\">\r\n			<p>Miễn ph&iacute; tại si&ecirc;u thị<br />\r\n			(T&ugrave;y sản phẩm c&oacute; k&egrave;m theo thẻ nhớ)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:162px\">\r\n			<p>M&aacute;y ghi &acirc;m</p>\r\n			</td>\r\n			<td style=\"width:189px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:230px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:162px\">\r\n			<p>Loa nghe nhạc, tai nghe</p>\r\n			</td>\r\n			<td style=\"width:189px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:230px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:162px\">\r\n			<p>Linh phụ kiện</p>\r\n			</td>\r\n			<td style=\"width:189px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:230px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td style=\"width:162px\">\r\n			<p>C&aacute;c sản phẩm kh&aacute;c</p>\r\n			</td>\r\n			<td style=\"width:189px\">\r\n			<p>Miễn ph&iacute;</p>\r\n			</td>\r\n			<td style=\"width:230px\">\r\n			<p>&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n', null, '2016-01-19 09:51:12', 'Pico', null, 'chinh-sach-ho-tro.html', '3');
INSERT INTO `posts` VALUES ('33', '240 Tôn Đức Thắng, Đống Đa', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.2053678205643!2d105.81780866432842!3d21.024467193302034!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab705687ee91%3A0x32ab1bf30d5a53c!2zU2nDqnUgdGjhu4sgxJBp4buHbiBtw6F5IFBpY28sIEdp4bqjbmcgVsO1LCBCYSDEkMOsbmgsIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1453379741695\" width=\"100%\" height=\"500\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe><h2 style=\"text-align: center;\"><strong>Xu&acirc;n sang rộn r&agrave;ng mua sắm tại Pico T&ocirc;n Đức Thắng</strong></h2>\r\n\r\n<p><strong>Kế thừa những thế mạnh của Si&ecirc;u thị điện m&aacute;y Pico đ&atilde; được khẳng định trong suốt 8 năm qua. Đầu năm 2016 n&agrave;y, Pico tiếp tục đầu tư x&acirc;y dựng th&ecirc;m một chi nh&aacute;nh mới tại tại thủ đ&ocirc;, đ&oacute; l&agrave; Si&ecirc;u thị điện m&aacute;y Pico tại 240 T&ocirc;n Đức Thắng (Đống Đa, H&agrave; Nội).</strong></p>\r\n\r\n<p style=\"text-align: center;\"><img alt=\"Pico Tôn Đức Thắng\" src=\"http://cdn.pico.vn/Files/2015/12/05/1921/4133_pc_mat_tien_640x384px-01-01.jpg\" style=\"height:384px; width:640px\" /></p>\r\n\r\n<p>Với việc kh&ocirc;ng ngừng mở rộng v&agrave; đạt được những kết quả kinh doanh ấn tượng, Si&ecirc;u thị điện m&aacute;y Pico đ&atilde; vinh dự đ&oacute;n nhận giải thưởng &nbsp;&quot;Top 500 nhà bán lẻ hàng đ&acirc;̀u Ch&acirc;u Á- Thái Bình Dương&rdquo; - &ldquo;Top 10 nhà bán lẻ hàng đ&acirc;̀u Vi&ecirc;̣t Nam&rdquo;.&nbsp;Hứa hẹn mang đến cho kh&aacute;ch h&agrave;ng tại H&agrave; Nội th&ecirc;m địa điểm mua sắm mới để trải nghiệm dịch vụ chuy&ecirc;n nghiệp nhất v&agrave; tốt nhất về sản phẩm của c&aacute;c ng&agrave;nh h&agrave;ng như điện tử, điện lạnh, gia dụng, laptop, điện thoại&hellip;</p>\r\n\r\n<p>Si&ecirc;u thị điện m&aacute;y&nbsp;<strong><a href=\"http://pico.vn/map/19/240-ton-duc-thang-dong-da\" title=\"Pico Tôn Đức Thắng\">Pico T&ocirc;n Đức Thắng</a></strong>&nbsp;sẽ vẫn ch&uacute; trọng giữ g&igrave;n những gi&aacute; trị cốt l&otilde;i, những điều l&acirc;u nay l&agrave;m l&ecirc;n một thương hiệu Pico v&ocirc; c&ugrave;ng uy t&iacute;n. Đ&oacute; l&agrave; sản phẩm đa dạng, chất lượng; c&aacute;c chương tr&igrave;nh ưu đ&atilde;i hấp dẫn; đội ngũ nh&acirc;n vi&ecirc;n v&agrave; chuy&ecirc;n vi&ecirc;n lắp đặt, giao nhận v&ocirc; c&ugrave;ng nhiệt t&igrave;nh đầy kinh nghiệm; dịch vụ chăm s&oacute;c kh&aacute;ch h&agrave;ng mọi l&uacute;c, mọi nơi, nhanh ch&oacute;ng, kịp thời; dịch vụ bảo h&agrave;nh v&agrave; đặc biệt kh&aacute;ch h&agrave;ng sẽ nhận được g&oacute;i dịch vụ bảo h&agrave;nh trọn đời với một số mặt h&agrave;ng c&oacute; gi&aacute; trị cao.</p>\r\n\r\n<p>Ngo&agrave;i ra, Pico T&ocirc;n Đức Thắng tọa lạc trong những tuyến phố kinh doanh thương mại &ndash; dịch vụ sầm uất của thủ đ&ocirc; H&agrave; Nội, sẽ được x&acirc;y dựng khang trang, rộng r&atilde;i, với thiết kế thoải m&aacute;i, gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; được những trải nghiệm tột đỉnh của đỉnh cao c&ocirc;ng nghệ khi mua sắm trực tiếp tại si&ecirc;u thị.</p>\r\n', null, null, 'Pico', null, '240-ton-duc-thang-dong-da.html', '6');
INSERT INTO `posts` VALUES ('34', '76 Nguyễn Trãi, Thanh Xuân', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.2053678205643!2d105.81780866432842!3d21.024467193302034!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab705687ee91%3A0x32ab1bf30d5a53c!2zU2nDqnUgdGjhu4sgxJBp4buHbiBtw6F5IFBpY28sIEdp4bqjbmcgVsO1LCBCYSDEkMOsbmgsIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1453379741695\" width=\"100%\" height=\"500\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', null, null, 'Pico', null, '76-nguyen-trai-thanh-xuan-ha-noi.html', '6');
INSERT INTO `posts` VALUES ('35', '324 Tây Sơn, Đống Đa', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.2053678205643!2d105.81780866432842!3d21.024467193302034!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab705687ee91%3A0x32ab1bf30d5a53c!2zU2nDqnUgdGjhu4sgxJBp4buHbiBtw6F5IFBpY28sIEdp4bqjbmcgVsO1LCBCYSDEkMOsbmgsIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1453379741695\" width=\"100%\" height=\"500\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', null, null, 'Pico', null, '324-tay-son-dong-da-ha-noi.html', '6');
INSERT INTO `posts` VALUES ('36', '173 Xuân Thủy, Cầu Giấy', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.2053678205643!2d105.81780866432842!3d21.024467193302034!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab705687ee91%3A0x32ab1bf30d5a53c!2zU2nDqnUgdGjhu4sgxJBp4buHbiBtw6F5IFBpY28sIEdp4bqjbmcgVsO1LCBCYSDEkMOsbmgsIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1453379741695\" width=\"100%\" height=\"500\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', null, null, 'Pico', null, '173-xuan-thuy-cau-giay-ha-noi.html', '6');
INSERT INTO `posts` VALUES ('37', '148 Giảng Võ, Ba Đình', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.2053678205643!2d105.81780866432842!3d21.024467193302034!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab705687ee91%3A0x32ab1bf30d5a53c!2zU2nDqnUgdGjhu4sgxJBp4buHbiBtw6F5IFBpY28sIEdp4bqjbmcgVsO1LCBCYSDEkMOsbmgsIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1453379741695\" width=\"100%\" height=\"500\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', null, null, 'Pico', null, '148-giang-vo-ba-dinh-ha-noi.html', '6');
INSERT INTO `posts` VALUES ('38', '1454 - 1456 Hùng Vương, Việt Trì', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.2053678205643!2d105.81780866432842!3d21.024467193302034!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab705687ee91%3A0x32ab1bf30d5a53c!2zU2nDqnUgdGjhu4sgxJBp4buHbiBtw6F5IFBpY28sIEdp4bqjbmcgVsO1LCBCYSDEkMOsbmgsIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1453379741695\" width=\"100%\" height=\"500\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', null, null, 'Pico', null, '1454-hung-vuong-viet-tri-phu-tho.html', '6');
INSERT INTO `posts` VALUES ('39', 'Số 1 Hai Bà Trưng, Phúc Yên', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.2053678205643!2d105.81780866432842!3d21.024467193302034!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab705687ee91%3A0x32ab1bf30d5a53c!2zU2nDqnUgdGjhu4sgxJBp4buHbiBtw6F5IFBpY28sIEdp4bqjbmcgVsO1LCBCYSDEkMOsbmgsIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1453379741695\" width=\"100%\" height=\"500\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', null, null, 'Pico', null, '1-hai-ba-trung-phuc-yen-vinh-phuc.html', '6');
INSERT INTO `posts` VALUES ('40', 'Dịch vụ thay lõi lọc nước tại nhà', '<p>Trong cuộc sống hiện đại ng&agrave;y nay, m&aacute;y lọc nước đ&atilde; trở th&agrave;nh một vật dụng hết sức quen thuộc đối với nhiều gia đ&igrave;nh. Mua một chiếc m&aacute;y lọc nước kh&ocirc;ng kh&oacute;, tuy nhi&ecirc;n d&ugrave;ng như thế n&agrave;o để mang lại hiệu quả cao, để sản phẩm hoạt động bền bỉ, k&eacute;o d&agrave;i thời gian sử dụng kh&ocirc;ng phải ai cũng biết. Để m&aacute;y lọc nước hoạt động hiệu quả, cho ra nguồn nước đảm bảo sức khỏe như cam kết của nh&agrave; sản xuất th&igrave; một trong những điều kiện ti&ecirc;n quyết l&agrave; l&otilde;i lọc phải được thay định kỳ đ&uacute;ng thời gian nh&agrave; sản xuất đề nghị.</p>\r\n\r\n<p>Việc thay l&otilde;i lọc nước kh&ocirc;ng phải việc qu&aacute; phức tạp nhưng kh&ocirc;ng phải ai cũng muốn tự l&agrave;m việc n&agrave;y. Nắm bắt được suy nghĩ n&agrave;y của kh&aacute;ch h&agrave;ng, từ th&aacute;ng 9/2014 - Pico ch&iacute;nh thức cung cấp dịch vụ bảo dưỡng v&agrave; thay thế l&otilde;i lọc nước tinh khiết RO tại nh&agrave;.</p>\r\n\r\n<p>Đ&acirc;y cũng l&agrave; cơ hội để Pico tăng sự gắn kết với kh&aacute;ch h&agrave;ng, tư vấn v&agrave; cung cấp th&ecirc;m th&ocirc;ng tin về sản phẩm cũng như c&aacute;ch sử dụng sản phẩm một c&aacute;ch hiệu quả nhất. Hy vọng dịch vụ mới n&agrave;y sẽ đưa Pico đến gần hơn với kh&aacute;ch h&agrave;ng &amp; kh&aacute;ch h&agrave;ng lu&ocirc;n coi Pico l&agrave; người bạn đồng h&agrave;nh tin cậy.</p>\r\n\r\n<p><strong>&gt;&nbsp;<a href=\"http://pico.vn/46s-dich-vu-bao-duong-dieu-hoa-tai-nha.html\" target=\"_blank\" title=\"Dịch vụ Bảo dưỡng Điều hòa tại nhà\">Dịch vụ Bảo dưỡng Điều h&ograve;a tại nh&agrave;</a></strong></p>\r\n\r\n<p><strong>&gt;&nbsp;<a href=\"http://pico.vn/45s-dich-vu-thay-the-loi-loc-cua-may-loc-nuoc-tai-nha.html\" target=\"_blank\" title=\"Dịch vụ thay thế lõi lọc của máy lọc nước tại nhà\">Dịch vụ thay l&otilde;i lọc nước tại nh&agrave;</a></strong></p>\r\n\r\n<h1><strong>BẢNG PH&Iacute; DỊCH VỤ THAY L&Otilde;I M&Aacute;Y LỌC NƯỚC</strong></h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"5\" cellspacing=\"5\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"5\">\r\n			<p><strong>KAGAROO - BẢNG PH&Iacute; DỊCH VỤ</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>Th&ocirc;ng tin sản phẩm</strong></td>\r\n			<td><strong>Gi&aacute; b&aacute;n lẻ</strong></td>\r\n			<td><strong>H&igrave;nh ảnh</strong></td>\r\n			<td><strong>Thời gian thay l&otilde;i</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1</strong></td>\r\n			<td>L&otilde;i lọc 1: Sợi PP, tạo khe hở 5 Mrm</td>\r\n			<td><strong>80.000 đ</strong></td>\r\n			<td>&nbsp;<img alt=\"Lõi lọc 1: Sợi PP, tạo khe hở 5 Mrm\" src=\"http://cdn.pico.vn/Media/Images/58_loiloc1soipptaokheho5mrm1.jpg\" style=\"height:120px; width:120px\" /></td>\r\n			<td><strong>3 - 6 th&aacute;ng</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2</strong></td>\r\n			<td>L&otilde;i lọc 2: Than hoạt t&iacute;nh dạng xốp</td>\r\n			<td><strong>100.000 đ</strong></td>\r\n			<td>&nbsp;<img alt=\"Lõi lọc 2: Than hoạt tính dạng xốp\" src=\"http://cdn.pico.vn/Media/Images/59_loiloc2thanhoattinhdangxop1.jpg\" style=\"height:120px; width:120px\" /></td>\r\n			<td><strong>3 - 6 th&aacute;ng</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>3</strong></td>\r\n			<td>L&otilde;i lọc 3: Sợi PP, tạo khe hở 1 Mrm</td>\r\n			<td><strong>100.000 đ</strong></td>\r\n			<td>&nbsp;<img alt=\"Lõi lọc 3: Sợi PP, tạo khe hở 1 Mrm\" src=\"http://cdn.pico.vn/Media/Images/60_loiloc3soipptaokheho1mrm1.jpg\" style=\"height:120px; width:120px\" /></td>\r\n			<td><strong>6 - 9 th&aacute;ng</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>4</strong></td>\r\n			<td>L&otilde;i lọc RO</td>\r\n			<td><strong>600.000 đ</strong></td>\r\n			<td><img alt=\"Lõi lọc RO\" src=\"http://cdn.pico.vn/Media/Images/61_loilocro.jpg\" style=\"height:120px; width:120px\" />&nbsp;</td>\r\n			<td><strong>24 - 36 th&aacute;ng</strong></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table border=\"1\" cellpadding=\"5\" cellspacing=\"5\">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan=\"5\">\r\n			<p><strong>KAROFI&nbsp;- BẢNG PH&Iacute; DỊCH VỤ</strong></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>STT</strong></td>\r\n			<td><strong>Th&ocirc;ng tin sản phẩm</strong></td>\r\n			<td><strong>Gi&aacute; b&aacute;n lẻ</strong></td>\r\n			<td><strong>H&igrave;nh ảnh</strong></td>\r\n			<td><strong>Thời gian thay l&otilde;i</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>1</strong></td>\r\n			<td>L&otilde;i số 1:&nbsp;<strong>L&otilde;i PP 5 Micron</strong>&nbsp;- Lọc c&aacute;c cặn bẩn (rong r&ecirc;u, gỉ sắt, bọ gậy&hellip;) c&oacute; k&iacute;ch thước lớn hơn 5 micron</td>\r\n			<td><strong>60.000 đ</strong></td>\r\n			<td><img alt=\"Lõi số 1: Lõi PP 5 Micron\" src=\"http://cdn.pico.vn/Media/Images/62_loiso1loipp5micron.jpg\" style=\"height:120px; width:120px\" />&nbsp;</td>\r\n			<td><strong>3 - 4 th&aacute;ng</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>2</strong></td>\r\n			<td>L&otilde;i số 2:&nbsp;<strong>L&otilde;i than hoạt t&iacute;nh OCB</strong>&nbsp;- lọc c&aacute;c chất hữu cơ độc hại, chlorine, một phần m&ugrave;i vị lạ của nước</td>\r\n			<td><strong>80.000 đ</strong></td>\r\n			<td><img alt=\"Lõi số 2: Lõi than hoạt tính OCB\" src=\"http://cdn.pico.vn/Media/Images/63_loiso2loithanhoattinhocb.jpg\" style=\"height:120px; width:120px\" />&nbsp;</td>\r\n			<td><strong>3 - 6 th&aacute;ng</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>3</strong></td>\r\n			<td>L&otilde;i số 2:&nbsp;<strong>L&otilde;i Cation</strong>&nbsp;- D&ugrave;ng thay l&otilde;i OCB với những nguồn nước cứng nhiễm đ&aacute; v&ocirc;i</td>\r\n			<td><strong>90.000 đ</strong></td>\r\n			<td><img alt=\"Lõi số 2: Lõi Cation\" src=\"http://cdn.pico.vn/Media/Images/64_loiso2loication.jpg\" style=\"height:120px; width:120px\" />&nbsp;</td>\r\n			<td><strong>5&nbsp;th&aacute;ng</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>4</strong></td>\r\n			<td>L&otilde;i số 3:&nbsp;<strong>L&otilde;i PP 1 Micron</strong>&nbsp;- lọc c&aacute;c chất hữu cơ, chlorine, m&agrave;u, m&ugrave;i v&agrave; c&aacute;c hạt chất rắn nhỏ c&oacute; k&iacute;ch thước lớn hơn 1 micron</td>\r\n			<td><strong>60.000 đ</strong></td>\r\n			<td><img alt=\"Lõi số 3: Lõi PP 1 Micron\" src=\"http://cdn.pico.vn/Media/Images/65_loiso3loipp1micron.jpg\" style=\"height:120px; width:120px\" />&nbsp;</td>\r\n			<td><strong>3 - 6 th&aacute;ng</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>5</strong></td>\r\n			<td>L&otilde;i số 3:&nbsp;<strong>L&otilde;i Carbonblock (CTO)</strong>&nbsp;- D&ugrave;ng thay l&otilde;i 1 Micron với những nguồn nước cứng nhiễm đ&aacute; v&ocirc;i</td>\r\n			<td><strong>70.000 đ</strong></td>\r\n			<td>&nbsp;<img alt=\"Lõi số 3: Lõi Carbonblock (CTO)\" src=\"http://cdn.pico.vn/Media/Images/66_loiso3loicarbonblockcto.jpg\" style=\"height:120px; width:120px\" /></td>\r\n			<td><strong>5 th&aacute;ng</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>6</strong></td>\r\n			<td>L&otilde;i số 4:&nbsp;<strong>M&agrave;ng lọc RO</strong>&nbsp;- L&agrave; trung t&acirc;m của m&aacute;y lọc nước RO. Loại bỏ hầu hết tất cả c&aacute;c virus, vi khuẩn, c&aacute;c ion kim loại, hoạt chất hữu cơ ... c&oacute; hại cho sức khỏe</td>\r\n			<td><strong>600.000 đ</strong></td>\r\n			<td>&nbsp;<img alt=\"Lõi số 4: Màng lọc RO\" src=\"http://cdn.pico.vn/Media/Images/67_loiso4manglocro.jpg\" style=\"height:120px; width:120px\" /></td>\r\n			<td><strong>24 - 36 th&aacute;ng&nbsp;</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>7</strong></td>\r\n			<td>L&otilde;i số 5:&nbsp;<strong>L&otilde;i Carbon T33</strong>&nbsp;- Ổn định lại vị ngọt m&aacute;t tự nhi&ecirc;n của nước, c&acirc;n bằng PH</td>\r\n			<td><strong>200.000 đ</strong>&nbsp;</td>\r\n			<td>&nbsp;<img alt=\"Lõi số 5: Lõi Carbon T33\" src=\"http://cdn.pico.vn/Media/Images/68_loiso5loicarbont33.jpg\" style=\"height:120px; width:120px\" /></td>\r\n			<td><strong>6 - 12 th&aacute;ng</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>8</strong></td>\r\n			<td>L&otilde;i số 6/7/8:&nbsp;<strong>L&otilde;i Alkaline</strong>&nbsp;- Tăng PH cho nước, trung h&ograve;a axit dư thừa nằm trong dạ d&agrave;y gi&uacute;p giảm bệnh tật</td>\r\n			<td><strong>300.000 đ</strong>&nbsp;</td>\r\n			<td>&nbsp;<img alt=\"Lõi số 6/7/8: Lõi Alkaline\" src=\"http://cdn.pico.vn/Media/Images/69_loiso678loialkaline.jpg\" style=\"height:120px; width:120px\" /></td>\r\n			<td><strong>6 - 12 th&aacute;ng</strong>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>9</strong></td>\r\n			<td>L&otilde;i số 6/7/8:&nbsp;<strong>L&otilde;i kho&aacute;ng đ&aacute;</strong>&nbsp;- Bổ sung kho&aacute;ng chất cho nước sau khi lọc v&agrave; tăng th&ecirc;m một phần PH</td>\r\n			<td><strong>250.000 đ</strong>&nbsp;</td>\r\n			<td>&nbsp;<img alt=\"Lõi số 6/7/8: Lõi khoáng đá\" src=\"http://cdn.pico.vn/Media/Images/70_loiso678loikhoangda.jpg\" style=\"height:120px; width:120px\" /></td>\r\n			<td><strong>6 - 12 th&aacute;ng</strong>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>10</strong></td>\r\n			<td>L&otilde;i số 6/7/8:&nbsp;<strong>L&otilde;i Nano Silver</strong>&nbsp;- Diệt khuẩn mạnh mẽ, diệt đến 99,99% c&aacute;c loại vi khuẩn c&oacute; trong nước, chống t&aacute;i ph&aacute;t triển c&aacute;c loại vi khuẩn sau lọc</td>\r\n			<td><strong>300.000 đ</strong>&nbsp;</td>\r\n			<td>&nbsp;<img alt=\"Lõi số 6/7/8: Lõi Nano Silver\" src=\"http://cdn.pico.vn/Media/Images/71_loiso678loinanosilver.jpg\" style=\"height:120px; width:120px\" /></td>\r\n			<td><strong>6 - 12 th&aacute;ng</strong>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>11</strong></td>\r\n			<td>L&otilde;i số 6/7/8:&nbsp;<strong>L&otilde;i Tạo vị</strong>&nbsp;- Ổn định lại vị ngọt tự nhi&ecirc;n cho nước v&agrave; bổ sung vi kho&aacute;ng</td>\r\n			<td><strong>250.000 đ</strong>&nbsp;</td>\r\n			<td>&nbsp;<img alt=\"Lõi số 6/7/8: Lõi Tạo vị\" src=\"http://cdn.pico.vn/Media/Images/72_loiso678loitaovi.jpg\" style=\"height:120px; width:120px\" /></td>\r\n			<td><strong>6 - 12 th&aacute;ng</strong>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>12</strong></td>\r\n			<td>L&otilde;i số 6/7/8:&nbsp;<strong>L&otilde;i Bio</strong>&nbsp;- Gi&uacute;p cơ thể hấp thu nước dễ d&agrave;ng hơn đồng thời tăng khả năng h&ograve;a tan oxy v&agrave;o trong nước</td>\r\n			<td><strong>300.000 đ</strong>&nbsp;</td>\r\n			<td>&nbsp;<img alt=\"Lõi số 6/7/8: Lõi Bio\" src=\"http://cdn.pico.vn/Media/Images/73_loiso678loibio.jpg\" style=\"height:120px; width:120px\" /></td>\r\n			<td><strong>12&nbsp;- 18 th&aacute;ng</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>13</strong></td>\r\n			<td>L&otilde;i số 6/7/8:&nbsp;<strong>L&otilde;i hồng ngoại xanh (l&otilde;i oxy)</strong>&nbsp;- Bổ xung vi lượng kho&aacute;ng, tăng lượng oxy trong nước</td>\r\n			<td><strong>300.000 đ</strong>&nbsp;</td>\r\n			<td>&nbsp;<img alt=\"Lõi số 6/7/8: Lõi hồng ngoại xanh (lõi oxy)\" src=\"http://cdn.pico.vn/Media/Images/74_loiso678loihongngoaixanhloioxy.jpg\" style=\"height:120px; width:120px\" /></td>\r\n			<td><strong>12&nbsp;- 18 th&aacute;ng</strong>&nbsp;</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>14</strong></td>\r\n			<td>L&otilde;i số 6/7/8:<strong>&nbsp;Đ&egrave;n UV 11W (M&aacute;y 10L/H)</strong>&nbsp;- Diệt vi khuẩn, virus, nấm, k&yacute; sinh tr&ugrave;ng</td>\r\n			<td>&nbsp;<strong>1.160.000 đ</strong></td>\r\n			<td>&nbsp;<img alt=\"Lõi số 6/7/8: Đèn UV 11W (Máy 10L/H)\" src=\"http://cdn.pico.vn/Media/Images/75_loiso678denuv11wmay10lh.jpg\" style=\"height:120px; width:120px\" /></td>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;<strong>Chi ph&iacute; nh&acirc;n c&ocirc;ng:</strong></p>\r\n\r\n<ul>\r\n	<li>Kh&aacute;ch h&agrave;ng thay 1 l&otilde;i: Chi ph&iacute; 30,000 VNĐ, ri&ecirc;ng l&otilde;i số 4 chi ph&iacute; 50,000 VNĐ</li>\r\n	<li>Với mỗi l&otilde;i thay th&ecirc;m: Cộng th&ecirc;m 10,000 VNĐ</li>\r\n</ul>\r\n\r\n<p>&nbsp;<strong>Ghi ch&uacute;:</strong></p>\r\n\r\n<ul>\r\n	<li>Do c&ugrave;ng c&ocirc;ng nghệ sản xuất v&agrave; thiết kế, n&ecirc;n l&otilde;i lọc của h&atilde;ng KANGAROO, KAROFI, MYOTA c&oacute; thể được d&ugrave;ng thay thế cho nhau.</li>\r\n	<li>Gi&aacute; c&ocirc;ng thay &aacute;p dụng cho kh&aacute;ch h&agrave;ng c&oacute; khoảng c&aacute;ch dưới 30km từ trung t&acirc;m Pico, với khoảng c&aacute;ch xa hơn 30km, qu&yacute; kh&aacute;ch vui l&ograve;ng thanh to&aacute;n th&ecirc;m 5,000 VND/km.</li>\r\n</ul>\r\n\r\n<p>Bảng ph&iacute; n&agrave;y c&oacute; t&iacute;nh chất tham khảo, để được giải th&iacute;ch chi tiết, xin vui l&ograve;ng gọi số điện thoại&nbsp;<strong>1900.6699</strong>&nbsp;hoặc&nbsp;<strong>04 62770000</strong>&nbsp;- Ph&ograve;ng Dịch vụ sau b&aacute;n h&agrave;ng để được phục vụ.</p>\r\n\r\n<p>Để đăng k&yacute;&nbsp;dịch vụ&nbsp;<a href=\"http://pico.vn/45s-dich-vu-thay-the-loi-loc-cua-may-loc-nuoc-tai-nha.html\">thay l&otilde;i lọc nước tại nh&agrave;</a>&nbsp;do Pico cung cấp vui l&ograve;ng gửi mail v&agrave;o h&ograve;m thư<a href=\"mailto:chamsockhachhang@pico.com.vn\">chamsockhachhang@pico.com.vn</a>&nbsp;để ch&uacute;ng t&ocirc;i được phục vụ bạn một c&aacute;ch tốt nhất.</p>\r\n\r\n<p><em><strong>C&aacute;c c&acirc;u hỏi li&ecirc;n quan đến bảo dưỡng m&aacute;y lọc nước</strong></em></p>\r\n\r\n<p><strong>1. Tại sao phải thay l&otilde;i lọc nước định kỳ?</strong></p>\r\n\r\n<p>Chức năng của l&otilde;i lọc l&agrave; giữ lại những tạp chất lẫn trong nguồn nước sau khi đi qua l&otilde;i lọc. V&igrave; thế, sau một thời gian sử dụng, c&aacute;c tạp chất &amp; chất độc hại sẽ t&iacute;ch tụ lại ở l&otilde;i lọc c&ugrave;ng với nhiều sinh khuẩn, c&oacute; thể b&iacute;t k&iacute;n m&agrave;ng lọc hoặc g&acirc;y hiện tượng thẩm thấu ngược sẽ g&acirc;y hại cho nguồn nước. V&igrave; vậy, để c&oacute; m&aacute;y lọc nước tốt nhất cho sức khỏe, n&ecirc;n thay l&otilde;i lọc cho m&aacute;y lọc nước theo định kỳ.</p>\r\n\r\n<p><strong>2. Bao l&acirc;u phải thay l&otilde;i lọc?</strong></p>\r\n\r\n<ul>\r\n	<li>L&otilde;i lọc số 1: 3 đến 6 th&aacute;ng</li>\r\n	<li>L&otilde;i lọc số 2 (than hoạt t&iacute;nh): 6 đến 9 th&aacute;ng</li>\r\n	<li>L&otilde;i lọc số 3: 9 đến 12 th&aacute;ng</li>\r\n	<li>M&agrave;ng lọc RO: 24 đến 36 th&aacute;ng</li>\r\n</ul>\r\n\r\n<p>Tuy nhi&ecirc;n thời gian n&agrave;y từ chỉ mang t&iacute;nh chất tương đối. Thực tế, việc thay l&otilde;i lọc phụ thuộc rất nhiều v&agrave;o chất lượng nước đầu v&agrave;o v&agrave; tần suất sử dụng của gia đ&igrave;nh.<br />\r\nTh&ocirc;ng thường, c&aacute;c m&aacute;y lọc RO thường bố tr&iacute; cốc lọc số 1 trong suốt để kh&aacute;ch h&agrave;ng c&oacute; thể tự nhận biết bừng trực quan khi n&agrave;o cần vệ sinh hay thay thế l&otilde;i lọc. L&otilde;i lọc số 1sẽ l&agrave; l&otilde;i thay thế thường xuy&ecirc;n nhất.</p>\r\n\r\n<p><strong>3. C&oacute; thể tự v&ecirc; sinh m&agrave;ng RO kh&ocirc;ng?</strong></p>\r\n\r\n<p>M&agrave;ng RO c&oacute; k&iacute;ch thước khoảng 0,001 micro. Kh&ocirc;ng thể vệ sinh bằng phương ph&aacute;p th&ocirc;ng thường (mở ra, cọ rửa bằng nước sạch)&nbsp;<br />\r\nTuy nhi&ecirc;n, ở c&aacute;c một số m&aacute;y cao cấp sẽ thường bố tr&iacute; van xả tay b&ecirc;n cạnh van xả tự động nhằm gi&uacute;p người ti&ecirc;u d&ugrave;ng tự vệ sinh m&agrave;ng RO định k&igrave;. Khoảng 2 - 5 ng&agrave;y n&ecirc;n mở van n&agrave;y khi m&aacute;y bơm đang hoạt động. L&uacute;c n&agrave;y, thay v&igrave; nước chảy qua m&agrave;ng RO, nước sẽ xả mạnh ra ngo&agrave;i cuốn đi lưọng b&aacute;m bẩn t&iacute;ch tụ tr&ecirc;n bề mặt m&agrave;ng RO.</p>\r\n\r\n<p><strong>4. Uống nước qua m&aacute;y lọc RO c&oacute; bị thiếu kho&aacute;ng chất kh&ocirc;ng?</strong></p>\r\n\r\n<p>Về l&yacute; thuyết, việc uống nước tinh khiết sẽ g&acirc;y ra thiếu những vi chất cần thiết cho cơ thể do đ&atilde; bị giữ lại khi đi qua m&agrave;ng lọc RO.<br />\r\nTuy nhi&ecirc;n, để khắc phục nhược điểm n&agrave;y, nh&agrave; sản xuất đ&atilde; đưa th&ecirc;m v&agrave;o l&otilde;i lọc bổ sung, ngo&agrave;i chức năng c&acirc;n bằng độ PH c&ograve;n c&oacute; chức năng bổ sung c&aacute;c vi kho&aacute;ng cần thiết cho cơ thể (khoảng 140.000 l&iacute;t nước chảy qua).<br />\r\nNgo&agrave;i nước, c&aacute;c thực phẩm được ti&ecirc;u thụ h&agrave;ng ng&agrave;y cũng bổ sung lượng chất kho&aacute;ng rất lớn.</p>\r\n\r\n<p><strong>5. C&oacute; thể sử dụng phần nước thải được kh&ocirc;ng?</strong></p>\r\n\r\n<p>C&oacute; thể d&ugrave;ng được v&igrave; đ&acirc;y l&agrave; nước thải của m&agrave;ng RO chứ kh&ocirc;ng phải nước thải th&ocirc;ng thường. M&agrave;ng RO đứng ở vị tr&iacute; thứ 4 trong hệ thống lọc nước. Nước đầu v&agrave;o, sau khi qua ba l&otilde;i lọc đ&atilde; được xử l&yacute; hết cặn &gt; 1 micro v&agrave; m&ugrave;i, thuốc trừ s&acirc;u... tới m&agrave;ng lọc RO, phần nước tinh khiết đi qua m&agrave;ng chứa v&agrave; b&igrave;nh.. phần c&ograve;n lại mang theo vi khuẩn, c&aacute;c vi kho&aacute;ng độc hại theo đường nước thải đi ra ngo&agrave;i.&nbsp;</p>\r\n\r\n<p>Như vậy, nước thải của m&aacute;y lọc sẽ sạch hơn nước cấp đầu v&agrave;o. C&oacute; thể t&aacute;i sử dụng v&agrave;o việc kh&aacute;c hoặc quay trở lại bể ngầm, tưới c&acirc;y, lau nh&agrave;..<br />\r\nTuy nhi&ecirc;n, kh&ocirc;ng d&ugrave;ng nước thải để nấu ăn, uống v&igrave; c&oacute; thể nồng độ c&aacute;c chất độc hại đ&atilde; tăng cao.</p>\r\n\r\n<p><strong>6. Lời khuy&ecirc;n từ chuy&ecirc;n gia</strong></p>\r\n\r\n<ul>\r\n	<li>Mua m&aacute;y c&oacute; nguồn gốc xuất xứ r&otilde; r&agrave;ng</li>\r\n	<li>Chọn loại m&aacute;y lọc nước c&oacute; khả năng ti&ecirc;u diệt vi khuẩn, c&oacute; chứng nhận kiểm định của cơ quan chức năng.</li>\r\n	<li>Chọn nh&agrave; cung cấp sản phẩm c&oacute; uy t&iacute;n... Kh&aacute;ch h&agrave;ng n&ecirc;n y&ecirc;u cầu nh&agrave; cung cấp đưa ra những bằng chứng cụ thể chứng minh nguồn gốc sản phẩm</li>\r\n	<li>Thay thế l&otilde;i lọc định kỳ dựa tr&ecirc;n &ldquo;lời khuy&ecirc;n&rdquo; từ nh&agrave; sản xuất, nguồn nước đầu v&agrave;o v&agrave; t&igrave;nh h&igrave;nh thực tế sử dụng của gia đ&igrave;nh.</li>\r\n</ul>\r\n', null, null, 'Pico', null, 'dich-vu-thay-loi-nuoc-loc-tai-nha.html', '7');
INSERT INTO `posts` VALUES ('41', 'Quy định sử dụng', '<p>Hiện nay trang C&ocirc;ng ty Cổ phần Pico sử dụng 3 (ba) t&ecirc;n miền (tiếng Anh được gọi l&agrave; domain name) l&agrave;:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ol>\r\n	<li>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href=\"http://pico.vn/\">www.pico.com.vn</a></li>\r\n	<li>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href=\"http://pico.vn/\">www.pico.vn</a></li>\r\n	<li>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<a href=\"http://www.picoplaza.com.vn/\">www.picoplaza.com.vn</a></li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>V&agrave; đ&atilde; được đăng k&yacute; tại Trung T&acirc;m Internet Việt Nam thuộc BỘ TH&Ocirc;NG TIN V&Agrave; TRUYỀN TH&Ocirc;NG. Ngo&agrave;i 3 (ba) t&ecirc;n miền tr&ecirc;n ch&uacute;ng t&ocirc;i kh&ocirc;ng c&ograve;n sử dụng t&ecirc;n miền n&agrave;o kh&aacute;c.</p>\r\n\r\n<p>- T&ecirc;n miền www.pico.vn l&agrave; t&ecirc;n miền ch&iacute;nh m&agrave; website mua sắm trực tuyến ch&iacute;nh thức của C&ocirc;ng ty Cổ phần Pico hiện đang sử dụng.</p>\r\n\r\n<p>-&nbsp;C&aacute;c đơn h&agrave;ng của kh&aacute;ch h&agrave;ng thực hiện tại website www.pico.vn đều c&oacute; thể được xem x&eacute;t để chấp nhận hoặc từ chối bởi bộ phận phụ tr&aacute;ch kinh doanh trực tuyến của Pico.</p>\r\n\r\n<p>-&nbsp;V&igrave; gi&aacute; h&agrave;ng h&oacute;a c&oacute; thể thay đổi, đơn h&agrave;ng của qu&yacute; kh&aacute;ch c&oacute; thể kh&ocirc;ng được chấp nhận hoặc ch&uacute;ng t&ocirc;i c&oacute; thể li&ecirc;n lạc với qu&yacute; kh&aacute;ch để th&ocirc;ng tin th&ecirc;m về sự thay đổi gi&aacute; hoặc c&aacute;c vấn đề ph&aacute;t sinh sau khi qu&yacute; kh&aacute;ch thực hiện đạt h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>1. BẢN QUYỀN/TH&Ocirc;NG TIN THƯƠNG HIỆU</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- www.pico.vn l&agrave; thương hiệu website được đăng k&yacute;&nbsp;<a href=\"http://pico.vn/blogs/about.aspx\">bản quyền</a>&nbsp;bởi C&ocirc;ng ty Cổ phần Pico. To&agrave;n bộ website, th&ocirc;ng tin sao ch&eacute;p, h&igrave;nh ảnh, biểu tượng, k&yacute; hiệu, văn bản, nội dung v&agrave; c&aacute;ch thức trưng b&agrave;y sản phẩm đ&atilde; được đăng k&yacute; bản quyền cho Pico.vn. Việc sử dụng c&aacute;c t&agrave;i liệu v&agrave; h&igrave;nh ảnh từ website v&agrave;/hoặc m&aacute;y chủ của Pico.vn bị nghi&ecirc;m cấm.</p>\r\n\r\n<p>- Thương hiệu www.pico.vn hoặc bất cứ thương hiệu hay&nbsp;<a href=\"http://pico.vn/blogs/about.aspx\">logo của Pico</a>&nbsp;kh&ocirc;ng được sử dụng cho mục đ&iacute;ch quảng c&aacute;o hoặc c&ocirc;ng bố th&ocirc;ng tin m&agrave; kh&ocirc;ng c&oacute; sự cho ph&eacute;p của ch&uacute;ng t&ocirc;i.</p>\r\n\r\n<p>- Th&ocirc;ng tin tr&ecirc;n website n&agrave;y c&oacute; thể thay đổi m&agrave; kh&ocirc;ng cần th&ocirc;ng b&aacute;o.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>2. CH&Iacute;NH S&Aacute;CH ĐƠN H&Agrave;NG CỦA KH&Aacute;CH H&Agrave;NG</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Kh&ocirc;ng phải bất cứ đơn đặt h&agrave;ng trực tuyến n&agrave;o của qu&yacute; kh&aacute;ch cũng hiển nhi&ecirc;n được chấp nhận. Ch&uacute;ng t&ocirc;i c&oacute; to&agrave;n quyền chấp nhận hoặc từ chối đơn h&agrave;ng của qu&yacute; kh&aacute;ch với bất kỳ l&yacute; do kh&ocirc;ng hợp lệ n&agrave;o đ&oacute; của đơn h&agrave;ng m&agrave; ch&uacute;ng t&ocirc;i x&aacute;c định được.</p>\r\n\r\n<p>- Ch&uacute;ng t&ocirc;i c&oacute; thể y&ecirc;u cầu x&aacute;c minh v&agrave; đề nghị qu&yacute; kh&aacute;ch cung cấp th&ecirc;m th&ocirc;ng tin trước khi chấp nhận đơn h&agrave;ng của qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p>- Một số chương tr&igrave;nh khuyến m&atilde;i đặc biệt tại Pico.vn chỉ d&agrave;nh cho người ti&ecirc;u d&ugrave;ng cuối (b&aacute;n lẻ) v&agrave; kh&ocirc;ng chấp nhận c&aacute;c đơn đặt h&agrave;ng từ đại l&yacute;, c&ocirc;ng ty xuất khẩu, c&aacute;c đơn vị b&aacute;n bu&ocirc;n, hoặc những tổ chức kinh doanh mua đi, b&aacute;n lại c&aacute;c sản phẩm được cung cấp bởi Pico.vn</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>3. TH&Ocirc;NG TIN HIỂN THỊ BỊ LỖI DO LỖI NHẬP LIỆU</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Trong trường hợp một sản phẩm hiển thị sai gi&aacute; hoặc sai th&ocirc;ng tin do lỗi nhập liệu hoặc do sự sai s&oacute;t của nh&agrave; cung cấp, pico.vn c&oacute; quyền từ chối hoặc hủy c&aacute;c đơn h&agrave;ng đối với c&aacute;c sản phẩm bị hiển thị sai th&ocirc;ng tin gi&aacute; b&aacute;n. Pico.vn c&oacute; quyền từ chối hoặc hủy c&aacute;c đơn h&agrave;ng cho d&ugrave; đơn h&agrave;ng đ&atilde; được x&aacute;c nhận v&agrave; qu&yacute; kh&aacute;ch đ&atilde; thực hiện thanh to&aacute;n hay chưa. Trong trường hợp qu&yacute; kh&aacute;ch đ&atilde; thanh to&aacute;n cho việc mua h&agrave;ng v&agrave; đơn h&agrave;ng của qu&yacute; kh&aacute;ch bị hủy, ch&uacute;ng t&ocirc;i sẽ nhanh ch&oacute;ng ho&agrave;n trả lại to&agrave;n bộ số tiền mua h&agrave;ng v&agrave;o lại t&agrave;i khoản của qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>4. CH&Iacute;NH S&Aacute;CH ĐỔI TRẢ H&Agrave;NG</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Vui l&ograve;ng xem chi tiết tại đ&acirc;y:&nbsp;<a href=\"http://pico.vn/11s-chinh-sach-doi-tra-hang.html\">Ch&iacute;nh s&aacute;ch đổi trả h&agrave;ng</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>5. Đ&Oacute;NG G&Oacute;I</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- H&agrave;ng h&oacute;a sẽ được đ&oacute;ng g&oacute;i cẩn thận khi chuyển đến kh&aacute;ch h&agrave;ng. C&aacute;c kiện h&agrave;ng của qu&yacute; kh&aacute;ch c&oacute; thể được đ&oacute;ng g&oacute;i trong c&aacute;c bao b&igrave;/th&ugrave;ng h&agrave;ng lớn hơn để đảm bảo t&iacute;nh an to&agrave;n cho h&agrave;ng h&oacute;a.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>6. PHIẾU MUA H&Agrave;NG</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Trong trường hợp bạn được tặng phiếu mua tại c&aacute;c Si&ecirc;u thị của Pico. Th&igrave; chỉ được ph&eacute;p sử dụng khi mua h&agrave;ng trực tiếp tại c&aacute;c trung t&acirc;m v&agrave; kh&ocirc;ng được &aacute;p dụng cho mua h&agrave;ng Online.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>7. THỜI GIAN XỬ L&Yacute; ĐƠN H&Agrave;NG</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Đơn h&agrave;ng của bạn sẽ được kiểm tra bởi bộ phận B&aacute;n h&agrave;ng của www.pico.vn để đảm bảo rằng đơn đặt h&agrave;ng của qu&yacute; kh&aacute;ch l&agrave; ch&iacute;nh x&aacute;c, phương thức thanh to&aacute;n tiền đơn h&agrave;ng l&agrave; hợp lệ v&agrave; qu&yacute; kh&aacute;ch c&oacute; quyền sử dụng phương thức thanh to&aacute;n n&agrave;y. Một khi đơn h&agrave;ng của qu&yacute; kh&aacute;ch đ&atilde; được bộ phận B&aacute;n h&agrave;ng của ch&uacute;ng t&ocirc;i chấp nhận, đơn h&agrave;ng sẽ được chuyển đến Kế to&aacute;n v&agrave; Kho h&agrave;ng để thực hiện việc chuyển h&agrave;ng đến qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p>- Nếu h&agrave;ng h&oacute;a qu&yacute; kh&aacute;ch đặt mua đang sẵn c&oacute;, ch&uacute;ng t&ocirc;i sẽ nhanh ch&oacute;ng chuyển h&agrave;ng từ một hoặc c&aacute;c từ kho h&agrave;ng của ch&uacute;ng t&ocirc;i tr&ecirc;n to&agrave;n quốc đến cho qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p>- Nếu h&agrave;ng h&oacute;a qu&yacute; kh&aacute;ch đặt mua đang hết h&agrave;ng, ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ lại qu&yacute; kh&aacute;ch để th&ocirc;ng tin th&ecirc;m về đơn h&agrave;ng/sản phẩm cũng như thời gian sớm nhất c&oacute; thể đ&aacute;p ứng đơn h&agrave;ng của qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p>- Trong c&aacute;c ng&agrave;y lễ, tết, sự kiện khuyến m&atilde;i lớn của ch&uacute;ng t&ocirc;i, do lượng đơn h&agrave;ng lớn, đơn h&agrave;ng của qu&yacute; kh&aacute;ch c&oacute; thể được xử l&yacute; chậm hơn thời gian quy định.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>8. THỜI GIAN CHUYỂN H&Agrave;NG</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Đối với những đơn h&agrave;ng trong nội th&agrave;nh H&agrave; Nội v&agrave; c&aacute;c tỉnh/th&agrave;nh trong khu vực giao h&agrave;ng miễn ph&iacute;, qu&yacute; kh&aacute;ch đặt trước 17h15 trong ng&agrave;y sẽ được xử l&yacute; đơn h&agrave;ng v&agrave; giao h&agrave;ng trong 24h (Th&ocirc;ng thường l&agrave; c&ugrave;ng ng&agrave;y) hoặc theo thời gian y&ecirc;u cầu cụ thể của qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p>- C&aacute;c đơn h&agrave;ng được đặt sau 17h15 sẽ được phục vụ v&agrave;o ng&agrave;y h&ocirc;m sau.</p>\r\n\r\n<p>- Đối với những đơn h&agrave;ng đặt v&agrave;o sau 11h00 Thứ bảy v&agrave; trong ng&agrave;y Chủ Nhật h&agrave;ng tuần ch&uacute;ng t&ocirc;i sẽ phục vụ qu&yacute; kh&aacute;ch h&agrave;ng v&agrave;o ng&agrave;y thứ hai của tuần kế tiếp.</p>\r\n\r\n<p>- Với c&aacute;c đơn h&agrave;ng kh&ocirc;ng thuộc nội th&agrave;nh H&agrave; Nội v&agrave; c&aacute;c Tỉnh/Th&agrave;nh trong khu vực giao h&agrave;ng miễn ph&iacute;, ch&uacute;ng t&ocirc;i sẽ chuyển đến kh&aacute;ch h&agrave;ng qua đơn vị vận chuyển v&agrave; c&oacute; t&iacute;nh ph&iacute; vận chuyển, thời gian chuyển h&agrave;ng v&agrave; cước ph&iacute; (Chi tiết tham khảo&nbsp;<a href=\"http://pico.vn/7s-chinh-sach-van-chuyen-hang.html\">Ch&iacute;nh s&aacute;ch vận chuyển</a>). Khi đặt h&agrave;ng, hệ thống sẽ thể hiện ng&agrave;y, giờ giao h&agrave;ng dự kiến v&agrave; ph&iacute; vận chuyển sẽ được&nbsp; tự động thể hiện ngay trong đơn h&agrave;ng của qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p>- Trong một số trường hợp ch&uacute;ng t&ocirc;i c&oacute; thể chậm trễ khi giao h&agrave;ng do những điều kiện bất khả kh&aacute;ng như thời tiết xấu, điều kiện giao th&ocirc;ng kh&ocirc;ng thuận lợi, xe hỏng h&oacute;c tr&ecirc;n đường giao h&agrave;ng, trục trặc trong qu&aacute; tr&igrave;nh xuất h&agrave;ng,&hellip;Trong mọi trường hợp chậm trễ ch&uacute;ng t&ocirc;i sẽ li&ecirc;n hệ v&agrave; th&ocirc;ng tin đến qu&yacute; kh&aacute;ch sớm.</p>\r\n\r\n<p>- Trong thời gian chờ đợi nhận h&agrave;ng, Qu&yacute; kh&aacute;ch c&oacute; bất cứ thắc mắc g&igrave; về th&ocirc;ng tin vận chuyển xin vui l&ograve;ng li&ecirc;n hệ với bộ phận Chăm s&oacute;c kh&aacute;ch h&agrave;ng của Pico theo số:&nbsp;<strong>1900 6699</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>9. TỔNG THỜI GIAN PH&Acirc;N PHỐI</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Thời gian ph&acirc;n phối h&agrave;ng t&ugrave;y thuộc v&agrave;o thời gian ch&uacute;ng t&ocirc;i thiết lập được thanh to&aacute;n tr&ecirc;n t&agrave;i khoản của qu&yacute; kh&aacute;ch, thời gian xử l&yacute; đơn h&agrave;ng v&agrave; thời gian chuyển h&agrave;ng của đơn vị giao nhận. C&oacute; thể từ 24 tiếng đến 05 ng&agrave;y nếu qu&yacute; kh&aacute;ch đặt h&agrave;ng trong trạng th&aacute;i c&ograve;n h&agrave;ng (in-stock).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>10. PHIẾU QU&Agrave; TẶNG</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Sử dụng thẻ qu&agrave; tặng để mua bất kỳ sản phẩm hiện c&oacute; tại Pico.vn hoặc tại c&aacute;c Si&ecirc;u thị của Pico.</p>\r\n\r\n<p>- Thẻ qu&agrave; tặng kh&ocirc;ng được quy đổi th&agrave;nh tiền mặt. Gi&aacute; trị của thẻ qu&agrave; tặng kh&ocirc;ng được thay thế nếu mất, bị đ&aacute;nh cấp hoặc sử dụng m&agrave; kh&ocirc;ng c&oacute; sự cho ph&eacute;p của chủ nh&acirc;n.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>11. NGUY CƠ MẤT V&Agrave; HƯ HẠI H&Agrave;NG H&Oacute;A</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Nếu kh&aacute;ch h&agrave;ng sử dụng dịch vụ chuyển h&agrave;ng của Pico hoặc của đối t&aacute;c vận chuyển cung cấp bởi ch&uacute;ng t&ocirc;i, ch&uacute;ng t&ocirc;i sẽ c&oacute; tr&aacute;ch nhiệm với h&agrave;ng h&oacute;a v&agrave; sự rủi ro của việc mất hoặc hư hại h&agrave;ng h&oacute;a trong suốt qu&aacute; tr&igrave;nh chuyển h&agrave;ng đến kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>- Nếu kh&aacute;ch h&agrave;ng lựa chọn một c&ocirc;ng ty/h&igrave;nh thức vận chuyển h&agrave;ng h&oacute;a kh&aacute;c cho ri&ecirc;ng m&igrave;nh, tr&aacute;ch nhiệm với h&agrave;ng h&oacute;a v&agrave; sự rủi ro của việc mất hoặc hư hại h&agrave;ng h&oacute;a trong qu&aacute; tr&igrave;nh chuyển h&agrave;ng từ www.pico.vn đến kh&aacute;ch h&agrave;ng thuộc về kh&aacute;ch h&agrave;ng. Kh&aacute;ch h&agrave;ng sẽ chịu tr&aacute;ch nhiệm cho to&agrave;n bộ việc chuyển h&agrave;ng v&agrave; cước ph&iacute; li&ecirc;n quan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>12. TR&Aacute;CH NHIỆM VỚI H&Agrave;NG H&Oacute;A NHẬN ĐƯỢC</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- Qu&yacute; kh&aacute;ch c&oacute; tr&aacute;ch nhiệm kiểm tra h&agrave;ng h&oacute;a khi nhận h&agrave;ng. Th&ocirc;ng b&aacute;o ngay cho Nh&acirc;n vi&ecirc;n giao nhận những hư hại, trầy xước, bể vỡ, mốp m&eacute;o, hoặc sai h&agrave;ng h&oacute;a v&agrave; tiến h&agrave;nh k&yacute; x&aacute;c nhận t&igrave;nh trạng h&agrave;ng h&oacute;a với Nh&acirc;n vi&ecirc;n giao nhận.</p>\r\n\r\n<p>- Sau khi qu&yacute; kh&aacute;ch đ&atilde; k&yacute; nhận h&agrave;ng, ch&uacute;ng t&ocirc;i kh&ocirc;ng c&oacute; tr&aacute;ch nhiệm với những th&ocirc;ng b&aacute;o hư hỏng, trầy xước, bể vỡ, mốp m&eacute;o, sai h&agrave;ng h&oacute;a,&hellip; từ qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p>Khi ph&aacute;t hiện một trong c&aacute;c trường hợp tr&ecirc;n, Qu&yacute; kh&aacute;ch c&oacute; thể trao đổi trực tiếp với Nh&acirc;n vi&ecirc;n giao h&agrave;ng hoặc phản hồi cho C&ocirc;ng ty Pico trong v&ograve;ng 24h theo đường d&acirc;y n&oacute;ng&nbsp;<strong>1900.6699</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>LƯU &Yacute;:</strong></p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch lưu &yacute; trong thời gian c&ograve;n hạn bảo h&agrave;nh sản phẩm. Qu&yacute;&nbsp;&nbsp;kh&aacute;ch phải lưu lại li&ecirc;n hồng mua h&agrave;ng tại Pico. Trong trường hợp đổi h&agrave;ng Pico sẽ dựa theo li&ecirc;n hồng mua h&agrave;ng của qu&yacute; kh&aacute;ch để x&aacute;c nhận th&ocirc;ng tin bảo h&agrave;nh, hoặc đổi trả h&agrave;ng.N&ecirc;́u&nbsp;qu&yacute; kh&aacute;ch đ&aacute;nh mất li&ecirc;n hồng, Pico sẽ kh&ocirc;ng chịu tr&aacute;ch nhiệm bảo h&agrave;nh, hay đổi trả cho qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Mặt trước Li&ecirc;n Hồng:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"Hoa don pico\" src=\"https://lh4.googleusercontent.com/-ZeWM1viFHGQ/UWthdo28bLI/AAAAAAAAX7o/5InJrM765QE/s754/IMG_0686.JPG\" style=\"border:0px; height:423px; vertical-align:middle; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Mặt sau Li&ecirc;n Hồng:</strong></p>\r\n\r\n<p><img alt=\"hoa don pico\" src=\"https://lh4.googleusercontent.com/-PzM7ZC7VXtQ/UWthczqrK0I/AAAAAAAAX7g/yu7fqPVtDHY/s750/IMG_0685.JPG\" style=\"border:0px; height:425px; vertical-align:middle; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', null, null, 'Pico', null, 'quy-dinh-su-dung.html', '2');
INSERT INTO `posts` VALUES ('42', 'Quy đinh đặt hàng', '<p>Pico chỉ chấp nhận những Đơn đặt h&agrave;ng khi Kh&aacute;ch h&agrave;ng đ&atilde; cung cấp đầy đủ c&aacute;c th&ocirc;ng tin ch&iacute;nh x&aacute;c về địa chỉ, số điện thoại cố định, họ t&ecirc;n người mua&hellip; Sau khi Qu&yacute; kh&aacute;ch đặt h&agrave;ng, Pico sẽ&nbsp;li&ecirc;n&nbsp;lạc&nbsp;lại để kiểm tra th&ocirc;ng tin v&agrave;&nbsp;thỏa thuận th&ecirc;m những&nbsp;điều c&oacute;&nbsp;li&ecirc;n quan.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Địa chỉ giao h&agrave;ng phải c&oacute; th&ocirc;ng tin người nhận h&agrave;ng, địa chỉ, số điện thoại ch&iacute;nh x&aacute;c, r&otilde; r&agrave;ng. Pico kh&ocirc;ng chịu tr&aacute;ch nhiệm khi Qu&yacute; kh&aacute;ch ghi sai th&ocirc;ng tin người nhận.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chi ph&iacute; thanh to&aacute;n (c&oacute; thể) bao gồm cả tiền vận chuyển n&ecirc;n Qu&yacute; kh&aacute;ch xem r&otilde; số tiền m&igrave;nh phải thanh to&aacute;n trước khi ho&agrave;n tất đơn h&agrave;ng.&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pico kh&ocirc;ng b&aacute;n sản phẩm cho người dưới 13 tuổi. Nếu Qu&yacute; kh&aacute;ch dưới 13 tuổi, Qu&yacute; kh&aacute;ch được y&ecirc;u cầu phải c&oacute; sự đồng &yacute; của cha mẹ hoặc người gi&aacute;m hộ để thực hiện mua h&agrave;ng từ website của Pico.</p>\r\n\r\n<p><br />\r\nĐối với đơn h&agrave;ng giờ v&agrave;ng, gi&aacute; chỉ được giảm trong&nbsp;<a href=\"http://pico.vn/Promotion.aspx?Type=in_hour\">khung giờ v&agrave;ng</a>. V&igrave; vậy nếu Qu&yacute; kh&aacute;ch đặt h&agrave;ng ngo&agrave;i khung giờ qui định th&igrave; gi&aacute; sẽ kh&ocirc;ng được t&iacute;nh như mức gi&aacute; ưu đ&atilde;i của chương tr&igrave;nh<a name=\"_GoBack\"></a>, m&agrave; sẽ l&agrave; gi&aacute; b&aacute;n b&igrave;nh thường.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Một số trường hợp kh&aacute;c: Gi&aacute; trị đơn h&agrave;ng qu&aacute; lớn, địa chỉ giao h&agrave;ng trong ng&otilde;, ng&aacute;ch, ngo&agrave;i khu vực vận chuyển của đơn vị giao nhận hoặc c&oacute; thể dẫn đến nguy hiểm. Pico c&oacute; thể xin được từ chối giao h&agrave;ng , Pico mời kh&aacute;ch h&agrave;ng qua nhận h&agrave;ng trực tiếp. Mong Qu&yacute; kh&aacute;ch h&agrave;ng th&ocirc;ng cảm!</p>\r\n', null, null, 'Pico', null, 'quy-dinh-dat-hang.html', '2');
INSERT INTO `posts` VALUES ('44', 'Chính sách đổi sản phẩm Laptop lên đến 30 ngày', '<p style=\"text-align: center;\"><strong>CHÍNH SÁCH Đ&Ocirc;̉I H&Agrave;NG L&Ecirc;N ĐẾN 30 NG&Agrave;Y</strong></p>\r\n\r\n<p style=\"text-align: center;\">Sản phẩm &aacute;p dụng: Laptop</p>\r\n\r\n<p style=\"text-align: center;\"><em>Thời gian &aacute;p dụng : 01/09/2015 đến 30/09/2015</em></p>\r\n\r\n<p><strong>I. MỤC Đ&Iacute;CH:</strong></p>\r\n\r\n<p>Nhằm đảm bảo quyền lợi người ti&ecirc;u d&ugrave;ng, n&acirc;ng cao chất lượng dịch vụ sau b&aacute;n h&agrave;ng, C&ocirc;ng ty Pico sẽ hỗ trợ Qu&yacute; kh&aacute;ch đổi sản phẩm mới c&ugrave;ng loại nếu sản phẩm gặp sự cố kh&ocirc;ng thể khắc phục được ngay (do lỗi kỹ thuật của nh&agrave; sản xuất). Sản phẩm chỉ được đổi khi đ&aacute;p ứng đầy đủ c&aacute;c điều kiện sau dưới đ&acirc;y:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p><strong>II.ĐIỀU KIỆN &Aacute;P DỤNG:</strong></p>\r\n\r\n<ol>\r\n	<li><strong>Đổi sản phẩm lỗi do nh&agrave; sản xuất trong v&ograve;ng 30 ng&agrave;y:</strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li><strong>30 ng&agrave;y (720 giờ) đổi mới &aacute;p dụng cho c&aacute;c h&atilde;ng LAPTOP : ACER, ASUS,&nbsp; DELL, HP, LENOVO, TOSHIBA ( kh&ocirc;ng &aacute;p dụng h&atilde;ng : APPLE, SONY)</strong></li>\r\n</ul>\r\n\r\n<p>1.1 Sản phẩm thuộc diện được đổi trả h&agrave;ng phải đủ c&aacute;c điều kiện sau đ&acirc;y:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>- M&aacute;y phải c&ograve;n mới kh&ocirc;ng bị lỗi về h&igrave;nh thức (trầy, xước, m&oacute;p m&eacute;o. ố v&agrave;ng, rơi ,vỡ&hellip;)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>- Đầy đủ vỏ hộp bao b&igrave; carton, xốp ch&egrave;n c&ograve;n mới kh&ocirc;ng r&aacute;ch n&aacute;t, c&aacute;c linh kiện, phụ kiện k&egrave;m theo v&agrave; c&aacute;c tặng phẩm khuyến mại nếu c&oacute;&hellip;</p>\r\n\r\n<p>- C&oacute; đầy đủ c&aacute;c chứng từ k&egrave;m theo như: H&oacute;a đơn t&agrave;i ch&iacute;nh, Bi&ecirc;n bản b&agrave;n giao hợp lệ, Phiếu bảo h&agrave;nh (nếu c&oacute;), C&aacute;c giấy tờ c&oacute; li&ecirc;n quan đến thanh to&aacute;n tại Pico&hellip;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>- Tất cả sản phẩm phải c&oacute; phiếu x&aacute;c nhận bị lỗi kỹ thuật do nh&agrave; sản xuất do Kỹ thuật vi&ecirc;n của Trung T&acirc;m Bảo H&agrave;nh ch&iacute;nh h&atilde;ng cung cấp.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>1.2 Trường hợp kh&ocirc;ng đủ c&aacute;c điều kiện tr&ecirc;n th&igrave; quyền quyết định đổi trả h&agrave;ng thuộc về Pico.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>1.3 Pico sẽ hỗ trợ những trường hợp kh&aacute;ch h&agrave;ng quay lại si&ecirc;u thị m&agrave; kh&ocirc;ng c&oacute; giấy x&aacute;c nhận lỗi do nh&agrave; sản xuất của kỹ thuật bảo h&agrave;nh b&ecirc;n H&atilde;ng. Kỹ thuật bảo h&agrave;nh của Pico sẽ thay mặt chuyển h&agrave;ng h&oacute;a đến H&atilde;ng để kiểm tra. Sau khi c&oacute; Giấy X&aacute;c Nhận T&igrave;nh Trạng với nội dung x&aacute;c nhận đ&uacute;ng t&igrave;nh trạng hư hỏng do nh&agrave; sản xuất Pico sẽ tiến h&agrave;nh đổi sản phẩm cho kh&aacute;ch h&agrave;ng.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>1.4 Sản phẩm kh&ocirc;ng c&ograve;n tem bảo h&agrave;nh, bị rơi, va chạm, để m&aacute;y nơi ẩm ướt... theo qui định từ chối bảo h&agrave;nh của nh&agrave; sản xuất =&gt; Kh&ocirc;ng &aacute;p dụng đổi trả, kh&aacute;ch h&agrave;ng phải chịu chi ph&iacute; sửa chữa.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Trường hợp kh&ocirc;ng c&ograve;n h&agrave;ng thay thế kh&aacute;ch h&agrave;ng c&oacute; thể đổi sang sản phẩm kh&aacute;c c&oacute; gi&aacute; trị tương đương hoặc c&aacute;c sản phẩm đắt tiền hơn th&igrave; kh&aacute;ch phải trả th&ecirc;m chi ph&iacute; ch&ecirc;nh lệch.</li>\r\n</ul>\r\n\r\n<ol start=\"2\">\r\n	<li><strong>Ho&agrave;n tiền hoặc đổi sản phẩm linh hoạt &nbsp;trong v&ograve;ng 07 ng&agrave;y.</strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li><strong>Trong 07 ng&agrave;y đầu (168 giờ): Kh&aacute;ch h&agrave;ng c&oacute; thể chọn đổi lấy sản phẩm kh&aacute;c hoặc trả lại sản phẩm v&agrave; lấy lại tiền. &Aacute;p dụng cho c&aacute;c h&atilde;ng LAPTOP : ACER, ASUS,&nbsp; DELL, HP, LENOVO, TOSHIBA ( kh&ocirc;ng &aacute;p dụng h&atilde;ng : APPLE, SONY).</strong>\r\n\r\n	<ul>\r\n		<li>Chỉ &aacute;p dụng đổi sản phẩm một lần duy nhất, thời gian đổi t&iacute;nh từ ng&agrave;y tr&ecirc;n bi&ecirc;n bản b&agrave;n giao sản phẩm.</li>\r\n		<li>Sản phẩm thuộc diện được đổi trả h&agrave;ng phải đủ c&aacute;c điều kiện sau đ&acirc;y:</li>\r\n	</ul>\r\n	</li>\r\n	<li>M&aacute;y phải c&ograve;n mới kh&ocirc;ng bị lỗi về h&igrave;nh thức (trầy, xước, m&oacute;p m&eacute;o. ố v&agrave;ng, rơi ,vỡ&hellip;)</li>\r\n	<li>Đầy đủ vỏ hộp bao b&igrave; carton, xốp ch&egrave;n c&ograve;n mới kh&ocirc;ng r&aacute;ch n&aacute;t, c&aacute;c linh kiện, phụ kiện k&egrave;m theo v&agrave; c&aacute;c tặng phẩm khuyến mại nếu c&oacute;&hellip;</li>\r\n	<li>C&oacute; đầy đủ c&aacute;c chứng từ k&egrave;m theo như: H&oacute;a đơn t&agrave;i ch&iacute;nh, Bi&ecirc;n bản b&agrave;n giao hợp lệ, Phiếu bảo h&agrave;nh (nếu c&oacute;), C&aacute;c giấy tờ c&oacute; li&ecirc;n quan đến thanh to&aacute;n tại Pico&hellip;\r\n	<ul>\r\n		<li>Pico sẽ linh hoạt hỗ trợ ho&agrave;n tiền hoặc đổi sản phẩm nhưng c&oacute; t&iacute;nh ph&iacute; trong 07 ng&agrave;y đầu khi gặp c&aacute;c trường hợp sau:</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"1\" style=\"width:575px\">\r\n	<thead>\r\n		<tr>\r\n			<td>\r\n			<p><strong>T&igrave;nh trạng sản phẩm</strong></p>\r\n			</td>\r\n			<td>\r\n			<p><strong>Ph&iacute; đổi trả</strong></p>\r\n			</td>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Sản phẩm bị xước</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Trừ 15% gi&aacute; trị mua sản phẩm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Mất h&oacute;a đơn t&agrave;i ch&iacute;nh</strong>&nbsp;( h&oacute;a đơn VAT)</p>\r\n			</td>\r\n			<td>\r\n			<p>Trừ 20% gi&aacute; trị mua sản phẩm</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Mất vỏ hộp hoặc phụ kiện đi k&egrave;m</strong>: d&acirc;y nguồn , adapter , d&acirc;y kết nối , pin, đĩa c&agrave;i đặt, s&aacute;ch hướng dẫn sử dụng.</p>\r\n			</td>\r\n			<td>\r\n			<p>Trừ 30% gi&aacute; trị mua sản phẩm</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>Lưu &yacute; :</em></strong></p>\r\n\r\n<ul>\r\n	<li><strong><em>Kh&ocirc;ng &aacute;p dụng ho&agrave;n tiền hoặc đổi sản phẩm mua lớn hơn 07 ng&agrave;y kể từ ng&agrave;y tr&ecirc;n bi&ecirc;n bản b&agrave;n giao sản phẩm.</em></strong></li>\r\n	<li><strong><em>Kh&ocirc;ng &aacute;p dụng ho&agrave;n tiền hoặc đổi sản phẩm l&agrave; qu&agrave; tặng khuyến m&atilde;i k&egrave;m theo,nếu kh&aacute;ch h&agrave;ng đ&atilde; sử dụng th&igrave; sẽ phải t&iacute;nh theo gi&aacute; b&aacute;n lẻ của PICO.</em></strong></li>\r\n</ul>\r\n\r\n<ol start=\"3\">\r\n	<li><strong>Bảo h&agrave;nh cả chập ch&aacute;y nổ IC do sốc nguồn điện.</strong></li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>&Aacute;p dụng trong 90 ng&agrave;y t&iacute;nh từ ng&agrave;y tr&ecirc;n bi&ecirc;n bản b&agrave;n giao sản phẩm.</li>\r\n	<li>Pico sẽ chịu chi ph&iacute; 100% sửa chữa cho kh&aacute;ch h&agrave;ng đối với sản phẩm m&agrave; PICO b&aacute;n ra.</li>\r\n	<li>Lưu &yacute; :</li>\r\n	<li>Kh&ocirc;ng &aacute;p dụng đối với c&aacute;c trường hợp bị d&iacute;nh chất lỏng, rơi, vỡ, va đập.</li>\r\n	<li>Sản phẩm sau khi sửa chữa sẽ kh&ocirc;ng được hưởng ch&iacute;nh s&aacute;ch bảo h&agrave;nh từ PICO.</li>\r\n	<li>Sản phẩm phải c&ograve;n nguy&ecirc;n trạng, kh&ocirc;ng c&oacute; c&aacute;c dấu hiệu: cậy mở, mất tem ni&ecirc;m phong tr&ecirc;n sản phẩm.</li>\r\n</ul>\r\n', null, null, 'Pico', null, 'chinh-sach-doi-san-pham-laptop-len-den-30-ngay.html', '2');
INSERT INTO `posts` VALUES ('45', 'PICO.VN', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.2053678205643!2d105.81780866432842!3d21.024467193302034!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab705687ee91%3A0x32ab1bf30d5a53c!2zU2nDqnUgdGjhu4sgxJBp4buHbiBtw6F5IFBpY28sIEdp4bqjbmcgVsO1LCBCYSDEkMOsbmgsIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1453379741695\" width=\"100%\" height=\"500\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>\r\n', null, null, 'Pico', null, 'he-thong-sieu-thi.html', '1');
INSERT INTO `posts` VALUES ('46', 'Mua Hàng trả góp tại Pico', '<p><strong>Mua h&agrave;ng th&ocirc;ng thường:</strong>&nbsp;bạn phải thanh to&aacute;n một lần cho to&agrave;n bộ gi&aacute; trị sản phẩm bạn mua.</p>\r\n\r\n<p><strong>Mua h&agrave;ng trả g&oacute;p:</strong>&nbsp;bạn chỉ cần trả trước một phần để c&oacute; sản phẩm sử dụng ngay, phần c&ograve;n lại sẽ được hỗ trợ vay từ c&ocirc;ng ty t&agrave;i ch&iacute;nh v&agrave; trả dần theo từng th&aacute;ng.&nbsp;</p>\r\n\r\n<p><strong>V&iacute; dụ:</strong>&nbsp;Bạn mua trả g&oacute;p điện thoại&nbsp;<strong>iPhone 6</strong>&nbsp;gi&aacute;&nbsp;<strong>17.880.000</strong>, bạn sẽ trả trước&nbsp;<strong>3.500.000</strong>, số tiền c&ograve;n lại&nbsp;<strong>14.380.000</strong>&nbsp;c&ocirc;ng ty t&agrave;i ch&iacute;nh sẽ cho bạn vay, số tiền n&agrave;y l&agrave; số tiền vay trả g&oacute;p. L&atilde;i suất, số tiền cần g&oacute;p h&agrave;ng th&aacute;ng của bạn sẽ được t&iacute;nh dựa tr&ecirc;n con số n&agrave;y.&nbsp;</p>\r\n\r\n<p>►&nbsp;<strong>Một số chương tr&igrave;nh ưu đ&atilde;i khi mua h&agrave;ng trả g&oacute;p tại Pico:</strong></p>\r\n\r\n<p><em><strong>- Trả g&oacute;p l&atilde;i suất 0% kỳ hạn 06 th&aacute;ng với thẻ t&iacute;n dụng HSBC:&nbsp;<a href=\"http://pico.vn/gia-han-chuong-trinh-mua-tra-gop-lai-suat-0-voi-the-tin-dung-hsbc-ban-tin-1746.html\">Xem tại đ&acirc;y</a></strong></em></p>\r\n\r\n<p><em><strong>- Trả g&oacute;p l&atilde;i suất 0% kỳ hạn 06 th&aacute;ng khi mua Lenovo qua HomeCredit:&nbsp;<a href=\"http://pico.vn/tra-gop-0-khi-mua-lenovo-tai-pico-ban-tin-1943.html\">Xem tại đ&acirc;y</a></strong></em></p>\r\n\r\n<p><em><strong>- Trả g&oacute;p l&atilde;i suất 0% kỳ hạn 06 th&aacute;ng khi mua điện thoại, m&aacute;y t&iacute;nh bảng, smartwatch Samsung qua HomeCredit: &nbsp;<a href=\"http://pico.vn/mua-dien-thoai-samsung-tra-gop-0-voi-homecredit-ban-tin-1890.html\">Xem tại đ&acirc;y</a></strong></em></p>\r\n\r\n<p><em><strong>- Trả g&oacute;p l&atilde;i suất 0% kỳ hạn 06 th&aacute;ng khi mua HTC One A9 qua Home Credit:&nbsp;<a href=\"http://pico.vn/mua-tra-gop-htc-one-a9-lai-suat-0-tai-pico-ban-tin-1947.html\">Xem tại đ&acirc;y</a></strong></em></p>\r\n\r\n<p><em><strong>- Trả g&oacute;p l&atilde;i suất 0% kỳ hạn 06 th&aacute;ng khi mua OPPO Neo 7, R7S, R7 Plus qua Home Credit:&nbsp;<a href=\"http://pico.vn/mua-oppo-neo-7-r7sr7-plus-tra-gop-lai-suat-0-tai-pico-ban-tin-1912.html\">Xem tại đ&acirc;y</a></strong></em></p>\r\n\r\n<p><strong>THỦ TỤC MUA TRẢ G&Oacute;P TẠI PICO</strong></p>\r\n\r\n<p>Hiện tại Pico hợp t&aacute;c với 03 c&ocirc;ng ty t&agrave;i ch&iacute;nh l&agrave; HOME CREDIT, HDSaiSon, ACS để cung cấp dịch vụ trả g&oacute;p với y&ecirc;u cầu cho vay như sau:</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td>HOME CREDIT</td>\r\n			<td><img alt=\"Home Credit\" src=\"http://cdn.pico.vn/Media/Images/76_homecredit120x72.jpg\" style=\"height:93px; width:154px\" /></td>\r\n			<td>Bạn cần phải thỏa m&atilde;n điều kiện sau đ&acirc;y:&nbsp;<br />\r\n			- Tuổi: 20 - 60 tuổi&nbsp;<br />\r\n			- Thủ tục:&nbsp;<br />\r\n			&nbsp;&nbsp;&bull; CMND + Bằng l&aacute;i xe (nếu vay dưới 10 triệu)&nbsp;<br />\r\n			&nbsp;&nbsp;&bull; CMND + Hộ khẩu (nếu vay tr&ecirc;n 10 triệu)&nbsp;<br />\r\n			- Thời gian duyệt hồ sơ: trong 7 ph&uacute;t</td>\r\n		</tr>\r\n		<tr>\r\n			<td>HDSaiSon</td>\r\n			<td>&nbsp;<img alt=\"HDFinance\" src=\"http://cdn.pico.vn/Files/2015/09/03/1859/big_3845_hdf-logo.jpg\" style=\"height:92px; width:148px\" /></td>\r\n			<td>\r\n			<p>Bạn cần phải thỏa m&atilde;n điều kiện sau đ&acirc;y:&nbsp;<br />\r\n			- Tuổi: 20 - 60 tuổi&nbsp;<br />\r\n			- Thủ tục:&nbsp;<br />\r\n			&nbsp;&nbsp;&bull; CMND + Bằng l&aacute;i xe hoặc Hộ khẩu (nếu vay dưới 10 triệu)&nbsp;</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>ACS</td>\r\n			<td>&nbsp;<img alt=\"logo ACS\" src=\"http://cdn.pico.vn/Files/2015/01/05/1740/3282_logo-acs.jpg\" style=\"height:89px; width:148px\" /></td>\r\n			<td>&nbsp;Bạn cần phải thỏa m&atilde;n điều kiện sau đ&acirc;y:&nbsp;\r\n			<p>- Tuổi: 21 - 60 tuổi (đối tượng sinh vi&ecirc;n th&igrave; từ 18 tuổi trở l&ecirc;n)&nbsp;<br />\r\n			- Thủ tục:&nbsp;CMND + Hộ khẩu (nếu kh&ocirc;ng c&oacute; CMND th&igrave; c&oacute; thể thay bằng Bằng l&aacute;i xe)<br />\r\n			- Thời gian duyệt hồ sơ: trong 15&nbsp;ph&uacute;t - 4 giờ (nếu hồ sơ c&oacute; th&ecirc;m H&oacute;a đơn điện hoặc nước tại địa chỉ tr&ecirc;n hộ khẩu th&igrave; thời gian thẩm định hồ sơ l&agrave; 15 ph&uacute;t)</p>\r\n\r\n			<p>- Để tiết kiệm thời gian th&igrave; kh&aacute;ch h&agrave;ng c&oacute; thể gửi&nbsp;bản đăng k&yacute; mua h&agrave;ng trả g&oacute;p đến ACS để x&eacute;t duyệt trước theo địa chỉ email&nbsp;<a href=\"mailto:acs.hnedp@acsvietnam.com.vn\">acs.hnedp@acsvietnam.com.vn</a>, sau khi thẩm định nh&acirc;n vi&ecirc;n của ACS sẽ li&ecirc;n hệ với kh&aacute;ch h&agrave;ng.</p>\r\n\r\n			<p>Tải bản đăng k&yacute; mua h&agrave;ng trả g&oacute;p&nbsp;<strong><a href=\"http://pico.vn/Uploads/Media/Docs/81_form_dang_ky_acs.doc\" title=\"Form đăng ký mua trả góp\">tại đ&acirc;y</a></strong></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>Ngo&agrave;i ra Pico c&ograve;n kết hợp với 03 ng&acirc;n h&agrave;ng l&agrave; ANZ, HSBC, Vietinbank để cung cấp dịch vụ mua h&agrave;ng trả g&oacute;p cho c&aacute;c kh&aacute;ch h&agrave;ng l&agrave; chủ thẻ t&iacute;n dụng của c&aacute;c ng&acirc;n h&agrave;ng n&agrave;y. Đặc biệt khi sử dụng h&igrave;nh thức trả g&oacute;p n&agrave;y kh&aacute;ch h&agrave;ng sẽ được hưởng&nbsp;<strong>l&atilde;i suất ưu đ&atilde;i 0%</strong>&nbsp;trong to&agrave;n bộ thời gian mua trả g&oacute;p. Điều kiện duy nhất để tham gia chương tr&igrave;nh n&agrave;y l&agrave; kh&aacute;ch h&agrave;ng cần c&oacute; 01 thẻ t&iacute;n dụng (thẻ Credit) c&ograve;n hạn mức để chi ti&ecirc;u của một trong c&aacute;c ng&acirc;n h&agrave;ng n&agrave;y.</p>\r\n\r\n<p>Bảng tổng hợp t&oacute;m tắt c&aacute;c chương tr&igrave;nh trả g&oacute;p l&atilde;i suất 0%,&nbsp;<a href=\"http://pico.vn/tong-hop-cac-chuong-trinh-tra-gop-lai-suat-0-ban-tin-1849.html\">xem tại đ&acirc;y</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\">\r\n	<tbody>\r\n		<tr>\r\n			<td>ANZ</td>\r\n			<td><img alt=\"ANZ\" src=\"http://cdn.pico.vn/Media/Images/78_anz120x72.jpg\" style=\"height:72px; width:120px\" /></td>\r\n			<td><a href=\"http://pico.vn/tra-gop-lai-suat-0-cho-chu-the-anz-khi-mua-sam-tai-pico-ban-tin-1831.html\">Thể lệ chương tr&igrave;nh</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>VietinBank</td>\r\n			<td><img alt=\"VietinBank\" src=\"http://cdn.pico.vn/Media/Images/80_vietinbank120x72.jpg\" style=\"height:72px; width:120px\" /></td>\r\n			<td><a href=\"http://pico.vn/tra-gop-0-lai-suat-cho-chu-the-tin-dung-vietinbank-tai-pico-ban-tin-1603.html\">Thể lệ chương tr&igrave;nh</a></td>\r\n		</tr>\r\n		<tr>\r\n			<td>HSBC</td>\r\n			<td>&nbsp;<img alt=\"logo hsbc\" src=\"http://cdn.pico.vn/Files/2015/01/14/1746/3311_hsbc-logo.jpg\" style=\"height:72px; width:120px\" /></td>\r\n			<td><a href=\"http://pico.vn/gia-han-chuong-trinh-mua-tra-gop-lai-suat-0-voi-the-tin-dung-hsbc-ban-tin-1746.html\">Thể lệ chương tr&igrave;nh</a></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>C&acirc;u hỏi thường gặp khi mua h&agrave;ng trả g&oacute;p:</strong></p>\r\n\r\n<p><strong>T&ocirc;i kh&ocirc;ng c&oacute; hộ khẩu ở H&agrave; Nội th&igrave; c&oacute; mua trả g&oacute;p được kh&ocirc;ng?</strong></p>\r\n\r\n<p>Dịch vụ trả g&oacute;p tại Pico hỗ trợ kh&aacute;ch h&agrave;ng c&oacute; hộ khẩu/KT3 ở 63 tỉnh th&agrave;nh tr&ecirc;n cả nước (c&ograve;n trừ một số huyện chưa được hỗ trợ)</p>\r\n\r\n<p><strong>T&ocirc;i c&oacute; cần chứng minh thu nhập, thế chấp t&agrave;i sản hoặc cần c&ocirc;ng chứng giấy tờ khi mua trả g&oacute;p kh&ocirc;ng?</strong></p>\r\n\r\n<p>- Kh&aacute;ch h&agrave;ng mua Trả g&oacute;p tại Pico sẽ kh&ocirc;ng cần phải thế chấp nh&agrave; cửa/xe cộ/t&agrave;i sản&hellip; để mua sản phẩm, chỉ cần cung cấp c&aacute;c giấy tờ c&aacute; nh&acirc;n m&agrave; c&ocirc;ng ty t&agrave;i ch&iacute;nh y&ecirc;u cầu.</p>\r\n\r\n<p>- Kh&aacute;ch h&agrave;ng kh&ocirc;ng cần chuẩn bị c&aacute;c bản c&ocirc;ng chứng giấy tờ, chỉ cần mang bản gốc đến si&ecirc;u thị, nh&acirc;n vi&ecirc;n của c&ocirc;ng ty t&agrave;i ch&iacute;nh sẽ hỗ trợ photo lại th&ocirc;ng tin để gửi thẩm định.</p>\r\n\r\n<p><strong>Mua trả g&oacute;p c&oacute; nhận được khuyến m&atilde;i như khi mua b&igrave;nh thường kh&ocirc;ng?</strong></p>\r\n\r\n<p>Mọi chương tr&igrave;nh khuyến m&atilde;i m&agrave; Pico đang &aacute;p dụng cho kh&aacute;ch mua tại si&ecirc;u thị cũng &aacute;p dụng khi mua trả g&oacute;p. Tuy nhi&ecirc;n với h&igrave;nh thức mua h&agrave;ng trả g&oacute;p bằng thẻ t&iacute;n dụng th&igrave; sẽ c&oacute; một số sản phẩm sẽ kh&ocirc;ng được &aacute;p dụng.</p>\r\n\r\n<p><strong>T&ocirc;i l&agrave; sinh vi&ecirc;n th&igrave; c&oacute; được mua trả g&oacute;p kh&ocirc;ng?</strong></p>\r\n\r\n<p>Sinh vi&ecirc;n được mua trả g&oacute;p tại Pico.</p>\r\n\r\n<p><strong>Mua h&agrave;ng trả g&oacute;p phải trả trước bao nhi&ecirc;u?</strong></p>\r\n\r\n<p>Mua h&agrave;ng trả g&oacute;p tại Pico bạn cần thanh to&aacute;n trước từ 20-30% gi&aacute; trị mặt h&agrave;ng định mua.</p>\r\n', null, null, 'Pico', null, 'mua-hang-tra-gop-tai-picovn.html', '8');
INSERT INTO `posts` VALUES ('47', 'TIVI LED SAMSUNG UA40J5100 40 INCH', 'Đặc điểm nổi bật\r\nThiết kế sang trọng, tinh tế\r\nThiết kế sang trọng, tinh tế\r\n\r\nTivi LED Samsung UA40J5100 40 inch mang những nét đặc trưng trong các thiết kế của thương hiệu Samsung, đó là sự sang trọng, tinh tế và đầy đẳng cấp. Tivi có thiết kế dạng khung tranh tăng thêm tính thẩm mỹ cho sản phẩm, cùng chân đế vững chãi và đẹp mắt. Đây thực sự là một lựa chọn hoàn hảo dành cho không gian sống hiện đại.\r\n\r\nCông nghệ hình ảnh tiên tiến, hiện đại\r\nCông nghệ hình ảnh tiên tiến, hiện đại\r\n\r\nMàn hình 40 inch cùng độ phân giải full HD 1080 đảm bảo sẽ mang đến cho bạn những khung hình thực sự ấn tượng giúp thưởng thức trọn vẹn chương trình tivi dù ngồi ở bất kì vị trí nào trong căn phòng, mà vẫn đảm bảo về chất lượng hình ảnh và âm thanh. Ngoài ra, tivi có tần số quét 100Hz sẽ hạn chế tối đa tình trạng nhòe hình, để mọi chuyển động trên tivi đều trở nên tuyệt vời.\r\n\r\nCông nghệ âm thanh vòm DTS Premium\r\nCông nghệ âm thanh vòm DTS Premium\r\n\r\nCông nghệ âm thanh vòm DTS Premium cung cấp những âm thanh có độ chính xác cao bằng cách tiếp nhận, tái tạo và hoàn chỉnh các âm thanh từ nguồn phát mang đến cho người xem những tiếng động chân thực nhất. Khi thưởng thức các chương trình người dùng sẽ được chìm đắm trong một không gian âm thanh mạnh mẽ như đang trải nghiệm trực tiếp.\r\n\r\nXem nhiều kênh kỹ thuật số miễn phí\r\nXem nhiều kênh kỹ thuật số miễn phí\r\n\r\nTruyền hình kỹ thuật số, với nhiều kênh đặc sắc, chất lượng hình ảnh cao sẽ được mang về ngôi nhà của bạn, nhờ đầu thu DVB-T2. Người dùng có thể xem nhiều kênh truyền hình hấp dẫn mà không phải lo lắng vấn đề chi phí, vì DVB-T2 sẽ thu được ít nhất 15 kênh kỹ thuật số miễn phí (số kênh thu được phụ thuộc khá nhiều vào ăn-ten và vị trí địa lý mà bạn đang ở).\r\n\r\nTha hồ xem phim từ USB\r\nTha hồ xem phim từ USB\r\n\r\nGiờ đây, chiếc tivi của bạn còn có thể trở thành máy tính bảng, laptop... nhờ khả năng kết nối các thiết bị ngoài thật tiện lợi với 2 cổng HDMI và 2 cổng USB được trang bị trên tivi. Bạn có thể xem phim, nghe nhạc, xem ảnh hoặc chia sẻ và sao chép nội dung thật dễ dàng từ USB, để việc giải trí trở nên đa dạng hơn chứ không chỉ gói gọn trong vài kênh truyền hình như trước đây.\r\n\r\nChế độ Soccer mode\r\nChế độ Soccer mode\r\n\r\nTivi LED Samsung UA40J5100 chinh phục người dùng bởi nhiều tính năng phong phú đi kèm. Chế độ Soccer mode sẽ đưa bạn đến không khí cuồng nhiệt của những trận bóng đỉnh cao, nhờ sự nâng cấp rõ rệt về chất lượng hình ảnh, âm thanh. Trong khi đó, tính năng Family TV 2.0 sẽ giúp bạn ghi lại âm thanh từ những chương trình yêu thích, hoặc chụp màn hình tivi.\r\n\r\n An toàn, ổn định và có độ bền cao\r\nAn toàn, ổn định và có độ bền cao\r\n\r\nTivi LED Samsung UA40J5100 40 inch là một sản phẩm hoạt động ổn định và có tuổi thọ cao, nhờ bộ ba bảo vệ độc quyền Triple Protectors của Samsung. Tính năng này sẽ bảo vệ tivi khỏi hư hỏng, tránh những ảnh hưởng xấu của sấm sét, độ ẩm hay sự cố chập điện. Bạn hoàn toàn có thể yên tâm thưởng thức các chương trình hấp dẫn, khi chiếc tivi của gia đình mình đã được bảo vệ tối ưu.\r\n\r\n ', null, null, 'Pico', null, null, '9');

-- ----------------------------
-- Table structure for post_type
-- ----------------------------
DROP TABLE IF EXISTS `post_type`;
CREATE TABLE `post_type` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of post_type
-- ----------------------------
INSERT INTO `post_type` VALUES ('1', 'Tin tức');
INSERT INTO `post_type` VALUES ('2', 'Điều khoản và quy định');
INSERT INTO `post_type` VALUES ('3', 'Chính sách');
INSERT INTO `post_type` VALUES ('4', 'Hỗ trợ mua hàng');
INSERT INTO `post_type` VALUES ('6', 'Địa chỉ Pico');
INSERT INTO `post_type` VALUES ('7', 'Dịch vụ');
INSERT INTO `post_type` VALUES ('8', 'Hỏi đáp và trả lời');
INSERT INTO `post_type` VALUES ('9', 'Thông tin sản phẩm');

-- ----------------------------
-- Table structure for productdetails
-- ----------------------------
DROP TABLE IF EXISTS `productdetails`;
CREATE TABLE `productdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `digitalID` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `productID` int(11) DEFAULT NULL,
  `represent` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of productdetails
-- ----------------------------
INSERT INTO `productdetails` VALUES ('1', '1', 'Panasonic', '143', '\0');
INSERT INTO `productdetails` VALUES ('2', '2', 'Chính hãng', '143', '\0');
INSERT INTO `productdetails` VALUES ('3', '3', '12 tháng', '143', '\0');
INSERT INTO `productdetails` VALUES ('4', '17', 'Lò vi sóng', '143', '\0');
INSERT INTO `productdetails` VALUES ('5', '177', '27L', '143', '\0');
INSERT INTO `productdetails` VALUES ('6', '14', '529 x 326 x 422mm', '143', '\0');
INSERT INTO `productdetails` VALUES ('7', '1', 'SHARP', '143', '');
INSERT INTO `productdetails` VALUES ('8', '2', 'Thái Lan', '143', '\0');
INSERT INTO `productdetails` VALUES ('9', '3', '12 tháng', '143', '\0');
INSERT INTO `productdetails` VALUES ('10', '17', 'Vi sóng điện tử', '143', '\0');
INSERT INTO `productdetails` VALUES ('11', '177', '22 Lít', '143', '\0');
INSERT INTO `productdetails` VALUES ('12', '14', '460(R)x368(S)x275(C)mm', '143', '');
INSERT INTO `productdetails` VALUES ('13', '1', 'Sharp', '143', '\0');
INSERT INTO `productdetails` VALUES ('14', '2', 'Trung Quốc', '143', '');
INSERT INTO `productdetails` VALUES ('15', '3', '12 tháng', '143', '\0');
INSERT INTO `productdetails` VALUES ('16', '17', 'Lò vi sóng', '1', '\0');
INSERT INTO `productdetails` VALUES ('17', '177', '20L', '143', '\0');
INSERT INTO `productdetails` VALUES ('18', '14', '440 x 258 x 359mm', '143', '\0');
INSERT INTO `productdetails` VALUES ('19', '1', 'ELECTROLUX', '143', '\0');
INSERT INTO `productdetails` VALUES ('20', '2', 'Trung Quốc', '143', '\0');
INSERT INTO `productdetails` VALUES ('21', '3', '24 Tháng', '143', '');
INSERT INTO `productdetails` VALUES ('22', '17', 'Vi sóng có nướng', '1', '');
INSERT INTO `productdetails` VALUES ('23', '177', '23 Lít', '143', '\0');
INSERT INTO `productdetails` VALUES ('24', '14', '490x390x290mm', '1', '');
INSERT INTO `productdetails` VALUES ('25', '1', 'LG', '1', '');
INSERT INTO `productdetails` VALUES ('26', '2', 'Trung Quốc', '1', '\0');
INSERT INTO `productdetails` VALUES ('27', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('28', '17', 'Vi sóng + Nướng', '1', '\0');
INSERT INTO `productdetails` VALUES ('29', '177', '23L', '1', '\0');
INSERT INTO `productdetails` VALUES ('30', '14', '485 x 280 x 385 mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('31', '1', 'Sharp', '1', '');
INSERT INTO `productdetails` VALUES ('32', '2', 'Thái Lan', '1', '\0');
INSERT INTO `productdetails` VALUES ('33', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('34', '17', 'Vi sóng', '1', '\0');
INSERT INTO `productdetails` VALUES ('35', '177', '22L', '1', '\0');
INSERT INTO `productdetails` VALUES ('36', '14', '460 x 275 x 380 mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('37', '1', 'Sharp', '1', '\0');
INSERT INTO `productdetails` VALUES ('38', '2', 'Chính hãng', '1', '');
INSERT INTO `productdetails` VALUES ('39', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('40', '17', 'Lò nướng cơ', '1', '\0');
INSERT INTO `productdetails` VALUES ('41', '177', '32L', '1', '');
INSERT INTO `productdetails` VALUES ('42', '14', '519 x 510 x 315mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('43', '1', 'ELECTROLUX', '1', '\0');
INSERT INTO `productdetails` VALUES ('44', '2', 'Trung Quốc', '1', '');
INSERT INTO `productdetails` VALUES ('45', '3', '24 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('46', '17', 'vi sóng + nướng', '1', '');
INSERT INTO `productdetails` VALUES ('47', '177', '30L', '1', '\0');
INSERT INTO `productdetails` VALUES ('48', '14', '520x400x330mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('49', '1', 'Korihome', '1', '\0');
INSERT INTO `productdetails` VALUES ('50', '2', 'Hàn Quốc', '1', '\0');
INSERT INTO `productdetails` VALUES ('51', '3', '24 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('52', '17', 'Cây nước tích hợp lọc nước RO', '1', '\0');
INSERT INTO `productdetails` VALUES ('53', '206', '220V', '1', '\0');
INSERT INTO `productdetails` VALUES ('54', '14', '260x360x1100mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('55', '1', 'KANGAROO', '1', '\0');
INSERT INTO `productdetails` VALUES ('56', '2', 'Taiwan', '1', '\0');
INSERT INTO `productdetails` VALUES ('57', '3', 'Phần điện 12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('58', '183', 'Màng RO', '1', '');
INSERT INTO `productdetails` VALUES ('59', '207', '7', '1', '\0');
INSERT INTO `productdetails` VALUES ('60', '184', 'Lắp trực tiếp vào nguồn nước sinh hoạt', '1', '\0');
INSERT INTO `productdetails` VALUES ('61', '1', 'Korihome', '1', '');
INSERT INTO `productdetails` VALUES ('62', '2', 'Hàn Quốc', '1', '\0');
INSERT INTO `productdetails` VALUES ('63', '3', '24 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('64', '208', 'Cây nước tích hợp lọc nước RO', '1', '\0');
INSERT INTO `productdetails` VALUES ('65', '206', '220V', '1', '\0');
INSERT INTO `productdetails` VALUES ('66', '14', '260x360x1100mm (Rộng x Sâu x Cao)', '1', '');
INSERT INTO `productdetails` VALUES ('67', '1', 'MYOTA', '1', '\0');
INSERT INTO `productdetails` VALUES ('68', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('69', '3', 'phần điện 12 Tháng', '1', '');
INSERT INTO `productdetails` VALUES ('70', '183', 'Công nghệ diệt khuẩn Nano Silver', '1', '\0');
INSERT INTO `productdetails` VALUES ('71', '207', '7', '1', '\0');
INSERT INTO `productdetails` VALUES ('72', '184', 'Lắp trực tiếp vào nguồn nước sinh hoạt', '1', '\0');
INSERT INTO `productdetails` VALUES ('73', '1', 'KAROFI', '1', '\0');
INSERT INTO `productdetails` VALUES ('74', '2', 'Việt Nam', '1', '');
INSERT INTO `productdetails` VALUES ('75', '3', '2 Năm - Phần Điện', '1', '\0');
INSERT INTO `productdetails` VALUES ('76', '183', 'Màng RO Filmtec™', '1', '\0');
INSERT INTO `productdetails` VALUES ('77', '207', '	8', '1', '\0');
INSERT INTO `productdetails` VALUES ('78', '184', 'Lắp trực tiếp vào nguồn nước sinh hoạt', '1', '\0');
INSERT INTO `productdetails` VALUES ('79', '1', 'KANGAROO', '1', '');
INSERT INTO `productdetails` VALUES ('80', '2', 'Đài Loan', '1', '\0');
INSERT INTO `productdetails` VALUES ('81', '3', 'Phần điện 12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('82', '183', '7', '1', '\0');
INSERT INTO `productdetails` VALUES ('83', '184', '	Lắp trực tiếp vào nguồn nước sinh hoạt', '1', '');
INSERT INTO `productdetails` VALUES ('84', '185', '10L/H- 15L/H', '1', '\0');
INSERT INTO `productdetails` VALUES ('85', '1', 'AO SMITH', '1', '');
INSERT INTO `productdetails` VALUES ('86', '2', 'Trung Quốc', '1', '\0');
INSERT INTO `productdetails` VALUES ('87', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('88', '183', 'Màng lọc RO Side Stream', '1', '\0');
INSERT INTO `productdetails` VALUES ('89', '184', '5 lõi', '1', '');
INSERT INTO `productdetails` VALUES ('90', '185', 'Lắp trực tiếp dưới vòi nước dưới chậu rửa', '1', '');
INSERT INTO `productdetails` VALUES ('91', '1', 'KAROFI', '1', '\0');
INSERT INTO `productdetails` VALUES ('92', '2', 'Việt Nam', '1', '\0');
INSERT INTO `productdetails` VALUES ('93', '3', '2 Năm - Phần Điện', '1', '\0');
INSERT INTO `productdetails` VALUES ('94', '183', 'Màng RO Filmtec™', '1', '\0');
INSERT INTO `productdetails` VALUES ('95', '184', '7', '1', '\0');
INSERT INTO `productdetails` VALUES ('96', '185', 'Lắp trực tiếp vào nguồn nước sinh hoạt', '1', '\0');
INSERT INTO `productdetails` VALUES ('97', '1', 'Kangaroo', '1', '\0');
INSERT INTO `productdetails` VALUES ('98', '2', 'Trung Quốc', '1', '\0');
INSERT INTO `productdetails` VALUES ('99', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('100', '208', '	Cây nước làm lạnh bằng chip', '1', '\0');
INSERT INTO `productdetails` VALUES ('101', '188', 'Dung tích 1L/h,', '1', '');
INSERT INTO `productdetails` VALUES ('102', '189', 'Dùng tích 5L/h, bình Inox 304', '1', '\0');
INSERT INTO `productdetails` VALUES ('103', '1', 'CNC', '1', '');
INSERT INTO `productdetails` VALUES ('104', '2', 'Hàn Quốc', '1', '\0');
INSERT INTO `productdetails` VALUES ('105', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('106', '208', 'Cây đứng', '1', '\0');
INSERT INTO `productdetails` VALUES ('107', '188', '3.4L', '1', '');
INSERT INTO `productdetails` VALUES ('108', '189', '1.4L', '1', '\0');
INSERT INTO `productdetails` VALUES ('109', '1', 'MYOTA', '1', '\0');
INSERT INTO `productdetails` VALUES ('110', '2', 'Trung Quốc', '1', '\0');
INSERT INTO `productdetails` VALUES ('111', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('112', '208', 'Cây đứng', '1', '\0');
INSERT INTO `productdetails` VALUES ('113', '190', '10oC', '1', '');
INSERT INTO `productdetails` VALUES ('114', '191', '90oC', '1', '');
INSERT INTO `productdetails` VALUES ('115', '1', 'KANGAROO', '1', '\0');
INSERT INTO `productdetails` VALUES ('116', '2', 'Hàn Quốc', '1', '\0');
INSERT INTO `productdetails` VALUES ('117', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('118', '208', 'Cây đứng', '1', '\0');
INSERT INTO `productdetails` VALUES ('119', '188', '3L', '1', '');
INSERT INTO `productdetails` VALUES ('120', '189', '1.8L', '1', '\0');
INSERT INTO `productdetails` VALUES ('121', '1', 'Comet', '1', '');
INSERT INTO `productdetails` VALUES ('122', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('123', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('124', '208', 'Cây nước đứng', '1', '\0');
INSERT INTO `productdetails` VALUES ('125', '188', '1L', '1', '');
INSERT INTO `productdetails` VALUES ('126', '189', '5L', '1', '');
INSERT INTO `productdetails` VALUES ('127', '1', 'KANGAROO', '1', '');
INSERT INTO `productdetails` VALUES ('128', '2', 'Hàn Quốc', '1', '');
INSERT INTO `productdetails` VALUES ('129', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('130', '208', 'Cây đứng', '1', '');
INSERT INTO `productdetails` VALUES ('131', '190', '<10 (độ C)', '1', '\0');
INSERT INTO `productdetails` VALUES ('132', '191', '>90 (độ C )', '1', '');
INSERT INTO `productdetails` VALUES ('133', '1', 'KANGAROO', '1', '');
INSERT INTO `productdetails` VALUES ('134', '2', 'Hàn Quốc', '1', '');
INSERT INTO `productdetails` VALUES ('135', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('136', '208', 'Cây đứng', '1', '');
INSERT INTO `productdetails` VALUES ('137', '190', '<10 (độ C)', '1', '\0');
INSERT INTO `productdetails` VALUES ('138', '191', '>90 (độ C )', '1', '');
INSERT INTO `productdetails` VALUES ('139', '1', 'Karofi', '1', '');
INSERT INTO `productdetails` VALUES ('140', '2', 'Việt Nam', '1', '\0');
INSERT INTO `productdetails` VALUES ('141', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('142', '209', 'Quạt sưởi', '1', '');
INSERT INTO `productdetails` VALUES ('143', '212', '1400W/2000W', '1', '\0');
INSERT INTO `productdetails` VALUES ('144', '14', '	260 x 131 x 500mm.', '1', '');
INSERT INTO `productdetails` VALUES ('145', '1', 'Kangaroo', '1', '\0');
INSERT INTO `productdetails` VALUES ('146', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('147', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('148', '209', 'Đèn sưởi', '1', '\0');
INSERT INTO `productdetails` VALUES ('149', '212', '400W, 800W, 1200W', '1', '\0');
INSERT INTO `productdetails` VALUES ('150', '14', '	260 x 131 x 500mm.', '1', '\0');
INSERT INTO `productdetails` VALUES ('151', '1', 'Sunhouse', '1', '\0');
INSERT INTO `productdetails` VALUES ('152', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('153', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('154', '209', 'Sưởi điện hông ngoạ', '1', '\0');
INSERT INTO `productdetails` VALUES ('155', '212', '400/800W', '1', '\0');
INSERT INTO `productdetails` VALUES ('156', '14', '400x185x360mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('157', '1', 'KORIHOME', '1', '\0');
INSERT INTO `productdetails` VALUES ('158', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('159', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('160', '209', 'Quạt sưởi', '1', '\0');
INSERT INTO `productdetails` VALUES ('161', '212', '1600 - 2500W', '1', '\0');
INSERT INTO `productdetails` VALUES ('162', '14', '320x1130mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('163', '1', 'Sunhouse', '1', '');
INSERT INTO `productdetails` VALUES ('164', '2', 'Trung Quốc', '1', '');
INSERT INTO `productdetails` VALUES ('165', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('166', '209', '	Đèn sưởi nhà tắm', '1', '');
INSERT INTO `productdetails` VALUES ('167', '212', '825W', '1', '');
INSERT INTO `productdetails` VALUES ('168', '14', '560 x 270 x 260mm', '1', '');
INSERT INTO `productdetails` VALUES ('169', '1', 'Kangaroo', '1', '\0');
INSERT INTO `productdetails` VALUES ('170', '2', 'Chính hãng', '1', '');
INSERT INTO `productdetails` VALUES ('171', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('172', '209', '	Đèn sưởi', '1', '\0');
INSERT INTO `productdetails` VALUES ('173', '212', '400W, 800W, 1200W', '1', '');
INSERT INTO `productdetails` VALUES ('174', '14', '385 x 180 x 630mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('175', '1', 'Kangaroo', '1', '');
INSERT INTO `productdetails` VALUES ('176', '2', 'Chính hãng', '1', '');
INSERT INTO `productdetails` VALUES ('177', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('178', '209', 'Đèn sưởi', '1', '\0');
INSERT INTO `productdetails` VALUES ('179', '212', '400W, 800W, 1200W', '1', '');
INSERT INTO `productdetails` VALUES ('180', '14', '360 x 150 x 450mm', '1', '');
INSERT INTO `productdetails` VALUES ('181', '1', 'E-Scooter', '1', '\0');
INSERT INTO `productdetails` VALUES ('182', '2', 'Chính hãng', '1', '');
INSERT INTO `productdetails` VALUES ('183', '195', '3 năm', '1', '\0');
INSERT INTO `productdetails` VALUES ('184', '196', '500W', '1', '');
INSERT INTO `productdetails` VALUES ('185', '197', '140kg', '1', '\0');
INSERT INTO `productdetails` VALUES ('186', '42', '46kg', '1', '');
INSERT INTO `productdetails` VALUES ('187', '1', 'Anbico', '1', '\0');
INSERT INTO `productdetails` VALUES ('188', '2', 'Việt Nam', '1', '');
INSERT INTO `productdetails` VALUES ('189', '195', '36 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('190', '196', '800W', '1', '');
INSERT INTO `productdetails` VALUES ('191', '197', '180 kg', '1', '');
INSERT INTO `productdetails` VALUES ('192', '42', '85 kg', '1', '\0');
INSERT INTO `productdetails` VALUES ('193', '1', 'NIJIA', '1', '');
INSERT INTO `productdetails` VALUES ('194', '2', 'Nhập Khẩu', '1', '');
INSERT INTO `productdetails` VALUES ('195', '196', '500w 48v', '1', '\0');
INSERT INTO `productdetails` VALUES ('196', '197', '140kg', '1', '');
INSERT INTO `productdetails` VALUES ('197', '42', '46kg', '1', '');
INSERT INTO `productdetails` VALUES ('198', '198', '50-60km', '1', '');
INSERT INTO `productdetails` VALUES ('199', '1', 'NIJIA', '1', '');
INSERT INTO `productdetails` VALUES ('200', '2', 'Nhập Khẩu', '1', '\0');
INSERT INTO `productdetails` VALUES ('201', '196', '500W 48v', '1', '');
INSERT INTO `productdetails` VALUES ('202', '197', '140Kg', '1', '\0');
INSERT INTO `productdetails` VALUES ('203', '42', '46kg', '1', '\0');
INSERT INTO `productdetails` VALUES ('204', '198', '50-60km', '1', '');
INSERT INTO `productdetails` VALUES ('205', '1', 'GIANT', '1', '\0');
INSERT INTO `productdetails` VALUES ('206', '2', 'Nhập Khẩu', '1', '');
INSERT INTO `productdetails` VALUES ('207', '196', '500W 48v', '1', '\0');
INSERT INTO `productdetails` VALUES ('208', '197', '140Kg', '1', '');
INSERT INTO `productdetails` VALUES ('209', '42', '60kg', '1', '\0');
INSERT INTO `productdetails` VALUES ('210', '198', '50-60km', '1', '');
INSERT INTO `productdetails` VALUES ('211', '1', 'AIMA', '1', '\0');
INSERT INTO `productdetails` VALUES ('212', '2', 'Nhập Khẩu', '1', '\0');
INSERT INTO `productdetails` VALUES ('213', '196', '36 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('214', '197', 'BOSCH 350W', '1', '\0');
INSERT INTO `productdetails` VALUES ('215', '42', '120kg', '1', '');
INSERT INTO `productdetails` VALUES ('216', '198', '40kg', '1', '');
INSERT INTO `productdetails` VALUES ('217', '217', '2 chiều', '1', '\0');
INSERT INTO `productdetails` VALUES ('218', '119', '12.000 BTU', '1', '');
INSERT INTO `productdetails` VALUES ('219', '218', '	Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('220', '219', '15-20m2', '1', '');
INSERT INTO `productdetails` VALUES ('221', '220', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('222', '1', 'Sony', '1', '');
INSERT INTO `productdetails` VALUES ('223', '2', 'Chính hãng', '1', '');
INSERT INTO `productdetails` VALUES ('224', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('225', '13', 'Nhựa', '1', '');
INSERT INTO `productdetails` VALUES ('226', '1', 'MB', '1', '');
INSERT INTO `productdetails` VALUES ('227', '2', 'Việt Nam', '1', '');
INSERT INTO `productdetails` VALUES ('228', '3', '12 Tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('229', '13', 'Sắt Sơn Tĩnh Điện', '1', '');
INSERT INTO `productdetails` VALUES ('230', '42', 'Trọng Lượng Tối Đa Dành Cho Ti Vi 40kg', '1', '\0');
INSERT INTO `productdetails` VALUES ('231', '14', '45 x 60 x 60 cm', '1', '');
INSERT INTO `productdetails` VALUES ('232', '6', 'Intel', '1', '\0');
INSERT INTO `productdetails` VALUES ('233', '223', 'Core i3', '1', '');
INSERT INTO `productdetails` VALUES ('234', '224', '4005U', '1', '\0');
INSERT INTO `productdetails` VALUES ('235', '49', 'Intel Chipset\r\n', '1', '');
INSERT INTO `productdetails` VALUES ('236', '87', '1600 Mhz', '1', '\0');
INSERT INTO `productdetails` VALUES ('237', '225', '4 GB', '1', '');
INSERT INTO `productdetails` VALUES ('238', '226', 'DDR3L', '1', '\0');
INSERT INTO `productdetails` VALUES ('239', '124', 'HDD', '1', '');
INSERT INTO `productdetails` VALUES ('240', '227', '500 GB', '1', '');
INSERT INTO `productdetails` VALUES ('241', '18', '14.1 inch', '1', '\0');
INSERT INTO `productdetails` VALUES ('242', '10', '1366 x 768 pixels', '1', '');
INSERT INTO `productdetails` VALUES ('243', '228', 'LED HD', '1', '\0');
INSERT INTO `productdetails` VALUES ('244', '7', 'Intel Graphics HD 4400', '1', '');
INSERT INTO `productdetails` VALUES ('245', '229', 'Chia sẻ', '1', '\0');
INSERT INTO `productdetails` VALUES ('246', '88', 'Tích hợp', '1', '\0');
INSERT INTO `productdetails` VALUES ('247', '230', '2.0', '1', '');
INSERT INTO `productdetails` VALUES ('248', '231', 'Sonic master', '1', '\0');
INSERT INTO `productdetails` VALUES ('249', '232', 'Combo Microphone & Headphone', '1', '');
INSERT INTO `productdetails` VALUES ('250', '89', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('251', '233', 'DVDRW', '1', '');
INSERT INTO `productdetails` VALUES ('252', '90', 'HDMI, BT4.0, USB3.0, CARD READER', '1', '');
INSERT INTO `productdetails` VALUES ('253', '91', 'Ice Cool, Instant On', '1', '\0');
INSERT INTO `productdetails` VALUES ('254', '234', '10 /100 /1000 Mbps', '1', '');
INSERT INTO `productdetails` VALUES ('255', '57', '802.11 b/g/n', '1', '\0');
INSERT INTO `productdetails` VALUES ('256', '235', 'Bluetooth v4.0', '1', '');
INSERT INTO `productdetails` VALUES ('257', '92', 'Có', '1', '');
INSERT INTO `productdetails` VALUES ('258', '93', 'SD, SDHC, SDXC', '1', '\0');
INSERT INTO `productdetails` VALUES ('259', '94', '1.3MP', '1', '');
INSERT INTO `productdetails` VALUES ('260', '232', 'HD Webcam', '1', '\0');
INSERT INTO `productdetails` VALUES ('261', '236', '2 cell', '1', '\0');
INSERT INTO `productdetails` VALUES ('262', '95', '2 - 3 giờ', '1', '');
INSERT INTO `productdetails` VALUES ('263', '237', 'Free Dos', '1', '\0');
INSERT INTO `productdetails` VALUES ('264', '98', '348mm', '1', '');
INSERT INTO `productdetails` VALUES ('265', '99', '241 mm', '1', '');
INSERT INTO `productdetails` VALUES ('266', '100', '31.7 mm\r\n', '1', '\0');
INSERT INTO `productdetails` VALUES ('267', '42', '2.15KG', '1', '');
INSERT INTO `productdetails` VALUES ('268', '1', 'Asus', '1', '\0');
INSERT INTO `productdetails` VALUES ('269', '2', 'Chính hãng', '1', '');
INSERT INTO `productdetails` VALUES ('270', '3', '24 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('271', '6', 'Intel', '1', '\0');
INSERT INTO `productdetails` VALUES ('272', '223', 'Core i5', '1', '\0');
INSERT INTO `productdetails` VALUES ('273', '224', '5200U', '1', '\0');
INSERT INTO `productdetails` VALUES ('274', '40', '2.2Ghz', '1', '\0');
INSERT INTO `productdetails` VALUES ('275', '238', '4MB', '1', '\0');
INSERT INTO `productdetails` VALUES ('276', '49', 'Intel HM8 Series Express Chipset', '1', '\0');
INSERT INTO `productdetails` VALUES ('277', '87', '1600 MHz', '1', '\0');
INSERT INTO `productdetails` VALUES ('278', '225', '4Gb', '1', '');
INSERT INTO `productdetails` VALUES ('279', '226', 'DDR3', '1', '\0');
INSERT INTO `productdetails` VALUES ('280', '86', 'HDD', '1', '\0');
INSERT INTO `productdetails` VALUES ('281', '227', '500 GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('282', '18', '15.6 inch', '1', '\0');
INSERT INTO `productdetails` VALUES ('283', '10', '1366 x 768 pixels', '1', '');
INSERT INTO `productdetails` VALUES ('284', '228', 'HD BrightView LED-backlit', '1', '\0');
INSERT INTO `productdetails` VALUES ('285', '7', 'NVIDIA Geforce GT930M', '1', '');
INSERT INTO `productdetails` VALUES ('286', '229', '2GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('287', '88', 'Card rời', '1', '\0');
INSERT INTO `productdetails` VALUES ('288', '230', '2.0', '1', '\0');
INSERT INTO `productdetails` VALUES ('289', '231', 'Sonic Master', '1', '\0');
INSERT INTO `productdetails` VALUES ('290', '89', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('291', '233', 'DVD RW', '1', '\0');
INSERT INTO `productdetails` VALUES ('292', '90', 'USB 3.0, USB 2.0, HDMI, VGA', '1', '');
INSERT INTO `productdetails` VALUES ('293', '234', '10/100Mbps', '1', '');
INSERT INTO `productdetails` VALUES ('294', '57', '802 11a/b/g/n', '1', '\0');
INSERT INTO `productdetails` VALUES ('295', '236', '4 Cell', '1', '');
INSERT INTO `productdetails` VALUES ('296', '237', 'Free Dos', '1', '');
INSERT INTO `productdetails` VALUES ('297', '98', '328mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('298', '99', '256 mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('299', '100', '25.8 mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('300', '1', 'Asus', '1', '\0');
INSERT INTO `productdetails` VALUES ('301', '2', 'Trung Quốc', '1', '\0');
INSERT INTO `productdetails` VALUES ('302', '3', '24 Tháng', '1', '');
INSERT INTO `productdetails` VALUES ('303', '6', 'Intel', '1', '\0');
INSERT INTO `productdetails` VALUES ('304', '223', 'Celeron', '1', '');
INSERT INTO `productdetails` VALUES ('305', '224', 'N2840', '1', '\0');
INSERT INTO `productdetails` VALUES ('306', '225', '2GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('307', '226', 'DDr3', '1', '\0');
INSERT INTO `productdetails` VALUES ('308', '87', '1333MHz', '1', '\0');
INSERT INTO `productdetails` VALUES ('309', '86', 'HDD', '1', '');
INSERT INTO `productdetails` VALUES ('310', '227', '500GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('311', '18', '14 inch', '1', '\0');
INSERT INTO `productdetails` VALUES ('312', '10', '1366x768 pixels', '1', '');
INSERT INTO `productdetails` VALUES ('313', '228', 'HD LED', '1', '\0');
INSERT INTO `productdetails` VALUES ('314', '7', 'Intel HD Graphic', '1', '\0');
INSERT INTO `productdetails` VALUES ('315', '229', 'Chia sẻ', '1', '');
INSERT INTO `productdetails` VALUES ('316', '88', 'On board', '1', '\0');
INSERT INTO `productdetails` VALUES ('317', '230', '2.0', '1', '');
INSERT INTO `productdetails` VALUES ('318', '90', 'USB 3.0, USB 2.0, LAN, HDMI, SD', '1', '\0');
INSERT INTO `productdetails` VALUES ('319', '234', '10/100 Mbps', '1', '\0');
INSERT INTO `productdetails` VALUES ('320', '57', '802.11b/g/n', '1', '\0');
INSERT INTO `productdetails` VALUES ('321', '235', 'Bluetooth v4.0', '1', '\0');
INSERT INTO `productdetails` VALUES ('322', '92', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('323', '93', 'SD, SDHC, SDXC', '1', '\0');
INSERT INTO `productdetails` VALUES ('324', '237', 'Dos', '1', '\0');
INSERT INTO `productdetails` VALUES ('325', '98', '340mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('326', '99', '237.8mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('327', '100', '20.2mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('328', '42', '1.7kg', '1', '\0');
INSERT INTO `productdetails` VALUES ('329', '1', 'Lenovo', '1', '');
INSERT INTO `productdetails` VALUES ('330', '2', 'Trung Quốc', '1', '\0');
INSERT INTO `productdetails` VALUES ('331', '3', '12 Tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('332', '6', 'Intel', '1', '');
INSERT INTO `productdetails` VALUES ('333', '223', 'Celeron', '1', '\0');
INSERT INTO `productdetails` VALUES ('334', '224', 'N2840', '1', '\0');
INSERT INTO `productdetails` VALUES ('335', '49', 'Intel® HM Express Chipset', '1', '\0');
INSERT INTO `productdetails` VALUES ('336', '87', '1333 MHz', '1', '\0');
INSERT INTO `productdetails` VALUES ('337', '239', '8 GB', '1', '');
INSERT INTO `productdetails` VALUES ('338', '225', '2 GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('339', '226', 'DDR3L (1 khe RAM)', '1', '\0');
INSERT INTO `productdetails` VALUES ('340', '86', 'HDD', '1', '');
INSERT INTO `productdetails` VALUES ('341', '227', '500 GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('342', '18', '14.0 inch', '1', '\0');
INSERT INTO `productdetails` VALUES ('343', '10', 'HD (1366 x 768 pixels)', '1', '\0');
INSERT INTO `productdetails` VALUES ('344', '228', 'HD LED Backlight', '1', '\0');
INSERT INTO `productdetails` VALUES ('345', '7', 'Intel® HD Graphics', '1', '');
INSERT INTO `productdetails` VALUES ('346', '229', 'Share', '1', '\0');
INSERT INTO `productdetails` VALUES ('347', '88', 'Tích hợp', '1', '\0');
INSERT INTO `productdetails` VALUES ('348', '230', '2.0', '1', '\0');
INSERT INTO `productdetails` VALUES ('349', '231', 'SonicMaster, Audio Wizard', '1', '\0');
INSERT INTO `productdetails` VALUES ('350', '232', 'Combo Microphone & Headphone', '1', '');
INSERT INTO `productdetails` VALUES ('351', '89', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('352', '233', 'DVD RW', '1', '\0');
INSERT INTO `productdetails` VALUES ('353', '90', 'HDMI, LAN (RJ45), USB 2.0, USB 3.0, VGA (D-Sub)', '1', '\0');
INSERT INTO `productdetails` VALUES ('354', '91', 'Instant On, Ice Cool', '1', '');
INSERT INTO `productdetails` VALUES ('355', '234', '10/100 Mbps', '1', '\0');
INSERT INTO `productdetails` VALUES ('356', '57', '802.11b/g/n', '1', '');
INSERT INTO `productdetails` VALUES ('357', '235', 'Bluetooth v4.0', '1', '\0');
INSERT INTO `productdetails` VALUES ('358', '92', 'Có', '1', '');
INSERT INTO `productdetails` VALUES ('359', '93', 'SD, SDHC, SDXC', '1', '\0');
INSERT INTO `productdetails` VALUES ('360', '94', '0.3 MP', '1', '');
INSERT INTO `productdetails` VALUES ('361', '232', 'VGA Webcam', '1', '');
INSERT INTO `productdetails` VALUES ('362', '236', 'Li-Ion 2 cell', '1', '\0');
INSERT INTO `productdetails` VALUES ('363', '95', '2 -3 giờ', '1', '\0');
INSERT INTO `productdetails` VALUES ('364', '237', 'Free Dos', '1', '\0');
INSERT INTO `productdetails` VALUES ('365', '98', '348mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('366', '99', '242mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('367', '100', '25.3mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('368', '42', '2.0kg', '1', '\0');
INSERT INTO `productdetails` VALUES ('369', '1', 'Asus', '1', '\0');
INSERT INTO `productdetails` VALUES ('370', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('371', '3', '24 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('372', '6', 'Intel', '1', '');
INSERT INTO `productdetails` VALUES ('373', '223', 'Broadwell i5', '1', '\0');
INSERT INTO `productdetails` VALUES ('374', '224', '5200U', '1', '');
INSERT INTO `productdetails` VALUES ('375', '49', 'Mobile Intel Express Chipse', '1', '\0');
INSERT INTO `productdetails` VALUES ('376', '87', '1600 Mhz', '1', '\0');
INSERT INTO `productdetails` VALUES ('377', '239', '8 GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('378', '225', '4 GB', '1', '');
INSERT INTO `productdetails` VALUES ('379', '226', 'DDR3', '1', '\0');
INSERT INTO `productdetails` VALUES ('380', '86', 'HDD', '1', '\0');
INSERT INTO `productdetails` VALUES ('381', '227', '500 GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('382', '18', '15.6 inch', '1', '\0');
INSERT INTO `productdetails` VALUES ('383', '10', '1366 x 768 pixels', '1', '\0');
INSERT INTO `productdetails` VALUES ('384', '228', 'HD LED', '1', '');
INSERT INTO `productdetails` VALUES ('385', '7', 'NVIDIA GeForce 820M', '1', '');
INSERT INTO `productdetails` VALUES ('386', '229', '2 GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('387', '88', 'Card rời', '1', '\0');
INSERT INTO `productdetails` VALUES ('388', '230', '2.0', '1', '');
INSERT INTO `productdetails` VALUES ('389', '231', 'Waves MaxxAudio®', '1', '\0');
INSERT INTO `productdetails` VALUES ('390', '232', 'Combo Microphone & Headphone', '1', '');
INSERT INTO `productdetails` VALUES ('391', '90', 'USB 3.0, HDMI, BT4.0', '1', '\0');
INSERT INTO `productdetails` VALUES ('392', '234', '10 /100 /1000 Mbps', '1', '');
INSERT INTO `productdetails` VALUES ('393', '57', '802.11 b/g/n', '1', '\0');
INSERT INTO `productdetails` VALUES ('394', '235', 'Bluetooth v4.0', '1', '');
INSERT INTO `productdetails` VALUES ('395', '92', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('396', '93', 'SD', '1', '');
INSERT INTO `productdetails` VALUES ('397', '94', '1.0 MP', '1', '');
INSERT INTO `productdetails` VALUES ('398', '232', 'HD Webcam', '1', '');
INSERT INTO `productdetails` VALUES ('399', '236', '4 Cell', '1', '');
INSERT INTO `productdetails` VALUES ('400', '95', '2 - 3 giờ', '1', '');
INSERT INTO `productdetails` VALUES ('401', '237', 'Free Dos', '1', '');
INSERT INTO `productdetails` VALUES ('402', '98', '380 mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('403', '99', '260 mm', '1', '');
INSERT INTO `productdetails` VALUES ('404', '100', '21.7 mm', '1', '');
INSERT INTO `productdetails` VALUES ('405', '42', '2.3Kg', '1', '');
INSERT INTO `productdetails` VALUES ('406', '1', 'Dell', '1', '');
INSERT INTO `productdetails` VALUES ('407', '2', 'Chính hãng', '1', '');
INSERT INTO `productdetails` VALUES ('408', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('409', '6', 'Intel', '1', '');
INSERT INTO `productdetails` VALUES ('410', '223', 'Core i3', '1', '');
INSERT INTO `productdetails` VALUES ('411', '224', '5005U', '1', '\0');
INSERT INTO `productdetails` VALUES ('412', '49', 'Intel Chipset', '1', '');
INSERT INTO `productdetails` VALUES ('413', '87', '1600 Mhz', '1', '');
INSERT INTO `productdetails` VALUES ('414', '225', '4GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('415', '226', 'DDR3', '1', '');
INSERT INTO `productdetails` VALUES ('416', '86', 'HDD', '1', '\0');
INSERT INTO `productdetails` VALUES ('417', '227', '500 GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('418', '18', '15.6 inch', '1', '\0');
INSERT INTO `productdetails` VALUES ('419', '10', '1366 x 768 pixels', '1', '\0');
INSERT INTO `productdetails` VALUES ('420', '228', 'HD LED', '1', '\0');
INSERT INTO `productdetails` VALUES ('421', '7', 'Intel HD Graphics', '1', '\0');
INSERT INTO `productdetails` VALUES ('422', '229', 'Chia sẻ', '1', '\0');
INSERT INTO `productdetails` VALUES ('423', '88', 'Tích hợp', '1', '\0');
INSERT INTO `productdetails` VALUES ('424', '230', '2.0', '1', '\0');
INSERT INTO `productdetails` VALUES ('425', '231', 'Dolby Advanced Audio v2', '1', '\0');
INSERT INTO `productdetails` VALUES ('426', '232', 'Combo Microphone & Headphone', '1', '\0');
INSERT INTO `productdetails` VALUES ('427', '89', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('428', '233', 'DVDRW', '1', '\0');
INSERT INTO `productdetails` VALUES ('429', '90', 'USB 3.0, HDMI, VGA', '1', '\0');
INSERT INTO `productdetails` VALUES ('430', '234', '10/100/1000 Mbps', '1', '\0');
INSERT INTO `productdetails` VALUES ('431', '57', '802.11 b/g/n', '1', '\0');
INSERT INTO `productdetails` VALUES ('432', '235', 'Bluetooth v4.0', '1', '\0');
INSERT INTO `productdetails` VALUES ('433', '92', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('434', '93', 'SD/MMC', '1', '');
INSERT INTO `productdetails` VALUES ('435', '94', '720P HD Webcam', '1', '');
INSERT INTO `productdetails` VALUES ('436', '232', 'HD Webcam', '1', '\0');
INSERT INTO `productdetails` VALUES ('437', '236', '4 Cell', '1', '');
INSERT INTO `productdetails` VALUES ('438', '95', '2 - 3 giờ', '1', '');
INSERT INTO `productdetails` VALUES ('439', '237', 'Free Dos', '1', '');
INSERT INTO `productdetails` VALUES ('440', '98', '378mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('441', '99', '265mm', '1', '');
INSERT INTO `productdetails` VALUES ('442', '100', '22.6mm', '1', '');
INSERT INTO `productdetails` VALUES ('443', '42', '2,3kg', '1', '\0');
INSERT INTO `productdetails` VALUES ('444', '1', 'Lenovo', '1', '');
INSERT INTO `productdetails` VALUES ('445', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('446', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('447', '6', 'Intel', '1', '');
INSERT INTO `productdetails` VALUES ('448', '223', 'Broadwell i5', '1', '\0');
INSERT INTO `productdetails` VALUES ('449', '224', '5250U', '1', '\0');
INSERT INTO `productdetails` VALUES ('450', '49', 'Intel Chipset', '1', '');
INSERT INTO `productdetails` VALUES ('451', '87', '1600 Mhz', '1', '');
INSERT INTO `productdetails` VALUES ('452', '239', '8 GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('453', '225', '4 GB', '1', '');
INSERT INTO `productdetails` VALUES ('454', '226', 'DDR3L', '1', '\0');
INSERT INTO `productdetails` VALUES ('455', '86', 'HDD', '1', '');
INSERT INTO `productdetails` VALUES ('456', '227', '500 GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('457', '18', '15.6 inch', '1', '');
INSERT INTO `productdetails` VALUES ('458', '10', '1366 x 768 pixels', '1', '\0');
INSERT INTO `productdetails` VALUES ('459', '228', 'HD LED', '1', '');
INSERT INTO `productdetails` VALUES ('460', '49', 'NVIDIA GeForce GT 920M', '1', '\0');
INSERT INTO `productdetails` VALUES ('461', '229', '2GB', '1', '');
INSERT INTO `productdetails` VALUES ('462', '88', 'Card rời', '1', '');
INSERT INTO `productdetails` VALUES ('463', '230', '2.0', '1', '\0');
INSERT INTO `productdetails` VALUES ('464', '231', 'Maxx Audio', '1', '\0');
INSERT INTO `productdetails` VALUES ('465', '232', 'Combo Microphone & Headphone', '1', '\0');
INSERT INTO `productdetails` VALUES ('466', '89', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('467', '233', 'DVDRW', '1', '\0');
INSERT INTO `productdetails` VALUES ('468', '90', 'USB 3.0, HDMI, BT4.0', '1', '\0');
INSERT INTO `productdetails` VALUES ('469', '234', '10/100 Mbps', '1', '\0');
INSERT INTO `productdetails` VALUES ('470', '57', '802.11 b/g/n', '1', '');
INSERT INTO `productdetails` VALUES ('471', '235', 'Bluetooth v4.0', '1', '\0');
INSERT INTO `productdetails` VALUES ('472', '92', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('473', '93', 'SD, SDHC, SD3.0, MS, MS Pro', '1', '\0');
INSERT INTO `productdetails` VALUES ('474', '94', '720P', '1', '\0');
INSERT INTO `productdetails` VALUES ('475', '232', 'HD Webcam', '1', '');
INSERT INTO `productdetails` VALUES ('476', '236', '4 Cells', '1', '\0');
INSERT INTO `productdetails` VALUES ('477', '95', '2 - 3 giờ', '1', '');
INSERT INTO `productdetails` VALUES ('478', '237', 'Windows 8.1', '1', '\0');
INSERT INTO `productdetails` VALUES ('479', '98', '380 mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('480', '99', '260.4 mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('481', '100', '23.75 mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('482', '42', '2.3Kg', '1', '\0');
INSERT INTO `productdetails` VALUES ('483', '1', 'Dell', '1', '\0');
INSERT INTO `productdetails` VALUES ('484', '2', 'Chính hãng', '1', '');
INSERT INTO `productdetails` VALUES ('485', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('486', '6', 'Intel', '1', '\0');
INSERT INTO `productdetails` VALUES ('487', '223', 'Core i3', '1', '');
INSERT INTO `productdetails` VALUES ('488', '224', '4030U', '1', '');
INSERT INTO `productdetails` VALUES ('489', '49', 'Intel Chipset', '1', '\0');
INSERT INTO `productdetails` VALUES ('490', '87', '1600 Mhz', '1', '\0');
INSERT INTO `productdetails` VALUES ('491', '239', '8GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('492', '225', '4GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('493', '226', 'DDR3', '1', '\0');
INSERT INTO `productdetails` VALUES ('494', '86', 'HDD', '1', '');
INSERT INTO `productdetails` VALUES ('495', '227', '500GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('496', '18', '15.6\"', '1', '');
INSERT INTO `productdetails` VALUES ('497', '10', '1920 x 1080 pixels', '1', '\0');
INSERT INTO `productdetails` VALUES ('498', '228', 'HD LED', '1', '\0');
INSERT INTO `productdetails` VALUES ('499', '7', 'NVIDIA® GeForce®820M', '1', '\0');
INSERT INTO `productdetails` VALUES ('500', '229', '2 GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('501', '88', 'Card rời', '1', '');
INSERT INTO `productdetails` VALUES ('502', '230', '2.0', '1', '\0');
INSERT INTO `productdetails` VALUES ('503', '231', 'High Definition (HD) Audio', '1', '\0');
INSERT INTO `productdetails` VALUES ('504', '89', 'Có', '1', '');
INSERT INTO `productdetails` VALUES ('505', '233', 'DVD RW', '1', '\0');
INSERT INTO `productdetails` VALUES ('506', '90', 'USB3.0, USB2.0,VGA, HDMI', '1', '\0');
INSERT INTO `productdetails` VALUES ('507', '234', '10/100Mbps', '1', '');
INSERT INTO `productdetails` VALUES ('508', '57', '802.11b/g/n', '1', '\0');
INSERT INTO `productdetails` VALUES ('509', '235', 'Bluetooth v4.0', '1', '');
INSERT INTO `productdetails` VALUES ('510', '92', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('511', '93', 'SD, SDHC, SDXC', '1', '\0');
INSERT INTO `productdetails` VALUES ('512', '236', '4 cell', '1', '\0');
INSERT INTO `productdetails` VALUES ('513', '95', '2 - 3 giờ', '1', '\0');
INSERT INTO `productdetails` VALUES ('514', '237', 'Free Dos', '1', '\0');
INSERT INTO `productdetails` VALUES ('515', '98', '383 mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('516', '99', '265 mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('517', '100', '25 mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('518', '42', '2.4kg', '1', '\0');
INSERT INTO `productdetails` VALUES ('519', '1', 'Lenovo', '1', '\0');
INSERT INTO `productdetails` VALUES ('520', '2', 'Trung Quốc', '1', '\0');
INSERT INTO `productdetails` VALUES ('521', '3', '24 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('522', '1', 'Asus', '1', '\0');
INSERT INTO `productdetails` VALUES ('523', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('524', '3', '24 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('525', '223', 'Pentium G3240', '1', '\0');
INSERT INTO `productdetails` VALUES ('526', '40', '3.1GHz', '1', '\0');
INSERT INTO `productdetails` VALUES ('527', '101', '3MB Cache', '1', '\0');
INSERT INTO `productdetails` VALUES ('528', '225', '2 GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('529', '226', 'DDR3', '1', '');
INSERT INTO `productdetails` VALUES ('530', '102', 'DVD-RW', '1', '\0');
INSERT INTO `productdetails` VALUES ('531', '227', '500 GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('532', '103', 'HDD', '1', '');
INSERT INTO `productdetails` VALUES ('533', '104', 'Integrated Intel HD Graphics', '1', '\0');
INSERT INTO `productdetails` VALUES ('534', '105', 'LAN', '1', '\0');
INSERT INTO `productdetails` VALUES ('535', '106', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('536', '1', 'Dell', '1', '\0');
INSERT INTO `productdetails` VALUES ('537', '2', 'Chính hãng', '1', '');
INSERT INTO `productdetails` VALUES ('538', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('539', '223', 'Core i3-4160', '1', '\0');
INSERT INTO `productdetails` VALUES ('540', '40', '3.6GHz', '1', '\0');
INSERT INTO `productdetails` VALUES ('541', '101', '3MB Cache', '1', '\0');
INSERT INTO `productdetails` VALUES ('542', '225', '4 GB', '1', '');
INSERT INTO `productdetails` VALUES ('543', '226', 'DDR3', '1', '\0');
INSERT INTO `productdetails` VALUES ('544', '102', 'DVD-RW', '1', '\0');
INSERT INTO `productdetails` VALUES ('545', '227', '500 GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('546', '103', 'HDD', '1', '');
INSERT INTO `productdetails` VALUES ('547', '104', 'Nvidia GeForce GT 705', '1', '\0');
INSERT INTO `productdetails` VALUES ('548', '105', 'LAN', '1', '');
INSERT INTO `productdetails` VALUES ('549', '107', 'High Definition Audio', '1', '\0');
INSERT INTO `productdetails` VALUES ('550', '40', '3.4GHz', '1', '');
INSERT INTO `productdetails` VALUES ('551', '1', 'HP', '1', '\0');
INSERT INTO `productdetails` VALUES ('552', '2', 'Chính hãng', '1', '');
INSERT INTO `productdetails` VALUES ('553', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('554', '223', 'Intel core i5-3470', '1', '\0');
INSERT INTO `productdetails` VALUES ('555', '101', '3MB Cache', '1', '\0');
INSERT INTO `productdetails` VALUES ('556', '225', '4 GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('557', '226', 'DDR3', '1', '\0');
INSERT INTO `productdetails` VALUES ('558', '102', 'DVD', '1', '\0');
INSERT INTO `productdetails` VALUES ('559', '227', '500 GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('560', '103', 'HDD', '1', '\0');
INSERT INTO `productdetails` VALUES ('561', '104', 'Intel HD Graphics', '1', '\0');
INSERT INTO `productdetails` VALUES ('562', '105', 'LAN', '1', '\0');
INSERT INTO `productdetails` VALUES ('563', '107', 'Onboard', '1', '\0');
INSERT INTO `productdetails` VALUES ('564', '1', 'Dell', '1', '');
INSERT INTO `productdetails` VALUES ('565', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('566', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('567', '223', 'Core i5 - 4460', '1', '\0');
INSERT INTO `productdetails` VALUES ('568', '40', '3.4Ghz', '1', '\0');
INSERT INTO `productdetails` VALUES ('569', '101', '6MB', '1', '\0');
INSERT INTO `productdetails` VALUES ('570', '225', '8 GB', '1', '');
INSERT INTO `productdetails` VALUES ('571', '226', 'DDR3', '1', '\0');
INSERT INTO `productdetails` VALUES ('572', '102', 'DVD-RW', '1', '\0');
INSERT INTO `productdetails` VALUES ('573', '227', '1TB', '1', '\0');
INSERT INTO `productdetails` VALUES ('574', '103', 'HDD', '1', '\0');
INSERT INTO `productdetails` VALUES ('575', '104', 'VGA 1G', '1', '\0');
INSERT INTO `productdetails` VALUES ('576', '105', 'LAN', '1', '');
INSERT INTO `productdetails` VALUES ('577', '106', 'Có', '1', '');
INSERT INTO `productdetails` VALUES ('578', '107', 'Onboard', '1', '\0');
INSERT INTO `productdetails` VALUES ('579', '1', 'DELL', '1', '\0');
INSERT INTO `productdetails` VALUES ('580', '2', 'Chính hãng', '1', '');
INSERT INTO `productdetails` VALUES ('581', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('582', '223', 'Core i5 - 4460', '1', '');
INSERT INTO `productdetails` VALUES ('583', '40', '3.2Ghz', '1', '\0');
INSERT INTO `productdetails` VALUES ('584', '101', '6MB', '1', '');
INSERT INTO `productdetails` VALUES ('585', '225', '4GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('586', '226', 'DDR3', '1', '');
INSERT INTO `productdetails` VALUES ('587', '102', 'DVD-RW', '1', '\0');
INSERT INTO `productdetails` VALUES ('588', '227', '500GB', '1', '');
INSERT INTO `productdetails` VALUES ('589', '103', 'HDD', '1', '');
INSERT INTO `productdetails` VALUES ('590', '105', 'LAN', '1', '');
INSERT INTO `productdetails` VALUES ('591', '107', 'Onboard', '1', '');
INSERT INTO `productdetails` VALUES ('592', '90', 'USB, VGA, DVI, RJ45', '1', '');
INSERT INTO `productdetails` VALUES ('593', '1', 'ACER', '1', '');
INSERT INTO `productdetails` VALUES ('594', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('595', '3', '12 Tháng', '1', '');
INSERT INTO `productdetails` VALUES ('596', '223', 'Core i3-4150(2*3.50)', '1', '');
INSERT INTO `productdetails` VALUES ('597', '225', '2GB', '1', '');
INSERT INTO `productdetails` VALUES ('598', '227', '500GB', '1', '');
INSERT INTO `productdetails` VALUES ('599', '102', 'DVDRW', '1', '');
INSERT INTO `productdetails` VALUES ('600', '105', 'LAN', '1', '\0');
INSERT INTO `productdetails` VALUES ('601', '107', 'ONBOARDS', '1', '');
INSERT INTO `productdetails` VALUES ('602', '1', 'Dell', '1', '');
INSERT INTO `productdetails` VALUES ('603', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('604', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('605', '223', 'Intel core i7 - 4790', '1', '');
INSERT INTO `productdetails` VALUES ('606', '40', 'Đang cập nhật', '1', '\0');
INSERT INTO `productdetails` VALUES ('607', '101', '175x360x436mm', '1', '');
INSERT INTO `productdetails` VALUES ('608', '225', '4 GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('609', '226', 'DDR3', '1', '\0');
INSERT INTO `productdetails` VALUES ('610', '102', 'DVD-RW', '1', '\0');
INSERT INTO `productdetails` VALUES ('611', '227', '500 GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('612', '103', 'Đang cập nhật', '1', '\0');
INSERT INTO `productdetails` VALUES ('613', '104', 'NVIDIA GeForce GT 705', '1', '\0');
INSERT INTO `productdetails` VALUES ('614', '105', 'LAN', '1', '\0');
INSERT INTO `productdetails` VALUES ('615', '106', 'Đang cập nhật', '1', '\0');
INSERT INTO `productdetails` VALUES ('616', '1', 'Dell', '1', '\0');
INSERT INTO `productdetails` VALUES ('617', '2', 'Trung Quốc', '1', '\0');
INSERT INTO `productdetails` VALUES ('618', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('619', '223', 'Core i3 - 4170', '1', '\0');
INSERT INTO `productdetails` VALUES ('620', '40', '3.7Ghz', '1', '\0');
INSERT INTO `productdetails` VALUES ('621', '101', '3MB', '1', '\0');
INSERT INTO `productdetails` VALUES ('622', '225', '4GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('623', '226', 'DDr3', '1', '\0');
INSERT INTO `productdetails` VALUES ('624', '102', 'DVDRW', '1', '\0');
INSERT INTO `productdetails` VALUES ('625', '227', '500GB', '1', '\0');
INSERT INTO `productdetails` VALUES ('626', '103', 'Sata', '1', '');
INSERT INTO `productdetails` VALUES ('627', '104', 'Nvidia GT 705', '1', '');
INSERT INTO `productdetails` VALUES ('628', '45', 'Dos', '1', '\0');
INSERT INTO `productdetails` VALUES ('629', '90', 'USB, HDMI, VGA', '1', '');
INSERT INTO `productdetails` VALUES ('630', '1', 'Microlab', '1', '');
INSERT INTO `productdetails` VALUES ('631', '2', 'Chính hãng', '1', '');
INSERT INTO `productdetails` VALUES ('632', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('633', '109', '>60db', '1', '');
INSERT INTO `productdetails` VALUES ('634', '26', '3', '1', '');
INSERT INTO `productdetails` VALUES ('635', '110', '16 Watt RMS', '1', '\0');
INSERT INTO `productdetails` VALUES ('636', '111', '9 Watt', '1', '');
INSERT INTO `productdetails` VALUES ('637', '112', '3.5 Watt x 2', '1', '\0');
INSERT INTO `productdetails` VALUES ('638', '113', '1 RCA', '1', '');
INSERT INTO `productdetails` VALUES ('639', '240', 'Auxilliary Stereo 3.5mm', '1', '');
INSERT INTO `productdetails` VALUES ('640', '1', 'Microlab', '1', '\0');
INSERT INTO `productdetails` VALUES ('641', '2', 'Trung Quốc', '1', '\0');
INSERT INTO `productdetails` VALUES ('642', '3', '12 Tháng', '1', '');
INSERT INTO `productdetails` VALUES ('643', '241', '2.1', '1', '');
INSERT INTO `productdetails` VALUES ('644', '109', '>85db', '1', '\0');
INSERT INTO `productdetails` VALUES ('645', '26', '3', '1', '');
INSERT INTO `productdetails` VALUES ('646', '110', '46 Watt RMS', '1', '\0');
INSERT INTO `productdetails` VALUES ('647', '111', '20 Watt', '1', '');
INSERT INTO `productdetails` VALUES ('648', '112', '13 Watt x 2', '1', '\0');
INSERT INTO `productdetails` VALUES ('649', '113', '6 RCA', '1', '');
INSERT INTO `productdetails` VALUES ('650', '240', 'Auxilliary Stereo 3.5mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('651', '1', 'Microlab', '1', '');
INSERT INTO `productdetails` VALUES ('652', '2', 'Trung Quốc', '1', '\0');
INSERT INTO `productdetails` VALUES ('653', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('654', '26', '3', '1', '');
INSERT INTO `productdetails` VALUES ('655', '110', '14W', '1', '\0');
INSERT INTO `productdetails` VALUES ('656', '111', '6W', '1', '');
INSERT INTO `productdetails` VALUES ('657', '112', '4wx2', '1', '');
INSERT INTO `productdetails` VALUES ('658', '113', '3.5mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('659', '240', 'Tần sô 30Hz ~ 20KHz', '1', '');
INSERT INTO `productdetails` VALUES ('660', '1', 'Microlab', '1', '');
INSERT INTO `productdetails` VALUES ('661', '2', 'Trung Quốc', '1', '');
INSERT INTO `productdetails` VALUES ('662', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('663', '241', '4.1', '1', '\0');
INSERT INTO `productdetails` VALUES ('664', '109', '>70db', '1', '');
INSERT INTO `productdetails` VALUES ('665', '26', '4\r\n', '1', '\0');
INSERT INTO `productdetails` VALUES ('666', '110', '30 Watt RMS', '1', '\0');
INSERT INTO `productdetails` VALUES ('667', '111', '10 watt', '1', '');
INSERT INTO `productdetails` VALUES ('668', '112', '2.5 Watt x 4', '1', '\0');
INSERT INTO `productdetails` VALUES ('669', '113', '4 RCA', '1', '');
INSERT INTO `productdetails` VALUES ('670', '240', 'Auxilliary Stereo 3.5mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('671', '1', 'Microlab', '1', '');
INSERT INTO `productdetails` VALUES ('672', '2', 'Trung Quốc', '1', '\0');
INSERT INTO `productdetails` VALUES ('673', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('674', '241', '2.1', '1', '\0');
INSERT INTO `productdetails` VALUES ('675', '109', '>60db', '1', '\0');
INSERT INTO `productdetails` VALUES ('676', '26', '2', '1', '');
INSERT INTO `productdetails` VALUES ('677', '110', '16 Watt RMS', '1', '\0');
INSERT INTO `productdetails` VALUES ('678', '111', '8 Watt', '1', '');
INSERT INTO `productdetails` VALUES ('679', '112', '4 Watt x 2', '1', '');
INSERT INTO `productdetails` VALUES ('680', '113', '1 RCA', '1', '\0');
INSERT INTO `productdetails` VALUES ('681', '240', 'Auxilliary Stereo 3.5mm', '1', '');
INSERT INTO `productdetails` VALUES ('682', '1', 'Fenda', '1', '\0');
INSERT INTO `productdetails` VALUES ('683', '2', 'Trung Quốc', '1', '');
INSERT INTO `productdetails` VALUES ('684', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('685', '109', '70dB', '1', '');
INSERT INTO `productdetails` VALUES ('686', '26', '3', '1', '');
INSERT INTO `productdetails` VALUES ('687', '110', '11w', '1', '\0');
INSERT INTO `productdetails` VALUES ('688', '111', '6w', '1', '');
INSERT INTO `productdetails` VALUES ('689', '112', '2.5w x 5', '1', '');
INSERT INTO `productdetails` VALUES ('690', '113', 'có', '1', '');
INSERT INTO `productdetails` VALUES ('691', '1', 'Fantom', '1', '\0');
INSERT INTO `productdetails` VALUES ('692', '2', 'Chính hãng', '1', '');
INSERT INTO `productdetails` VALUES ('693', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('694', '26', '3', '1', '');
INSERT INTO `productdetails` VALUES ('695', '110', '8w', '1', '\0');
INSERT INTO `productdetails` VALUES ('696', '111', '4w', '1', '\0');
INSERT INTO `productdetails` VALUES ('697', '112', '2w x 2', '1', '\0');
INSERT INTO `productdetails` VALUES ('698', '113', 'có', '1', '\0');
INSERT INTO `productdetails` VALUES ('699', '1', 'Genius', '1', '\0');
INSERT INTO `productdetails` VALUES ('700', '2', 'Trung Quốc', '1', '\0');
INSERT INTO `productdetails` VALUES ('701', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('702', '109', '80dB', '1', '');
INSERT INTO `productdetails` VALUES ('703', '26', '2', '1', '\0');
INSERT INTO `productdetails` VALUES ('704', '110', '3w', '1', '\0');
INSERT INTO `productdetails` VALUES ('705', '112', '1.5w x 2', '1', '\0');
INSERT INTO `productdetails` VALUES ('706', '113', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('707', '240', 'Jack nguồn USB', '1', '');
INSERT INTO `productdetails` VALUES ('708', '1', 'Dell', '1', '\0');
INSERT INTO `productdetails` VALUES ('709', '2', 'Chính hãng', '1', '');
INSERT INTO `productdetails` VALUES ('710', '3', '36 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('711', '242', 'Wide Screen', '1', '\0');
INSERT INTO `productdetails` VALUES ('712', '138', '1366x768', '1', '\0');
INSERT INTO `productdetails` VALUES ('713', '23', '90° (H) /60° (V)', '1', '\0');
INSERT INTO `productdetails` VALUES ('714', '114', '0.277mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('715', '115', '16.7 triệu màu', '1', '\0');
INSERT INTO `productdetails` VALUES ('716', '243', '200nits', '1', '');
INSERT INTO `productdetails` VALUES ('717', '21', '600:01:00', '1', '');
INSERT INTO `productdetails` VALUES ('718', '1', 'Dell', '1', '\0');
INSERT INTO `productdetails` VALUES ('719', '2', 'Chính hãng ', '1', '');
INSERT INTO `productdetails` VALUES ('720', '3', '36 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('721', '242', 'LED', '1', '\0');
INSERT INTO `productdetails` VALUES ('722', '138', '1600x900', '1', '\0');
INSERT INTO `productdetails` VALUES ('723', '23', '170° (H) /160° (V)', '1', '\0');
INSERT INTO `productdetails` VALUES ('724', '114', '0.27mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('725', '115', '16.7 triệu màu', '1', '\0');
INSERT INTO `productdetails` VALUES ('726', '243', '250cd/m2', '1', '');
INSERT INTO `productdetails` VALUES ('727', '21', '1.000:1', '1', '\0');
INSERT INTO `productdetails` VALUES ('728', '1', 'Dell', '1', '');
INSERT INTO `productdetails` VALUES ('729', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('730', '3', '36 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('731', '242', 'LED', '1', '\0');
INSERT INTO `productdetails` VALUES ('732', '138', '1920 x 1080 ( Full HD )', '1', '\0');
INSERT INTO `productdetails` VALUES ('733', '23', '178° /178°', '1', '');
INSERT INTO `productdetails` VALUES ('734', '114', '0.265 mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('735', '115', '16.7 triệu màu', '1', '\0');
INSERT INTO `productdetails` VALUES ('736', '243', '300nits', '1', '');
INSERT INTO `productdetails` VALUES ('737', '21', 'Mega', '1', '\0');
INSERT INTO `productdetails` VALUES ('738', '1', 'LG', '1', '\0');
INSERT INTO `productdetails` VALUES ('739', '2', 'Chính Hãng', '1', '');
INSERT INTO `productdetails` VALUES ('740', '3', '24 Tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('741', '242', 'LED, Panel IPS', '1', '');
INSERT INTO `productdetails` VALUES ('742', '138', '1920 x 1080', '1', '\0');
INSERT INTO `productdetails` VALUES ('743', '23', '178/178', '1', '\0');
INSERT INTO `productdetails` VALUES ('744', '115', '16,7 Triệu Màu', '1', '\0');
INSERT INTO `productdetails` VALUES ('745', '243', '250nits', '1', '\0');
INSERT INTO `productdetails` VALUES ('746', '21', '10.000.000/1', '1', '\0');
INSERT INTO `productdetails` VALUES ('747', '1', 'Dell', '1', '\0');
INSERT INTO `productdetails` VALUES ('748', '2', 'Chính Hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('749', '3', '36 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('750', '242', 'LED IPS', '1', '\0');
INSERT INTO `productdetails` VALUES ('751', '138', '1920x1080', '1', '\0');
INSERT INTO `productdetails` VALUES ('752', '23', '178 °/ 178 °', '1', '\0');
INSERT INTO `productdetails` VALUES ('753', '114', '0.248mm', '1', '');
INSERT INTO `productdetails` VALUES ('754', '115', '16.7 triệu màu', '1', '\0');
INSERT INTO `productdetails` VALUES ('755', '243', '250nits', '1', '\0');
INSERT INTO `productdetails` VALUES ('756', '21', '1.000:1, 2Million (Max) (Dynamic Contrast Ratio)', '1', '');
INSERT INTO `productdetails` VALUES ('757', '1', 'Dell', '1', '\0');
INSERT INTO `productdetails` VALUES ('758', '2', 'Trung Quốc', '1', '\0');
INSERT INTO `productdetails` VALUES ('759', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('760', '242', 'LED Wide Screen', '1', '\0');
INSERT INTO `productdetails` VALUES ('761', '138', '1920x1080 pixels', '1', '');
INSERT INTO `productdetails` VALUES ('762', '23', '178/178', '1', '\0');
INSERT INTO `productdetails` VALUES ('763', '115', '16.7 triệu màu', '1', '\0');
INSERT INTO `productdetails` VALUES ('764', '243', '250 nits', '1', '');
INSERT INTO `productdetails` VALUES ('765', '21', '1,000:1', '1', '\0');
INSERT INTO `productdetails` VALUES ('766', '1', 'Samsung', '1', '\0');
INSERT INTO `productdetails` VALUES ('767', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('768', '3', '24 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('769', '242', 'LED', '1', '');
INSERT INTO `productdetails` VALUES ('770', '138', '1366 x 768', '1', '\0');
INSERT INTO `productdetails` VALUES ('771', '23', '90°/65°', '1', '\0');
INSERT INTO `productdetails` VALUES ('772', '115', '16.7 triệu màu', '1', '\0');
INSERT INTO `productdetails` VALUES ('773', '243', '200nits', '1', '\0');
INSERT INTO `productdetails` VALUES ('774', '21', '600:1', '1', '');
INSERT INTO `productdetails` VALUES ('775', '1', 'ASUS', '1', '\0');
INSERT INTO `productdetails` VALUES ('776', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('777', '3', '36 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('778', '242', 'LED', '1', '\0');
INSERT INTO `productdetails` VALUES ('779', '138', '1600x900 Pixels', '1', '\0');
INSERT INTO `productdetails` VALUES ('780', '23', '90/65', '1', '\0');
INSERT INTO `productdetails` VALUES ('781', '115', '16.7 triệu màu', '1', '\0');
INSERT INTO `productdetails` VALUES ('782', '243', '250nits', '1', '\0');
INSERT INTO `productdetails` VALUES ('783', '21', '100.000.000:1', '1', '');
INSERT INTO `productdetails` VALUES ('784', '1', 'Ariang', '1', '\0');
INSERT INTO `productdetails` VALUES ('785', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('786', '3', '12 Tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('787', '119', '560W', '1', '\0');
INSERT INTO `productdetails` VALUES ('788', '213', '220v-240v/50hz', '1', '');
INSERT INTO `productdetails` VALUES ('789', '118', '8', '1', '\0');
INSERT INTO `productdetails` VALUES ('790', '1', 'Jarguar Suhyoung', '1', '');
INSERT INTO `productdetails` VALUES ('791', '2', 'Nhập Khẩu Hàn Quốc', '1', '\0');
INSERT INTO `productdetails` VALUES ('792', '3', '24 Tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('793', '119', '700W', '1', '\0');
INSERT INTO `productdetails` VALUES ('794', '120', '700/2CH (4 ohm)', '1', '\0');
INSERT INTO `productdetails` VALUES ('795', '174', '220V/50Hz-60Hz', '1', '\0');
INSERT INTO `productdetails` VALUES ('796', '1', 'Paramax', '1', '\0');
INSERT INTO `productdetails` VALUES ('797', '2', 'Chính hãng', '1', '');
INSERT INTO `productdetails` VALUES ('798', '3', '24 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('799', '119', '120W / 1 kênh', '1', '\0');
INSERT INTO `productdetails` VALUES ('800', '213', 'AC 220/50Hz', '1', '');
INSERT INTO `productdetails` VALUES ('801', '174', '10Hz ~ 30kHz.', '1', '');
INSERT INTO `productdetails` VALUES ('802', '1', 'ViTek VTB', '1', '\0');
INSERT INTO `productdetails` VALUES ('803', '2', 'Việt Nam', '1', '\0');
INSERT INTO `productdetails` VALUES ('804', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('805', '119', '400W', '1', '\0');
INSERT INTO `productdetails` VALUES ('806', '213', '220VAC', '1', '\0');
INSERT INTO `productdetails` VALUES ('807', '118', '8', '1', '');
INSERT INTO `productdetails` VALUES ('808', '1', 'Paramax', '1', '\0');
INSERT INTO `productdetails` VALUES ('809', '2', 'Chính hãng', '1', '');
INSERT INTO `productdetails` VALUES ('810', '3', '24 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('811', '119', '320W ( 160W/ 1 kênh)', '1', '\0');
INSERT INTO `productdetails` VALUES ('812', '213', 'AC 220/50Hz', '1', '\0');
INSERT INTO `productdetails` VALUES ('813', '118', 'Đang cập nhật', '1', '\0');
INSERT INTO `productdetails` VALUES ('814', '1', 'AMPLY JARGUAR SUHYOUNG PA-506HI ANALOG, KARAOKE', '1', '');
INSERT INTO `productdetails` VALUES ('815', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('816', '3', '12 Tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('817', '119', '980W', '1', '');
INSERT INTO `productdetails` VALUES ('818', '213', '220v-240v/50hz', '1', '\0');
INSERT INTO `productdetails` VALUES ('819', '118', '8', '1', '\0');
INSERT INTO `productdetails` VALUES ('820', '1', 'Acnos', '1', '');
INSERT INTO `productdetails` VALUES ('821', '2', 'Việt Nam', '1', '\0');
INSERT INTO `productdetails` VALUES ('822', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('823', '119', 'Đang cập nhật', '1', '\0');
INSERT INTO `productdetails` VALUES ('824', '213', '200V / 50Hz', '1', '\0');
INSERT INTO `productdetails` VALUES ('825', '120', '180Wx02CH', '1', '\0');
INSERT INTO `productdetails` VALUES ('826', '1', 'Paramax', '1', '\0');
INSERT INTO `productdetails` VALUES ('827', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('828', '3', '24 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('829', '119', '230W/1 kênh', '1', '\0');
INSERT INTO `productdetails` VALUES ('830', '213', 'AC 220/50Hz', '1', '\0');
INSERT INTO `productdetails` VALUES ('831', '120', '230W x 1 Ch/ 4Ω', '1', '\0');
INSERT INTO `productdetails` VALUES ('832', '1', 'ACNOS', '1', '\0');
INSERT INTO `productdetails` VALUES ('833', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('834', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('835', '11', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('836', '124', 'CD,DVD,MP3,MP4,VCD', '1', '\0');
INSERT INTO `productdetails` VALUES ('837', '125', 'Có', '1', '');
INSERT INTO `productdetails` VALUES ('838', '126', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('839', '127', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('840', '128', 'Hệ thống chấm điểm chuyên nghiệp', '1', '\0');
INSERT INTO `productdetails` VALUES ('841', '244', 'Lặp lại bài vừa hát', '1', '\0');
INSERT INTO `productdetails` VALUES ('842', '1', 'HANET Electronics', '1', '');
INSERT INTO `productdetails` VALUES ('843', '2', 'Chính Hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('844', '3', '12 Tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('845', '11', 'Digital Audio Output (Optical, Coaxial)', '1', '');
INSERT INTO `productdetails` VALUES ('846', '124', 'Sử dụng ổ cứng 4TB ( 4000GB )', '1', '\0');
INSERT INTO `productdetails` VALUES ('847', '27', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('848', '126', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('849', '127', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('850', '128', 'Có', '1', '');
INSERT INTO `productdetails` VALUES ('851', '1', 'ACNOS', '1', '\0');
INSERT INTO `productdetails` VALUES ('852', '2', 'Việt Nam', '1', '\0');
INSERT INTO `productdetails` VALUES ('853', '14', '487x322 mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('854', '11', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('855', '27', 'Có', '1', '');
INSERT INTO `productdetails` VALUES ('856', '126', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('857', '127', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('858', '128', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('859', '1', 'Acnos', '1', '');
INSERT INTO `productdetails` VALUES ('860', '2', 'Việt Nam', '1', '\0');
INSERT INTO `productdetails` VALUES ('861', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('862', '11', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('863', '124', 'CD,VCD,DVD', '1', '');
INSERT INTO `productdetails` VALUES ('864', '27', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('865', '125', 'Có', '1', '');
INSERT INTO `productdetails` VALUES ('866', '126', 'Có', '1', '');
INSERT INTO `productdetails` VALUES ('867', '1', 'Musicore', '1', '\0');
INSERT INTO `productdetails` VALUES ('868', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('869', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('870', '124', 'MIDI DVD, DVD, CD, MP3, MP4, WMA,…', '1', '\0');
INSERT INTO `productdetails` VALUES ('871', '125', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('872', '126', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('873', '127', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('874', '128', 'Hệ thống chấm điểm chuyên nghiệp', '1', '\0');
INSERT INTO `productdetails` VALUES ('875', '244', 'Đặt trước đến 99 bài hát', '1', '\0');
INSERT INTO `productdetails` VALUES ('876', '1', 'Nosta', '1', '\0');
INSERT INTO `productdetails` VALUES ('877', '2', 'Hàn Quốc', '1', '');
INSERT INTO `productdetails` VALUES ('878', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('879', '11', 'MP3, WMA......', '1', '');
INSERT INTO `productdetails` VALUES ('880', '124', 'DVD/ VCD/ CD/ HDCD/ SVCD/ JPEG/ MP3', '1', '\0');
INSERT INTO `productdetails` VALUES ('881', '126', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('882', '30', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('883', '240', 'Optical, Coaxial', '1', '');
INSERT INTO `productdetails` VALUES ('884', '128', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('885', '244', 'Ghi âm giọng hát với chất lượng phòng thu chuyên nghiệp', '1', '\0');
INSERT INTO `productdetails` VALUES ('886', '1', 'HANET Electronics', '1', '\0');
INSERT INTO `productdetails` VALUES ('887', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('888', '3', '12 Tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('889', '11', 'Digital Audio Output (Optical, Coaxial)', '1', '');
INSERT INTO `productdetails` VALUES ('890', '124', 'Sử dụng ổ cứng 2TB ( 2000GB )', '1', '');
INSERT INTO `productdetails` VALUES ('891', '27', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('892', '126', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('893', '127', 'Có', '1', '');
INSERT INTO `productdetails` VALUES ('894', '128', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('895', '1', 'Musicore', '1', '');
INSERT INTO `productdetails` VALUES ('896', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('897', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('898', '124', 'MIDI DVD, DVD, CD, MP3, MP4, WMA,…', '1', '\0');
INSERT INTO `productdetails` VALUES ('899', '125', 'Có', '1', '');
INSERT INTO `productdetails` VALUES ('900', '126', 'Có', '1', '\0');
INSERT INTO `productdetails` VALUES ('901', '127', 'Có', '1', '');
INSERT INTO `productdetails` VALUES ('902', '128', 'Hệ thống chấm điểm chuyên nghiệp', '1', '');
INSERT INTO `productdetails` VALUES ('903', '244', 'Đặt trước đến 99 bài hát', '1', '');
INSERT INTO `productdetails` VALUES ('904', '1', 'JBL', '1', '');
INSERT INTO `productdetails` VALUES ('905', '2', 'Trung Quốc', '1', '');
INSERT INTO `productdetails` VALUES ('906', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('907', '129', 'Loa treo', '1', '\0');
INSERT INTO `productdetails` VALUES ('908', '26', '2', '1', '');
INSERT INTO `productdetails` VALUES ('909', '130', '86db', '1', '');
INSERT INTO `productdetails` VALUES ('910', '1', 'GUINESS', '1', '');
INSERT INTO `productdetails` VALUES ('911', '2', 'Công nghệ Hàn Quốc', '1', '');
INSERT INTO `productdetails` VALUES ('912', '3', '24 Tháng', '1', '');
INSERT INTO `productdetails` VALUES ('913', '119', '350 W', '1', '\0');
INSERT INTO `productdetails` VALUES ('914', '131', ' 6 Ohm', '1', '');
INSERT INTO `productdetails` VALUES ('915', '174', '50 Hz- 150Hz', '1', '');
INSERT INTO `productdetails` VALUES ('916', '1', 'Guinness', '1', '\0');
INSERT INTO `productdetails` VALUES ('917', '2', 'Chính hãng', '1', '');
INSERT INTO `productdetails` VALUES ('918', '245', 'Gỗ', '1', '');
INSERT INTO `productdetails` VALUES ('919', '129', 'Loa kệ', '1', '\0');
INSERT INTO `productdetails` VALUES ('920', '26', '2', '1', '\0');
INSERT INTO `productdetails` VALUES ('921', '130', '98dB/1W/M', '1', '\0');
INSERT INTO `productdetails` VALUES ('922', '1', 'JARGUAR SUHYOUNG', '1', '\0');
INSERT INTO `productdetails` VALUES ('923', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('924', '3', '24 Tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('925', '129', 'Loa kệ', '1', '');
INSERT INTO `productdetails` VALUES ('926', '26', '2', '1', '\0');
INSERT INTO `productdetails` VALUES ('927', '130', '92dB', '1', '\0');
INSERT INTO `productdetails` VALUES ('928', '1', 'JBL', '1', '\0');
INSERT INTO `productdetails` VALUES ('929', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('930', '3', '12 Tháng', '1', '');
INSERT INTO `productdetails` VALUES ('931', '245', 'Kim loại', '1', '\0');
INSERT INTO `productdetails` VALUES ('932', '129', 'Loa kệ', '1', '');
INSERT INTO `productdetails` VALUES ('933', '26', '1', '1', '\0');
INSERT INTO `productdetails` VALUES ('934', '130', '89dB', '1', '\0');
INSERT INTO `productdetails` VALUES ('935', '1', 'ViTek VTB', '1', '\0');
INSERT INTO `productdetails` VALUES ('936', '2', 'Việt Nam', '1', '\0');
INSERT INTO `productdetails` VALUES ('937', '3', '24 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('938', '245', 'Gỗ', '1', '\0');
INSERT INTO `productdetails` VALUES ('939', '129', 'Loa kệ', '1', '');
INSERT INTO `productdetails` VALUES ('940', '26', '2', '1', '');
INSERT INTO `productdetails` VALUES ('941', '130', '120 dB', '1', '\0');
INSERT INTO `productdetails` VALUES ('942', '1', 'JBL', '1', '');
INSERT INTO `productdetails` VALUES ('943', '2', 'Made in China', '1', '');
INSERT INTO `productdetails` VALUES ('944', '3', '12 Tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('945', '14', '290 x 525 x 320 mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('946', '1', 'Paramax', '1', '\0');
INSERT INTO `productdetails` VALUES ('947', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('948', '3', '24 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('949', '129', 'Loa treo', '1', '');
INSERT INTO `productdetails` VALUES ('950', '26', '2', '1', '\0');
INSERT INTO `productdetails` VALUES ('951', '130', '95 dB / 1W / 1m', '1', '');
INSERT INTO `productdetails` VALUES ('952', '1', 'Shure', '1', '\0');
INSERT INTO `productdetails` VALUES ('953', '2', 'TQ', '1', '\0');
INSERT INTO `productdetails` VALUES ('954', '1', 'Genius', '1', '\0');
INSERT INTO `productdetails` VALUES ('955', '2', 'Trung Quốc', '1', '\0');
INSERT INTO `productdetails` VALUES ('956', '3', '12 tháng', '1', '');
INSERT INTO `productdetails` VALUES ('957', '246', '174MHz – 270MHz', '1', '\0');
INSERT INTO `productdetails` VALUES ('958', '73', 'Loa đứng', '1', '\0');
INSERT INTO `productdetails` VALUES ('959', '2', 'Chính hãng', '1', '');
INSERT INTO `productdetails` VALUES ('960', '3', '1 Năm', '1', '\0');
INSERT INTO `productdetails` VALUES ('961', '247', '1 loa bass 16cm, 1 loa mid 7.7cm, 1 loa treble 2.6cm', '1', '\0');
INSERT INTO `productdetails` VALUES ('962', '248', '1 loa toàn dải 10cm', '1', '');
INSERT INTO `productdetails` VALUES ('963', '249', '2 loa toàn dải 10cm', '1', '\0');
INSERT INTO `productdetails` VALUES ('964', '250', '1 loa bass 30cm', '1', '');
INSERT INTO `productdetails` VALUES ('965', '1', 'Denon', '1', '\0');
INSERT INTO `productdetails` VALUES ('966', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('967', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('968', '251', '310W', '1', '\0');
INSERT INTO `productdetails` VALUES ('969', '73', '1 thùng + 5 loa', '1', '\0');
INSERT INTO `productdetails` VALUES ('970', '1', 'Pioneer', '1', '\0');
INSERT INTO `productdetails` VALUES ('971', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('972', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('973', '248', '280 x 130 x184 mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('974', '249', '400 x 130 x184 mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('975', '250', '280 x 905 x 253 mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('976', '1', 'Jamo', '1', '');
INSERT INTO `productdetails` VALUES ('977', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('978', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('979', '251', '500W', '1', '');
INSERT INTO `productdetails` VALUES ('980', '1', 'Jamo', '1', '\0');
INSERT INTO `productdetails` VALUES ('981', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('982', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('983', '251', '300W', '1', '\0');
INSERT INTO `productdetails` VALUES ('984', '1', 'Klipsch', '1', '');
INSERT INTO `productdetails` VALUES ('985', '2', 'Trung Quốc', '1', '\0');
INSERT INTO `productdetails` VALUES ('986', '3', '12 tháng', '1', '\0');
INSERT INTO `productdetails` VALUES ('987', '130', '89dB', '1', '');
INSERT INTO `productdetails` VALUES ('988', '251', '360', '1', '\0');
INSERT INTO `productdetails` VALUES ('989', '1', 'Jamo', '1', '\0');
INSERT INTO `productdetails` VALUES ('990', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('991', '3', '1 Năm', '1', '\0');
INSERT INTO `productdetails` VALUES ('992', '247', 'Loa main S 526 có loa treble dome 25mm, 2 loa mid/bass có đường kính 102 mm', '1', '');
INSERT INTO `productdetails` VALUES ('993', '248', 'Loa surround S 522 có 1 loa treble và 1 mid/bass đường kính 102mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('994', '249', 'Loa Centre S 52 với 1 loa treble và 2 mid/bass đường kính 102mm', '1', '\0');
INSERT INTO `productdetails` VALUES ('995', '1', 'Pioneer', '1', '\0');
INSERT INTO `productdetails` VALUES ('996', '2', 'Chính hãng', '1', '\0');
INSERT INTO `productdetails` VALUES ('997', '3', '1 Năm', '1', '');
INSERT INTO `productdetails` VALUES ('998', '247', 'Không ', '1', '\0');
INSERT INTO `productdetails` VALUES ('999', '248', 'Không ', '1', '\0');
INSERT INTO `productdetails` VALUES ('1000', '249', 'Không', '1', '\0');
INSERT INTO `productdetails` VALUES ('1001', '17', 'LED', '3', null);
INSERT INTO `productdetails` VALUES ('1002', '18', '32 inch', '3', null);
INSERT INTO `productdetails` VALUES ('1003', '10', 'HD 1280 x 720', '3', null);
INSERT INTO `productdetails` VALUES ('1004', '206', '100HZ', '3', null);
INSERT INTO `productdetails` VALUES ('1005', '19', 'Có', '3', null);
INSERT INTO `productdetails` VALUES ('1006', '207', '40 Wh', '3', null);
INSERT INTO `productdetails` VALUES ('1007', '20', '	Clear Resolution Enhancer', '3', null);
INSERT INTO `productdetails` VALUES ('1008', '23', '	178° (Phải/Trái), 178° (Lên/Xuống)', '3', null);
INSERT INTO `productdetails` VALUES ('1009', '21', '	High', '3', null);
INSERT INTO `productdetails` VALUES ('1010', '24', 'Clear Phase', '3', null);
INSERT INTO `productdetails` VALUES ('1011', '25', '5Wx2', '3', null);
INSERT INTO `productdetails` VALUES ('1012', '26', '2', '3', null);
INSERT INTO `productdetails` VALUES ('1013', '27', 'Có, 2 cổng', '3', null);
INSERT INTO `productdetails` VALUES ('1014', '28', 'Có', '3', null);
INSERT INTO `productdetails` VALUES ('1015', '29', 'Có', '3', null);
INSERT INTO `productdetails` VALUES ('1016', '30', 'Có, 1 cổng USB movies nghe nhạc, xem ảnh, xem phim', '3', null);
INSERT INTO `productdetails` VALUES ('1017', '31', '735 x 460 x 163 mm', '3', null);
INSERT INTO `productdetails` VALUES ('1018', '31', '	5. 2kg', '3', null);
INSERT INTO `productdetails` VALUES ('1019', '33', '735 x 443 x 63 (46) mm', '3', null);
INSERT INTO `productdetails` VALUES ('1020', '17', '	LED', '4', null);
INSERT INTO `productdetails` VALUES ('1021', '18', '	40 inch', '4', null);
INSERT INTO `productdetails` VALUES ('1022', '10', '1920 x 1080 pixels', '4', null);
INSERT INTO `productdetails` VALUES ('1023', '206', '100HZ', '4', null);
INSERT INTO `productdetails` VALUES ('1024', '19', 'Có', '4', null);
INSERT INTO `productdetails` VALUES ('1025', '207', '	40 W', '4', null);
INSERT INTO `productdetails` VALUES ('1026', '20', '	X-Protection PRO, Clear Resolution Enhancer', '4', null);
INSERT INTO `productdetails` VALUES ('1027', '23', '	178/178', '4', null);
INSERT INTO `productdetails` VALUES ('1028', '24', 'S-Master và Clear Phase', '4', null);
INSERT INTO `productdetails` VALUES ('1029', '25', '	10W', '4', null);
INSERT INTO `productdetails` VALUES ('1030', '26', '2', '4', null);
INSERT INTO `productdetails` VALUES ('1031', '27', 'Có', '4', null);
INSERT INTO `productdetails` VALUES ('1032', '28', 'Có', '4', null);
INSERT INTO `productdetails` VALUES ('1033', '29', 'Có', '4', null);
INSERT INTO `productdetails` VALUES ('1034', '31', '924 x 568 x 183 mm', '4', null);
INSERT INTO `productdetails` VALUES ('1035', '32', '	6.9 kg', '4', null);
INSERT INTO `productdetails` VALUES ('1036', '33', '924 x 550 x 65 mm', '4', null);
INSERT INTO `productdetails` VALUES ('1037', '17', 'LED', '5', null);
INSERT INTO `productdetails` VALUES ('1038', '18', '48 inch', '5', null);
INSERT INTO `productdetails` VALUES ('1039', '10', 'Full HD (1920 x 1080)', '5', null);
INSERT INTO `productdetails` VALUES ('1040', '206', 'Motionflow™ XR 200 Hz', '5', null);
INSERT INTO `productdetails` VALUES ('1041', '20', '	X-Reality PRO', '5', null);
INSERT INTO `productdetails` VALUES ('1042', '23', '178° (Phải/Trái), 178° (Lên/Xuống)', '5', null);
INSERT INTO `productdetails` VALUES ('1043', '24', 'Dolby Digital, Dolby Digital Plus, Dolby Pulse,S-Force Front Surround', '5', null);
INSERT INTO `productdetails` VALUES ('1044', '25', '20W', '5', null);
INSERT INTO `productdetails` VALUES ('1045', '26', '2', '5', null);
INSERT INTO `productdetails` VALUES ('1046', '57', 'Có, Tích hợp', '5', null);
INSERT INTO `productdetails` VALUES ('1047', '27', '	Có, 4 cổng', '5', null);
INSERT INTO `productdetails` VALUES ('1048', '29', 'có', '5', null);
INSERT INTO `productdetails` VALUES ('1049', '30', 'Có, 2 cổng USB movies nghe nhạc, xem ảnh, xem phim', '5', null);
INSERT INTO `productdetails` VALUES ('1050', '31', '108.9 x 67.1 x 19.5 cm', '5', null);
INSERT INTO `productdetails` VALUES ('1051', '32', '11.3 kg', '5', null);
INSERT INTO `productdetails` VALUES ('1052', '33', '108.9 x 63.2 x 5.7 cm', '5', null);
INSERT INTO `productdetails` VALUES ('1053', '17', 'LED 3D', '6', null);
INSERT INTO `productdetails` VALUES ('1054', '18', '	43 inch', '6', null);
INSERT INTO `productdetails` VALUES ('1055', '10', 'Full HD (1920 x 1080)', '6', null);
INSERT INTO `productdetails` VALUES ('1056', '206', '800 Hz', '6', null);
INSERT INTO `productdetails` VALUES ('1057', '20', '	Bộ xử lý hình ảnh X-REALITY Pro', '6', null);
INSERT INTO `productdetails` VALUES ('1058', '23', '	178/178', '6', null);
INSERT INTO `productdetails` VALUES ('1059', '24', '	S-Force Front Surround, Clear Audio +', '6', null);
INSERT INTO `productdetails` VALUES ('1060', '25', '	20 W', '6', null);
INSERT INTO `productdetails` VALUES ('1061', '26', '2', '6', null);
INSERT INTO `productdetails` VALUES ('1062', '57', 'Có', '6', null);
INSERT INTO `productdetails` VALUES ('1063', '208', 'Có', '6', null);
INSERT INTO `productdetails` VALUES ('1064', '27', 'Có', '6', null);
INSERT INTO `productdetails` VALUES ('1065', '29', 'Có', '6', null);
INSERT INTO `productdetails` VALUES ('1066', '31', '961 x 608 x 189 mm', '6', null);
INSERT INTO `productdetails` VALUES ('1067', '32', '	11.8 kg', '6', null);
INSERT INTO `productdetails` VALUES ('1068', '33', '961 x 568 x 60 mm', '6', null);
INSERT INTO `productdetails` VALUES ('1069', '17', '	LED', '7', null);
INSERT INTO `productdetails` VALUES ('1070', '18', '32 inch', '7', null);
INSERT INTO `productdetails` VALUES ('1071', '10', '	HD (1366 x 768)', '7', null);
INSERT INTO `productdetails` VALUES ('1072', '20', 'Digital Clean View', '7', null);
INSERT INTO `productdetails` VALUES ('1073', '23', '176° (Phải/Trái), 176° (Lên/Xuống)', '7', null);
INSERT INTO `productdetails` VALUES ('1074', '24', 'DTS Premium,Dolby Digital Plus', '7', null);
INSERT INTO `productdetails` VALUES ('1075', '25', '20W', '7', null);
INSERT INTO `productdetails` VALUES ('1076', '26', '2', '7', null);
INSERT INTO `productdetails` VALUES ('1077', '27', 'Có', '7', null);
INSERT INTO `productdetails` VALUES ('1078', '29', 'Có', '7', null);
INSERT INTO `productdetails` VALUES ('1079', '30', 'Có', '7', null);
INSERT INTO `productdetails` VALUES ('1080', '31', '745.4 x 461.3 x 151.1 mm', '7', null);
INSERT INTO `productdetails` VALUES ('1081', '32', '5.4 kg', '7', null);
INSERT INTO `productdetails` VALUES ('1082', '33', '	745.4 x 442.2 x 69 mm', '7', null);
INSERT INTO `productdetails` VALUES ('1083', '17', '	LED', '8', null);
INSERT INTO `productdetails` VALUES ('1084', '18', '	32\'\'', '8', null);
INSERT INTO `productdetails` VALUES ('1085', '10', 'HD (1366 x 768)', '8', null);
INSERT INTO `productdetails` VALUES ('1086', '206', 'CMR 100 Hz', '8', null);
INSERT INTO `productdetails` VALUES ('1087', '20', 'Wide Color Enhancer Plus', '8', null);
INSERT INTO `productdetails` VALUES ('1088', '23', '178° (Phải/Trái), 178° (Lên/Xuống)', '8', null);
INSERT INTO `productdetails` VALUES ('1089', '24', 'DTS Premium', '8', null);
INSERT INTO `productdetails` VALUES ('1090', '25', '10W x 2', '8', null);
INSERT INTO `productdetails` VALUES ('1091', '26', '2', '8', null);
INSERT INTO `productdetails` VALUES ('1092', '27', 'Có, 2 cổng', '8', null);
INSERT INTO `productdetails` VALUES ('1093', '28', 'Có', '8', null);
INSERT INTO `productdetails` VALUES ('1094', '29', 'Có', '8', null);
INSERT INTO `productdetails` VALUES ('1095', '30', '	Có, 2 cổng USB movies nghe nhạc, xem ảnh, xem phim', '8', null);
INSERT INTO `productdetails` VALUES ('1096', '31', '	735.9 x 481.6 x 151.1 mm', '8', null);
INSERT INTO `productdetails` VALUES ('1097', '32', '	5.4 kg', '8', null);
INSERT INTO `productdetails` VALUES ('1098', '33', '	735.9 x 440.4 x 70.0 mm', '8', null);
INSERT INTO `productdetails` VALUES ('1099', '17', 'LED', '9', null);
INSERT INTO `productdetails` VALUES ('1100', '18', '	40\'\'', '9', null);
INSERT INTO `productdetails` VALUES ('1101', '10', '	Full HD (1920 x 1080p)', '9', null);
INSERT INTO `productdetails` VALUES ('1102', '206', '	CMR 100 Hz', '9', null);
INSERT INTO `productdetails` VALUES ('1103', '20', '	Wide Color Enhancer Plus', '9', null);
INSERT INTO `productdetails` VALUES ('1104', '23', '	178° (Phải/Trái), 178° (Lên/Xuống)', '9', null);
INSERT INTO `productdetails` VALUES ('1105', '24', '	DTS Premium', '9', null);
INSERT INTO `productdetails` VALUES ('1106', '25', '	20W', '9', null);
INSERT INTO `productdetails` VALUES ('1107', '26', '2', '9', null);
INSERT INTO `productdetails` VALUES ('1108', '27', 'Có', '9', null);
INSERT INTO `productdetails` VALUES ('1109', '29', 'Có', '9', null);
INSERT INTO `productdetails` VALUES ('1110', '30', 'Có', '9', null);
INSERT INTO `productdetails` VALUES ('1111', '31', '90.76 x 58.61 x 28.8 (cm)', '9', null);
INSERT INTO `productdetails` VALUES ('1112', '32', '	8.5 kg', '9', null);
INSERT INTO `productdetails` VALUES ('1113', '33', '	90.76 x 52.97 x 6.69 (cm)', '9', null);
INSERT INTO `productdetails` VALUES ('1114', '17', 'LED', '10', null);
INSERT INTO `productdetails` VALUES ('1115', '18', '	40\'\'', '10', null);
INSERT INTO `productdetails` VALUES ('1116', '10', 'Full HD (1920 x 1080)', '10', null);
INSERT INTO `productdetails` VALUES ('1117', '206', 'CMR 100 Hz', '10', null);
INSERT INTO `productdetails` VALUES ('1118', '20', 'UHD Upscaling, Auto Depth Enhancer, Nano Crystal Color', '10', null);
INSERT INTO `productdetails` VALUES ('1119', '23', '	178° (Phải/Trái), 178° (Lên/Xuống)', '10', null);
INSERT INTO `productdetails` VALUES ('1120', '24', 'DTS Studio Sound and Premium Sound 5.1, Dolby MS11', '10', null);
INSERT INTO `productdetails` VALUES ('1121', '25', '20W', '10', null);
INSERT INTO `productdetails` VALUES ('1122', '26', '2', '10', null);
INSERT INTO `productdetails` VALUES ('1123', '57', 'Có, Tích hợp', '10', null);
INSERT INTO `productdetails` VALUES ('1124', '208', 'Có', '10', null);
INSERT INTO `productdetails` VALUES ('1125', '27', 'Có', '10', null);
INSERT INTO `productdetails` VALUES ('1126', '29', 'Có', '10', null);
INSERT INTO `productdetails` VALUES ('1127', '31', '90.76 x 58.56 x 28.81 (cm)', '10', null);
INSERT INTO `productdetails` VALUES ('1128', '32', '8.6 Kg', '10', null);
INSERT INTO `productdetails` VALUES ('1129', '33', '90.76 x 52.97 x 6.69 (cm)', '10', null);
INSERT INTO `productdetails` VALUES ('1130', '1', 'VNPT', '11', null);
INSERT INTO `productdetails` VALUES ('1131', '2', 'Chính hãng', '11', null);
INSERT INTO `productdetails` VALUES ('1132', '3', '	6 tháng', '11', null);
INSERT INTO `productdetails` VALUES ('1133', '45', '	Android 4.0', '11', null);
INSERT INTO `productdetails` VALUES ('1134', '6', 'AMR Cortex A9 1GHz', '11', null);
INSERT INTO `productdetails` VALUES ('1135', '7', 'ARM Mali 400 250Mhz', '11', null);
INSERT INTO `productdetails` VALUES ('1136', '209', 'MPEG1/ MPEG2/ MPEG4, H.264, VC-1, WMV, AVI, MKV, MOV', '11', null);
INSERT INTO `productdetails` VALUES ('1137', '210', 'MP3/RM, WAV, AC3/ WMA/WMV/APE/OGG/FLAC/AAC', '11', null);
INSERT INTO `productdetails` VALUES ('1138', '27', 'Có', '11', null);
INSERT INTO `productdetails` VALUES ('1139', '57', 'Tích hợp', '11', null);
INSERT INTO `productdetails` VALUES ('1140', '211', 'Cổng Ethernet (LAN)', '11', null);
INSERT INTO `productdetails` VALUES ('1141', '1', 'HiMedia', '12', null);
INSERT INTO `productdetails` VALUES ('1142', '2', 'Trung Quốc', '12', null);
INSERT INTO `productdetails` VALUES ('1143', '3', '	15 tháng', '12', null);
INSERT INTO `productdetails` VALUES ('1144', '45', '	Android 4.4.2', '12', null);
INSERT INTO `productdetails` VALUES ('1145', '6', '	Hi3798M V100', '12', null);
INSERT INTO `productdetails` VALUES ('1146', '8', '	1 GB', '12', null);
INSERT INTO `productdetails` VALUES ('1147', '209', 'Có', '12', null);
INSERT INTO `productdetails` VALUES ('1148', '210', 'Có', '12', null);
INSERT INTO `productdetails` VALUES ('1149', '27', 'Có', '12', null);
INSERT INTO `productdetails` VALUES ('1150', '30', 'Có', '12', null);
INSERT INTO `productdetails` VALUES ('1151', '126', 'Có', '12', null);
INSERT INTO `productdetails` VALUES ('1152', '127', 'Có', '12', null);
INSERT INTO `productdetails` VALUES ('1153', '212', 'Tên sản phẩm', '13', null);
INSERT INTO `productdetails` VALUES ('1154', '6', 'CORTEX Dual Core', '13', null);
INSERT INTO `productdetails` VALUES ('1155', '7', '	Lõi tứ', '13', null);
INSERT INTO `productdetails` VALUES ('1156', '8', '	1GB  ', '13', null);
INSERT INTO `productdetails` VALUES ('1157', '213', '4GB', '13', null);
INSERT INTO `productdetails` VALUES ('1158', '45', 'Android 4.2', '13', null);
INSERT INTO `productdetails` VALUES ('1159', '1', 'Viettel', '14', null);
INSERT INTO `productdetails` VALUES ('1160', '2', 'Chính hãng', '14', null);
INSERT INTO `productdetails` VALUES ('1161', '45', '	Android 4.4', '14', null);
INSERT INTO `productdetails` VALUES ('1162', '6', 'Quadcore ARM A7', '14', null);
INSERT INTO `productdetails` VALUES ('1163', '8', '1GB', '14', null);
INSERT INTO `productdetails` VALUES ('1164', '213', '4Gb', '14', null);
INSERT INTO `productdetails` VALUES ('1165', '27', 'Có', '14', null);
INSERT INTO `productdetails` VALUES ('1166', '214', 'Có', '14', null);
INSERT INTO `productdetails` VALUES ('1167', '30', 'Có', '14', null);
INSERT INTO `productdetails` VALUES ('1168', '57', 'Có', '14', null);
INSERT INTO `productdetails` VALUES ('1169', '1', '	Vitek', '15', null);
INSERT INTO `productdetails` VALUES ('1170', '2', 'Chính hãng', '15', null);
INSERT INTO `productdetails` VALUES ('1171', '3', '	12 tháng', '15', null);
INSERT INTO `productdetails` VALUES ('1172', '14', '120x115x28mm', '15', null);
INSERT INTO `productdetails` VALUES ('1173', '45', '	Android 4.2.2\r\n	Android 4.2.2\r\n	Android 4.2.2\r\nc	Android 4.2.2\r\n	Android 4.2.2\r\nAndroid 4.2.2', '15', null);
INSERT INTO `productdetails` VALUES ('1174', '6', '	RK3188 Quad-Core Cotex A9', '15', null);
INSERT INTO `productdetails` VALUES ('1175', '7', 'Mali 400MP4', '15', null);
INSERT INTO `productdetails` VALUES ('1176', '27', '	Có', '15', null);
INSERT INTO `productdetails` VALUES ('1177', '30', 'Có', '15', null);
INSERT INTO `productdetails` VALUES ('1178', '126', 'Có', '15', null);
INSERT INTO `productdetails` VALUES ('1179', '127', 'Có', '15', null);
INSERT INTO `productdetails` VALUES ('1180', '57', 'Wifi 802.11/b/g/n với anten gắn ngoài', '15', null);
INSERT INTO `productdetails` VALUES ('1181', '1', 'Live box Korea', '16', null);
INSERT INTO `productdetails` VALUES ('1182', '2', 'Trung Quốc', '16', null);
INSERT INTO `productdetails` VALUES ('1183', '3', '	1 tháng', '16', null);
INSERT INTO `productdetails` VALUES ('1184', '5', '	Đen', '16', null);
INSERT INTO `productdetails` VALUES ('1185', '1', 'Toshiba', '17', null);
INSERT INTO `productdetails` VALUES ('1186', '2', '	Nhật Bản', '17', null);
INSERT INTO `productdetails` VALUES ('1187', '3', '	12 tháng', '17', null);
INSERT INTO `productdetails` VALUES ('1188', '214', '	2TB', '17', null);
INSERT INTO `productdetails` VALUES ('1189', '1', 'HiMedia', '18', null);
INSERT INTO `productdetails` VALUES ('1190', '2', 'Trung Quốc', '18', null);
INSERT INTO `productdetails` VALUES ('1191', '3', '	12 tháng', '18', null);
INSERT INTO `productdetails` VALUES ('1192', '14', '	123x123x29mm', '18', null);
INSERT INTO `productdetails` VALUES ('1193', '45', 'Android 4.4', '18', null);
INSERT INTO `productdetails` VALUES ('1194', '6', '	HiSilicon', '18', null);
INSERT INTO `productdetails` VALUES ('1195', '7', 'Mali-400', '18', null);
INSERT INTO `productdetails` VALUES ('1196', '27', 'Có', '18', null);
INSERT INTO `productdetails` VALUES ('1197', '30', 'Mali-400', '18', null);
INSERT INTO `productdetails` VALUES ('1198', '57', 'Có', '18', null);
INSERT INTO `productdetails` VALUES ('1199', '1', 'Sony', '19', null);
INSERT INTO `productdetails` VALUES ('1200', '2', 'Chính hãng', '19', null);
INSERT INTO `productdetails` VALUES ('1201', '3', '12 tháng', '19', null);
INSERT INTO `productdetails` VALUES ('1202', '4', '	wifi', '19', null);
INSERT INTO `productdetails` VALUES ('1203', '5', '	Trắng', '19', null);
INSERT INTO `productdetails` VALUES ('1204', '6', '4 nhân, ARM Cortex-A9 MPCore', '19', null);
INSERT INTO `productdetails` VALUES ('1205', '7', '4 nhân, PowerVR SGX543MP4+', '19', null);
INSERT INTO `productdetails` VALUES ('1206', '8', '	512MB, VRAM 128MB', '19', null);
INSERT INTO `productdetails` VALUES ('1207', '9', '	1GB, hỗ trợ thẻ PS Vita 64GB', '19', null);
INSERT INTO `productdetails` VALUES ('1208', '10', '	Full HD (1080i), HD (720p), 480p', '19', null);
INSERT INTO `productdetails` VALUES ('1209', '1', 'Senze', '20', null);
INSERT INTO `productdetails` VALUES ('1210', '2', 'Chính hãng', '20', null);
INSERT INTO `productdetails` VALUES ('1211', '3', '6 tháng', '20', null);
INSERT INTO `productdetails` VALUES ('1212', '37', '	USB game pad', '20', null);
INSERT INTO `productdetails` VALUES ('1213', '38', '	Laptop, PC...', '20', null);
INSERT INTO `productdetails` VALUES ('1214', '15', '	USB', '20', null);
INSERT INTO `productdetails` VALUES ('1215', '5', '	Đen', '20', null);
INSERT INTO `productdetails` VALUES ('1216', '1', 'Logitech\r\n', '21', '\0');
INSERT INTO `productdetails` VALUES ('1217', '2', 'Chính hãng', '21', '');
INSERT INTO `productdetails` VALUES ('1218', '3', '6 tháng', '21', '');
INSERT INTO `productdetails` VALUES ('1219', '30', 'Có', '21', null);
INSERT INTO `productdetails` VALUES ('1220', '1', 'I-Rocks', '22', null);
INSERT INTO `productdetails` VALUES ('1221', '2', 'Chính hãng', '22', null);
INSERT INTO `productdetails` VALUES ('1222', '3', '12 tháng', '22', null);
INSERT INTO `productdetails` VALUES ('1223', '42', '	200g', '22', null);
INSERT INTO `productdetails` VALUES ('1224', '13', 'Nhựa', '22', null);
INSERT INTO `productdetails` VALUES ('1225', '30', 'Có', '22', null);
INSERT INTO `productdetails` VALUES ('1226', '1', 'USB GAME PAD', '23', null);
INSERT INTO `productdetails` VALUES ('1227', '2', 'Chính hãng', '23', null);
INSERT INTO `productdetails` VALUES ('1228', '3', '12 tháng', '23', null);
INSERT INTO `productdetails` VALUES ('1229', '37', '	Bộ đôi tay game', '23', null);
INSERT INTO `productdetails` VALUES ('1230', '38', 'PC, Laptop', '23', null);
INSERT INTO `productdetails` VALUES ('1231', '15', '	USB', '23', null);
INSERT INTO `productdetails` VALUES ('1232', '5', 'Đen', '23', null);
INSERT INTO `productdetails` VALUES ('1233', '1', '	VSTV', '24', '\0');
INSERT INTO `productdetails` VALUES ('1234', '3', '12 tháng', '24', '');
INSERT INTO `productdetails` VALUES ('1235', '215', '	Đầu thu SD', '24', '\0');
INSERT INTO `productdetails` VALUES ('1236', '1', 'VSTV\r\n', '26', null);
INSERT INTO `productdetails` VALUES ('1237', '3', '12 tháng', '26', null);
INSERT INTO `productdetails` VALUES ('1238', '215', 'Đầu thu HD', '26', null);
INSERT INTO `productdetails` VALUES ('1239', '216', '	64', '26', null);
INSERT INTO `productdetails` VALUES ('1240', '1', '	Samsung', '27', null);
INSERT INTO `productdetails` VALUES ('1241', '3', '12 tháng', '27', null);
INSERT INTO `productdetails` VALUES ('1242', '2', 'LD', '27', null);
INSERT INTO `productdetails` VALUES ('1243', '1', 'AVG', '28', null);
INSERT INTO `productdetails` VALUES ('1244', '2', 'Trung Quốc', '28', null);
INSERT INTO `productdetails` VALUES ('1245', '3', '6 tháng', '28', null);
INSERT INTO `productdetails` VALUES ('1246', '1', 'VSTV', '29', null);
INSERT INTO `productdetails` VALUES ('1247', '2', 'VN', '29', null);
INSERT INTO `productdetails` VALUES ('1248', '3', '12 tháng', '29', null);
INSERT INTO `productdetails` VALUES ('1249', '17', '	PAYTV', '29', null);
INSERT INTO `productdetails` VALUES ('1250', '1', 'HT Box', '31', null);
INSERT INTO `productdetails` VALUES ('1251', '14', '30x20x5', '31', null);
INSERT INTO `productdetails` VALUES ('1252', '215', '	Đầu thu kỹ thuật số mặt đất', '31', null);
INSERT INTO `productdetails` VALUES ('1253', '207', '	100-240V', '31', null);
INSERT INTO `productdetails` VALUES ('1254', '27', 'Có', '31', null);
INSERT INTO `productdetails` VALUES ('1255', '30', 'Có', '31', null);
INSERT INTO `productdetails` VALUES ('1256', '1', 'VSTV', '32', null);
INSERT INTO `productdetails` VALUES ('1257', '2', 'Chính hãng', '32', null);
INSERT INTO `productdetails` VALUES ('1258', '3', '12 tháng', '32', null);
INSERT INTO `productdetails` VALUES ('1259', '17', 'PAYTV', '32', null);
INSERT INTO `productdetails` VALUES ('1260', '45', '	Android 4.4', '33', null);
INSERT INTO `productdetails` VALUES ('1261', '47', '16 triệu màu', '33', null);
INSERT INTO `productdetails` VALUES ('1262', '217', 'HD', '33', null);
INSERT INTO `productdetails` VALUES ('1263', '10', '	1024 x 600 pixels', '33', null);
INSERT INTO `productdetails` VALUES ('1264', '18', '	7 inch', '33', null);
INSERT INTO `productdetails` VALUES ('1265', '40', '1.3 GHz', '33', null);
INSERT INTO `productdetails` VALUES ('1266', '41', '	Quad-core', '33', null);
INSERT INTO `productdetails` VALUES ('1267', '49', '	Spreadtrum SC8830', '33', null);
INSERT INTO `productdetails` VALUES ('1268', '8', '	1 GB', '33', null);
INSERT INTO `productdetails` VALUES ('1269', '176', '	8 GB', '33', null);
INSERT INTO `productdetails` VALUES ('1270', '51', '	Micro SD', '33', null);
INSERT INTO `productdetails` VALUES ('1271', '53', '	2 MP(1600 x 1200 pixels)', '33', null);
INSERT INTO `productdetails` VALUES ('1272', '54', '	2 MP(1600 x 1200 pixels)', '33', null);
INSERT INTO `productdetails` VALUES ('1273', '55', '	VGA(640x480 pixels)', '33', null);
INSERT INTO `productdetails` VALUES ('1274', '56', 'Có 3G ( tốc độ Download 21 Mbps, Upload 5.76 Mbps)', '33', null);
INSERT INTO `productdetails` VALUES ('1275', '57', '	Wi-Fi Chuẩn 802.11 b/g/n, Wi-Fi hotspot', '33', null);
INSERT INTO `productdetails` VALUES ('1276', '63', '	WMV7, AVI, MP4, GIF, 3GP, WAV, MPEG-4, DAT, MPG, FLV', '33', null);
INSERT INTO `productdetails` VALUES ('1277', '64', '	WAV, MP3, MIDI, WMA', '33', null);
INSERT INTO `productdetails` VALUES ('1278', '44', '3600mAh', '33', null);
INSERT INTO `productdetails` VALUES ('1279', '45', '	Android 4.4', '34', null);
INSERT INTO `productdetails` VALUES ('1280', '47', '16 triệu màu', '34', null);
INSERT INTO `productdetails` VALUES ('1281', '217', 'HD', '34', null);
INSERT INTO `productdetails` VALUES ('1282', '10', '	1024 x 600 pixels', '34', null);
INSERT INTO `productdetails` VALUES ('1283', '18', '	7 inch', '34', null);
INSERT INTO `productdetails` VALUES ('1284', '40', '1.3 GHz', '34', null);
INSERT INTO `productdetails` VALUES ('1285', '41', '	Quad-core', '34', null);
INSERT INTO `productdetails` VALUES ('1286', '49', '	Spreadtrum SC8830', '34', null);
INSERT INTO `productdetails` VALUES ('1287', '8', '	1 GB', '34', null);
INSERT INTO `productdetails` VALUES ('1288', '176', '	8 GB', '34', null);
INSERT INTO `productdetails` VALUES ('1289', '51', '	Micro SD', '34', null);
INSERT INTO `productdetails` VALUES ('1290', '53', '	2 MP(1600 x 1200 pixels)', '34', null);
INSERT INTO `productdetails` VALUES ('1291', '54', '	2 MP(1600 x 1200 pixels)', '34', null);
INSERT INTO `productdetails` VALUES ('1292', '55', '	VGA(640x480 pixels)', '34', null);
INSERT INTO `productdetails` VALUES ('1293', '56', 'Có 3G ( tốc độ Download 21 Mbps, Upload 5.76 Mbps)', '34', null);
INSERT INTO `productdetails` VALUES ('1294', '57', '	Wi-Fi Chuẩn 802.11 b/g/n, Wi-Fi hotspot', '34', null);
INSERT INTO `productdetails` VALUES ('1295', '63', '	WMV7, AVI, MP4, GIF, 3GP, WAV, MPEG-4, DAT, MPG, FLV', '34', null);
INSERT INTO `productdetails` VALUES ('1296', '64', '	WAV, MP3, MIDI, WMA', '34', null);
INSERT INTO `productdetails` VALUES ('1297', '44', '3600mAh', '34', null);
INSERT INTO `productdetails` VALUES ('1298', '45', '	Android 4.4', '35', null);
INSERT INTO `productdetails` VALUES ('1299', '47', '16 triệu màu', '35', null);
INSERT INTO `productdetails` VALUES ('1300', '217', 'HD', '35', null);
INSERT INTO `productdetails` VALUES ('1301', '10', '	1024 x 600 pixels', '35', null);
INSERT INTO `productdetails` VALUES ('1302', '18', '	7 inch', '35', null);
INSERT INTO `productdetails` VALUES ('1303', '40', '1.3 GHz', '35', null);
INSERT INTO `productdetails` VALUES ('1304', '41', '	Quad-core', '35', null);
INSERT INTO `productdetails` VALUES ('1305', '49', '	Spreadtrum SC8830', '35', null);
INSERT INTO `productdetails` VALUES ('1306', '8', '	1 GB', '35', null);
INSERT INTO `productdetails` VALUES ('1307', '176', '	8 GB', '35', null);
INSERT INTO `productdetails` VALUES ('1308', '51', '	Micro SD', '35', null);
INSERT INTO `productdetails` VALUES ('1309', '53', '	2 MP(1600 x 1200 pixels)', '35', null);
INSERT INTO `productdetails` VALUES ('1310', '54', '	2 MP(1600 x 1200 pixels)', '35', null);
INSERT INTO `productdetails` VALUES ('1311', '55', '	VGA(640x480 pixels)', '35', null);
INSERT INTO `productdetails` VALUES ('1312', '56', 'Có 3G ( tốc độ Download 21 Mbps, Upload 5.76 Mbps)', '35', null);
INSERT INTO `productdetails` VALUES ('1313', '57', '	Wi-Fi Chuẩn 802.11 b/g/n, Wi-Fi hotspot', '35', null);
INSERT INTO `productdetails` VALUES ('1314', '63', '	WMV7, AVI, MP4, GIF, 3GP, WAV, MPEG-4, DAT, MPG, FLV', '35', null);
INSERT INTO `productdetails` VALUES ('1315', '64', '	WAV, MP3, MIDI, WMA', '35', null);
INSERT INTO `productdetails` VALUES ('1316', '44', '3600mAh', '35', null);
INSERT INTO `productdetails` VALUES ('1317', '45', '	Android 4.4', '36', null);
INSERT INTO `productdetails` VALUES ('1318', '47', '16 triệu màu', '36', null);
INSERT INTO `productdetails` VALUES ('1319', '217', 'HD', '36', null);
INSERT INTO `productdetails` VALUES ('1320', '10', '	1024 x 600 pixels', '36', null);
INSERT INTO `productdetails` VALUES ('1321', '18', '	7 inch', '36', null);
INSERT INTO `productdetails` VALUES ('1322', '40', '1.3 GHz', '36', null);
INSERT INTO `productdetails` VALUES ('1323', '41', '	Quad-core', '36', null);
INSERT INTO `productdetails` VALUES ('1324', '49', '	Spreadtrum SC8830', '36', null);
INSERT INTO `productdetails` VALUES ('1325', '8', '	1 GB', '36', null);
INSERT INTO `productdetails` VALUES ('1326', '176', '	8 GB', '36', null);
INSERT INTO `productdetails` VALUES ('1327', '51', '	Micro SD', '36', null);
INSERT INTO `productdetails` VALUES ('1328', '53', '	2 MP(1600 x 1200 pixels)', '36', null);
INSERT INTO `productdetails` VALUES ('1329', '54', '	2 MP(1600 x 1200 pixels)', '36', null);
INSERT INTO `productdetails` VALUES ('1330', '55', '	VGA(640x480 pixels)', '36', null);
INSERT INTO `productdetails` VALUES ('1331', '56', 'Có 3G ( tốc độ Download 21 Mbps, Upload 5.76 Mbps)', '36', null);
INSERT INTO `productdetails` VALUES ('1332', '57', '	Wi-Fi Chuẩn 802.11 b/g/n, Wi-Fi hotspot', '36', null);
INSERT INTO `productdetails` VALUES ('1333', '63', '	WMV7, AVI, MP4, GIF, 3GP, WAV, MPEG-4, DAT, MPG, FLV', '36', null);
INSERT INTO `productdetails` VALUES ('1334', '64', '	WAV, MP3, MIDI, WMA', '36', null);
INSERT INTO `productdetails` VALUES ('1335', '44', '3600mAh', '36', null);
INSERT INTO `productdetails` VALUES ('1336', '45', 'IOS', '37', null);
INSERT INTO `productdetails` VALUES ('1337', '47', '16 triệu màu', '37', null);
INSERT INTO `productdetails` VALUES ('1338', '217', 'HD', '37', null);
INSERT INTO `productdetails` VALUES ('1339', '10', '	1024 x 600 pixels', '37', null);
INSERT INTO `productdetails` VALUES ('1340', '18', '	7 inch', '37', null);
INSERT INTO `productdetails` VALUES ('1341', '40', '1.3 GHz', '37', null);
INSERT INTO `productdetails` VALUES ('1342', '41', '	Quad-core', '37', null);
INSERT INTO `productdetails` VALUES ('1343', '49', '	Spreadtrum SC8830', '37', null);
INSERT INTO `productdetails` VALUES ('1344', '8', '	1 GB', '37', null);
INSERT INTO `productdetails` VALUES ('1345', '176', '	8 GB', '37', null);
INSERT INTO `productdetails` VALUES ('1346', '51', '	Micro SD', '37', null);
INSERT INTO `productdetails` VALUES ('1347', '53', '	2 MP(1600 x 1200 pixels)', '37', null);
INSERT INTO `productdetails` VALUES ('1348', '54', '	2 MP(1600 x 1200 pixels)', '37', null);
INSERT INTO `productdetails` VALUES ('1349', '55', '	VGA(640x480 pixels)', '37', null);
INSERT INTO `productdetails` VALUES ('1350', '56', 'Có 3G ( tốc độ Download 21 Mbps, Upload 5.76 Mbps)', '37', null);
INSERT INTO `productdetails` VALUES ('1351', '57', '	Wi-Fi Chuẩn 802.11 b/g/n, Wi-Fi hotspot', '37', null);
INSERT INTO `productdetails` VALUES ('1352', '63', '	WMV7, AVI, MP4, GIF, 3GP, WAV, MPEG-4, DAT, MPG, FLV', '37', null);
INSERT INTO `productdetails` VALUES ('1353', '64', '	WAV, MP3, MIDI, WMA', '37', null);
INSERT INTO `productdetails` VALUES ('1354', '44', '3600mAh', '37', null);
INSERT INTO `productdetails` VALUES ('1355', '45', 'IOS', '38', null);
INSERT INTO `productdetails` VALUES ('1356', '47', '16 triệu màu', '38', null);
INSERT INTO `productdetails` VALUES ('1357', '217', 'HD', '38', null);
INSERT INTO `productdetails` VALUES ('1358', '10', '	1024 x 600 pixels', '38', null);
INSERT INTO `productdetails` VALUES ('1359', '18', '	7 inch', '38', null);
INSERT INTO `productdetails` VALUES ('1360', '40', '1.3 GHz', '38', null);
INSERT INTO `productdetails` VALUES ('1361', '41', '	Quad-core', '38', null);
INSERT INTO `productdetails` VALUES ('1362', '49', '	Spreadtrum SC8830', '38', null);
INSERT INTO `productdetails` VALUES ('1363', '8', '	1 GB', '38', null);
INSERT INTO `productdetails` VALUES ('1364', '176', '	8 GB', '38', null);
INSERT INTO `productdetails` VALUES ('1365', '51', '	Micro SD', '38', null);
INSERT INTO `productdetails` VALUES ('1366', '53', '	2 MP(1600 x 1200 pixels)', '38', null);
INSERT INTO `productdetails` VALUES ('1367', '54', '	2 MP(1600 x 1200 pixels)', '38', null);
INSERT INTO `productdetails` VALUES ('1368', '55', '	VGA(640x480 pixels)', '38', null);
INSERT INTO `productdetails` VALUES ('1369', '56', 'Có 3G ( tốc độ Download 21 Mbps, Upload 5.76 Mbps)', '38', null);
INSERT INTO `productdetails` VALUES ('1370', '57', '	Wi-Fi Chuẩn 802.11 b/g/n, Wi-Fi hotspot', '38', null);
INSERT INTO `productdetails` VALUES ('1371', '63', '	WMV7, AVI, MP4, GIF, 3GP, WAV, MPEG-4, DAT, MPG, FLV', '38', null);
INSERT INTO `productdetails` VALUES ('1372', '64', '	WAV, MP3, MIDI, WMA', '38', null);
INSERT INTO `productdetails` VALUES ('1373', '44', '3600mAh', '38', null);
INSERT INTO `productdetails` VALUES ('1374', '45', 'IOS', '39', null);
INSERT INTO `productdetails` VALUES ('1375', '47', '16 triệu màu', '39', null);
INSERT INTO `productdetails` VALUES ('1376', '217', 'HD', '39', null);
INSERT INTO `productdetails` VALUES ('1377', '10', '	1024 x 600 pixels', '39', null);
INSERT INTO `productdetails` VALUES ('1378', '18', '	7 inch', '39', null);
INSERT INTO `productdetails` VALUES ('1379', '40', '1.3 GHz', '39', null);
INSERT INTO `productdetails` VALUES ('1380', '41', '	Quad-core', '39', null);
INSERT INTO `productdetails` VALUES ('1381', '49', '	Spreadtrum SC8830', '39', null);
INSERT INTO `productdetails` VALUES ('1382', '8', '	1 GB', '39', null);
INSERT INTO `productdetails` VALUES ('1383', '176', '	8 GB', '39', null);
INSERT INTO `productdetails` VALUES ('1384', '51', '	Micro SD', '39', null);
INSERT INTO `productdetails` VALUES ('1385', '53', '	2 MP(1600 x 1200 pixels)', '39', null);
INSERT INTO `productdetails` VALUES ('1386', '54', '	2 MP(1600 x 1200 pixels)', '39', null);
INSERT INTO `productdetails` VALUES ('1387', '55', '	VGA(640x480 pixels)', '39', null);
INSERT INTO `productdetails` VALUES ('1388', '56', 'Có 3G ( tốc độ Download 21 Mbps, Upload 5.76 Mbps)', '39', null);
INSERT INTO `productdetails` VALUES ('1389', '57', '	Wi-Fi Chuẩn 802.11 b/g/n, Wi-Fi hotspot', '39', null);
INSERT INTO `productdetails` VALUES ('1390', '63', '	WMV7, AVI, MP4, GIF, 3GP, WAV, MPEG-4, DAT, MPG, FLV', '39', null);
INSERT INTO `productdetails` VALUES ('1391', '64', '	WAV, MP3, MIDI, WMA', '39', null);
INSERT INTO `productdetails` VALUES ('1392', '44', '3600mAh', '39', null);
INSERT INTO `productdetails` VALUES ('1393', '45', 'IOS', '40', null);
INSERT INTO `productdetails` VALUES ('1394', '47', '16 triệu màu', '40', null);
INSERT INTO `productdetails` VALUES ('1395', '217', 'HD', '40', null);
INSERT INTO `productdetails` VALUES ('1396', '10', '	1024 x 600 pixels', '40', null);
INSERT INTO `productdetails` VALUES ('1397', '18', '	7 inch', '40', null);
INSERT INTO `productdetails` VALUES ('1398', '40', '1.3 GHz', '40', null);
INSERT INTO `productdetails` VALUES ('1399', '41', '	Quad-core', '40', null);
INSERT INTO `productdetails` VALUES ('1400', '49', '	Spreadtrum SC8830', '40', null);
INSERT INTO `productdetails` VALUES ('1401', '8', '	1 GB', '40', null);
INSERT INTO `productdetails` VALUES ('1402', '176', '	8 GB', '40', null);
INSERT INTO `productdetails` VALUES ('1403', '51', '	Micro SD', '40', null);
INSERT INTO `productdetails` VALUES ('1404', '53', '	2 MP(1600 x 1200 pixels)', '40', null);
INSERT INTO `productdetails` VALUES ('1405', '54', '	2 MP(1600 x 1200 pixels)', '40', null);
INSERT INTO `productdetails` VALUES ('1406', '55', '	VGA(640x480 pixels)', '40', null);
INSERT INTO `productdetails` VALUES ('1407', '56', 'Có 3G ( tốc độ Download 21 Mbps, Upload 5.76 Mbps)', '40', null);
INSERT INTO `productdetails` VALUES ('1408', '57', '	Wi-Fi Chuẩn 802.11 b/g/n, Wi-Fi hotspot', '40', null);
INSERT INTO `productdetails` VALUES ('1409', '63', '	WMV7, AVI, MP4, GIF, 3GP, WAV, MPEG-4, DAT, MPG, FLV', '40', null);
INSERT INTO `productdetails` VALUES ('1410', '64', '	WAV, MP3, MIDI, WMA', '40', null);
INSERT INTO `productdetails` VALUES ('1411', '44', '3600mAh', '40', null);
INSERT INTO `productdetails` VALUES ('1412', '45', 'IOS', '41', null);
INSERT INTO `productdetails` VALUES ('1413', '47', '16 triệu màu', '41', null);
INSERT INTO `productdetails` VALUES ('1414', '217', 'HD', '41', null);
INSERT INTO `productdetails` VALUES ('1415', '10', '	750 x 1334 pixels', '41', null);
INSERT INTO `productdetails` VALUES ('1416', '18', '	4.7 inch', '41', null);
INSERT INTO `productdetails` VALUES ('1417', '40', '1.3 GHz', '41', null);
INSERT INTO `productdetails` VALUES ('1418', '41', '	Quad-core', '41', null);
INSERT INTO `productdetails` VALUES ('1419', '49', '	Spreadtrum SC8830', '41', null);
INSERT INTO `productdetails` VALUES ('1420', '8', '	1 GB', '41', null);
INSERT INTO `productdetails` VALUES ('1421', '176', '	8 GB', '41', null);
INSERT INTO `productdetails` VALUES ('1422', '51', '	Micro SD', '41', null);
INSERT INTO `productdetails` VALUES ('1423', '53', '	12MP', '41', null);
INSERT INTO `productdetails` VALUES ('1424', '54', '	5MP', '41', null);
INSERT INTO `productdetails` VALUES ('1425', '55', '	VGA(640x480 pixels)', '41', null);
INSERT INTO `productdetails` VALUES ('1426', '56', 'Có 3G ( tốc độ Download 21 Mbps, Upload 5.76 Mbps)', '41', null);
INSERT INTO `productdetails` VALUES ('1427', '57', '	Wi-Fi Chuẩn 802.11 b/g/n, Wi-Fi hotspot', '41', null);
INSERT INTO `productdetails` VALUES ('1428', '63', '	WMV7, AVI, MP4, GIF, 3GP, WAV, MPEG-4, DAT, MPG, FLV', '41', null);
INSERT INTO `productdetails` VALUES ('1429', '64', '	WAV, MP3, MIDI, WMA', '41', null);
INSERT INTO `productdetails` VALUES ('1430', '44', '3600mAh', '41', null);
INSERT INTO `productdetails` VALUES ('1431', '45', 'IOS', '42', null);
INSERT INTO `productdetails` VALUES ('1432', '47', '16 triệu màu', '42', null);
INSERT INTO `productdetails` VALUES ('1433', '217', 'HD', '42', null);
INSERT INTO `productdetails` VALUES ('1434', '10', '	750 x 1334 pixels', '42', null);
INSERT INTO `productdetails` VALUES ('1435', '18', '	4.7 inch', '42', null);
INSERT INTO `productdetails` VALUES ('1436', '40', '1.3 GHz', '42', null);
INSERT INTO `productdetails` VALUES ('1437', '41', '	Quad-core', '42', null);
INSERT INTO `productdetails` VALUES ('1438', '49', '	Spreadtrum SC8830', '42', null);
INSERT INTO `productdetails` VALUES ('1439', '8', '	1 GB', '42', null);
INSERT INTO `productdetails` VALUES ('1440', '176', '	8 GB', '42', null);
INSERT INTO `productdetails` VALUES ('1441', '51', '	Micro SD', '42', null);
INSERT INTO `productdetails` VALUES ('1442', '53', '	12MP', '42', null);
INSERT INTO `productdetails` VALUES ('1443', '54', '	5MP', '42', null);
INSERT INTO `productdetails` VALUES ('1444', '55', '	VGA(640x480 pixels)', '42', null);
INSERT INTO `productdetails` VALUES ('1445', '56', 'Có 3G ( tốc độ Download 21 Mbps, Upload 5.76 Mbps)', '42', null);
INSERT INTO `productdetails` VALUES ('1446', '57', '	Wi-Fi Chuẩn 802.11 b/g/n, Wi-Fi hotspot', '42', null);
INSERT INTO `productdetails` VALUES ('1447', '63', '	WMV7, AVI, MP4, GIF, 3GP, WAV, MPEG-4, DAT, MPG, FLV', '42', null);
INSERT INTO `productdetails` VALUES ('1448', '64', '	WAV, MP3, MIDI, WMA', '42', null);
INSERT INTO `productdetails` VALUES ('1449', '44', '3600mAh', '42', null);
INSERT INTO `productdetails` VALUES ('1450', '45', 'IOS', '43', null);
INSERT INTO `productdetails` VALUES ('1451', '47', '16 triệu màu', '43', null);
INSERT INTO `productdetails` VALUES ('1452', '217', 'HD', '43', null);
INSERT INTO `productdetails` VALUES ('1453', '10', '	750 x 1334 pixels', '43', null);
INSERT INTO `productdetails` VALUES ('1454', '18', '	5.5 inch', '43', null);
INSERT INTO `productdetails` VALUES ('1455', '40', '1.3 GHz', '43', null);
INSERT INTO `productdetails` VALUES ('1456', '41', '	Quad-core', '43', null);
INSERT INTO `productdetails` VALUES ('1457', '49', '	Spreadtrum SC8830', '43', null);
INSERT INTO `productdetails` VALUES ('1458', '8', '	1 GB', '43', null);
INSERT INTO `productdetails` VALUES ('1459', '176', '	8 GB', '43', null);
INSERT INTO `productdetails` VALUES ('1460', '51', '	Micro SD', '43', null);
INSERT INTO `productdetails` VALUES ('1461', '53', '	12MP', '43', null);
INSERT INTO `productdetails` VALUES ('1462', '54', '	5MP', '43', null);
INSERT INTO `productdetails` VALUES ('1463', '55', '	VGA(640x480 pixels)', '43', null);
INSERT INTO `productdetails` VALUES ('1464', '56', 'Có 3G ( tốc độ Download 21 Mbps, Upload 5.76 Mbps)', '43', null);
INSERT INTO `productdetails` VALUES ('1465', '57', '	Wi-Fi Chuẩn 802.11 b/g/n, Wi-Fi hotspot', '43', null);
INSERT INTO `productdetails` VALUES ('1466', '63', '	WMV7, AVI, MP4, GIF, 3GP, WAV, MPEG-4, DAT, MPG, FLV', '43', null);
INSERT INTO `productdetails` VALUES ('1467', '64', '	WAV, MP3, MIDI, WMA', '43', null);
INSERT INTO `productdetails` VALUES ('1468', '44', '3600mAh', '43', null);
INSERT INTO `productdetails` VALUES ('1469', '45', 'IOS', '44', null);
INSERT INTO `productdetails` VALUES ('1470', '47', '16 triệu màu', '44', null);
INSERT INTO `productdetails` VALUES ('1471', '217', 'HD', '44', null);
INSERT INTO `productdetails` VALUES ('1472', '10', '	750 x 1334 pixels', '44', null);
INSERT INTO `productdetails` VALUES ('1473', '18', '	5.5 inch', '44', null);
INSERT INTO `productdetails` VALUES ('1474', '40', '1.3 GHz', '44', null);
INSERT INTO `productdetails` VALUES ('1475', '41', '	Quad-core', '44', null);
INSERT INTO `productdetails` VALUES ('1476', '49', '	Spreadtrum SC8830', '44', null);
INSERT INTO `productdetails` VALUES ('1477', '8', '	1 GB', '44', null);
INSERT INTO `productdetails` VALUES ('1478', '176', '	8 GB', '44', null);
INSERT INTO `productdetails` VALUES ('1479', '51', '	Micro SD', '44', null);
INSERT INTO `productdetails` VALUES ('1480', '53', '	12MP', '44', null);
INSERT INTO `productdetails` VALUES ('1481', '54', '	5MP', '44', null);
INSERT INTO `productdetails` VALUES ('1482', '55', '	VGA(640x480 pixels)', '44', null);
INSERT INTO `productdetails` VALUES ('1483', '56', 'Có 3G ( tốc độ Download 21 Mbps, Upload 5.76 Mbps)', '44', null);
INSERT INTO `productdetails` VALUES ('1484', '57', '	Wi-Fi Chuẩn 802.11 b/g/n, Wi-Fi hotspot', '44', null);
INSERT INTO `productdetails` VALUES ('1485', '63', '	WMV7, AVI, MP4, GIF, 3GP, WAV, MPEG-4, DAT, MPG, FLV', '44', null);
INSERT INTO `productdetails` VALUES ('1486', '64', '	WAV, MP3, MIDI, WMA', '44', null);
INSERT INTO `productdetails` VALUES ('1487', '44', '3600mAh', '44', null);
INSERT INTO `productdetails` VALUES ('1488', '45', 'OPPO', '45', null);
INSERT INTO `productdetails` VALUES ('1489', '2', 'Trung Quốc', '45', null);
INSERT INTO `productdetails` VALUES ('1490', '47', '16 triệu màu', '45', null);
INSERT INTO `productdetails` VALUES ('1491', '217', 'HD', '45', null);
INSERT INTO `productdetails` VALUES ('1492', '10', '	750 x 1334 pixels', '45', null);
INSERT INTO `productdetails` VALUES ('1493', '18', '	5.0 inch', '45', null);
INSERT INTO `productdetails` VALUES ('1494', '40', '1.3 GHz', '45', null);
INSERT INTO `productdetails` VALUES ('1495', '41', '	Quad-core', '45', null);
INSERT INTO `productdetails` VALUES ('1496', '49', '	Spreadtrum SC8830', '45', null);
INSERT INTO `productdetails` VALUES ('1497', '8', '	1 GB', '45', null);
INSERT INTO `productdetails` VALUES ('1498', '176', '	8 GB', '45', null);
INSERT INTO `productdetails` VALUES ('1499', '51', '	Micro SD', '45', null);
INSERT INTO `productdetails` VALUES ('1500', '53', '	12MP', '45', null);
INSERT INTO `productdetails` VALUES ('1501', '54', '	5MP', '45', null);
INSERT INTO `productdetails` VALUES ('1502', '55', '	VGA(640x480 pixels)', '45', null);
INSERT INTO `productdetails` VALUES ('1503', '56', 'Có 3G ( tốc độ Download 21 Mbps, Upload 5.76 Mbps)', '45', null);
INSERT INTO `productdetails` VALUES ('1504', '57', '	Wi-Fi Chuẩn 802.11 b/g/n, Wi-Fi hotspot', '45', null);
INSERT INTO `productdetails` VALUES ('1505', '63', '	WMV7, AVI, MP4, GIF, 3GP, WAV, MPEG-4, DAT, MPG, FLV', '45', null);
INSERT INTO `productdetails` VALUES ('1506', '64', '	WAV, MP3, MIDI, WMA', '45', null);
INSERT INTO `productdetails` VALUES ('1507', '44', '3600mAh', '45', null);
INSERT INTO `productdetails` VALUES ('1508', '45', 'OPPO', '46', null);
INSERT INTO `productdetails` VALUES ('1509', '2', 'Trung Quốc', '46', null);
INSERT INTO `productdetails` VALUES ('1510', '47', '16 triệu màu', '46', null);
INSERT INTO `productdetails` VALUES ('1511', '217', 'HD', '46', null);
INSERT INTO `productdetails` VALUES ('1512', '10', '	750 x 1334 pixels', '46', null);
INSERT INTO `productdetails` VALUES ('1513', '18', '	5.0 inch', '46', null);
INSERT INTO `productdetails` VALUES ('1514', '40', '1.3 GHz', '46', null);
INSERT INTO `productdetails` VALUES ('1515', '41', '	Quad-core', '46', null);
INSERT INTO `productdetails` VALUES ('1516', '49', '	Spreadtrum SC8830', '46', null);
INSERT INTO `productdetails` VALUES ('1517', '8', '	1 GB', '46', null);
INSERT INTO `productdetails` VALUES ('1518', '176', '	8 GB', '46', null);
INSERT INTO `productdetails` VALUES ('1519', '51', '	Micro SD', '46', null);
INSERT INTO `productdetails` VALUES ('1520', '53', '	12MP', '46', null);
INSERT INTO `productdetails` VALUES ('1521', '54', '	5MP', '46', null);
INSERT INTO `productdetails` VALUES ('1522', '55', '	VGA(640x480 pixels)', '46', null);
INSERT INTO `productdetails` VALUES ('1523', '56', 'Có 3G ( tốc độ Download 21 Mbps, Upload 5.76 Mbps)', '46', null);
INSERT INTO `productdetails` VALUES ('1524', '57', '	Wi-Fi Chuẩn 802.11 b/g/n, Wi-Fi hotspot', '46', null);
INSERT INTO `productdetails` VALUES ('1525', '63', '	WMV7, AVI, MP4, GIF, 3GP, WAV, MPEG-4, DAT, MPG, FLV', '46', null);
INSERT INTO `productdetails` VALUES ('1526', '64', '	WAV, MP3, MIDI, WMA', '46', null);
INSERT INTO `productdetails` VALUES ('1527', '44', '3600mAh', '46', null);
INSERT INTO `productdetails` VALUES ('1528', '45', 'OPPO', '47', null);
INSERT INTO `productdetails` VALUES ('1529', '2', 'Trung Quốc', '47', null);
INSERT INTO `productdetails` VALUES ('1530', '47', '16 triệu màu', '47', null);
INSERT INTO `productdetails` VALUES ('1531', '217', 'HD', '47', null);
INSERT INTO `productdetails` VALUES ('1532', '10', '	750 x 1334 pixels', '47', null);
INSERT INTO `productdetails` VALUES ('1533', '18', '	5.0 inch', '47', null);
INSERT INTO `productdetails` VALUES ('1534', '40', '1.3 GHz', '47', null);
INSERT INTO `productdetails` VALUES ('1535', '41', '	Quad-core', '47', null);
INSERT INTO `productdetails` VALUES ('1536', '49', '	Spreadtrum SC8830', '47', null);
INSERT INTO `productdetails` VALUES ('1537', '8', '	1 GB', '47', null);
INSERT INTO `productdetails` VALUES ('1538', '176', '	8 GB', '47', null);
INSERT INTO `productdetails` VALUES ('1539', '51', '	Micro SD', '47', null);
INSERT INTO `productdetails` VALUES ('1540', '53', '	12MP', '47', null);
INSERT INTO `productdetails` VALUES ('1541', '54', '	5MP', '47', null);
INSERT INTO `productdetails` VALUES ('1542', '55', '	VGA(640x480 pixels)', '47', null);
INSERT INTO `productdetails` VALUES ('1543', '56', 'Có 3G ( tốc độ Download 21 Mbps, Upload 5.76 Mbps)', '47', null);
INSERT INTO `productdetails` VALUES ('1544', '57', '	Wi-Fi Chuẩn 802.11 b/g/n, Wi-Fi hotspot', '47', null);
INSERT INTO `productdetails` VALUES ('1545', '63', '	WMV7, AVI, MP4, GIF, 3GP, WAV, MPEG-4, DAT, MPG, FLV', '47', null);
INSERT INTO `productdetails` VALUES ('1546', '64', '	WAV, MP3, MIDI, WMA', '47', null);
INSERT INTO `productdetails` VALUES ('1547', '44', '3600mAh', '47', null);
INSERT INTO `productdetails` VALUES ('1548', '45', 'OPPO', '48', null);
INSERT INTO `productdetails` VALUES ('1549', '2', 'Trung Quốc', '48', null);
INSERT INTO `productdetails` VALUES ('1550', '47', '16 triệu màu', '48', null);
INSERT INTO `productdetails` VALUES ('1551', '217', 'HD', '48', null);
INSERT INTO `productdetails` VALUES ('1552', '10', '	750 x 1334 pixels', '48', null);
INSERT INTO `productdetails` VALUES ('1553', '18', '	5.0 inch', '48', null);
INSERT INTO `productdetails` VALUES ('1554', '40', '1.3 GHz', '48', null);
INSERT INTO `productdetails` VALUES ('1555', '41', '	Quad-core', '48', null);
INSERT INTO `productdetails` VALUES ('1556', '49', '	Spreadtrum SC8830', '48', null);
INSERT INTO `productdetails` VALUES ('1557', '8', '	1 GB', '48', null);
INSERT INTO `productdetails` VALUES ('1558', '176', '	8 GB', '48', null);
INSERT INTO `productdetails` VALUES ('1559', '51', '	Micro SD', '48', null);
INSERT INTO `productdetails` VALUES ('1560', '53', '	12MP', '48', null);
INSERT INTO `productdetails` VALUES ('1561', '54', '	5MP', '48', null);
INSERT INTO `productdetails` VALUES ('1562', '55', '	VGA(640x480 pixels)', '48', null);
INSERT INTO `productdetails` VALUES ('1563', '56', 'Có 3G ( tốc độ Download 21 Mbps, Upload 5.76 Mbps)', '48', null);
INSERT INTO `productdetails` VALUES ('1564', '57', '	Wi-Fi Chuẩn 802.11 b/g/n, Wi-Fi hotspot', '48', null);
INSERT INTO `productdetails` VALUES ('1565', '63', '	WMV7, AVI, MP4, GIF, 3GP, WAV, MPEG-4, DAT, MPG, FLV', '48', null);
INSERT INTO `productdetails` VALUES ('1566', '64', '	WAV, MP3, MIDI, WMA', '48', null);
INSERT INTO `productdetails` VALUES ('1567', '44', '3600mAh', '48', null);
INSERT INTO `productdetails` VALUES ('1568', '17', 'MÁY ĐIỆN THOẠI DECT ĐỂ BÀN KẾT NỐI TAY CON KX-TG645', '49', null);
INSERT INTO `productdetails` VALUES ('1569', '78', 'Không dây', '49', null);
INSERT INTO `productdetails` VALUES ('1570', '79', '	Có', '49', null);
INSERT INTO `productdetails` VALUES ('1571', '80', '6 tay con', '49', null);
INSERT INTO `productdetails` VALUES ('1572', '218', 'Màu cam', '49', null);
INSERT INTO `productdetails` VALUES ('1573', '9', '50 số gọi đến và 10 số gọi đi', '49', null);
INSERT INTO `productdetails` VALUES ('1574', '76', 'Có', '49', null);
INSERT INTO `productdetails` VALUES ('1575', '81', 'Có', '49', null);
INSERT INTO `productdetails` VALUES ('1576', '82', 'Có', '49', null);
INSERT INTO `productdetails` VALUES ('1577', '83', 'Có', '49', null);
INSERT INTO `productdetails` VALUES ('1578', '65', 'Có', '49', null);
INSERT INTO `productdetails` VALUES ('1579', '1', 'Panasonic', '49', null);
INSERT INTO `productdetails` VALUES ('1580', '2', 'Chính hãng', '49', null);
INSERT INTO `productdetails` VALUES ('1581', '3', '12 tháng', '49', null);
INSERT INTO `productdetails` VALUES ('1582', '17', 'MÁY ĐIỆN THOẠI DECT ĐỂ BÀN KẾT NỐI TAY CON KX-TG645', '50', null);
INSERT INTO `productdetails` VALUES ('1583', '78', 'Không dây', '50', null);
INSERT INTO `productdetails` VALUES ('1584', '79', '	Có', '50', null);
INSERT INTO `productdetails` VALUES ('1585', '80', '6 tay con', '50', null);
INSERT INTO `productdetails` VALUES ('1586', '218', 'Màu cam', '50', null);
INSERT INTO `productdetails` VALUES ('1587', '9', '50 số gọi đến và 10 số gọi đi', '50', null);
INSERT INTO `productdetails` VALUES ('1588', '76', 'Có', '50', null);
INSERT INTO `productdetails` VALUES ('1589', '81', 'Có', '50', null);
INSERT INTO `productdetails` VALUES ('1590', '82', 'Có', '50', null);
INSERT INTO `productdetails` VALUES ('1591', '83', 'Có', '50', null);
INSERT INTO `productdetails` VALUES ('1592', '65', 'Có', '50', null);
INSERT INTO `productdetails` VALUES ('1593', '1', '	WIDECOM', '50', null);
INSERT INTO `productdetails` VALUES ('1594', '2', 'Chính hãng', '50', null);
INSERT INTO `productdetails` VALUES ('1595', '3', '12 tháng', '50', null);
INSERT INTO `productdetails` VALUES ('1596', '17', 'MÁY ĐIỆN THOẠI DECT ĐỂ BÀN KẾT NỐI TAY CON KX-TG645', '51', null);
INSERT INTO `productdetails` VALUES ('1597', '78', 'Không dây', '51', null);
INSERT INTO `productdetails` VALUES ('1598', '79', '	Có', '51', null);
INSERT INTO `productdetails` VALUES ('1599', '80', '6 tay con', '51', null);
INSERT INTO `productdetails` VALUES ('1600', '218', 'Màu cam', '51', null);
INSERT INTO `productdetails` VALUES ('1601', '9', '50 số gọi đến và 10 số gọi đi', '51', null);
INSERT INTO `productdetails` VALUES ('1602', '76', 'Có', '51', null);
INSERT INTO `productdetails` VALUES ('1603', '81', 'Có', '51', null);
INSERT INTO `productdetails` VALUES ('1604', '82', 'Có', '51', null);
INSERT INTO `productdetails` VALUES ('1605', '83', 'Có', '51', null);
INSERT INTO `productdetails` VALUES ('1606', '65', 'Có', '51', null);
INSERT INTO `productdetails` VALUES ('1607', '1', '	WIDECOM', '51', null);
INSERT INTO `productdetails` VALUES ('1608', '2', 'Chính hãng', '51', null);
INSERT INTO `productdetails` VALUES ('1609', '3', '12 tháng', '51', null);
INSERT INTO `productdetails` VALUES ('1610', '17', 'MÁY ĐIỆN THOẠI DECT ĐỂ BÀN KẾT NỐI TAY CON KX-TG645', '52', null);
INSERT INTO `productdetails` VALUES ('1611', '78', 'Không dây', '52', null);
INSERT INTO `productdetails` VALUES ('1612', '79', '	Có', '52', null);
INSERT INTO `productdetails` VALUES ('1613', '80', '6 tay con', '52', null);
INSERT INTO `productdetails` VALUES ('1614', '218', 'Màu cam', '52', null);
INSERT INTO `productdetails` VALUES ('1615', '9', '50 số gọi đến và 10 số gọi đi', '52', null);
INSERT INTO `productdetails` VALUES ('1616', '76', 'Có', '52', null);
INSERT INTO `productdetails` VALUES ('1617', '81', 'Có', '52', null);
INSERT INTO `productdetails` VALUES ('1618', '82', 'Có', '52', null);
INSERT INTO `productdetails` VALUES ('1619', '83', 'Có', '52', null);
INSERT INTO `productdetails` VALUES ('1620', '65', 'Có', '52', null);
INSERT INTO `productdetails` VALUES ('1621', '1', 'Panasonic', '52', null);
INSERT INTO `productdetails` VALUES ('1622', '2', 'Chính hãng', '52', null);
INSERT INTO `productdetails` VALUES ('1623', '3', '12 tháng', '52', null);
INSERT INTO `productdetails` VALUES ('1624', '17', 'MÁY ĐIỆN THOẠI DECT ĐỂ BÀN KẾT NỐI TAY CON KX-TG645', '53', null);
INSERT INTO `productdetails` VALUES ('1625', '78', 'Không dây', '53', null);
INSERT INTO `productdetails` VALUES ('1626', '79', '	Có', '53', null);
INSERT INTO `productdetails` VALUES ('1627', '80', '6 tay con', '53', null);
INSERT INTO `productdetails` VALUES ('1628', '218', 'Màu cam', '53', null);
INSERT INTO `productdetails` VALUES ('1629', '9', '50 số gọi đến và 10 số gọi đi', '53', null);
INSERT INTO `productdetails` VALUES ('1630', '76', 'Có', '53', null);
INSERT INTO `productdetails` VALUES ('1631', '81', 'Có', '53', null);
INSERT INTO `productdetails` VALUES ('1632', '82', 'Có', '53', null);
INSERT INTO `productdetails` VALUES ('1633', '83', 'Có', '53', null);
INSERT INTO `productdetails` VALUES ('1634', '65', 'Có', '53', null);
INSERT INTO `productdetails` VALUES ('1635', '1', '	WIDECOM', '53', null);
INSERT INTO `productdetails` VALUES ('1636', '2', 'Chính hãng', '53', null);
INSERT INTO `productdetails` VALUES ('1637', '3', '12 tháng', '53', null);
INSERT INTO `productdetails` VALUES ('1638', '17', 'MÁY ĐIỆN THOẠI DECT ĐỂ BÀN KẾT NỐI TAY CON KX-TG645', '54', null);
INSERT INTO `productdetails` VALUES ('1639', '78', 'Không dây', '54', null);
INSERT INTO `productdetails` VALUES ('1640', '79', '	Có', '54', null);
INSERT INTO `productdetails` VALUES ('1641', '80', '6 tay con', '54', null);
INSERT INTO `productdetails` VALUES ('1642', '218', 'Màu cam', '54', null);
INSERT INTO `productdetails` VALUES ('1643', '9', '50 số gọi đến và 10 số gọi đi', '54', null);
INSERT INTO `productdetails` VALUES ('1644', '76', 'Có', '54', null);
INSERT INTO `productdetails` VALUES ('1645', '81', 'Có', '54', null);
INSERT INTO `productdetails` VALUES ('1646', '82', 'Có', '54', null);
INSERT INTO `productdetails` VALUES ('1647', '83', 'Có', '54', null);
INSERT INTO `productdetails` VALUES ('1648', '65', 'Có', '54', null);
INSERT INTO `productdetails` VALUES ('1649', '1', '	WIDECOM', '54', null);
INSERT INTO `productdetails` VALUES ('1650', '2', 'Chính hãng', '54', null);
INSERT INTO `productdetails` VALUES ('1651', '3', '12 tháng', '54', null);
INSERT INTO `productdetails` VALUES ('1652', '17', 'MÁY ĐIỆN THOẠI DECT ĐỂ BÀN KẾT NỐI TAY CON KX-TG645', '55', null);
INSERT INTO `productdetails` VALUES ('1653', '78', 'Không dây', '55', null);
INSERT INTO `productdetails` VALUES ('1654', '79', '	Có', '55', null);
INSERT INTO `productdetails` VALUES ('1655', '80', '6 tay con', '55', null);
INSERT INTO `productdetails` VALUES ('1656', '218', 'Màu cam', '55', null);
INSERT INTO `productdetails` VALUES ('1657', '9', '50 số gọi đến và 10 số gọi đi', '55', null);
INSERT INTO `productdetails` VALUES ('1658', '76', 'Có', '55', null);
INSERT INTO `productdetails` VALUES ('1659', '81', 'Có', '55', null);
INSERT INTO `productdetails` VALUES ('1660', '82', 'Có', '55', null);
INSERT INTO `productdetails` VALUES ('1661', '83', 'Có', '55', null);
INSERT INTO `productdetails` VALUES ('1662', '65', 'Có', '55', null);
INSERT INTO `productdetails` VALUES ('1663', '1', 'Panasonic', '55', null);
INSERT INTO `productdetails` VALUES ('1664', '2', 'Chính hãng', '55', null);
INSERT INTO `productdetails` VALUES ('1665', '3', '12 tháng', '55', null);
INSERT INTO `productdetails` VALUES ('1666', '17', 'MÁY ĐIỆN THOẠI DECT ĐỂ BÀN KẾT NỐI TAY CON KX-TG645', '56', null);
INSERT INTO `productdetails` VALUES ('1667', '78', 'Không dây', '56', null);
INSERT INTO `productdetails` VALUES ('1668', '79', '	Có', '56', null);
INSERT INTO `productdetails` VALUES ('1669', '80', '6 tay con', '56', null);
INSERT INTO `productdetails` VALUES ('1670', '218', 'Màu cam', '56', null);
INSERT INTO `productdetails` VALUES ('1671', '9', '50 số gọi đến và 10 số gọi đi', '56', null);
INSERT INTO `productdetails` VALUES ('1672', '76', 'Có', '56', null);
INSERT INTO `productdetails` VALUES ('1673', '81', 'Có', '56', null);
INSERT INTO `productdetails` VALUES ('1674', '82', 'Có', '56', null);
INSERT INTO `productdetails` VALUES ('1675', '83', 'Có', '56', null);
INSERT INTO `productdetails` VALUES ('1676', '65', 'Có', '56', null);
INSERT INTO `productdetails` VALUES ('1677', '1', '	WIDECOM', '56', null);
INSERT INTO `productdetails` VALUES ('1678', '2', 'Chính hãng', '56', null);
INSERT INTO `productdetails` VALUES ('1679', '3', '12 tháng', '56', null);
INSERT INTO `productdetails` VALUES ('1680', '1', 'DUCATI', '58', null);
INSERT INTO `productdetails` VALUES ('1681', '2', 'Chính hãng', '58', null);
INSERT INTO `productdetails` VALUES ('1682', '5', 'Đen', '58', null);
INSERT INTO `productdetails` VALUES ('1683', '1', 'VietMap', '59', null);
INSERT INTO `productdetails` VALUES ('1684', '3', 'Tiêu chuẩn nhà cung cấp', '59', null);
INSERT INTO `productdetails` VALUES ('1685', '1', 'DUCATI', '60', null);
INSERT INTO `productdetails` VALUES ('1686', '2', 'Chính hãng', '60', null);
INSERT INTO `productdetails` VALUES ('1687', '5', 'Vàng', '60', null);
INSERT INTO `productdetails` VALUES ('1688', '1', 'Coteetci', '61', null);
INSERT INTO `productdetails` VALUES ('1689', '2', 'Trung Quốc', '61', null);
INSERT INTO `productdetails` VALUES ('1690', '5', 'Vàng', '61', null);
INSERT INTO `productdetails` VALUES ('1691', '1', 'Coteetci', '62', null);
INSERT INTO `productdetails` VALUES ('1692', '2', 'Trung Quốc', '62', null);
INSERT INTO `productdetails` VALUES ('1693', '5', 'Đen', '62', null);
INSERT INTO `productdetails` VALUES ('1694', '1', 'Coteetci', '63', null);
INSERT INTO `productdetails` VALUES ('1695', '2', 'Trung Quốc', '63', null);
INSERT INTO `productdetails` VALUES ('1696', '5', 'Đen', '63', null);
INSERT INTO `productdetails` VALUES ('1697', '1', '	Monopod', '64', null);
INSERT INTO `productdetails` VALUES ('1698', '2', 'Trung Quốc', '64', null);
INSERT INTO `productdetails` VALUES ('1699', '5', 'Đen', '64', null);
INSERT INTO `productdetails` VALUES ('1700', '1', 'Reetech', '65', null);
INSERT INTO `productdetails` VALUES ('1701', '2', 'Việt Nam', '65', null);
INSERT INTO `productdetails` VALUES ('1702', '3', '24 tháng', '65', null);
INSERT INTO `productdetails` VALUES ('1703', '17', '2 chiều', '65', null);
INSERT INTO `productdetails` VALUES ('1704', '119', '	12000 BTU', '65', null);
INSERT INTO `productdetails` VALUES ('1705', '219', '	15 - 20 m2', '65', null);
INSERT INTO `productdetails` VALUES ('1706', '220', 'Có', '65', null);
INSERT INTO `productdetails` VALUES ('1707', '221', 'Có', '65', null);
INSERT INTO `productdetails` VALUES ('1708', '222', '	R22', '65', null);
INSERT INTO `productdetails` VALUES ('1709', '223', '	800(R)x265(C)x185(S)mm', '65', null);
INSERT INTO `productdetails` VALUES ('1710', '224', '760(R)x 540(C)x300(S)mm', '65', null);
INSERT INTO `productdetails` VALUES ('1711', '225', '	8 kg', '65', null);
INSERT INTO `productdetails` VALUES ('1712', '226', '	25 kg', '65', null);
INSERT INTO `productdetails` VALUES ('1713', '1', 'Panasonic', '66', null);
INSERT INTO `productdetails` VALUES ('1714', '2', 'Chính hãng', '66', null);
INSERT INTO `productdetails` VALUES ('1715', '3', '24 tháng', '66', null);
INSERT INTO `productdetails` VALUES ('1716', '17', '2 chiều', '66', null);
INSERT INTO `productdetails` VALUES ('1717', '119', '	12000 BTU', '66', null);
INSERT INTO `productdetails` VALUES ('1718', '219', '	15 - 20 m2', '66', null);
INSERT INTO `productdetails` VALUES ('1719', '220', 'Có', '66', null);
INSERT INTO `productdetails` VALUES ('1720', '221', 'Có', '66', null);
INSERT INTO `productdetails` VALUES ('1721', '222', '	R22', '66', null);
INSERT INTO `productdetails` VALUES ('1722', '223', '	800(R)x265(C)x185(S)mm', '66', null);
INSERT INTO `productdetails` VALUES ('1723', '224', '760(R)x 540(C)x300(S)mm', '66', null);
INSERT INTO `productdetails` VALUES ('1724', '225', '	8 kg', '66', null);
INSERT INTO `productdetails` VALUES ('1725', '226', '	25 kg', '66', null);
INSERT INTO `productdetails` VALUES ('1726', '1', 'Panasonic', '67', null);
INSERT INTO `productdetails` VALUES ('1727', '2', 'Chính hãng', '67', null);
INSERT INTO `productdetails` VALUES ('1728', '3', '24 tháng', '67', null);
INSERT INTO `productdetails` VALUES ('1729', '17', '2 chiều', '67', null);
INSERT INTO `productdetails` VALUES ('1730', '119', '	12000 BTU', '67', null);
INSERT INTO `productdetails` VALUES ('1731', '219', '	15 - 20 m2', '67', null);
INSERT INTO `productdetails` VALUES ('1732', '220', 'Có', '67', null);
INSERT INTO `productdetails` VALUES ('1733', '221', 'Có', '67', null);
INSERT INTO `productdetails` VALUES ('1734', '222', '	R22', '67', null);
INSERT INTO `productdetails` VALUES ('1735', '223', '	800(R)x265(C)x185(S)mm', '67', null);
INSERT INTO `productdetails` VALUES ('1736', '224', '760(R)x 540(C)x300(S)mm', '67', null);
INSERT INTO `productdetails` VALUES ('1737', '225', '	8 kg', '67', null);
INSERT INTO `productdetails` VALUES ('1738', '226', '	25 kg', '67', null);
INSERT INTO `productdetails` VALUES ('1739', '1', 'Daikin', '68', null);
INSERT INTO `productdetails` VALUES ('1740', '2', 'Thái Lan', '68', null);
INSERT INTO `productdetails` VALUES ('1741', '3', '24 tháng', '68', null);
INSERT INTO `productdetails` VALUES ('1742', '17', '2 chiều', '68', null);
INSERT INTO `productdetails` VALUES ('1743', '119', '	12000 BTU', '68', null);
INSERT INTO `productdetails` VALUES ('1744', '219', '	15 - 20 m2', '68', null);
INSERT INTO `productdetails` VALUES ('1745', '220', 'Có', '68', null);
INSERT INTO `productdetails` VALUES ('1746', '221', 'Có', '68', null);
INSERT INTO `productdetails` VALUES ('1747', '222', '	R22', '68', null);
INSERT INTO `productdetails` VALUES ('1748', '223', '	800(R)x265(C)x185(S)mm', '68', null);
INSERT INTO `productdetails` VALUES ('1749', '224', '760(R)x 540(C)x300(S)mm', '68', null);
INSERT INTO `productdetails` VALUES ('1750', '225', '	8 kg', '68', null);
INSERT INTO `productdetails` VALUES ('1751', '226', '	25 kg', '68', null);
INSERT INTO `productdetails` VALUES ('1752', '1', 'Daikin', '69', null);
INSERT INTO `productdetails` VALUES ('1753', '2', 'Thái Lan', '69', null);
INSERT INTO `productdetails` VALUES ('1754', '3', '24 tháng', '69', null);
INSERT INTO `productdetails` VALUES ('1755', '17', '2 chiều', '69', null);
INSERT INTO `productdetails` VALUES ('1756', '119', '	12000 BTU', '69', null);
INSERT INTO `productdetails` VALUES ('1757', '219', '	15 - 20 m2', '69', null);
INSERT INTO `productdetails` VALUES ('1758', '220', 'Có', '69', null);
INSERT INTO `productdetails` VALUES ('1759', '221', 'Có', '69', null);
INSERT INTO `productdetails` VALUES ('1760', '222', '	R22', '69', null);
INSERT INTO `productdetails` VALUES ('1761', '223', '	800(R)x265(C)x185(S)mm', '69', null);
INSERT INTO `productdetails` VALUES ('1762', '224', '760(R)x 540(C)x300(S)mm', '69', null);
INSERT INTO `productdetails` VALUES ('1763', '225', '	8 kg', '69', null);
INSERT INTO `productdetails` VALUES ('1764', '226', '	25 kg', '69', null);
INSERT INTO `productdetails` VALUES ('1765', '1', 'Panasonic', '70', null);
INSERT INTO `productdetails` VALUES ('1766', '2', 'Chính hãng', '70', null);
INSERT INTO `productdetails` VALUES ('1767', '3', '24 tháng', '70', null);
INSERT INTO `productdetails` VALUES ('1768', '17', '2 chiều', '70', null);
INSERT INTO `productdetails` VALUES ('1769', '119', '	12000 BTU', '70', null);
INSERT INTO `productdetails` VALUES ('1770', '219', '	15 - 20 m2', '70', null);
INSERT INTO `productdetails` VALUES ('1771', '220', 'Có', '70', null);
INSERT INTO `productdetails` VALUES ('1772', '221', 'Có', '70', null);
INSERT INTO `productdetails` VALUES ('1773', '222', '	R22', '70', null);
INSERT INTO `productdetails` VALUES ('1774', '223', '	800(R)x265(C)x185(S)mm', '70', null);
INSERT INTO `productdetails` VALUES ('1775', '224', '760(R)x 540(C)x300(S)mm', '70', null);
INSERT INTO `productdetails` VALUES ('1776', '225', '	8 kg', '70', null);
INSERT INTO `productdetails` VALUES ('1777', '226', '	25 kg', '70', null);
INSERT INTO `productdetails` VALUES ('1778', '1', 'Daikin', '71', null);
INSERT INTO `productdetails` VALUES ('1779', '2', 'Thái Lan', '71', null);
INSERT INTO `productdetails` VALUES ('1780', '3', '24 tháng', '71', null);
INSERT INTO `productdetails` VALUES ('1781', '17', '2 chiều', '71', null);
INSERT INTO `productdetails` VALUES ('1782', '119', '	12000 BTU', '71', null);
INSERT INTO `productdetails` VALUES ('1783', '219', '	15 - 20 m2', '71', null);
INSERT INTO `productdetails` VALUES ('1784', '220', 'Có', '71', null);
INSERT INTO `productdetails` VALUES ('1785', '221', 'Có', '71', null);
INSERT INTO `productdetails` VALUES ('1786', '222', '	R22', '71', null);
INSERT INTO `productdetails` VALUES ('1787', '223', '	800(R)x265(C)x185(S)mm', '71', null);
INSERT INTO `productdetails` VALUES ('1788', '224', '760(R)x 540(C)x300(S)mm', '71', null);
INSERT INTO `productdetails` VALUES ('1789', '225', '	8 kg', '71', null);
INSERT INTO `productdetails` VALUES ('1790', '226', '	25 kg', '71', null);
INSERT INTO `productdetails` VALUES ('1791', '1', 'Panasonic', '72', null);
INSERT INTO `productdetails` VALUES ('1792', '2', 'Chính hãng', '72', null);
INSERT INTO `productdetails` VALUES ('1793', '3', '24 tháng', '72', null);
INSERT INTO `productdetails` VALUES ('1794', '17', '2 chiều', '72', null);
INSERT INTO `productdetails` VALUES ('1795', '119', '	12000 BTU', '72', null);
INSERT INTO `productdetails` VALUES ('1796', '219', '	15 - 20 m2', '72', null);
INSERT INTO `productdetails` VALUES ('1797', '220', 'Có', '72', null);
INSERT INTO `productdetails` VALUES ('1798', '221', 'Có', '72', null);
INSERT INTO `productdetails` VALUES ('1799', '222', '	R22', '72', null);
INSERT INTO `productdetails` VALUES ('1800', '223', '	800(R)x265(C)x185(S)mm', '72', null);
INSERT INTO `productdetails` VALUES ('1801', '224', '760(R)x 540(C)x300(S)mm', '72', null);
INSERT INTO `productdetails` VALUES ('1802', '225', '	8 kg', '72', null);
INSERT INTO `productdetails` VALUES ('1803', '226', '	25 kg', '72', null);
INSERT INTO `productdetails` VALUES ('1804', '1', '	Samsung', '73', null);
INSERT INTO `productdetails` VALUES ('1805', '2', 'Trung Quốc', '73', null);
INSERT INTO `productdetails` VALUES ('1806', '3', '24 tháng', '73', null);
INSERT INTO `productdetails` VALUES ('1807', '227', '	Side by side', '73', null);
INSERT INTO `productdetails` VALUES ('1808', '228', '2 cửa', '73', null);
INSERT INTO `productdetails` VALUES ('1809', '229', '538 Lít', '73', null);
INSERT INTO `productdetails` VALUES ('1810', '230', '	Hệ thống làm lạnh kép', '73', null);
INSERT INTO `productdetails` VALUES ('1811', '231', '	Khay bằng kính chịu lực', '73', null);
INSERT INTO `productdetails` VALUES ('1812', '232', '	Làm lạnh bằng quạt gió', '73', null);
INSERT INTO `productdetails` VALUES ('1813', '233', 'Khử mùi kép', '73', null);
INSERT INTO `productdetails` VALUES ('1814', '1', '	LG', '74', null);
INSERT INTO `productdetails` VALUES ('1815', '2', 'Chính hãng', '74', null);
INSERT INTO `productdetails` VALUES ('1816', '3', '24 tháng', '74', null);
INSERT INTO `productdetails` VALUES ('1817', '227', '	Side by side', '74', null);
INSERT INTO `productdetails` VALUES ('1818', '228', '1 cửa', '74', null);
INSERT INTO `productdetails` VALUES ('1819', '229', '538 Lít', '74', null);
INSERT INTO `productdetails` VALUES ('1820', '230', '	Hệ thống làm lạnh kép', '74', null);
INSERT INTO `productdetails` VALUES ('1821', '231', '	Khay bằng kính chịu lực', '74', null);
INSERT INTO `productdetails` VALUES ('1822', '232', '	Làm lạnh bằng quạt gió', '74', null);
INSERT INTO `productdetails` VALUES ('1823', '233', 'Khử mùi kép', '74', null);
INSERT INTO `productdetails` VALUES ('1824', '1', '	LG', '75', null);
INSERT INTO `productdetails` VALUES ('1825', '2', 'Indonesia', '75', null);
INSERT INTO `productdetails` VALUES ('1826', '3', '24 tháng', '75', null);
INSERT INTO `productdetails` VALUES ('1827', '227', '	Side by side', '75', null);
INSERT INTO `productdetails` VALUES ('1828', '228', '1 cửa', '75', null);
INSERT INTO `productdetails` VALUES ('1829', '229', '538 Lít', '75', null);
INSERT INTO `productdetails` VALUES ('1830', '230', '	Hệ thống làm lạnh kép', '75', null);
INSERT INTO `productdetails` VALUES ('1831', '231', '	Khay bằng kính chịu lực', '75', null);
INSERT INTO `productdetails` VALUES ('1832', '232', '	Làm lạnh bằng quạt gió', '75', null);
INSERT INTO `productdetails` VALUES ('1833', '233', 'Khử mùi kép', '75', null);
INSERT INTO `productdetails` VALUES ('1834', '1', '	Misubishi', '76', null);
INSERT INTO `productdetails` VALUES ('1835', '2', 'Thái Lan', '76', null);
INSERT INTO `productdetails` VALUES ('1836', '3', '24 tháng', '76', null);
INSERT INTO `productdetails` VALUES ('1837', '227', '	Side by side', '76', null);
INSERT INTO `productdetails` VALUES ('1838', '228', '1 cửa', '76', null);
INSERT INTO `productdetails` VALUES ('1839', '229', '538 Lít', '76', null);
INSERT INTO `productdetails` VALUES ('1840', '230', '	Hệ thống làm lạnh kép', '76', null);
INSERT INTO `productdetails` VALUES ('1841', '231', '	Khay bằng kính chịu lực', '76', null);
INSERT INTO `productdetails` VALUES ('1842', '232', '	Làm lạnh bằng quạt gió', '76', null);
INSERT INTO `productdetails` VALUES ('1843', '233', 'Khử mùi kép', '76', null);
INSERT INTO `productdetails` VALUES ('1844', '1', '	Hitachi', '77', null);
INSERT INTO `productdetails` VALUES ('1845', '2', 'Thái Lan', '77', null);
INSERT INTO `productdetails` VALUES ('1846', '3', '24 tháng', '77', null);
INSERT INTO `productdetails` VALUES ('1847', '227', '	Side by side', '77', null);
INSERT INTO `productdetails` VALUES ('1848', '229', '538 Lít', '77', null);
INSERT INTO `productdetails` VALUES ('1849', '230', '	Hệ thống làm lạnh kép', '77', null);
INSERT INTO `productdetails` VALUES ('1850', '231', '	Khay bằng kính chịu lực', '77', null);
INSERT INTO `productdetails` VALUES ('1851', '232', '	Làm lạnh bằng quạt gió', '77', null);
INSERT INTO `productdetails` VALUES ('1852', '233', 'Khử mùi kép', '77', null);
INSERT INTO `productdetails` VALUES ('1853', '228', '4 cửa', '77', null);
INSERT INTO `productdetails` VALUES ('1854', '2', 'Thái Lan', '78', null);
INSERT INTO `productdetails` VALUES ('1855', '3', '24 tháng', '78', null);
INSERT INTO `productdetails` VALUES ('1856', '227', '	Side by side', '78', null);
INSERT INTO `productdetails` VALUES ('1857', '228', '2 cửa', '78', null);
INSERT INTO `productdetails` VALUES ('1858', '229', '538 Lít', '78', null);
INSERT INTO `productdetails` VALUES ('1859', '230', '	Hệ thống làm lạnh kép', '78', null);
INSERT INTO `productdetails` VALUES ('1860', '231', '	Khay bằng kính chịu lực', '78', null);
INSERT INTO `productdetails` VALUES ('1861', '232', '	Làm lạnh bằng quạt gió', '78', null);
INSERT INTO `productdetails` VALUES ('1862', '233', 'Khử mùi kép', '78', null);
INSERT INTO `productdetails` VALUES ('1863', '1', '	Sharp', '78', null);
INSERT INTO `productdetails` VALUES ('1864', '1', '	Sharp', '79', null);
INSERT INTO `productdetails` VALUES ('1865', '2', 'Thái Lan', '79', null);
INSERT INTO `productdetails` VALUES ('1866', '3', '24 tháng', '79', null);
INSERT INTO `productdetails` VALUES ('1867', '227', '	Side by side', '79', null);
INSERT INTO `productdetails` VALUES ('1868', '228', '2 cửa', '79', null);
INSERT INTO `productdetails` VALUES ('1869', '229', '538 Lít', '79', null);
INSERT INTO `productdetails` VALUES ('1870', '230', '	Hệ thống làm lạnh kép', '79', null);
INSERT INTO `productdetails` VALUES ('1871', '231', '	Khay bằng kính chịu lực', '79', null);
INSERT INTO `productdetails` VALUES ('1872', '232', '	Làm lạnh bằng quạt gió', '79', null);
INSERT INTO `productdetails` VALUES ('1873', '233', 'Khử mùi kép', '79', null);
INSERT INTO `productdetails` VALUES ('1874', '1', '	Sharp', '80', null);
INSERT INTO `productdetails` VALUES ('1875', '2', 'Thái Lan', '80', null);
INSERT INTO `productdetails` VALUES ('1876', '3', '24 tháng', '80', null);
INSERT INTO `productdetails` VALUES ('1877', '227', '	Side by side', '80', null);
INSERT INTO `productdetails` VALUES ('1878', '228', '2 cửa', '80', null);
INSERT INTO `productdetails` VALUES ('1879', '229', '538 Lít', '80', null);
INSERT INTO `productdetails` VALUES ('1880', '230', '	Hệ thống làm lạnh kép', '80', null);
INSERT INTO `productdetails` VALUES ('1881', '231', '	Khay bằng kính chịu lực', '80', null);
INSERT INTO `productdetails` VALUES ('1882', '232', '	Làm lạnh bằng quạt gió', '80', null);
INSERT INTO `productdetails` VALUES ('1883', '233', 'Khử mùi kép', '80', null);
INSERT INTO `productdetails` VALUES ('1884', '234', 'Cửa trên', '81', null);
INSERT INTO `productdetails` VALUES ('1885', '235', '	Lồng đứng', '81', null);
INSERT INTO `productdetails` VALUES ('1886', '1', '	Sharp', '81', null);
INSERT INTO `productdetails` VALUES ('1887', '2', 'Chính hãng', '81', null);
INSERT INTO `productdetails` VALUES ('1888', '3', '12 tháng', '81', null);
INSERT INTO `productdetails` VALUES ('1889', '239', '	430W', '81', null);
INSERT INTO `productdetails` VALUES ('1890', '240', '	10 kg', '81', null);
INSERT INTO `productdetails` VALUES ('1891', '236', '	207 lít', '81', null);
INSERT INTO `productdetails` VALUES ('1892', '237', '750 vòng/phút', '81', null);
INSERT INTO `productdetails` VALUES ('1893', '238', 'Nhiều chương trình giặt', '81', null);
INSERT INTO `productdetails` VALUES ('1894', '234', 'Cửa trước', '82', null);
INSERT INTO `productdetails` VALUES ('1895', '235', '	Lồng Ngang', '82', null);
INSERT INTO `productdetails` VALUES ('1896', '1', 'Electrolux', '82', null);
INSERT INTO `productdetails` VALUES ('1897', '2', 'Chính hãng', '82', null);
INSERT INTO `productdetails` VALUES ('1898', '3', '12 tháng', '82', null);
INSERT INTO `productdetails` VALUES ('1899', '239', '	430W', '82', null);
INSERT INTO `productdetails` VALUES ('1900', '240', '	10 kg', '82', null);
INSERT INTO `productdetails` VALUES ('1901', '236', '	207 lít', '82', null);
INSERT INTO `productdetails` VALUES ('1902', '237', '750 vòng/phút', '82', null);
INSERT INTO `productdetails` VALUES ('1903', '238', 'Nhiều chương trình giặt', '82', null);
INSERT INTO `productdetails` VALUES ('1904', '234', 'Cửa trên', '83', null);
INSERT INTO `productdetails` VALUES ('1905', '235', '	Lồng đứng', '83', null);
INSERT INTO `productdetails` VALUES ('1906', '1', '	Sharp', '83', null);
INSERT INTO `productdetails` VALUES ('1907', '2', 'Chính hãng', '83', null);
INSERT INTO `productdetails` VALUES ('1908', '3', '12 tháng', '83', null);
INSERT INTO `productdetails` VALUES ('1909', '239', '	430W', '83', null);
INSERT INTO `productdetails` VALUES ('1910', '240', '	10 kg', '83', null);
INSERT INTO `productdetails` VALUES ('1911', '236', '	207 lít', '83', null);
INSERT INTO `productdetails` VALUES ('1912', '237', '750 vòng/phút', '83', null);
INSERT INTO `productdetails` VALUES ('1913', '238', 'Nhiều chương trình giặt', '83', null);
INSERT INTO `productdetails` VALUES ('1914', '234', 'Cửa trước', '84', null);
INSERT INTO `productdetails` VALUES ('1915', '235', '	Lồng ngang', '84', null);
INSERT INTO `productdetails` VALUES ('1916', '1', '	Hitachi', '84', null);
INSERT INTO `productdetails` VALUES ('1917', '2', 'Chính hãng', '84', null);
INSERT INTO `productdetails` VALUES ('1918', '3', '12 tháng', '84', null);
INSERT INTO `productdetails` VALUES ('1919', '239', '	430W', '84', null);
INSERT INTO `productdetails` VALUES ('1920', '240', '	10 kg', '84', null);
INSERT INTO `productdetails` VALUES ('1921', '236', '	207 lít', '84', null);
INSERT INTO `productdetails` VALUES ('1922', '237', '750 vòng/phút', '84', null);
INSERT INTO `productdetails` VALUES ('1923', '238', 'Nhiều chương trình giặt', '84', null);
INSERT INTO `productdetails` VALUES ('1924', '234', 'Cửa trên', '85', null);
INSERT INTO `productdetails` VALUES ('1925', '235', '	Lồng đứng', '85', null);
INSERT INTO `productdetails` VALUES ('1926', '1', '	Samsung', '85', null);
INSERT INTO `productdetails` VALUES ('1927', '2', 'Chính hãng', '85', null);
INSERT INTO `productdetails` VALUES ('1928', '3', '12 tháng', '85', null);
INSERT INTO `productdetails` VALUES ('1929', '239', '	430W', '85', null);
INSERT INTO `productdetails` VALUES ('1930', '240', '	10 kg', '85', null);
INSERT INTO `productdetails` VALUES ('1931', '236', '	207 lít', '85', null);
INSERT INTO `productdetails` VALUES ('1932', '237', '750 vòng/phút', '85', null);
INSERT INTO `productdetails` VALUES ('1933', '238', 'Nhiều chương trình giặt', '85', null);
INSERT INTO `productdetails` VALUES ('1934', '234', 'Cửa trên', '86', null);
INSERT INTO `productdetails` VALUES ('1935', '235', '	Lồng đứng', '86', null);
INSERT INTO `productdetails` VALUES ('1936', '1', '	Toshiba', '86', null);
INSERT INTO `productdetails` VALUES ('1937', '2', 'Chính hãng', '86', null);
INSERT INTO `productdetails` VALUES ('1938', '3', '12 tháng', '86', null);
INSERT INTO `productdetails` VALUES ('1939', '239', '	430W', '86', null);
INSERT INTO `productdetails` VALUES ('1940', '240', '	10 kg', '86', null);
INSERT INTO `productdetails` VALUES ('1941', '236', '	207 lít', '86', null);
INSERT INTO `productdetails` VALUES ('1942', '237', '750 vòng/phút', '86', null);
INSERT INTO `productdetails` VALUES ('1943', '238', 'Nhiều chương trình giặt', '86', null);
INSERT INTO `productdetails` VALUES ('1944', '234', 'Cửa trên', '87', null);
INSERT INTO `productdetails` VALUES ('1945', '235', '	Lồng đứng', '87', null);
INSERT INTO `productdetails` VALUES ('1946', '1', '	Toshiba', '87', null);
INSERT INTO `productdetails` VALUES ('1947', '2', 'Chính hãng', '87', null);
INSERT INTO `productdetails` VALUES ('1948', '3', '12 tháng', '87', null);
INSERT INTO `productdetails` VALUES ('1949', '239', '	430W', '87', null);
INSERT INTO `productdetails` VALUES ('1950', '240', '	10 kg', '87', null);
INSERT INTO `productdetails` VALUES ('1951', '236', '	207 lít', '87', null);
INSERT INTO `productdetails` VALUES ('1952', '237', '750 vòng/phút', '87', null);
INSERT INTO `productdetails` VALUES ('1953', '238', 'Nhiều chương trình giặt', '87', null);
INSERT INTO `productdetails` VALUES ('1954', '234', 'Cửa trên', '88', null);
INSERT INTO `productdetails` VALUES ('1955', '235', '	Lồng đứng', '88', null);
INSERT INTO `productdetails` VALUES ('1956', '3', '12 tháng', '88', null);
INSERT INTO `productdetails` VALUES ('1957', '239', '	430W', '88', null);
INSERT INTO `productdetails` VALUES ('1958', '240', '	10 kg', '88', null);
INSERT INTO `productdetails` VALUES ('1959', '236', '	207 lít', '88', null);
INSERT INTO `productdetails` VALUES ('1960', '237', '750 vòng/phút', '88', null);
INSERT INTO `productdetails` VALUES ('1961', '238', 'Nhiều chương trình giặt', '88', null);
INSERT INTO `productdetails` VALUES ('1962', '1', 'LG', '88', null);
INSERT INTO `productdetails` VALUES ('1963', '2', 'Thái Lan', '88', null);
INSERT INTO `productdetails` VALUES ('1964', '1', 'Kangaroo', '89', null);
INSERT INTO `productdetails` VALUES ('1965', '2', 'Chính hãng', '89', null);
INSERT INTO `productdetails` VALUES ('1966', '3', '12 tháng', '89', null);
INSERT INTO `productdetails` VALUES ('1967', '241', '	Máy sấy quần áo', '89', null);
INSERT INTO `productdetails` VALUES ('1968', '42', '	3.5Kg', '89', null);
INSERT INTO `productdetails` VALUES ('1969', '14', '	368x290x250 mm', '89', null);
INSERT INTO `productdetails` VALUES ('1970', '239', '1.000W', '89', null);
INSERT INTO `productdetails` VALUES ('1971', '242', '	Sấy khô tĩnh hiện đại', '89', null);
INSERT INTO `productdetails` VALUES ('1972', '243', '	Đèn chiếu tia cực tím', '89', null);
INSERT INTO `productdetails` VALUES ('1973', '180', 'Có', '89', null);
INSERT INTO `productdetails` VALUES ('1974', '1', 'Bosch', '90', null);
INSERT INTO `productdetails` VALUES ('1975', '2', 'Ba Lan', '90', null);
INSERT INTO `productdetails` VALUES ('1976', '3', '12 tháng', '90', null);
INSERT INTO `productdetails` VALUES ('1977', '241', '	Máy sấy quần áo', '90', null);
INSERT INTO `productdetails` VALUES ('1978', '42', '	3.5Kg', '90', null);
INSERT INTO `productdetails` VALUES ('1979', '14', '	368x290x250 mm', '90', null);
INSERT INTO `productdetails` VALUES ('1980', '239', '1.000W', '90', null);
INSERT INTO `productdetails` VALUES ('1981', '242', '	Sấy khô tĩnh hiện đại', '90', null);
INSERT INTO `productdetails` VALUES ('1982', '243', '	Đèn chiếu tia cực tím', '90', null);
INSERT INTO `productdetails` VALUES ('1983', '180', 'Có', '90', null);
INSERT INTO `productdetails` VALUES ('1984', '1', '	Electrolux', '91', null);
INSERT INTO `productdetails` VALUES ('1985', '2', 'Thái Lan', '91', null);
INSERT INTO `productdetails` VALUES ('1986', '3', '12 tháng', '91', null);
INSERT INTO `productdetails` VALUES ('1987', '241', '	Máy sấy quần áo', '91', null);
INSERT INTO `productdetails` VALUES ('1988', '42', '	3.5Kg', '91', null);
INSERT INTO `productdetails` VALUES ('1989', '14', '	368x290x250 mm', '91', null);
INSERT INTO `productdetails` VALUES ('1990', '239', '1.000W', '91', null);
INSERT INTO `productdetails` VALUES ('1991', '242', '	Sấy khô tĩnh hiện đại', '91', null);
INSERT INTO `productdetails` VALUES ('1992', '243', '	Đèn chiếu tia cực tím', '91', null);
INSERT INTO `productdetails` VALUES ('1993', '180', 'Có', '91', null);
INSERT INTO `productdetails` VALUES ('1994', '1', '	Sunhouse', '92', null);
INSERT INTO `productdetails` VALUES ('1995', '2', 'Chính hãng', '92', null);
INSERT INTO `productdetails` VALUES ('1996', '3', '12 tháng', '92', null);
INSERT INTO `productdetails` VALUES ('1997', '241', '	Máy sấy quần áo', '92', null);
INSERT INTO `productdetails` VALUES ('1998', '42', '	3.5Kg', '92', null);
INSERT INTO `productdetails` VALUES ('1999', '14', '	368x290x250 mm', '92', null);
INSERT INTO `productdetails` VALUES ('2000', '239', '1.000W', '92', null);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `category` int(11) DEFAULT NULL,
  `provider` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `sells` int(11) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `post` int(11) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_name_product` (`name`),
  KEY `fk_prod_cate` (`category`),
  KEY `fk_prod_provider` (`provider`),
  KEY `fk_prod_post` (`post`),
  CONSTRAINT `fk_prod_cate` FOREIGN KEY (`category`) REFERENCES `categories` (`id`),
  CONSTRAINT `fk_prod_post` FOREIGN KEY (`post`) REFERENCES `posts` (`id`),
  CONSTRAINT `fk_prod_provider` FOREIGN KEY (`provider`) REFERENCES `providers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'Lò vi sóng Panasonic NN-GF574MYUE', '5000000', '34', '2', '354', '354', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'lo-vi-song-panasonic-nn-gf574myue.html');
INSERT INTO `products` VALUES ('2', 'LÒ VI SÓNG SHARP R23A1SVN', '10000000', '34', '10', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'lo-vi-song-sharp-r23a1svn.html');
INSERT INTO `products` VALUES ('3', 'Lò vi sóng SHARP R-G620VN-ST', '5000000', '34', '10', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'lo-vi-song-sharp-r-g620vn-st.html');
INSERT INTO `products` VALUES ('4', 'Lò vi sóng ELECTROLUX EMM2311W 23L, có nướng', '10000000', '34', '4', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'lo-vi-song-electrolux-emm2311w-23l,-co-nuong.html');
INSERT INTO `products` VALUES ('5', 'LÒ VI SÓNG LG MH6342D', '5000000', '34', '7', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'lo-vi-song-lg-mh6342d.html');
INSERT INTO `products` VALUES ('6', 'LÒ VI SÓNG SHARP R21A1SVN', '10000000', '34', '10', '6', '6', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'lo-vi-song-sharp-r21a1svn.html');
INSERT INTO `products` VALUES ('7', 'LÒ VI SÓNG SHARP R-C932VN (ST)', '5000000', '34', '10', '246', '246', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'lo-vi-song-sharp-r-c932vn-(st).html');
INSERT INTO `products` VALUES ('8', 'LÒ VI SÓNG ELECTROLUX EMS3067X', '10000000', '34', '4', '24', '24', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'lo-vi-song-electrolux-ems3067x.html');
INSERT INTO `products` VALUES ('9', 'MÁY LỌC NƯỚC KAROFI KT-K70', '5000000', '35', '41', '2', '2', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-loc-nuoc-karofi-kt-k70.html');
INSERT INTO `products` VALUES ('10', 'MÁY LỌC NƯỚC KANGAROO KG107MH 7 LÕI', '10000000', '35', '42', '7', '7', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-loc-nuoc-kangaroo-kg107mh-7-loi.html');
INSERT INTO `products` VALUES ('11', 'MÁY LỌC NƯỚC KORIHOME WHP-1670', '5000000', '35', '41', '753', '753', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-loc-nuoc-korihome-whp-1670.html');
INSERT INTO `products` VALUES ('12', 'MÁY LỌC NƯỚC MYOTA MY-21-KNT', '10000000', '35', '43', '453', '453', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-loc-nuoc-myota-my-21-knt.html');
INSERT INTO `products` VALUES ('13', 'MÁY LỌC NƯỚC KAROFI EPU-030S', '5000000', '35', '44', '46', '46', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-loc-nuoc-karofi-epu-030s.html');
INSERT INTO `products` VALUES ('14', 'MÁY LỌC NƯỚC KANGAROO KG107NHIEMTU 7 LÕI', '10000000', '35', '42', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-loc-nuoc-kangaroo-kg107nhiemtu-7-loi.html');
INSERT INTO `products` VALUES ('15', 'MÁY LỌC NƯỚC AO SMITH AR75-A-S-1', '5000000', '35', '45', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-loc-nuoc-ao-smith-ar75-a-s-1.html');
INSERT INTO `products` VALUES ('17', 'CÂY NƯỚC NÓNG LẠNH KANGAROO KG3331', '10000000', '35', '42', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'cay-nuoc-nong-lanh-kangaroo-kg3331.html');
INSERT INTO `products` VALUES ('18', 'CÂY NƯỚC CNC CNC450HC', '40000000', '35', '46', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'cay-nuoc-cnc-cnc450hc.html');
INSERT INTO `products` VALUES ('19', 'CÂY NƯỚC NÓNG LẠNH MYOTA MY-17', '5000000', '35', '43', '1', '1', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'cay-nuoc-nong-lanh-myota-my-17.html');
INSERT INTO `products` VALUES ('20', 'CÂY NƯỚC KANGAROO KG47', '10000000', '35', '42', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'cay-nuoc-kangaroo-kg47.html');
INSERT INTO `products` VALUES ('21', 'CÂY NƯỚC NÓNG LẠNH COMET CM8916', '5000000', '35', '48', '21342', '21342', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'cay-nuoc-nong-lanh-comet-cm8916.html');
INSERT INTO `products` VALUES ('22', 'CÂY NƯỚC KANGAROO KG44 - HỒNG', '10000000', '35', '42', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'cay-nuoc-kangaroo-kg44---hong.html');
INSERT INTO `products` VALUES ('23', 'CÂY NƯỚC KANGAROO KG43 -XANH', '5000000', '35', '42', '423', '423', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'cay-nuoc-kangaroo-kg43--xanh.html');
INSERT INTO `products` VALUES ('24', 'SƯỞI PTC CERAMIC KORIHOME EHK-102-S', '10000000', '35', '44', '23', '23', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'suoi-ptc-ceramic-korihome-ehk-102-s.html');
INSERT INTO `products` VALUES ('25', 'ĐÈN SƯỞI HALOGEN KANGAROO KG1010C', '5000000', '36', '42', '2', '2', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'đen-suoi-halogen-kangaroo-kg1010c.html');
INSERT INTO `products` VALUES ('26', 'SƯỞI HỒNG NGOẠI SUNHOUSE SHD7020', '10000000', '36', '15', '2', '2', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'suoi-hong-ngoai-sunhouse-shd7020.html');
INSERT INTO `products` VALUES ('27', 'QUẠT SƯỞI KORIHOME - EHK-101-S', '5000000', '36', '41', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'quat-suoi-korihome---ehk-101-s.html');
INSERT INTO `products` VALUES ('28', 'ĐÈN SƯỞI NHÀ TẮM SUNHOUSE SHD3803', '10000000', '36', '15', '235', '235', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'đen-suoi-nha-tam-sunhouse-shd3803.html');
INSERT INTO `products` VALUES ('29', 'ÈN SƯỞI HALOGEN KANGAROO KG1011C', '5000000', '36', '42', '23', '23', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'en-suoi-halogen-kangaroo-kg1011c.html');
INSERT INTO `products` VALUES ('30', 'ĐÈN SƯỞI HALOGEN KANGAROO KG1012C', '10000000', '36', '42', '23', '23', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'đen-suoi-halogen-kangaroo-kg1012c.html');
INSERT INTO `products` VALUES ('31', 'XE MÁY ĐIỆN E-SCOOTER 133S- XANH', '5000000', '39', '49', '42', '42', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'xe-may-đien-e-scooter-133s--xanh.html');
INSERT INTO `products` VALUES ('32', 'XE MÁY ĐIỆN ANBICO AP1506 - TRẮNG', '10000000', '39', '50', '12', '12', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'xe-may-đien-anbico-ap1506---trang.html');
INSERT INTO `products` VALUES ('33', 'XE ĐẠP ĐIỆN ANBICO AP1505 - ĐỎ', '5000000', '38', '51', '12', '12', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'xe-đap-đien-anbico-ap1505---đo.html');
INSERT INTO `products` VALUES ('34', 'XE ĐẠP ĐIỆN NIJIA 2014 PHANH ĐĨA, LỐP KHÔNG SĂM, ĐỒNG HỒ CƠ - XANH LỤC', '10000000', '38', '51', '12', '12', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'xe-đap-đien-nijia-2014-phanh-đia,-lop-khong-sam,-đong-ho-co---xanh-luc.html');
INSERT INTO `products` VALUES ('35', 'XE ĐẠP ĐIỆN GIANT MOMENTUM 133S - TRẮNG', '40000000', '38', '52', '23', '23', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'xe-đap-đien-giant-momentum-133s---trang.html');
INSERT INTO `products` VALUES ('36', 'XE ĐẠP ĐIỆN MOCHA AIMA - VÀNG', '5000000', '38', '53', '123', '123', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'xe-đap-đien-mocha-aima---vang.html');
INSERT INTO `products` VALUES ('38', 'KÍNH 3D SONY', '10000000', '135', '2', '44', '44', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'kinh-3d-sony.html');
INSERT INTO `products` VALUES ('39', 'GIÁ TREO GÓC TV 40-55 INCH GTV40X52', '5000000', '133', '54', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'gia-treo-goc-tv-40-55-inch-gtv40x52.html');
INSERT INTO `products` VALUES ('40', 'ASUS F454LA-WX390D', '10000000', '108', '28', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'asus-f454la-wx390d.html');
INSERT INTO `products` VALUES ('41', 'ASUS F555LF-XX166D - ĐEN', '5000000', '106', '28', '12', '12', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'asus-f555lf-xx166d---đen.html');
INSERT INTO `products` VALUES ('42', 'LENOVO IDEAPAD100-80MH0002VN', '10000000', '107', '33', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'lenovo-ideapad100-80mh0002vn.html');
INSERT INTO `products` VALUES ('43', 'ASUS X453MA-WX267D - ĐEN', '5000000', '108', '28', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'asus-x453ma-wx267d---đen.html');
INSERT INTO `products` VALUES ('44', 'DELL INSPIRON N3558-70062972', '10000000', '106', '31', '12', '12', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'dell-inspiron-n3558-70062972.html');
INSERT INTO `products` VALUES ('45', 'LENOVO IDEAPAD 100-15IBD 80QQ000FVN', '5000000', '107', '33', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'lenovo-ideapad-100-15ibd-80qq000fvn.html');
INSERT INTO `products` VALUES ('46', 'DELL INSPIRON N5558 M5I5250W - BẠC', '10000000', '108', '31', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'dell-inspiron-n5558-m5i5250w---bac.html');
INSERT INTO `products` VALUES ('47', 'LENOVO Z5070-59441532', '5000000', '109', '33', '1', '1', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'lenovo-z5070-59441532.html');
INSERT INTO `products` VALUES ('48', 'MÁY TÍNH ĐỂ BÀN ASUS K30AD-VN018D', '10000000', '106', '28', '1', '1', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-tinh-đe-ban-asus-k30ad-vn018d.html');
INSERT INTO `products` VALUES ('49', 'MÁY TÍNH ĐỂ BÀN DELL VOSTRO 3900MT-4160V1G - CẠC RỜI 1GB', '5000000', '106', '31', '423', '423', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-tinh-đe-ban-dell-vostro-3900mt-4160v1g---cac-roi-1gb.html');
INSERT INTO `products` VALUES ('50', 'MÁY TÍNH ĐỂ BÀN HP 202G1-MT3470', '10000000', '106', '29', '23', '23', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-tinh-đe-ban-hp-202g1-mt3470.html');
INSERT INTO `products` VALUES ('51', 'DELL INSPIRON 3847-4460V1G', '5000000', '106', '31', '7', '7', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'dell-inspiron-3847-4460v1g.html');
INSERT INTO `products` VALUES ('52', 'MÁY TÍNH ĐỂ BÀN DELL VOSTRO 3800ST', '10000000', '106', '31', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-tinh-đe-ban-dell-vostro-3800st.html');
INSERT INTO `products` VALUES ('53', 'ACER ASPIRE XC6054150', '40000000', '106', '30', '54', '54', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'acer-aspire-xc6054150.html');
INSERT INTO `products` VALUES ('54', 'DELL VOSTRO V3902-MT4790', '5000000', '106', '31', '34', '34', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'dell-vostro-v3902-mt4790.html');
INSERT INTO `products` VALUES ('55', 'MÁY TÍNH ĐỂ BÀN DELL VOSTRO 3900MT 4170V2G', '10000000', '106', '31', '23', '23', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-tinh-đe-ban-dell-vostro-3900mt-4170v2g.html');
INSERT INTO `products` VALUES ('56', 'LOA MICROLAB M108 2.1', '5000000', '108', '55', '23', '23', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'loa-microlab-m108-2.1.html');
INSERT INTO `products` VALUES ('57', 'LOA MICROLAB X2 2.1', '10000000', '108', '55', '34', '34', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'loa-microlab-x2-2.1.html');
INSERT INTO `products` VALUES ('58', 'LOA MICROLAB M590 2.1', '5000000', '108', '55', '45', '45', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'loa-microlab-m590-2.1.html');
INSERT INTO `products` VALUES ('59', 'MICROLAB M590 4.1', '10000000', '108', '55', '74', '74', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'microlab-m590-4.1.html');
INSERT INTO `products` VALUES ('60', 'LOA MICROLAB M109 2.1', '5000000', '108', '55', '6', '6', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'loa-microlab-m109-2.1.html');
INSERT INTO `products` VALUES ('61', 'FENDA F203G PLUS - 2.1', '10000000', '108', '56', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'fenda-f203g-plus---2.1.html');
INSERT INTO `products` VALUES ('62', 'LOA FANTOM FS-102A 2.1', '5000000', '108', '57', null, null, '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'loa-fantom-fs-102a-2.1.html');
INSERT INTO `products` VALUES ('63', 'LOA VI TÍNH GENIUS SP-U115', '10000000', '108', '58', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'loa-vi-tinh-genius-sp-u115.html');
INSERT INTO `products` VALUES ('64', 'MÀN HÌNH MÁY TÍNH LED DELL E1914H', '5000000', '107', '31', '4543', '4543', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'man-hinh-may-tinh-led-dell-e1914h.html');
INSERT INTO `products` VALUES ('65', 'MÀN HÌNH MÁY TÍNH DELL LED E2014H', '10000000', '107', '31', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'man-hinh-may-tinh-dell-led-e2014h.html');
INSERT INTO `products` VALUES ('66', 'MÀN HÌNH MÁY TÍNH LED DELL P2314H IPS - 23INCH', '5000000', '107', '31', '34', '34', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'man-hinh-may-tinh-led-dell-p2314h-ips---23inch.html');
INSERT INTO `products` VALUES ('67', 'MÀN HÌNH MÁY TÍNH LED IPS LG 24MP56HQ', '10000000', '107', '7', '34', '34', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'man-hinh-may-tinh-led-ips-lg-24mp56hq.html');
INSERT INTO `products` VALUES ('68', 'MÀN HÌNH MÁY TÍNH DELL ULTRASHARP U2414H LED', '5000000', '107', '31', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'man-hinh-may-tinh-dell-ultrasharp-u2414h-led.html');
INSERT INTO `products` VALUES ('69', 'MÀN HÌNH MÁY TÍNH DELL LED LCD S2415H', '10000000', '107', '31', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'man-hinh-may-tinh-dell-led-lcd-s2415h.html');
INSERT INTO `products` VALUES ('70', 'MÀN HÌNH LED SAMSUNG LS20D300NHMXV 19,5 INCH', '40000000', '107', '1', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'man-hinh-led-samsung-ls20d300nhmxv-19,5-inch.html');
INSERT INTO `products` VALUES ('71', 'MÀN HÌNH MÁY TÍNH LED ASUS VX207DE', '5000000', '107', '28', '51', '51', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'man-hinh-may-tinh-led-asus-vx207de.html');
INSERT INTO `products` VALUES ('72', 'AMPLY KARAOKE ARIRANG PA203XG', '10000000', '110', '59', '6', '6', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'amply-karaoke-arirang-pa203xg.html');
INSERT INTO `products` VALUES ('73', 'AMPLY KARAOKE JARGUAR SUHYOUNG PA-600A', '5000000', '110', '60', '13', '13', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'amply-karaoke-jarguar-suhyoung-pa-600a.html');
INSERT INTO `products` VALUES ('74', 'AMPLY KARAOKE PARAMAX SA-500', '10000000', '110', '61', '1', '1', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'amply-karaoke-paramax-sa-500.html');
INSERT INTO `products` VALUES ('75', 'AMPLY KARAOKE VITEK KA925', '5000000', '110', '62', '6', '6', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'amply-karaoke-vitek-ka925.html');
INSERT INTO `products` VALUES ('76', 'AMPLY PARAMAX SA-333', '10000000', '110', '61', '134', '134', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'amply-paramax-sa-333.html');
INSERT INTO `products` VALUES ('77', 'AMPLY JARGUAR SUHYOUNG PA-506HI ANALOG, KARAOKE', '5000000', '110', '60', '13', '13', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'amply-jarguar-suhyoung-pa-506hi-analog,-karaoke.html');
INSERT INTO `products` VALUES ('78', 'ÂM LY KARAOKE ACNOS 8 FET - SA1801F', '10000000', '110', '63', '7', '7', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'am-ly-karaoke-acnos-8-fet---sa1801f.html');
INSERT INTO `products` VALUES ('79', 'AMPLY PARAMAX SA-999XP', '5000000', '110', '61', '23', '23', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'amply-paramax-sa-999xp.html');
INSERT INTO `products` VALUES ('80', 'ĐẦU KARAOKE ACNOS STAR MIDI SK28', '10000000', '111', '63', '23', '23', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'đau-karaoke-acnos-star-midi-sk28.html');
INSERT INTO `products` VALUES ('81', 'ĐẦU KARAOKE VOD CAO CẤP HANET HD10S', '5000000', '111', '64', '213', '213', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'đau-karaoke-vod-cao-cap-hanet-hd10s.html');
INSERT INTO `products` VALUES ('82', 'ĐẦU KARAOKE ACNOS STAR MIDI HDMI SK69HDMI', '10000000', '111', '63', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'đau-karaoke-acnos-star-midi-hdmi-sk69hdmi.html');
INSERT INTO `products` VALUES ('83', 'ĐẦU KARAOKE ACNOS STAR MIDI HDMI SK59HDMI', '5000000', '111', '63', '1', '1', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'đau-karaoke-acnos-star-midi-hdmi-sk59hdmi.html');
INSERT INTO `products` VALUES ('84', 'ĐẦU MIDI KARAOKE MUSICCORE TS-3', '10000000', '111', '65', '623', '623', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'đau-midi-karaoke-musiccore-ts-3.html');
INSERT INTO `products` VALUES ('85', 'ĐẦU KARAOKE NOSTA TKR-304V', '5000000', '111', '66', '423', '423', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'đau-karaoke-nosta-tkr-304v.html');
INSERT INTO `products` VALUES ('86', 'ĐẦU KARAOKE VOD HANET HDAIR', '10000000', '111', '64', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'đau-karaoke-vod-hanet-hdair.html');
INSERT INTO `products` VALUES ('88', 'LOA KARAOKE JBL KS308', '40000000', '112', '67', '6', '6', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'loa-karaoke-jbl-ks308.html');
INSERT INTO `products` VALUES ('89', 'LOA SIÊU TRẦM CAO CẤP GUINNESS SB -1800III', '5000000', '112', '68', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'loa-sieu-tram-cao-cap-guinness-sb--1800iii.html');
INSERT INTO `products` VALUES ('90', 'LOA KARAOKE GUINNESS 103VII', '10000000', '112', '68', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'loa-karaoke-guinness-103vii.html');
INSERT INTO `products` VALUES ('91', 'LOA JARGUAR SS- 451, BASS 25, KARAOKE', '5000000', '112', '60', '7', '7', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'loa-jarguar-ss--451,-bass-25,-karaoke.html');
INSERT INTO `products` VALUES ('92', 'LOA KARAOKE JBL KI110 - PAK ( 2 LOA/BỘ)', '10000000', '112', '67', '6', '6', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'loa-karaoke-jbl-ki110---pak-(-2-loa/bo).html');
INSERT INTO `products` VALUES ('93', 'LOA KARAOKE VITEK KS926', '5000000', '112', '62', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'loa-karaoke-vitek-ks926.html');
INSERT INTO `products` VALUES ('94', 'LOA KARAOKE JBL KS310', '10000000', '112', '67', '2', '2', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'loa-karaoke-jbl-ks310.html');
INSERT INTO `products` VALUES ('95', 'LOA KARAOKE PARAMAX P-2000', '5000000', '112', '61', '412', '412', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'loa-karaoke-paramax-p-2000.html');
INSERT INTO `products` VALUES ('96', 'MICRO CÓ DÂY SHURE SM58SK ( CÓ CÔNG TẮC)', '10000000', '113', '70', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'micro-co-day-shure-sm58sk-(-co-cong-tac).html');
INSERT INTO `products` VALUES ('97', 'MICRO KHÔNG DÂY GUINNESS MU1200', '5000000', '113', '68', '12', '12', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'micro-khong-day-guinness-mu1200.html');
INSERT INTO `products` VALUES ('98', 'LOA + SUB PIONEER S-SRS33TB', '10000000', '112', '36', '12', '12', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'loa-+-sub-pioneer-s-srs33tb.html');
INSERT INTO `products` VALUES ('99', 'DÀN ÂM THANH DENON DHT510BT, ( AMPLY AVR-X510BT + LOA SYS5.1BKE1)', '5000000', '121', '38', '523', '523', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'dan-am-thanh-denon-dht510bt,-(-amply-avr-x510bt-+-loa-sys5.1bke1).html');
INSERT INTO `products` VALUES ('100', 'LOA PIONEER S-RS88TB', '10000000', '112', '36', '2', '2', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'loa-pioneer-s-rs88tb.html');
INSERT INTO `products` VALUES ('101', 'LOA JAMO SIÊU TRẦM SUBJ12', '5000000', '112', '39', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'loa-jamo-sieu-tram-subj12.html');
INSERT INTO `products` VALUES ('102', 'LOA JAMO SIÊU TRẦM SUBJ10', '10000000', '112', '39', '23', '23', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'loa-jamo-sieu-tram-subj10.html');
INSERT INTO `products` VALUES ('103', 'LOA JAMO C97', '5000000', '112', '39', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'loa-jamo-c97.html');
INSERT INTO `products` VALUES ('104', 'BỘ LOA JAMO S526-HCS', '10000000', '112', '39', '3464', '3464', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'bo-loa-jamo-s526-hcs.html');
INSERT INTO `products` VALUES ('105', 'LOA PIONEER SUBWOOFER S-31W', '5000000', '112', '36', '6', '6', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'loa-pioneer-subwoofer-s-31w.html');
INSERT INTO `products` VALUES ('106', 'DÀN MINI COMPONENT PARTY MASTER SAMSUNG MX-HS8500/XV', '10000000', '112', '1', '32', '32', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'dan-mini-component-party-master-samsung-mx-hs8500/xv.html');
INSERT INTO `products` VALUES ('107', 'LOA SAMSUNG 360 ĐỘ WAM6501/XV', '5000000', '112', '1', '23', '23', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'loa-samsung-360-đo-wam6501/xv.html');
INSERT INTO `products` VALUES ('108', 'DÀN ÂM THANH SONY SHAKE-88', '10000000', '124', '71', '613', '613', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'dan-am-thanh-sony-shake-88.html');
INSERT INTO `products` VALUES ('109', 'DÀN ÂM THANH BLURAY 3D SONY BDVN9200W/BMSP1 - 5.1', '5000000', '123', '71', '436', '436', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'dan-am-thanh-bluray-3d-sony-bdvn9200w/bmsp1---5.1.html');
INSERT INTO `products` VALUES ('110', 'DÀN ÂM THANH BDV-E4100', '10000000', '122', '71', '8', '8', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'dan-am-thanh-bdv-e4100.html');
INSERT INTO `products` VALUES ('111', 'DÀN ÂM THANH MUTEKI SONY HT-M22', '40000000', '121', '71', '68', '68', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'dan-am-thanh-muteki-sony-ht-m22.html');
INSERT INTO `products` VALUES ('112', 'DÀN ÂM THANH PANASONIC SC-MAX370GSK ( SA -MAX370GSK - SB -MAX370GSK) 2.0 KÊNH', '5000000', '120', '2', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'dan-am-thanh-panasonic-sc-max370gsk-(-sa--max370gsk---sb--max370gsk)-2.0-kenh.html');
INSERT INTO `products` VALUES ('113', 'DÀN ÂM THANH HI-FI PANASONIC SC-HC49GS-S, NFC', '10000000', '119', '2', '7', '7', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'dan-am-thanh-hi-fi-panasonic-sc-hc49gs-s,-nfc.html');
INSERT INTO `products` VALUES ('114', 'MÁY ẢNH CANON EOS70D BODY - EOS70DBODY', '5000000', '31', '72', '435', '435', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-anh-canon-eos70d-body---eos70dbody.html');
INSERT INTO `products` VALUES ('115', 'MÁY ẢNH NIKON D3300', '10000000', '30', '73', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-anh-nikon-d3300.html');
INSERT INTO `products` VALUES ('116', 'MÁY ẢNH CANON EOS700D - EOS700D', '5000000', '31', '72', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-anh-canon-eos700d---eos700d.html');
INSERT INTO `products` VALUES ('117', 'MÁY ẢNH SONY ILCE-5000L( ALPHA 5000) MÀU TRẮNG KÈM ỐNG KÍNH 16-50MM', '10000000', '30', '71', '52', '52', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-anh-sony-ilce-5000l(-alpha-5000)-mau-trang-kem-ong-kinh-16-50mm.html');
INSERT INTO `products` VALUES ('118', 'MÁY ẢNH NIKON D7000', '5000000', '31', '73', '35', '35', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-anh-nikon-d7000.html');
INSERT INTO `products` VALUES ('119', 'MÁY ẢNH SONY ILCE-5000L MÀU ĐEN ( ALPHA 5000) KÈM ỐNG KÍNH 16-50MM', '10000000', '30', '71', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-anh-sony-ilce-5000l-mau-đen-(-alpha-5000)-kem-ong-kinh-16-50mm.html');
INSERT INTO `products` VALUES ('120', 'MÁY ẢNH NIKON D5200 24.1 MP LENS AF-S DX 18-55MM - D5200K', '5000000', '31', '73', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-anh-nikon-d5200-24.1-mp-lens-af-s-dx-18-55mm---d5200k.html');
INSERT INTO `products` VALUES ('121', 'MÁY ẢNH NIKON D5300 KIT 1855', '10000000', '30', '73', '325', '325', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-anh-nikon-d5300-kit-1855.html');
INSERT INTO `products` VALUES ('122', 'MÁY ẢNH SONY DSCWX350 - HỒNG SẪM', '5000000', '31', '71', '2', '2', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-anh-sony-dscwx350---hong-sam.html');
INSERT INTO `products` VALUES ('123', 'MÁY ẢNH CANON SX710 - ĐEN', '10000000', '30', '72', '512', '512', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-anh-canon-sx710---đen.html');
INSERT INTO `products` VALUES ('124', 'MÁY ẢNH SONY DSCWX220 - ĐEN', '5000000', '31', '71', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-anh-sony-dscwx220---đen.html');
INSERT INTO `products` VALUES ('125', 'MÁY ẢNH SONY DSC-W800B', '10000000', '30', '71', '567', '567', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-anh-sony-dsc-w800b.html');
INSERT INTO `products` VALUES ('126', 'MÁY ẢNH SONY DSCWX350S', '5000000', '31', '71', '9', '9', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-anh-sony-dscwx350s.html');
INSERT INTO `products` VALUES ('127', 'MÁY ẢNH CANON SX530', '10000000', '30', '72', '6243', '6243', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-anh-canon-sx530.html');
INSERT INTO `products` VALUES ('128', 'MÁY ẢNH SONY DSCWX80R', '5000000', '31', '71', '2', '2', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-anh-sony-dscwx80r.html');
INSERT INTO `products` VALUES ('129', 'MÁY ẢNH SX610 - ĐEN', '10000000', '30', '72', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-anh-sx610---đen.html');
INSERT INTO `products` VALUES ('130', 'MÁY QUAY SONY 4K FDR-AXP35', '5000000', '32', '71', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-quay-sony-4k-fdr-axp35.html');
INSERT INTO `products` VALUES ('131', 'MÁY QUAY SONY HDRPJ440', '10000000', '32', '71', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-quay-sony-hdrpj440.html');
INSERT INTO `products` VALUES ('132', 'MÁY QUAY PHIM FULL HD SONY HDR-PJ670E', '5000000', '32', '71', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-quay-phim-full-hd-sony-hdr-pj670e.html');
INSERT INTO `products` VALUES ('133', 'MÁY QUAY SONY HDRCX405', '10000000', '32', '71', '523', '523', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-quay-sony-hdrcx405.html');
INSERT INTO `products` VALUES ('134', 'MÁY QUAY SONY HDRAS200VR - TRẮNG', '40000000', '32', '71', '23', '23', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-quay-sony-hdras200vr---trang.html');
INSERT INTO `products` VALUES ('135', 'MÁY GHI ÂM SONY ICD-UX543FBCE', '5000000', '33', '71', '7', '7', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-ghi-am-sony-icd-ux543fbce.html');
INSERT INTO `products` VALUES ('136', 'MÁY GHI ÂM SONY ICD-UX543FPCE', '10000000', '33', '71', '7', '7', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-ghi-am-sony-icd-ux543fpce.html');
INSERT INTO `products` VALUES ('137', 'MÁY GHI ÂM SONY ICD-UX543FTCE', '5000000', '33', '71', '51235', '51235', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-ghi-am-sony-icd-ux543ftce.html');
INSERT INTO `products` VALUES ('138', 'MÁY GHI ÂM SONY ICD- UX560F - ĐEN', '10000000', '33', '71', '32', '32', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-ghi-am-sony-icd--ux560f---đen.html');
INSERT INTO `products` VALUES ('139', 'MÁY GHI ÂM SONY ICD-UX560F -BẠC', '5000000', '33', '71', '1253', '1253', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-ghi-am-sony-icd-ux560f--bac.html');
INSERT INTO `products` VALUES ('140', 'MÁY GHI ÂM SONY ICD-PX440', '10000000', '33', '71', '2135', '2135', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-ghi-am-sony-icd-px440.html');
INSERT INTO `products` VALUES ('141', 'MÁY GHI ÂM SONY ICD-UX543FSCE', '5000000', '33', '71', '235', '235', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-ghi-am-sony-icd-ux543fsce.html');
INSERT INTO `products` VALUES ('142', 'TIVI LED SONY KDL32R300C - 32INCH', '10000000', '44', '41', '2', '2', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'tivi-led-sony-kdl32r300c---32inch.html');
INSERT INTO `products` VALUES ('143', 'TIVI LED SONY KDL-40R350C - 40 INCH', '5000000', '45', '41', '6346', '6346', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'tivi-led-sony-kdl-40r350c---40-inch.html');
INSERT INTO `products` VALUES ('144', 'TIVI LED SONY KDL48W700C 48 INCH', '10000000', '46', '41', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'tivi-led-sony-kdl48w700c-48-inch.html');
INSERT INTO `products` VALUES ('145', 'TIVI LED 3D SONY KDL43W800C 43INCH', '5000000', '47', '41', '2', '2', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'tivi-led-3d-sony-kdl43w800c-43inch.html');
INSERT INTO `products` VALUES ('146', 'TIVI LED SAMSUNG UA32J4003 32 INCH', '10000000', '48', '1', '1', '1', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'tivi-led-samsung-ua32j4003-32-inch.html');
INSERT INTO `products` VALUES ('147', 'TIVI LED SAMSUNG UA32J4100 32 INCH', '5000000', '44', '1', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'tivi-led-samsung-ua32j4100-32-inch.html');
INSERT INTO `products` VALUES ('148', 'TIVI LED SAMSUNG UA40J5100 40 INCH', '10000000', '45', '1', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'tivi-led-samsung-ua40j5100-40-inch.html');
INSERT INTO `products` VALUES ('149', 'SMART TIVI LED SAMSUNG UA40J5500 40 INCH', '5000000', '52', '1', '23', '23', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'smart-tivi-led-samsung-ua40j5500-40-inch.html');
INSERT INTO `products` VALUES ('150', 'ĐẦU PHÁT HD VNPT TECHNOLOGY SMARTBOX VNT001SB', '10000000', '49', '42', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'dau-phat-hd-vnpt-technology-smartbox-vnt001sb.html');
INSERT INTO `products` VALUES ('151', 'ĐẦU PHÁT HD HIMEDIA Q3', '5000000', '50', '44', '3643', '3643', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'dau-phat-hd-himedia-q3.html');
INSERT INTO `products` VALUES ('152', 'HỘP GIẢI MÃ THÔNG MINH LIVEBOX Q, - ANDROID 4.2, RAM 1GB', '10000000', '51', '45', '345', '345', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'hop-giai-ma-thong-minh-livebox-q,---android-4.2,-ram-1gb.html');
INSERT INTO `products` VALUES ('153', 'ĐẦU PHÁT HD VIETTEL SMARTBOX XMIO - MIO X1', '5000000', '52', '45', '345', '345', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'dau-phat-hd-viettel-smartbox-xmio---mio-x1.html');
INSERT INTO `products` VALUES ('154', 'ĐẦU SMART KARAOKE VITEK HDC100', '10000000', '53', '46', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'dau-smart-karaoke-vitek-hdc100.html');
INSERT INTO `products` VALUES ('155', 'ĐIỀU KHIỂN THÔNG MINH LIVEMOUSE F2', '5000000', '53', '47', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'dieu-khien-thong-minh-livemouse-f2.html');
INSERT INTO `products` VALUES ('156', 'Ổ CỨNG TOSHIBA 2TB DT01AC200', '10000000', '53', '12', '34', '34', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'o-cung-toshiba-2tb-dt01ac200.html');
INSERT INTO `products` VALUES ('157', 'ĐẦU PHÁT HD HIMEDIA Q1', '40000000', '50', '44', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'đau-phat-hd-himedia-q1.html');
INSERT INTO `products` VALUES ('158', 'MÁY CHƠI GAME PS VITA TV', '5000000', '12', '41', '53', '53', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-choi-game-ps-vita-tv.html');
INSERT INTO `products` VALUES ('159', 'TAY CHƠI GAME CỔNG USB DOUBLE SHOCK', '10000000', '12', '48', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'tay-choi-game-cong-usb-double-shock.html');
INSERT INTO `products` VALUES ('160', 'TAY CHƠI GAME LOGITECH F710', '5000000', '12', '49', '23', '23', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'tay-choi-game-logitech-f710.html');
INSERT INTO `products` VALUES ('161', 'TAY CHƠI GAME I-ROCKS IRG01', '10000000', '12', '50', '23', '23', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'tay-choi-game-i-rocks-irg01.html');
INSERT INTO `products` VALUES ('162', 'BỘ ĐÔI TAY GAME CỔNG USB', '5000000', '12', '51', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'bo-đoi-tay-game-cong-usb.html');
INSERT INTO `products` VALUES ('163', 'BỘ THIẾT BỊ SD ODS1400NA + THUÊ BAO PREMIUMHD+ 6 THÁNG', '10000000', '51', '52', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'bo-thiet-bi-sd-ods1400na-+-thue-bao-premiumhd+-6-thang.html');
INSERT INTO `products` VALUES ('164', 'BỘ THIẾT BỊ HD TRUYỀN HÌNH K+, S5060 + THUÊ BAO PREMIUMHD+ 3 THÁNG', '5000000', '50', '52', '34', '34', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'bo-thiet-bi-hd-truyen-hinh-k+,-s5060-+-thue-bao-premiumhd+-3-thang.html');
INSERT INTO `products` VALUES ('165', 'THUÊ BAO TRỌN GÓI HD + 6 THÁNG K+', '10000000', '49', '1', '23', '23', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'thue-bao-tron-goi-hd-+-6-thang-k+.html');
INSERT INTO `products` VALUES ('166', 'BỘ THIẾT BỊ THU DTT DVB-T2-HD', '5000000', '53', '53', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'bo-thiet-bi-thu-dtt-dvb-t2-hd.html');
INSERT INTO `products` VALUES ('167', 'THUÊ BAO TRỌN GÓI ACCESS +6 THÁNG K+', '10000000', '52', '52', '12', '12', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'thue-bao-tron-goi-access-+6-thang-k+.html');
INSERT INTO `products` VALUES ('168', 'BỘ THIẾT BỊ SD STB111 + THUÊ BAO PREMIUMHD+ 3 THÁNG', '5000000', '51', '52', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'bo-thiet-bi-sd-stb111-+-thue-bao-premiumhd+-3-thang.html');
INSERT INTO `products` VALUES ('169', 'ĐẦU THU KỸ THUẬT SỐ MẶT ĐẤT DVB-T2 HT BOX', '10000000', '50', '54', '2', '2', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'dau-thu-ky-thuat-so-mat-dat-dvb-t2-ht-box.html');
INSERT INTO `products` VALUES ('170', 'THUÊ BAO TRỌN GÓI ACCESS +3 THÁNG K+', '5000000', '59', '52', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'thue-bao-tron-goi-access-+3-thang-k+.html');
INSERT INTO `products` VALUES ('171', 'MÁY TÍNH BẢNG SAMSUNG GALAXY TAB 3 V 7.0 3G - T116 ĐEN', '10000000', '73', '1', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-tinh-bang-samsung-galaxy-tab-3-v-7.0-3g---t116-đen.html');
INSERT INTO `products` VALUES ('172', 'MÁY TÍNH BẢNG SAMSUNG GALAXY TAB 3 V 7.0 3G - T116 TRẮNG', '5000000', '74', '1', '2', '2', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-tinh-bang-samsung-galaxy-tab-3-v-7.0-3g---t116-trang.html');
INSERT INTO `products` VALUES ('173', 'SAMSUNG GALAXY TAB 4 T231 - ĐEN', '10000000', '75', '1', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'samsung-galaxy-tab-4-t231---đen.html');
INSERT INTO `products` VALUES ('174', 'SAMSUNG GALAXY TAB 4 T231 - TRẮNG', '5000000', '76', '1', '234', '234', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'samsung-galaxy-tab-4-t231---trang.html');
INSERT INTO `products` VALUES ('175', 'IPAD MINI RETINA WIFI 16GB-ME279ZPA - BẠC', '10000000', '77', '55', '421', '421', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'ipad-mini-retina-wifi-16gb-me279zpa---bac.html');
INSERT INTO `products` VALUES ('176', 'APPLE IPAD MINI 2 RETINA WIFI - 16GBME276', '5000000', '78', '55', '23', '23', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'apple-ipad-mini-2-retina-wifi---16gbme276.html');
INSERT INTO `products` VALUES ('177', 'IPAD MINI 3 WIFI 4G 16GB MGYR2ZPA - GOLD', '10000000', '73', '55', '123', '123', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'ipad-mini-3-wifi-4g-16gb-mgyr2zpa---gold.html');
INSERT INTO `products` VALUES ('178', 'IPAD MINI 3 CELLULAR 64GB WIFI 4G MGYN2THA', '5000000', '74', '55', '12', '12', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'ipad-mini-3-cellular-64gb-wifi-4g-mgyn2tha.html');
INSERT INTO `products` VALUES ('179', 'APPLE IPHONE 6S ROSE GOLD 16GB', '10000000', '75', '55', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'apple-iphone-6s-rose-gold-16gb.html');
INSERT INTO `products` VALUES ('180', 'APPLE IPHONE 6S GOLD 64GB', '40000000', '76', '55', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'apple-iphone-6s-gold-64gb.html');
INSERT INTO `products` VALUES ('181', 'APPLE IPHONE 6S PLUS SPACE GRAY 16GB', '5000000', '77', '55', '12', '12', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'apple-iphone-6s-plus-space-gray-16gb.html');
INSERT INTO `products` VALUES ('182', 'APPLE IPHONE 6S PLUS SLIVER 64GB', '10000000', '78', '55', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'apple-iphone-6s-plus-sliver-64gb.html');
INSERT INTO `products` VALUES ('183', 'OPPO MIRROR 5 A51 - TRẮNG', '5000000', '75', '25', '34', '34', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'oppo-mirror-5-a51---trang.html');
INSERT INTO `products` VALUES ('184', 'OPPO NEO 7 - A33 - TRẮNG', '10000000', '76', '25', '21', '21', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'oppo-neo-7---a33---trang.html');
INSERT INTO `products` VALUES ('185', 'OPPO R7 - VÀNG', '5000000', '77', '25', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'oppo-r7---vang.html');
INSERT INTO `products` VALUES ('186', 'OPPO R7S - VÀNG', '10000000', '78', '25', '34', '34', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'oppo-r7s---vang.html');
INSERT INTO `products` VALUES ('187', 'MÁY ĐIỆN THOẠI DECT ĐỂ BÀN KẾT NỐI TAY CON KX-TG645', '5000000', '70', '2', '2', '2', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-dien-thoai-dect-de-ban-ket-noi-tay-con-kx-tg645.html');
INSERT INTO `products` VALUES ('188', 'MÁY ĐIỆN THOẠI ĐỂ BÀN WIDECOM VN949 ĐỎ - VN949R', '10000000', '71', '57', '23', '23', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-dien-thoai-de-ban-widecom-vn949-đo---vn949r.html');
INSERT INTO `products` VALUES ('189', 'MÁY ĐIỆN THOẠI ĐỂ BÀN WIDECOM VN969 ĐỎ - VN969R', '5000000', '72', '57', '432', '432', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-đien-thoai-đe-ban-widecom-vn969-đo---vn969r.html');
INSERT INTO `products` VALUES ('190', 'MÁY ĐIỆN THOẠI ĐỂ BÀN PANASONIC KXTG2711', '10000000', '70', '2', '2', '2', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-đien-thoai-đe-ban-panasonic-kxtg2711.html');
INSERT INTO `products` VALUES ('191', 'MÁY ĐIỆN THOẠI ĐỂ BÀN WIDECOM VN959 GHI - VN959G', '5000000', '71', '57', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-đien-thoai-đe-ban-widecom-vn959-ghi---vn959g.html');
INSERT INTO `products` VALUES ('192', 'MÁY ĐIỆN THOẠI ĐỂ BÀN WIDECOM VN949 ĐEN - VN949B', '10000000', '72', '57', '123', '123', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-đien-thoai-đe-ban-widecom-vn949-đen---vn949b.html');
INSERT INTO `products` VALUES ('193', 'MÁY ĐIỆN THOẠI ĐỂ BÀN PANASONIC KX-TS840', '5000000', '70', '2', '2', '2', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-đien-thoai-đe-ban-panasonic-kx-ts840.html');
INSERT INTO `products` VALUES ('194', '\r\nMÁY ĐIỆN THOẠI ĐỂ BÀN WIDECOM VN969 TRẮNG - VN969W', '10000000', '71', '57', '23', '23', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', '\r\nmay-đien-thoai-đe-ban-widecom-vn969-trang---vn969w.html');
INSERT INTO `products` VALUES ('195', 'PHẦN MỀM DẪN ĐƯỜNG VIETMAP HĐH ANDROID X10A', '5000000', '109', '59', '32', '32', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'phan-mem-dan-đuong-vietmap-hđh-android-x10a.html');
INSERT INTO `products` VALUES ('196', 'ỐP VIỀN DUCATI IP6 - ĐEN', '10000000', '128', '58', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'op-vien-ducati-ip6---đen.html');
INSERT INTO `products` VALUES ('197', 'PHẦN MỀM DẪN ĐƯỜNG VIETMAP HĐH SYMBIAN S17', '5000000', '109', '59', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'phan-mem-dan-đuong-vietmap-hđh-symbian-s17.html');
INSERT INTO `products` VALUES ('198', 'ỐP VIỀN DUCATI IPHONE 5', '10000000', '128', '58', '213', '213', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'op-vien-ducati-iphone-5.html');
INSERT INTO `products` VALUES ('199', 'ỐP VIỀN BO TRÒN COTEETCI IP5 - LOẠI CÀI', '5000000', '128', '60', '34', '34', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'op-vien-bo-tron-coteetci-ip5---loai-cai.html');
INSERT INTO `products` VALUES ('200', 'ỐP VIỀN BO TRÒN COTEETCI IP6 - LOẠI CÀI', '10000000', '128', '60', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'op-vien-bo-tron-coteetci-ip6---loai-cai.html');
INSERT INTO `products` VALUES ('201', 'ỐP VIỀN BO TRÒN COTEETCI IP6 - LOẠI ĐÍNH ĐÁ', '5000000', '128', '60', '2', '2', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'op-vien-bo-tron-coteetci-ip6---loai-đinh-đa.html');
INSERT INTO `products` VALUES ('202', 'TAY CẦM CHỤP ẢNH MONOPOD Z07-1', '10000000', '105', '61', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'tay-cam-chup-anh-monopod-z07-1.html');
INSERT INTO `products` VALUES ('203', 'ĐIỀU HÒA 2 CHIỀU REETECH RT12HBB', '40000000', '83', '62', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'đieu-hoa-2-chieu-reetech-rt12hbb.html');
INSERT INTO `products` VALUES ('204', 'ĐIỀU HÒA PANASONIC CS-A18RKH-8', '5000000', '89', '2', '2', '2', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'đieu-hoa-panasonic-cs-a18rkh-8.html');
INSERT INTO `products` VALUES ('205', 'ĐIỀU HÒA 2 CHIỀU LG B18ENC', '10000000', '85', '7', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'đieu-hoa-2-chieu-lg-b18enc.html');
INSERT INTO `products` VALUES ('206', 'ĐIỀU HÒA DAIKIN FTKC35NVMV', '5000000', '84', '3', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'đieu-hoa-daikin-ftkc35nvmv.html');
INSERT INTO `products` VALUES ('207', 'ĐIỀU HÒA DAIKIN FTNE25MV1V', '10000000', '89', '3', '2', '2', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'đieu-hoa-daikin-ftne25mv1v.html');
INSERT INTO `products` VALUES ('208', 'ĐIỀU HÒA 2 CHIỀU PANASONIC CSA24RKH8', '5000000', '83', '2', '213', '213', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'đieu-hoa-2-chieu-panasonic-csa24rkh8.html');
INSERT INTO `products` VALUES ('209', 'ĐIỀU HOÀ DAIKIN FTKC60NVMV', '10000000', '89', '3', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'đieu-hoa-daikin-ftkc60nvmv.html');
INSERT INTO `products` VALUES ('210', 'ĐIỀU HÒA PANASONIC CS-E12RKH-8', '5000000', '83', '2', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'đieu-hoa-panasonic-cs-e12rkh-8.html');
INSERT INTO `products` VALUES ('211', 'TỦ LẠNH SIDE-BY-SIDE SAMSUNG RS554NRUA1J 538 LÍT', '10000000', '92', '1', '1', '1', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'tu-lanh-side-by-side-samsung-rs554nrua1j-538-lit.html');
INSERT INTO `products` VALUES ('212', 'TỦ LẠNH LG GN-L202PS', '5000000', '95', '7', '1', '1', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'tu-lanh-lg-gn-l202ps.html');
INSERT INTO `products` VALUES ('213', 'TỦ LẠNH LG GN-L272BS', '10000000', '94', '7', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'tu-lanh-lg-gn-l272bs.html');
INSERT INTO `products` VALUES ('214', 'TỦ LẠNH MITSUBISHI MRP16GOBV', '5000000', '93', '9', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'tu-lanh-mitsubishi-mrp16gobv.html');
INSERT INTO `products` VALUES ('215', 'TỦ LẠNH HITACHI W660PGV3GBK', '10000000', '92', '6', '1', '1', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'tu-lanh-hitachi-w660pgv3gbk.html');
INSERT INTO `products` VALUES ('216', 'TỦ LẠNH SHARP SJS270ESL - 271L MÀU BẠC', '5000000', '94', '10', '213', '213', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'tu-lanh-sharp-sjs270esl---271l-mau-bac.html');
INSERT INTO `products` VALUES ('217', 'TỦ LẠNH SHARP SJS210DSL - 196L MÀU BẠC SẪM', '10000000', '95', '10', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'tu-lanh-sharp-sjs210dsl---196l-mau-bac-sam.html');
INSERT INTO `products` VALUES ('218', 'TỦ LẠNH SHARP SJS210EPK - 196L MÀU HỒNG', '5000000', '91', '10', '35', '35', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'tu-lanh-sharp-sjs210epk---196l-mau-hong.html');
INSERT INTO `products` VALUES ('219', 'MÁY GIẶT SHARP ESS1000EVW', '10000000', '96', '10', '5', '5', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-giat-sharp-ess1000evw.html');
INSERT INTO `products` VALUES ('220', 'MÁY GIẶT SẤY ELECTROLUX EWW12842', '5000000', '100', '4', '13', '13', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-giat-say-electrolux-eww12842.html');
INSERT INTO `products` VALUES ('221', 'MÁY GIẶT SHARP ES-S700EV-W', '10000000', '97', '10', '21', '21', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-giat-sharp-es-s700ev-w.html');
INSERT INTO `products` VALUES ('222', 'MÁY GIẶT LỒNG NGANG HITACHI BDW75SAE', '5000000', '98', '6', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-giat-long-ngang-hitachi-bdw75sae.html');
INSERT INTO `products` VALUES ('223', 'MÁY GIẶT SAMSUNG WA80H4000SW', '10000000', '99', '1', '34', '34', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-giat-samsung-wa80h4000sw.html');
INSERT INTO `products` VALUES ('224', 'MÁY GIẶT TOSHIBA AW-E920LVW - XANH', '40000000', '100', '64', '12', '12', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-giat-toshiba-aw-e920lvw---xanh.html');
INSERT INTO `products` VALUES ('225', 'MÁY GIẶT TOSHIBA AW-DME1700WV', '5000000', '97', '64', '213', '213', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-giat-toshiba-aw-dme1700wv.html');
INSERT INTO `products` VALUES ('226', 'MÁY GIẶT LG WFD1017DDD', '10000000', '98', '7', '34', '34', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-giat-lg-wfd1017ddd.html');
INSERT INTO `products` VALUES ('227', 'MÁY SẤY QUẦN ÁO KANGAROO KG308S', '5000000', '102', '65', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-say-quan-ao-kangaroo-kg308s.html');
INSERT INTO `products` VALUES ('228', 'MÁY SẤY BOSCH WTV74100SG', '10000000', '102', '14', '21', '21', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-say-bosch-wtv74100sg.html');
INSERT INTO `products` VALUES ('229', 'MÁY SẤY QUẦN ÁO ELECTROLUX EDV6051 - 6.0KG', '5000000', '105', '4', '3', '3', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-say-quan-ao-electrolux-edv6051---6.0kg.html');
INSERT INTO `products` VALUES ('230', 'MÁY SẤY QUẦN ÁO SUNHOUSE SHD2702', '10000000', '103', '15', '34', '34', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-say-quan-ao-sunhouse-shd2702.html');
INSERT INTO `products` VALUES ('231', 'MÁY SẤY QUẦN ÁO ELECTROLUX EDV7051', '5000000', '104', '4', '4', '4', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-say-quan-ao-electrolux-edv7051.html');
INSERT INTO `products` VALUES ('232', 'MÁY SẤY QUẦN ÁO KANGAROO KG306S', '10000000', '105', '65', '2', '2', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-say-quan-ao-kangaroo-kg306s.html');
INSERT INTO `products` VALUES ('233', 'MÁY SẤY QUẦN ÁO SUNHOUSE SHD2701', '5000000', '103', '15', '23', '23', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-say-quan-ao-sunhouse-shd2701.html');
INSERT INTO `products` VALUES ('234', 'MÁY SẤY QUẦN ÁO ELECTROLUX EDS7051', '10000000', '104', '4', '443', '443', '/resources/images/products/resize_172172_tivi-led-samsung-ua40j5000-40inch.jpg', '47', 'may-say-quan-ao-electrolux-eds7051.html');

-- ----------------------------
-- Table structure for product_promo
-- ----------------------------
DROP TABLE IF EXISTS `product_promo`;
CREATE TABLE `product_promo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promotionId` int(11) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_promo_pro` (`promotionId`),
  KEY `fk_promo_prod` (`productId`),
  CONSTRAINT `fk_promo_pro` FOREIGN KEY (`promotionId`) REFERENCES `promotions` (`proID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of product_promo
-- ----------------------------
INSERT INTO `product_promo` VALUES ('3', '1', '143');

-- ----------------------------
-- Table structure for promotions
-- ----------------------------
DROP TABLE IF EXISTS `promotions`;
CREATE TABLE `promotions` (
  `proID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`proID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of promotions
-- ----------------------------
INSERT INTO `promotions` VALUES ('1', '1 Bếp nướng không khói BBQ (Áp dụng: 04/12/2015 - 31/12/2015)', '2016-02-05 10:46:10', '2016-02-27 10:46:13', '1 Bếp nướng không khói BBQ ', '500000', 'Chỉ áp dụng cho sinh viên có thẻ sinh viên', null);

-- ----------------------------
-- Table structure for providers
-- ----------------------------
DROP TABLE IF EXISTS `providers`;
CREATE TABLE `providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_name_provider` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of providers
-- ----------------------------
INSERT INTO `providers` VALUES ('1', 'Samsung', null, null);
INSERT INTO `providers` VALUES ('2', 'Panasonic', null, null);
INSERT INTO `providers` VALUES ('3', 'Daikin', null, null);
INSERT INTO `providers` VALUES ('4', 'Electrolux', null, null);
INSERT INTO `providers` VALUES ('5', 'Gree', null, null);
INSERT INTO `providers` VALUES ('6', 'Hitachi', null, null);
INSERT INTO `providers` VALUES ('7', 'LG', null, null);
INSERT INTO `providers` VALUES ('8', 'Midea', null, null);
INSERT INTO `providers` VALUES ('9', 'Mitsubishi', null, null);
INSERT INTO `providers` VALUES ('10', 'Sharp', null, null);
INSERT INTO `providers` VALUES ('11', 'Sanyo', null, null);
INSERT INTO `providers` VALUES ('12', 'Toshiba', null, null);
INSERT INTO `providers` VALUES ('13', 'Ariston', null, null);
INSERT INTO `providers` VALUES ('14', 'Bosch', null, null);
INSERT INTO `providers` VALUES ('15', 'Sunhouse', null, null);
INSERT INTO `providers` VALUES ('16', 'Alaska', null, null);
INSERT INTO `providers` VALUES ('17', 'Ascend', null, null);
INSERT INTO `providers` VALUES ('18', 'Daewoo', null, null);
INSERT INTO `providers` VALUES ('19', 'Sanaky', null, null);
INSERT INTO `providers` VALUES ('20', 'Kadeka', null, null);
INSERT INTO `providers` VALUES ('21', 'Nokia', null, null);
INSERT INTO `providers` VALUES ('22', 'FPT', null, null);
INSERT INTO `providers` VALUES ('23', 'Apple', null, null);
INSERT INTO `providers` VALUES ('24', 'BlackBerry', null, null);
INSERT INTO `providers` VALUES ('25', 'Oppo', null, null);
INSERT INTO `providers` VALUES ('26', 'Nippon', null, null);
INSERT INTO `providers` VALUES ('27', 'Widecom', null, null);
INSERT INTO `providers` VALUES ('28', 'Asus', null, null);
INSERT INTO `providers` VALUES ('29', 'HP', null, null);
INSERT INTO `providers` VALUES ('30', 'Acer', null, null);
INSERT INTO `providers` VALUES ('31', 'Dell', null, null);
INSERT INTO `providers` VALUES ('32', 'HTC', null, null);
INSERT INTO `providers` VALUES ('33', 'Lenovo', null, null);
INSERT INTO `providers` VALUES ('34', 'Huawei', null, null);
INSERT INTO `providers` VALUES ('35', 'JVC', null, null);
INSERT INTO `providers` VALUES ('36', 'Pioneer', null, null);
INSERT INTO `providers` VALUES ('37', 'Boston', null, null);
INSERT INTO `providers` VALUES ('38', 'Denon', null, null);
INSERT INTO `providers` VALUES ('39', 'Jamo', null, null);
INSERT INTO `providers` VALUES ('40', 'Onkyo', null, null);
INSERT INTO `providers` VALUES ('41', 'Sony', null, null);
INSERT INTO `providers` VALUES ('42', 'VNPT', null, null);
INSERT INTO `providers` VALUES ('43', 'HiMedia', null, null);
INSERT INTO `providers` VALUES ('44', 'Viettel', null, null);
INSERT INTO `providers` VALUES ('45', 'Vitek', null, null);
INSERT INTO `providers` VALUES ('46', 'Live box Korea', null, null);
INSERT INTO `providers` VALUES ('47', 'Senze', null, null);
INSERT INTO `providers` VALUES ('48', 'Logitech\r\n', null, null);
INSERT INTO `providers` VALUES ('49', 'I-Rocks', null, null);
INSERT INTO `providers` VALUES ('50', 'USB GAME PAD', null, null);
INSERT INTO `providers` VALUES ('51', '	VSTV', null, null);
INSERT INTO `providers` VALUES ('52', 'AVG', null, null);
INSERT INTO `providers` VALUES ('53', '	HT Box', null, null);
INSERT INTO `providers` VALUES ('54', 'IOS', null, null);
INSERT INTO `providers` VALUES ('55', '	WIDECOM', null, null);
INSERT INTO `providers` VALUES ('56', 'DUCATI', null, null);
INSERT INTO `providers` VALUES ('57', 'VietMap', null, null);
INSERT INTO `providers` VALUES ('58', 'Coteetci', null, null);
INSERT INTO `providers` VALUES ('59', '	Monopod', null, null);
INSERT INTO `providers` VALUES ('60', 'Reetech', null, null);
INSERT INTO `providers` VALUES ('61', '	DAIKIN', null, null);
INSERT INTO `providers` VALUES ('62', 'KANGAROO', null, null);
INSERT INTO `providers` VALUES ('63', '	Electrolux', null, null);
INSERT INTO `providers` VALUES ('64', 'Sunhouse\r\n', null, null);
INSERT INTO `providers` VALUES ('65', 'Korihome', null, null);
INSERT INTO `providers` VALUES ('66', 'MYOTA', null, null);
INSERT INTO `providers` VALUES ('67', 'KAROFI', null, null);
INSERT INTO `providers` VALUES ('68', 'AO SMITH', null, null);
INSERT INTO `providers` VALUES ('69', 'CNC', null, null);
INSERT INTO `providers` VALUES ('70', 'Comet', null, null);
INSERT INTO `providers` VALUES ('71', 'E-Scooter', null, null);
INSERT INTO `providers` VALUES ('72', 'Anbico', null, null);
INSERT INTO `providers` VALUES ('73', 'NIJIA', null, null);
INSERT INTO `providers` VALUES ('74', 'GIANT', null, null);
INSERT INTO `providers` VALUES ('75', 'AIMA', null, null);
INSERT INTO `providers` VALUES ('76', 'MB', null, null);
INSERT INTO `providers` VALUES ('77', 'Microlab', null, null);
INSERT INTO `providers` VALUES ('78', 'Fenda', null, null);
INSERT INTO `providers` VALUES ('79', 'Fantom', null, null);
INSERT INTO `providers` VALUES ('80', 'Genius', null, null);
INSERT INTO `providers` VALUES ('81', 'Ariang', null, null);
INSERT INTO `providers` VALUES ('82', 'Jarguar Suhyoung', null, null);
INSERT INTO `providers` VALUES ('83', 'Paramax', null, null);
INSERT INTO `providers` VALUES ('84', 'Acnos', null, null);
INSERT INTO `providers` VALUES ('85', 'HANET Electronics', null, null);
INSERT INTO `providers` VALUES ('86', 'Musicore', null, null);
INSERT INTO `providers` VALUES ('87', 'Nosta', null, null);
INSERT INTO `providers` VALUES ('88', 'JBl', null, null);
INSERT INTO `providers` VALUES ('89', 'GUINESS', null, null);
INSERT INTO `providers` VALUES ('90', 'Shure', null, null);
INSERT INTO `providers` VALUES ('91', 'Canon', null, null);
INSERT INTO `providers` VALUES ('92', 'Nikon', null, null);

-- ----------------------------
-- Table structure for provinces
-- ----------------------------
DROP TABLE IF EXISTS `provinces`;
CREATE TABLE `provinces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of provinces
-- ----------------------------
INSERT INTO `provinces` VALUES ('1', 'An Giang', '805', '1', '63');
INSERT INTO `provinces` VALUES ('2', 'Bà Rịa - Vũng Tầu', '717', '1', '46');
INSERT INTO `provinces` VALUES ('3', 'Bình Dương', '711', '1', '45');
INSERT INTO `provinces` VALUES ('4', 'Bình Phước', '707', '1', '44');
INSERT INTO `provinces` VALUES ('5', 'Bình Thuận', '715', '1', '43');
INSERT INTO `provinces` VALUES ('6', 'Bình Định', '507', '1', '42');
INSERT INTO `provinces` VALUES ('7', 'Bắc Giang', '221', '1', '41');
INSERT INTO `provinces` VALUES ('8', 'Bắc Kạn', '207', '1', '40');
INSERT INTO `provinces` VALUES ('9', 'Bắc Ninh', '223', '1', '39');
INSERT INTO `provinces` VALUES ('10', 'Bến Tre', '811', '1', '38');
INSERT INTO `provinces` VALUES ('11', 'Cao Bằng', '203', '1', '37');
INSERT INTO `provinces` VALUES ('12', 'Cà Mau', '823', '1', '36');
INSERT INTO `provinces` VALUES ('13', 'Cần Thơ', '815', '1', '35');
INSERT INTO `provinces` VALUES ('14', 'Gia Lai', '603', '1', '34');
INSERT INTO `provinces` VALUES ('15', 'Hà Giang', '201', '1', '47');
INSERT INTO `provinces` VALUES ('16', 'Hà Nam', '111', '1', '48');
INSERT INTO `provinces` VALUES ('17', 'Hà Nội', '101', '1', '49');
INSERT INTO `provinces` VALUES ('18', 'Hà Tây', '105', '1', '62');
INSERT INTO `provinces` VALUES ('19', 'Hà Tĩnh', '405', '1', '61');
INSERT INTO `provinces` VALUES ('20', 'Hòa Bình', '305', '1', '60');
INSERT INTO `provinces` VALUES ('21', 'Hưng Yên', '109', '1', '59');
INSERT INTO `provinces` VALUES ('22', 'Hải Dương', '107', '1', '58');
INSERT INTO `provinces` VALUES ('23', 'Hải Phòng', '103', '1', '57');
INSERT INTO `provinces` VALUES ('24', 'Hồ Chí Minh', '701', '1', '1');
INSERT INTO `provinces` VALUES ('25', 'Khánh Hòa', '511', '1', '56');
INSERT INTO `provinces` VALUES ('27', 'Kiên Giang', '813', '1', '55');
INSERT INTO `provinces` VALUES ('28', 'Kon Tum', '601', '1', '54');
INSERT INTO `provinces` VALUES ('29', 'Lai Châu', '301', '1', '53');
INSERT INTO `provinces` VALUES ('30', 'Long An', '801', '1', '52');
INSERT INTO `provinces` VALUES ('31', 'Lào Cai', '205', '1', '51');
INSERT INTO `provinces` VALUES ('32', 'Lâm Đồng', '703', '1', '50');
INSERT INTO `provinces` VALUES ('33', 'Lạng Sơn', '209', '1', '33');
INSERT INTO `provinces` VALUES ('34', 'Nam Định', '113', '1', '32');
INSERT INTO `provinces` VALUES ('35', 'Nghệ An', '403', '1', '15');
INSERT INTO `provinces` VALUES ('36', 'Ninh Bình', '117', '1', '14');
INSERT INTO `provinces` VALUES ('37', 'Ninh Thuận', '705', '1', '13');
INSERT INTO `provinces` VALUES ('38', 'Phú Thọ', '217', '1', '12');
INSERT INTO `provinces` VALUES ('39', 'Phú Yên', '509', '1', '11');
INSERT INTO `provinces` VALUES ('40', 'Quảng Bình', '407', '1', '10');
INSERT INTO `provinces` VALUES ('41', 'Quảng Nam', '503', '1', '9');
INSERT INTO `provinces` VALUES ('42', 'Quảng Ngãi', '505', '1', '7');
INSERT INTO `provinces` VALUES ('43', 'Quảng Ninh', '225', '1', '6');
INSERT INTO `provinces` VALUES ('44', 'Quảng Trị', '409', '1', '5');
INSERT INTO `provinces` VALUES ('45', 'Sơn La', '303', '1', '4');
INSERT INTO `provinces` VALUES ('46', 'Thanh Hóa', '401', '1', '3');
INSERT INTO `provinces` VALUES ('47', 'Thái Bình', '115', '1', '2');
INSERT INTO `provinces` VALUES ('48', 'Thái Nguyên', '215', '1', '16');
INSERT INTO `provinces` VALUES ('49', 'Thừa Thiên - Huế', '411', '1', '17');
INSERT INTO `provinces` VALUES ('50', 'Tiền Giang', '807', '1', '31');
INSERT INTO `provinces` VALUES ('51', 'Trà Vinh', '817', '1', '30');
INSERT INTO `provinces` VALUES ('52', 'Tuyên Quang', '211', '1', '29');
INSERT INTO `provinces` VALUES ('53', 'Tây Ninh', '709', '1', '28');
INSERT INTO `provinces` VALUES ('54', 'Vĩnh Long', '809', '1', '27');
INSERT INTO `provinces` VALUES ('55', 'Vĩnh Phúc', '104', '1', '26');
INSERT INTO `provinces` VALUES ('56', 'Yên Bái', '213', '1', '25');
INSERT INTO `provinces` VALUES ('57', 'Đà Nẵng', '501', '1', '24');
INSERT INTO `provinces` VALUES ('58', 'Đắk Lắk', '605', '1', '23');
INSERT INTO `provinces` VALUES ('59', 'Đồng Nai', '713', '1', '22');
INSERT INTO `provinces` VALUES ('60', 'Đồng Tháp', '803', '1', '21');
INSERT INTO `provinces` VALUES ('61', 'Bạc Liêu', '821', '1', '20');
INSERT INTO `provinces` VALUES ('62', 'Sóc Trăng', '819', '1', '19');
INSERT INTO `provinces` VALUES ('63', 'Hậu Giang', '825', '1', '18');
INSERT INTO `provinces` VALUES ('64', 'Đắk Nông', '607', '1', '8');
INSERT INTO `provinces` VALUES ('65', 'Chọn tỉnh/thành phố', '000', '1', '999');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'CUSTOMER', null);
INSERT INTO `roles` VALUES ('2', 'ADMIN', null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `bank` int(11) DEFAULT NULL,
  `career` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `cellphone` varchar(255) DEFAULT NULL,
  `province` int(11) DEFAULT NULL,
  `district` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `deliverAddress` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`email`),
  KEY `fk_bank_user` (`bank`),
  KEY `fk_district_user` (`province`),
  KEY `fk_ward_user` (`district`),
  CONSTRAINT `fk_bank_user` FOREIGN KEY (`bank`) REFERENCES `banks` (`id`),
  CONSTRAINT `fk_district_user` FOREIGN KEY (`province`) REFERENCES `provinces` (`id`),
  CONSTRAINT `fk_ward_user` FOREIGN KEY (`district`) REFERENCES `wards` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('baotoan1142@gmail.com', '581442bcfc28e29904de3485c232c5f', '1', 'Bảo', 'Toàn', '1995-10-02', '1', 'Developer', '01649001142', '', '5', '1', 'Trà Tân', null, 'actived', null);

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_role_role` (`role`),
  CONSTRAINT `fk_role_role` FOREIGN KEY (`role`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', 'baotoan1142@gmail.com', '1');

-- ----------------------------
-- Table structure for wards
-- ----------------------------
DROP TABLE IF EXISTS `wards`;
CREATE TABLE `wards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` int(11) NOT NULL DEFAULT '0',
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `published` tinyint(1) DEFAULT '1',
  `ordering` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_province` (`province`),
  CONSTRAINT `fk_province_ward` FOREIGN KEY (`province`) REFERENCES `provinces` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=681 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of wards
-- ----------------------------
INSERT INTO `wards` VALUES ('1', 'Chọn quận/huyện', '65', '99999', '1', '999');
INSERT INTO `wards` VALUES ('2', 'Quận Ba Đình', '17', '10101', '1', '5');
INSERT INTO `wards` VALUES ('3', 'Quận Tây Hồ', '17', '10103', '1', '5');
INSERT INTO `wards` VALUES ('4', 'Quận Hoàn Kiếm', '17', '10105', '1', '5');
INSERT INTO `wards` VALUES ('5', 'Quận Hai Bà Trưng', '17', '10107', '1', '5');
INSERT INTO `wards` VALUES ('6', 'Quận Đống Đa', '17', '10109', '1', '5');
INSERT INTO `wards` VALUES ('7', 'Quận Thanh Xuân', '17', '10111', '1', '5');
INSERT INTO `wards` VALUES ('8', 'Quận Cầu Giấy', '17', '10113', '1', '5');
INSERT INTO `wards` VALUES ('9', 'Huyện Sóc Sơn', '17', '10115', '1', '5');
INSERT INTO `wards` VALUES ('10', 'Huyện Đông Anh', '17', '10117', '1', '5');
INSERT INTO `wards` VALUES ('11', 'Huyện Gia Lâm', '17', '10119', '1', '5');
INSERT INTO `wards` VALUES ('12', 'Huyện Từ Liêm', '17', '10121', '1', '5');
INSERT INTO `wards` VALUES ('13', 'Huyện Thanh Trì', '17', '10123', '1', '5');
INSERT INTO `wards` VALUES ('15', 'Quận Hồng Bàng', '23', '10301', '1', '5');
INSERT INTO `wards` VALUES ('16', 'Quận Ngô Quyền', '23', '10303', '1', '5');
INSERT INTO `wards` VALUES ('17', 'Quận Lê Chân', '23', '10305', '1', '5');
INSERT INTO `wards` VALUES ('18', 'Quận Kiến An', '23', '10307', '1', '5');
INSERT INTO `wards` VALUES ('19', 'Thị xã Đồ Sơn', '23', '10309', '1', '5');
INSERT INTO `wards` VALUES ('20', 'Huyện Thuỷ Nguyên', '23', '10311', '1', '5');
INSERT INTO `wards` VALUES ('21', 'Huyện An Hải', '23', '10313', '1', '5');
INSERT INTO `wards` VALUES ('22', 'Huyện An Lão', '23', '10315', '1', '5');
INSERT INTO `wards` VALUES ('23', 'Huyện Kiến Thuỵ', '23', '10317', '1', '5');
INSERT INTO `wards` VALUES ('24', 'Huyện Tiên Lãng', '23', '10319', '1', '5');
INSERT INTO `wards` VALUES ('25', 'Huyện Vĩnh Bảo', '23', '10321', '1', '5');
INSERT INTO `wards` VALUES ('26', 'Huyện Cát Hải', '23', '10323', '1', '5');
INSERT INTO `wards` VALUES ('27', 'Huyện Bạch Long Vĩ', '23', '10325', '1', '5');
INSERT INTO `wards` VALUES ('29', 'Thị xã Vĩnh Yên', '55', '10401', '1', '5');
INSERT INTO `wards` VALUES ('30', 'Huyện Lập Thạch', '55', '10403', '1', '5');
INSERT INTO `wards` VALUES ('31', 'Huyện Tam Dương', '55', '10405', '1', '5');
INSERT INTO `wards` VALUES ('32', 'Huyện Vĩnh Tường', '55', '10407', '1', '5');
INSERT INTO `wards` VALUES ('33', 'Huyện Yên Lạc', '55', '10409', '1', '5');
INSERT INTO `wards` VALUES ('34', 'Huyện Mê Linh', '55', '10411', '1', '5');
INSERT INTO `wards` VALUES ('35', 'Huyện Bình Xuyên', '55', '10413', '1', '5');
INSERT INTO `wards` VALUES ('37', 'Thị xã Hà Đông', '18', '10501', '1', '5');
INSERT INTO `wards` VALUES ('38', 'Thị xã Sơn Tây', '18', '10503', '1', '5');
INSERT INTO `wards` VALUES ('39', 'Huyện Ba Vì', '18', '10505', '1', '5');
INSERT INTO `wards` VALUES ('40', 'Huyện Phúc Thọ', '18', '10507', '1', '5');
INSERT INTO `wards` VALUES ('41', 'Huyện Đan Phượng', '18', '10509', '1', '5');
INSERT INTO `wards` VALUES ('42', 'Huyện Thạch Thất', '18', '10511', '1', '5');
INSERT INTO `wards` VALUES ('43', 'Huyện Hoài Đức', '18', '10513', '1', '5');
INSERT INTO `wards` VALUES ('44', 'Huyện Quốc Oai', '18', '10515', '1', '5');
INSERT INTO `wards` VALUES ('45', 'Huyện Chương Mỹ', '18', '10517', '1', '5');
INSERT INTO `wards` VALUES ('46', 'Huyện Thanh Oai', '18', '10519', '1', '5');
INSERT INTO `wards` VALUES ('47', 'Huyện Thường Tín', '18', '10521', '1', '5');
INSERT INTO `wards` VALUES ('48', 'Huyện Mỹ Đức', '18', '10523', '1', '5');
INSERT INTO `wards` VALUES ('49', 'Huyện ứng Hòa', '18', '10525', '1', '5');
INSERT INTO `wards` VALUES ('50', 'Huyện Phú Xuyên', '18', '10527', '1', '5');
INSERT INTO `wards` VALUES ('52', 'Thị xã Bắc Ninh', '9', '22301', '1', '5');
INSERT INTO `wards` VALUES ('53', 'Huyện Yên Phong', '9', '22303', '1', '5');
INSERT INTO `wards` VALUES ('54', 'Huyện Quế Võ', '9', '22305', '1', '5');
INSERT INTO `wards` VALUES ('55', 'Huyện Tiên Du', '9', '22307', '1', '5');
INSERT INTO `wards` VALUES ('56', 'Huyện Từ Sơn', '9', '22308', '1', '5');
INSERT INTO `wards` VALUES ('57', 'Huyện Thuận Thành', '9', '22309', '1', '5');
INSERT INTO `wards` VALUES ('58', 'Huyện Lương Tài', '9', '22311', '1', '5');
INSERT INTO `wards` VALUES ('59', 'Huyện Gia Bình', '9', '22312', '1', '5');
INSERT INTO `wards` VALUES ('61', 'Thành phố Hải Dương', '22', '10701', '1', '5');
INSERT INTO `wards` VALUES ('62', 'Huyện Chí Linh', '22', '10703', '1', '5');
INSERT INTO `wards` VALUES ('63', 'Huyện Nam Sách', '22', '10705', '1', '5');
INSERT INTO `wards` VALUES ('64', 'Huyện Thanh Hà', '22', '10707', '1', '5');
INSERT INTO `wards` VALUES ('65', 'Huyện Kinh Môn', '22', '10709', '1', '5');
INSERT INTO `wards` VALUES ('66', 'Huyện Kim Thành', '22', '10711', '1', '5');
INSERT INTO `wards` VALUES ('67', 'Huyện Gia Lộc', '22', '10713', '1', '5');
INSERT INTO `wards` VALUES ('68', 'Huyện Tứ Kỳ', '22', '10715', '1', '5');
INSERT INTO `wards` VALUES ('69', 'Huyện Cẩm Giàng', '22', '10717', '1', '5');
INSERT INTO `wards` VALUES ('70', 'Huyện Bình Giang', '22', '10719', '1', '5');
INSERT INTO `wards` VALUES ('71', 'Huyện Thanh Miện', '22', '10721', '1', '5');
INSERT INTO `wards` VALUES ('72', 'Huyện Ninh Giang', '22', '10723', '1', '5');
INSERT INTO `wards` VALUES ('74', 'Thị xã Hưng Yên', '21', '10901', '1', '5');
INSERT INTO `wards` VALUES ('75', 'Huyện Văn Lâm', '21', '10902', '1', '5');
INSERT INTO `wards` VALUES ('76', 'Huyện Mỹ Văn', '21', '10903', '1', '5');
INSERT INTO `wards` VALUES ('77', 'Huyện Yên Mỹ', '21', '10904', '1', '5');
INSERT INTO `wards` VALUES ('78', 'Huyện Châu Giang', '21', '10905', '1', '5');
INSERT INTO `wards` VALUES ('79', 'Huyện Khoái Châu', '21', '10906', '1', '5');
INSERT INTO `wards` VALUES ('80', 'Huyện Ân Thi', '21', '10907', '1', '5');
INSERT INTO `wards` VALUES ('81', 'Huyện Kim Động', '21', '10909', '1', '5');
INSERT INTO `wards` VALUES ('82', 'Huyện Phù Cừ', '21', '10911', '1', '5');
INSERT INTO `wards` VALUES ('83', 'Huyện Tiên Lữ', '21', '10913', '1', '5');
INSERT INTO `wards` VALUES ('85', 'Thị xã Phủ Lý', '16', '11101', '1', '5');
INSERT INTO `wards` VALUES ('86', 'Huyện Duy Tiên', '16', '11103', '1', '5');
INSERT INTO `wards` VALUES ('87', 'Huyện Kim Bảng', '16', '11105', '1', '5');
INSERT INTO `wards` VALUES ('88', 'Huyện Lý Nhân', '16', '11107', '1', '5');
INSERT INTO `wards` VALUES ('89', 'Huyện Thanh Liêm', '16', '11109', '1', '5');
INSERT INTO `wards` VALUES ('90', 'Huyện Bình Lục', '16', '11111', '1', '5');
INSERT INTO `wards` VALUES ('92', 'Thành phố Nam Định', '34', '11301', '1', '5');
INSERT INTO `wards` VALUES ('93', 'Huyện Vụ Bản', '34', '11303', '1', '5');
INSERT INTO `wards` VALUES ('94', 'Huyện Mỹ Lộc', '34', '11305', '1', '5');
INSERT INTO `wards` VALUES ('95', 'Huyện ý Yên', '34', '11307', '1', '5');
INSERT INTO `wards` VALUES ('96', 'Huyện Nam Trực', '34', '11309', '1', '5');
INSERT INTO `wards` VALUES ('97', 'Huyện Trực Ninh', '34', '11311', '1', '5');
INSERT INTO `wards` VALUES ('98', 'Huyện Xuân Trường', '34', '11313', '1', '5');
INSERT INTO `wards` VALUES ('99', 'Huyện Giao Thủy', '34', '11315', '1', '5');
INSERT INTO `wards` VALUES ('100', 'Huyện Nghĩa Hưng', '34', '11317', '1', '5');
INSERT INTO `wards` VALUES ('101', 'Huyện Hải Hậu', '34', '11319', '1', '5');
INSERT INTO `wards` VALUES ('103', 'Thị xã Thái Bình', '47', '11501', '1', '5');
INSERT INTO `wards` VALUES ('104', 'Huyện Quỳnh Phụ', '47', '11503', '1', '5');
INSERT INTO `wards` VALUES ('105', 'Huyện Hưng Hà', '47', '11505', '1', '5');
INSERT INTO `wards` VALUES ('106', 'Huyện Thái Thụy', '47', '11507', '1', '5');
INSERT INTO `wards` VALUES ('107', 'Huyện Đông Hưng', '47', '11509', '1', '5');
INSERT INTO `wards` VALUES ('108', 'Huyện Vũ Thư', '47', '11511', '1', '5');
INSERT INTO `wards` VALUES ('109', 'Huyện Kiến Xương', '47', '11513', '1', '5');
INSERT INTO `wards` VALUES ('110', 'Huyện Tiền Hải', '47', '11515', '1', '5');
INSERT INTO `wards` VALUES ('112', 'Thị xã Ninh Bình', '36', '11701', '1', '5');
INSERT INTO `wards` VALUES ('113', 'Thị xã Tam Điệp', '36', '11703', '1', '5');
INSERT INTO `wards` VALUES ('114', 'Huyện Nho Quan', '36', '11705', '1', '5');
INSERT INTO `wards` VALUES ('115', 'Huyện Gia Viễn', '36', '11707', '1', '5');
INSERT INTO `wards` VALUES ('116', 'Huyện Hoa Lư', '36', '11709', '1', '5');
INSERT INTO `wards` VALUES ('117', 'Huyện Yên Mô', '36', '11711', '1', '5');
INSERT INTO `wards` VALUES ('118', 'Huyện Yên Khánh', '36', '11713', '1', '5');
INSERT INTO `wards` VALUES ('119', 'Huyện Kim Sơn', '36', '11715', '1', '5');
INSERT INTO `wards` VALUES ('121', 'Thị xã Hà Giang', '15', '20101', '1', '5');
INSERT INTO `wards` VALUES ('122', 'Huyện Đồng Văn', '15', '20103', '1', '5');
INSERT INTO `wards` VALUES ('123', 'Huyện Mèo Vạc', '15', '20105', '1', '5');
INSERT INTO `wards` VALUES ('124', 'Huyện Yên Minh', '15', '20107', '1', '5');
INSERT INTO `wards` VALUES ('125', 'Huyện Quản Bạ', '15', '20109', '1', '5');
INSERT INTO `wards` VALUES ('126', 'Huyện Bắc Mê', '15', '20111', '1', '5');
INSERT INTO `wards` VALUES ('127', 'Huyện Hoàng Su Phì', '15', '20113', '1', '5');
INSERT INTO `wards` VALUES ('128', 'Huyện Vị Xuyên', '15', '20115', '1', '5');
INSERT INTO `wards` VALUES ('129', 'Huyện Xín Mần', '15', '20117', '1', '5');
INSERT INTO `wards` VALUES ('130', 'Huyện Bắc Quang', '15', '20119', '1', '5');
INSERT INTO `wards` VALUES ('132', 'Thị xã Cao Bằng', '11', '20301', '1', '5');
INSERT INTO `wards` VALUES ('133', 'Huyện Bảo Lạc', '11', '20303', '1', '5');
INSERT INTO `wards` VALUES ('134', 'Huyện Hà Quảng', '11', '20305', '1', '5');
INSERT INTO `wards` VALUES ('135', 'Huyện Thông Nông', '11', '20307', '1', '5');
INSERT INTO `wards` VALUES ('136', 'Huyện Trà Lĩnh', '11', '20309', '1', '5');
INSERT INTO `wards` VALUES ('137', 'Huyện Trùng Khánh', '11', '20311', '1', '5');
INSERT INTO `wards` VALUES ('138', 'Huyện Nguyên Bình', '11', '20313', '1', '5');
INSERT INTO `wards` VALUES ('139', 'Huyện Hoà An', '11', '20315', '1', '5');
INSERT INTO `wards` VALUES ('140', 'Huyện Quảng Hoà', '11', '20317', '1', '5');
INSERT INTO `wards` VALUES ('141', 'Huyện Hạ Lang', '11', '20319', '1', '5');
INSERT INTO `wards` VALUES ('142', 'Huyện Thạch An', '11', '20321', '1', '5');
INSERT INTO `wards` VALUES ('144', 'Thị xã Lào Cai', '31', '20501', '1', '5');
INSERT INTO `wards` VALUES ('145', 'Thị xã Cam Đường', '31', '20503', '1', '5');
INSERT INTO `wards` VALUES ('146', 'Huyện Mường Khương', '31', '20505', '1', '5');
INSERT INTO `wards` VALUES ('147', 'Huyện Bát Xát', '31', '20507', '1', '5');
INSERT INTO `wards` VALUES ('148', 'Huyện Bắc Hà', '31', '20509', '1', '5');
INSERT INTO `wards` VALUES ('149', 'Huyện Bảo Thắng', '31', '20511', '1', '5');
INSERT INTO `wards` VALUES ('150', 'Huyện Sa Pa', '31', '20513', '1', '5');
INSERT INTO `wards` VALUES ('151', 'Huyện Bảo Yên', '31', '20515', '1', '5');
INSERT INTO `wards` VALUES ('152', 'Huyện Than Uyên', '31', '20517', '1', '5');
INSERT INTO `wards` VALUES ('153', 'Huyện Văn Bàn', '31', '20519', '1', '5');
INSERT INTO `wards` VALUES ('155', 'Thị xã Bắc Kạn', '8', '20701', '1', '5');
INSERT INTO `wards` VALUES ('156', 'Huyện Ba Bể', '8', '20703', '1', '5');
INSERT INTO `wards` VALUES ('157', 'Huyện Ngân Sơn', '8', '20705', '1', '5');
INSERT INTO `wards` VALUES ('158', 'Huyện Chợ Đồn', '8', '20707', '1', '5');
INSERT INTO `wards` VALUES ('159', 'Huyện Na Rì', '8', '20709', '1', '5');
INSERT INTO `wards` VALUES ('160', 'Huyện Bạch Thông', '8', '20711', '1', '5');
INSERT INTO `wards` VALUES ('161', 'Huyện Chợ Mới', '8', '20713', '1', '5');
INSERT INTO `wards` VALUES ('163', 'Thị xã Lạng Sơn', '33', '20901', '1', '5');
INSERT INTO `wards` VALUES ('164', 'Huyện Tràng Định', '33', '20903', '1', '5');
INSERT INTO `wards` VALUES ('165', 'Huyện Văn Lãng', '33', '20905', '1', '5');
INSERT INTO `wards` VALUES ('166', 'Huyện Bình Gia', '33', '20907', '1', '5');
INSERT INTO `wards` VALUES ('167', 'Huyện Bắc Sơn', '33', '20909', '1', '5');
INSERT INTO `wards` VALUES ('168', 'Huyện Văn Quan', '33', '20911', '1', '5');
INSERT INTO `wards` VALUES ('169', 'Huyện Cao Lộc', '33', '20913', '1', '5');
INSERT INTO `wards` VALUES ('170', 'Huyện Lộc Bình', '33', '20915', '1', '5');
INSERT INTO `wards` VALUES ('171', 'Huyện Chi Lăng', '33', '20917', '1', '5');
INSERT INTO `wards` VALUES ('172', 'Huyện Đình Lập', '33', '20919', '1', '5');
INSERT INTO `wards` VALUES ('173', 'Huyện Hữu Lũng', '33', '20921', '1', '5');
INSERT INTO `wards` VALUES ('175', 'Thị xã Tuyên Quang', '52', '21101', '1', '5');
INSERT INTO `wards` VALUES ('176', 'Huyện Nà Hang', '52', '21103', '1', '5');
INSERT INTO `wards` VALUES ('177', 'Huyện Chiêm Hóa', '52', '21105', '1', '5');
INSERT INTO `wards` VALUES ('178', 'Huyện Hàm Yên', '52', '21107', '1', '5');
INSERT INTO `wards` VALUES ('179', 'Huyện Yên Sơn', '52', '21109', '1', '5');
INSERT INTO `wards` VALUES ('180', 'Huyện Sơn Dương', '52', '21111', '1', '5');
INSERT INTO `wards` VALUES ('182', 'Thị xã Yên Bái', '56', '21301', '1', '5');
INSERT INTO `wards` VALUES ('183', 'Thị xã Nghĩa Lộ', '56', '21303', '1', '5');
INSERT INTO `wards` VALUES ('184', 'Huyện Lục Yên', '56', '21305', '1', '5');
INSERT INTO `wards` VALUES ('185', 'Huyện Văn Yên', '56', '21307', '1', '5');
INSERT INTO `wards` VALUES ('186', 'Huyện Mù Căng Chải', '56', '21309', '1', '5');
INSERT INTO `wards` VALUES ('187', 'Huyện Trấn Yên', '56', '21311', '1', '5');
INSERT INTO `wards` VALUES ('188', 'Huyện Yên Bình', '56', '21313', '1', '5');
INSERT INTO `wards` VALUES ('189', 'Huyện Văn Chấn', '56', '21315', '1', '5');
INSERT INTO `wards` VALUES ('190', 'Huyện Trạm Tấu', '56', '21317', '1', '5');
INSERT INTO `wards` VALUES ('192', 'Thành phố Thái Nguyên', '48', '21501', '1', '5');
INSERT INTO `wards` VALUES ('193', 'Thị xã Sông Công', '48', '21503', '1', '5');
INSERT INTO `wards` VALUES ('194', 'Huyện Định Hóa', '48', '21505', '1', '5');
INSERT INTO `wards` VALUES ('195', 'Huyện Võ Nhai', '48', '21507', '1', '5');
INSERT INTO `wards` VALUES ('196', 'Huyện Phú Lương', '48', '21509', '1', '5');
INSERT INTO `wards` VALUES ('197', 'Huyện Đồng Hỷ', '48', '21511', '1', '5');
INSERT INTO `wards` VALUES ('198', 'Huyện Đại Từ', '48', '21513', '1', '5');
INSERT INTO `wards` VALUES ('199', 'Huyện Phú Bình', '48', '21515', '1', '5');
INSERT INTO `wards` VALUES ('200', 'Huyện Phổ Yên', '48', '21517', '1', '5');
INSERT INTO `wards` VALUES ('202', 'Thành phố Việt Trì', '38', '21701', '1', '5');
INSERT INTO `wards` VALUES ('203', 'Thị xã Phú Thọ', '38', '21703', '1', '5');
INSERT INTO `wards` VALUES ('204', 'Huyện Đoan Hùng', '38', '21705', '1', '5');
INSERT INTO `wards` VALUES ('205', 'Huyện Hạ Hoà', '38', '21707', '1', '5');
INSERT INTO `wards` VALUES ('206', 'Huyện Thanh Ba', '38', '21709', '1', '5');
INSERT INTO `wards` VALUES ('207', 'Huyện Phong Châu', '38', '21711', '1', '5');
INSERT INTO `wards` VALUES ('208', 'Huyện Lâm Thao', '38', '21712', '1', '5');
INSERT INTO `wards` VALUES ('209', 'Huyện Sông Thao', '38', '21713', '1', '5');
INSERT INTO `wards` VALUES ('210', 'Huyện Yên Lập', '38', '21715', '1', '5');
INSERT INTO `wards` VALUES ('211', 'Huyện Tam Thanh', '38', '21717', '1', '5');
INSERT INTO `wards` VALUES ('212', 'Huyện Thanh Thuỷ', '38', '21718', '1', '5');
INSERT INTO `wards` VALUES ('213', 'Huyện Thanh Sơn', '38', '21719', '1', '5');
INSERT INTO `wards` VALUES ('215', 'Thị xã Bắc Giang', '7', '22101', '1', '5');
INSERT INTO `wards` VALUES ('216', 'Huyện Yên Thế', '7', '22103', '1', '5');
INSERT INTO `wards` VALUES ('217', 'Huyện Tân Yên', '7', '22105', '1', '5');
INSERT INTO `wards` VALUES ('218', 'Huyện Lục Ngạn', '7', '22107', '1', '5');
INSERT INTO `wards` VALUES ('219', 'Huyện Hiệp Hòa', '7', '22109', '1', '5');
INSERT INTO `wards` VALUES ('220', 'Huyện Lạng Giang', '7', '22111', '1', '5');
INSERT INTO `wards` VALUES ('221', 'Huyện Sơn Động', '7', '22113', '1', '5');
INSERT INTO `wards` VALUES ('222', 'Huyện Lục Nam', '7', '22115', '1', '5');
INSERT INTO `wards` VALUES ('223', 'Huyện Việt Yên', '7', '22117', '1', '5');
INSERT INTO `wards` VALUES ('224', 'Huyện Yên Dũng', '7', '22119', '1', '5');
INSERT INTO `wards` VALUES ('226', 'Thành phố Hạ Long', '43', '22501', '1', '5');
INSERT INTO `wards` VALUES ('227', 'Thị xã Cẩm Phả', '43', '22503', '1', '5');
INSERT INTO `wards` VALUES ('228', 'Thị xã Uông Bí', '43', '22505', '1', '5');
INSERT INTO `wards` VALUES ('229', 'Huyện Bình Liêu', '43', '22507', '1', '5');
INSERT INTO `wards` VALUES ('230', 'Thị Xã Móng Cái', '43', '22509', '1', '5');
INSERT INTO `wards` VALUES ('231', 'Huyện Quảng Hà', '43', '22511', '1', '5');
INSERT INTO `wards` VALUES ('232', 'Huyện Tiên Yên', '43', '22513', '1', '5');
INSERT INTO `wards` VALUES ('233', 'Huyện Ba Chẽ', '43', '22515', '1', '5');
INSERT INTO `wards` VALUES ('234', 'Huyện Vân Đồn', '43', '22517', '1', '5');
INSERT INTO `wards` VALUES ('235', 'Huyện Hoành Bồ', '43', '22519', '1', '5');
INSERT INTO `wards` VALUES ('236', 'Huyện Đông Triều', '43', '22521', '1', '5');
INSERT INTO `wards` VALUES ('237', 'Huyện Cô Tô', '43', '22523', '1', '5');
INSERT INTO `wards` VALUES ('238', 'Huyện Yên Hưng', '43', '22525', '1', '5');
INSERT INTO `wards` VALUES ('240', 'Thị xã Điện Biên Phủ', '29', '30101', '1', '5');
INSERT INTO `wards` VALUES ('241', 'Thị xã Lai Châu', '29', '30103', '1', '5');
INSERT INTO `wards` VALUES ('242', 'Huyện Mường Tè', '29', '30105', '1', '5');
INSERT INTO `wards` VALUES ('243', 'Huyện Phong Thổ', '29', '30107', '1', '5');
INSERT INTO `wards` VALUES ('244', 'Huyện Sìn Hồ', '29', '30109', '1', '5');
INSERT INTO `wards` VALUES ('245', 'Huyện Mường Lay', '29', '30111', '1', '5');
INSERT INTO `wards` VALUES ('246', 'Huyện Tủa Chùa', '29', '30113', '1', '5');
INSERT INTO `wards` VALUES ('247', 'Huyện Tuần Giáo', '29', '30115', '1', '5');
INSERT INTO `wards` VALUES ('248', 'Huyện Điện Biên', '29', '30117', '1', '5');
INSERT INTO `wards` VALUES ('249', 'Huyện Điện Biên Đông', '29', '30119', '1', '5');
INSERT INTO `wards` VALUES ('251', 'Thị xã Sơn La', '45', '30301', '1', '5');
INSERT INTO `wards` VALUES ('252', 'Huyện Quỳnh Nhai', '45', '30303', '1', '5');
INSERT INTO `wards` VALUES ('253', 'Huyện Mường La', '45', '30305', '1', '5');
INSERT INTO `wards` VALUES ('254', 'Huyện Thuận Châu', '45', '30307', '1', '5');
INSERT INTO `wards` VALUES ('255', 'Huyện Bắc Yên', '45', '30309', '1', '5');
INSERT INTO `wards` VALUES ('256', 'Huyện Phù Yên', '45', '30311', '1', '5');
INSERT INTO `wards` VALUES ('257', 'Huyện Mai Sơn', '45', '30313', '1', '5');
INSERT INTO `wards` VALUES ('258', 'Huyện Sông Mã', '45', '30315', '1', '5');
INSERT INTO `wards` VALUES ('259', 'Huyện Yên Châu', '45', '30317', '1', '5');
INSERT INTO `wards` VALUES ('260', 'Huyện Mộc Châu', '45', '30319', '1', '5');
INSERT INTO `wards` VALUES ('262', 'Thị xã Hòa Bình', '20', '30501', '1', '5');
INSERT INTO `wards` VALUES ('263', 'Huyện Đà Bắc', '20', '30503', '1', '5');
INSERT INTO `wards` VALUES ('264', 'Huyện Mai Châu', '20', '30505', '1', '5');
INSERT INTO `wards` VALUES ('265', 'Huyện Kỳ Sơn', '20', '30507', '1', '5');
INSERT INTO `wards` VALUES ('266', 'Huyện Lương Sơn', '20', '30509', '1', '5');
INSERT INTO `wards` VALUES ('267', 'Huyện Kim Bôi', '20', '30511', '1', '5');
INSERT INTO `wards` VALUES ('268', 'Huyện Tân Lạc', '20', '30513', '1', '5');
INSERT INTO `wards` VALUES ('269', 'Huyện Lạc Sơn', '20', '30515', '1', '5');
INSERT INTO `wards` VALUES ('270', 'Huyện Lạc Thủy', '20', '30517', '1', '5');
INSERT INTO `wards` VALUES ('271', 'Huyện Yên Thủy', '20', '30519', '1', '5');
INSERT INTO `wards` VALUES ('273', 'Thành phố Thanh Hóa', '46', '40101', '1', '5');
INSERT INTO `wards` VALUES ('274', 'Thị xã Bỉm Sơn', '46', '40103', '1', '5');
INSERT INTO `wards` VALUES ('275', 'Thị xã Sầm Sơn', '46', '40105', '1', '5');
INSERT INTO `wards` VALUES ('276', 'Huyện Mường Lát', '46', '40107', '1', '5');
INSERT INTO `wards` VALUES ('277', 'Huyện Quan Hóa', '46', '40109', '1', '5');
INSERT INTO `wards` VALUES ('278', 'Huyện Quan Sơn', '46', '40111', '1', '5');
INSERT INTO `wards` VALUES ('279', 'Huyện Bá Thước', '46', '40113', '1', '5');
INSERT INTO `wards` VALUES ('280', 'Huyện Cẩm Thủy', '46', '40115', '1', '5');
INSERT INTO `wards` VALUES ('281', 'Huyện Lang Chánh', '46', '40117', '1', '5');
INSERT INTO `wards` VALUES ('282', 'Huyện Thạch Thành', '46', '40119', '1', '5');
INSERT INTO `wards` VALUES ('283', 'Huyện Ngọc Lạc', '46', '40121', '1', '5');
INSERT INTO `wards` VALUES ('284', 'Huyện Thường Xuân', '46', '40123', '1', '5');
INSERT INTO `wards` VALUES ('285', 'Huyện Như Xuân', '46', '40125', '1', '5');
INSERT INTO `wards` VALUES ('286', 'Huyện Như Thanh', '46', '40127', '1', '5');
INSERT INTO `wards` VALUES ('287', 'Huyện Vĩnh Lộc', '46', '40129', '1', '5');
INSERT INTO `wards` VALUES ('288', 'Huyện Hà Trung', '46', '40131', '1', '5');
INSERT INTO `wards` VALUES ('289', 'Huyện Nga Sơn', '46', '40133', '1', '5');
INSERT INTO `wards` VALUES ('290', 'Huyện Yên Định', '46', '40135', '1', '5');
INSERT INTO `wards` VALUES ('291', 'Huyện Thọ Xuân', '46', '40137', '1', '5');
INSERT INTO `wards` VALUES ('292', 'Huyện Hậu Lộc', '46', '40139', '1', '5');
INSERT INTO `wards` VALUES ('293', 'Huyện Thiệu Hoá', '46', '40141', '1', '5');
INSERT INTO `wards` VALUES ('294', 'Huyện Hoằng Hóa', '46', '40143', '1', '5');
INSERT INTO `wards` VALUES ('295', 'Huyện Đông Sơn', '46', '40145', '1', '5');
INSERT INTO `wards` VALUES ('296', 'Huyện Triệu Sơn', '46', '40147', '1', '5');
INSERT INTO `wards` VALUES ('297', 'Huyện Quảng Xương', '46', '40149', '1', '5');
INSERT INTO `wards` VALUES ('298', 'Huyện Nông Cống', '46', '40151', '1', '5');
INSERT INTO `wards` VALUES ('299', 'Huyện Tĩnh Gia', '46', '40153', '1', '5');
INSERT INTO `wards` VALUES ('301', 'Thành phố Vinh', '35', '40301', '1', '5');
INSERT INTO `wards` VALUES ('302', 'Thị xã Cửa Lò', '35', '40303', '1', '5');
INSERT INTO `wards` VALUES ('303', 'Huyện Quế Phong', '35', '40305', '1', '5');
INSERT INTO `wards` VALUES ('304', 'Huyện Quỳ Châu', '35', '40307', '1', '5');
INSERT INTO `wards` VALUES ('305', 'Huyện Kỳ Sơn', '35', '40309', '1', '5');
INSERT INTO `wards` VALUES ('306', 'Huyện Quỳ Hợp', '35', '40311', '1', '5');
INSERT INTO `wards` VALUES ('307', 'Huyện Nghĩa Đàn', '35', '40313', '1', '5');
INSERT INTO `wards` VALUES ('308', 'Huyện Tương Dương', '35', '40315', '1', '5');
INSERT INTO `wards` VALUES ('309', 'Huyện Quỳnh Lưu', '35', '40317', '1', '5');
INSERT INTO `wards` VALUES ('310', 'Huyện Tân Kỳ', '35', '40319', '1', '5');
INSERT INTO `wards` VALUES ('311', 'Huyện Con Cuông', '35', '40321', '1', '5');
INSERT INTO `wards` VALUES ('312', 'Huyện Yên Thành', '35', '40323', '1', '5');
INSERT INTO `wards` VALUES ('313', 'Huyện Diễn Châu', '35', '40325', '1', '5');
INSERT INTO `wards` VALUES ('314', 'Huyện Anh Sơn', '35', '40327', '1', '5');
INSERT INTO `wards` VALUES ('315', 'Huyện Đô Lương', '35', '40329', '1', '5');
INSERT INTO `wards` VALUES ('316', 'Huyện Thanh Chương', '35', '40331', '1', '5');
INSERT INTO `wards` VALUES ('317', 'Huyện Nghi Lộc', '35', '40333', '1', '5');
INSERT INTO `wards` VALUES ('318', 'Huyện Nam Đàn', '35', '40335', '1', '5');
INSERT INTO `wards` VALUES ('319', 'Huyện Hưng Nguyên', '35', '40337', '1', '5');
INSERT INTO `wards` VALUES ('321', 'Thị xã Hà Tĩnh', '19', '40501', '1', '5');
INSERT INTO `wards` VALUES ('322', 'Thị xã Hồng Lĩnh', '19', '40503', '1', '5');
INSERT INTO `wards` VALUES ('323', 'Huyện Nghi Xuân', '19', '40505', '1', '5');
INSERT INTO `wards` VALUES ('324', 'Huyện Đức Thọ', '19', '40507', '1', '5');
INSERT INTO `wards` VALUES ('325', 'Huyện Hương Sơn', '19', '40509', '1', '5');
INSERT INTO `wards` VALUES ('326', 'Huyện Can Lộc', '19', '40511', '1', '5');
INSERT INTO `wards` VALUES ('327', 'Huyện Thạch Hà', '19', '40513', '1', '5');
INSERT INTO `wards` VALUES ('328', 'Huyện Cẩm Xuyên', '19', '40515', '1', '5');
INSERT INTO `wards` VALUES ('329', 'Huyện Hương Khê', '19', '40517', '1', '5');
INSERT INTO `wards` VALUES ('330', 'Huyện Kỳ Anh', '19', '40519', '1', '5');
INSERT INTO `wards` VALUES ('332', 'Thị xã Đồng Hới', '40', '40701', '1', '5');
INSERT INTO `wards` VALUES ('333', 'Huyện Tuyên Hóa', '40', '40703', '1', '5');
INSERT INTO `wards` VALUES ('334', 'Huyện Minh Hóa', '40', '40705', '1', '5');
INSERT INTO `wards` VALUES ('335', 'Huyện Quảng Trạch', '40', '40707', '1', '5');
INSERT INTO `wards` VALUES ('336', 'Huyện Bố Trạch', '40', '40709', '1', '5');
INSERT INTO `wards` VALUES ('337', 'Huyện Quảng Ninh', '40', '40711', '1', '5');
INSERT INTO `wards` VALUES ('338', 'Huyện Lệ Thủy', '40', '40713', '1', '5');
INSERT INTO `wards` VALUES ('340', 'Thị xã Đông Hà', '44', '40901', '1', '5');
INSERT INTO `wards` VALUES ('341', 'Thị xã Quảng Trị', '44', '40903', '1', '5');
INSERT INTO `wards` VALUES ('342', 'Huyện Vĩnh Linh', '44', '40905', '1', '5');
INSERT INTO `wards` VALUES ('343', 'Huyện Gio Linh', '44', '40907', '1', '5');
INSERT INTO `wards` VALUES ('344', 'Huyện Cam Lộ', '44', '40909', '1', '5');
INSERT INTO `wards` VALUES ('345', 'Huyện Triệu Phong', '44', '40911', '1', '5');
INSERT INTO `wards` VALUES ('346', 'Huyện Hải Lăng', '44', '40913', '1', '5');
INSERT INTO `wards` VALUES ('347', 'Huyện Hướng Hóa', '44', '40915', '1', '5');
INSERT INTO `wards` VALUES ('348', 'Huyện Đa Krông', '44', '40917', '1', '5');
INSERT INTO `wards` VALUES ('350', 'Thành phố Huế', '49', '41101', '1', '5');
INSERT INTO `wards` VALUES ('351', 'Huyện Phong Điền', '49', '41103', '1', '5');
INSERT INTO `wards` VALUES ('352', 'Huyện Quảng Điền', '49', '41105', '1', '5');
INSERT INTO `wards` VALUES ('353', 'Huyện Hương Trà', '49', '41107', '1', '5');
INSERT INTO `wards` VALUES ('354', 'Huyện Phú Vang', '49', '41109', '1', '5');
INSERT INTO `wards` VALUES ('355', 'Huyện Hương Thủy', '49', '41111', '1', '5');
INSERT INTO `wards` VALUES ('356', 'Huyện Phú Lộc', '49', '41113', '1', '5');
INSERT INTO `wards` VALUES ('357', 'Huyện A Lưới', '49', '41115', '1', '5');
INSERT INTO `wards` VALUES ('358', 'Huyện Nam Đông', '49', '41117', '1', '5');
INSERT INTO `wards` VALUES ('360', 'Quận Hải Châu', '57', '50101', '1', '5');
INSERT INTO `wards` VALUES ('361', 'Quận Thanh Khê', '57', '50103', '1', '5');
INSERT INTO `wards` VALUES ('362', 'Quận Sơn Trà', '57', '50105', '1', '5');
INSERT INTO `wards` VALUES ('363', 'Quận Ngũ Hành Sơn', '57', '50107', '1', '5');
INSERT INTO `wards` VALUES ('364', 'Quận Liên Chiểu', '57', '50109', '1', '5');
INSERT INTO `wards` VALUES ('365', 'Huyện Hoà Vang', '57', '50111', '1', '5');
INSERT INTO `wards` VALUES ('366', 'Huyện Đảo Hoàng Sa', '57', '50113', '1', '5');
INSERT INTO `wards` VALUES ('368', 'Thị xã Tam Kỳ', '41', '50301', '1', '1');
INSERT INTO `wards` VALUES ('369', 'Thị xã Hội An', '41', '50303', '1', '2');
INSERT INTO `wards` VALUES ('370', 'Huyện Hiên', '41', '50305', '1', '13');
INSERT INTO `wards` VALUES ('371', 'Huyện Đại Lộc', '41', '50307', '1', '12');
INSERT INTO `wards` VALUES ('372', 'Huyện Điện Bàn', '41', '50309', '1', '11');
INSERT INTO `wards` VALUES ('373', 'Huyện Duy Xuyên', '41', '50311', '1', '10');
INSERT INTO `wards` VALUES ('374', 'Huyện Giằng', '41', '50313', '1', '9');
INSERT INTO `wards` VALUES ('375', 'Huyện Thăng Bình', '41', '50315', '1', '8');
INSERT INTO `wards` VALUES ('376', 'Huyện Quế Sơn', '41', '50317', '1', '7');
INSERT INTO `wards` VALUES ('377', 'Huyện Hiệp Đức', '41', '50319', '1', '6');
INSERT INTO `wards` VALUES ('378', 'Huyện Tiên Phước', '41', '50321', '1', '5');
INSERT INTO `wards` VALUES ('379', 'Huyện Phước Sơn', '41', '50323', '1', '4');
INSERT INTO `wards` VALUES ('380', 'Huyện Núi Thành', '41', '50325', '1', '3');
INSERT INTO `wards` VALUES ('381', 'Huyện Trà My', '41', '50327', '1', '14');
INSERT INTO `wards` VALUES ('383', 'Thị xã Quảng Ngãi', '42', '50501', '1', '5');
INSERT INTO `wards` VALUES ('384', 'Huyện Lý Sơn', '42', '50503', '1', '5');
INSERT INTO `wards` VALUES ('385', 'Huyện Bình Sơn', '42', '50505', '1', '5');
INSERT INTO `wards` VALUES ('386', 'Huyện Trà Bồng', '42', '50507', '1', '5');
INSERT INTO `wards` VALUES ('387', 'Huyện Sơn Tịnh', '42', '50509', '1', '5');
INSERT INTO `wards` VALUES ('388', 'Huyện Sơn Tây', '42', '50511', '1', '5');
INSERT INTO `wards` VALUES ('389', 'Huyện Sơn Hà', '42', '50513', '1', '5');
INSERT INTO `wards` VALUES ('390', 'Huyện Tư Nghĩa', '42', '50515', '1', '5');
INSERT INTO `wards` VALUES ('391', 'Huyện Nghĩa Hành', '42', '50517', '1', '5');
INSERT INTO `wards` VALUES ('392', 'Huyện Minh Long', '42', '50519', '1', '5');
INSERT INTO `wards` VALUES ('393', 'Huyện Mộ Đức', '42', '50521', '1', '5');
INSERT INTO `wards` VALUES ('394', 'Huyện Đức Phổ', '42', '50523', '1', '5');
INSERT INTO `wards` VALUES ('395', 'Huyện Ba Tơ', '42', '50525', '1', '5');
INSERT INTO `wards` VALUES ('397', 'Thành phố Qui Nhơn', '6', '50701', '1', '5');
INSERT INTO `wards` VALUES ('398', 'Huyện An Lão', '6', '50703', '1', '5');
INSERT INTO `wards` VALUES ('399', 'Huyện Hoài Nhơn', '6', '50705', '1', '5');
INSERT INTO `wards` VALUES ('400', 'Huyện Hoài Ân', '6', '50707', '1', '5');
INSERT INTO `wards` VALUES ('401', 'Huyện Phù Mỹ', '6', '50709', '1', '5');
INSERT INTO `wards` VALUES ('402', 'Huyện Vĩnh Thạnh', '6', '50711', '1', '5');
INSERT INTO `wards` VALUES ('403', 'Huyện Phù Cát', '6', '50713', '1', '5');
INSERT INTO `wards` VALUES ('404', 'Huyện Tây Sơn', '6', '50715', '1', '5');
INSERT INTO `wards` VALUES ('405', 'Huyện An Nhơn', '6', '50717', '1', '5');
INSERT INTO `wards` VALUES ('406', 'Huyện Tuy Phước', '6', '50719', '1', '5');
INSERT INTO `wards` VALUES ('407', 'Huyện Vân Canh', '6', '50721', '1', '5');
INSERT INTO `wards` VALUES ('409', 'Thành phố Tuy Hòa', '39', '50901', '1', '1');
INSERT INTO `wards` VALUES ('410', 'Huyện Đồng Xuân', '39', '50903', '1', '2');
INSERT INTO `wards` VALUES ('411', 'Huyện Sông Cầu', '39', '50905', '1', '3');
INSERT INTO `wards` VALUES ('412', 'Huyện Tuy An', '39', '50907', '1', '4');
INSERT INTO `wards` VALUES ('413', 'Huyện Sơn Hòa', '39', '50909', '1', '5');
INSERT INTO `wards` VALUES ('414', 'Huyện Đông Hòa', '39', '50911', '1', '6');
INSERT INTO `wards` VALUES ('415', 'Huyện Sông Hinh', '39', '50913', '1', '7');
INSERT INTO `wards` VALUES ('417', 'Thành phố Nha Trang', '25', '51101', '1', '5');
INSERT INTO `wards` VALUES ('418', 'Huyện Vạn Ninh', '25', '51103', '1', '5');
INSERT INTO `wards` VALUES ('419', 'Huyện Ninh Hòa', '25', '51105', '1', '5');
INSERT INTO `wards` VALUES ('420', 'Huyện Diên Khánh', '25', '51107', '1', '5');
INSERT INTO `wards` VALUES ('421', 'Huyện Cam Ranh', '25', '51109', '1', '5');
INSERT INTO `wards` VALUES ('422', 'Huyện Khánh Vĩnh', '25', '51111', '1', '5');
INSERT INTO `wards` VALUES ('423', 'Huyện Khánh Sơn', '25', '51113', '1', '5');
INSERT INTO `wards` VALUES ('424', 'Huyện Trường Sa', '25', '51115', '1', '5');
INSERT INTO `wards` VALUES ('426', 'Thị xã Kon Tum', '28', '60101', '1', '5');
INSERT INTO `wards` VALUES ('427', 'Huyện Đắk Glei', '28', '60103', '1', '5');
INSERT INTO `wards` VALUES ('428', 'Huyện Ngọc Hồi', '28', '60105', '1', '5');
INSERT INTO `wards` VALUES ('429', 'Huyện Đắk Tô', '28', '60107', '1', '5');
INSERT INTO `wards` VALUES ('430', 'Huyện Kon Plông', '28', '60109', '1', '5');
INSERT INTO `wards` VALUES ('431', 'Huyện Đak Hà', '28', '60111', '1', '5');
INSERT INTO `wards` VALUES ('432', 'Huyện Sa Thầy', '28', '60113', '1', '5');
INSERT INTO `wards` VALUES ('434', 'Thị xã Pleiku', '14', '60301', '1', '5');
INSERT INTO `wards` VALUES ('435', 'Huyện KBang', '14', '60303', '1', '5');
INSERT INTO `wards` VALUES ('436', 'Huyện Mang Yang', '14', '60305', '1', '5');
INSERT INTO `wards` VALUES ('437', 'Huyện Chư Păh', '14', '60307', '1', '5');
INSERT INTO `wards` VALUES ('438', 'Huyện Ia Grai', '14', '60309', '1', '5');
INSERT INTO `wards` VALUES ('439', 'Huyện An Khê', '14', '60311', '1', '5');
INSERT INTO `wards` VALUES ('440', 'Huyện Kông Chro', '14', '60313', '1', '5');
INSERT INTO `wards` VALUES ('441', 'Huyện Đức Cơ', '14', '60315', '1', '5');
INSERT INTO `wards` VALUES ('442', 'Huyện Chư Prông', '14', '60317', '1', '5');
INSERT INTO `wards` VALUES ('443', 'Huyện Chư Sê', '14', '60319', '1', '5');
INSERT INTO `wards` VALUES ('444', 'Huyện Ayun Pa', '14', '60321', '1', '5');
INSERT INTO `wards` VALUES ('445', 'Huyện Krông Pa', '14', '60323', '1', '5');
INSERT INTO `wards` VALUES ('447', 'Thành phố Buôn Ma Thuột', '58', '60501', '1', '5');
INSERT INTO `wards` VALUES ('448', 'Huyện Ea H\'leo', '58', '60503', '1', '5');
INSERT INTO `wards` VALUES ('449', 'Huyện Ea Súp', '58', '60505', '1', '5');
INSERT INTO `wards` VALUES ('450', 'Huyện Krông Năng', '58', '60507', '1', '5');
INSERT INTO `wards` VALUES ('451', 'Huyện Krông Búk', '58', '60509', '1', '5');
INSERT INTO `wards` VALUES ('452', 'Huyện Buôn Đôn', '58', '60511', '1', '5');
INSERT INTO `wards` VALUES ('453', 'Huyện Cư M\'gar', '58', '60513', '1', '5');
INSERT INTO `wards` VALUES ('454', 'Huyện Ea Kar', '58', '60515', '1', '5');
INSERT INTO `wards` VALUES ('455', 'Huyện M\'Đrắk', '58', '60517', '1', '5');
INSERT INTO `wards` VALUES ('456', 'Huyện Krông Pắc', '58', '60519', '1', '5');
INSERT INTO `wards` VALUES ('457', 'Huyện Cư Jút', '64', '60703', '1', '2');
INSERT INTO `wards` VALUES ('458', 'Huyện Krông A Na', '58', '60523', '1', '5');
INSERT INTO `wards` VALUES ('459', 'Huyện Krông Bông', '58', '60525', '1', '5');
INSERT INTO `wards` VALUES ('460', 'Huyện Đắk Mil', '64', '60705', '1', '3');
INSERT INTO `wards` VALUES ('461', 'Huyện Krông Nô', '64', '60707', '1', '4');
INSERT INTO `wards` VALUES ('462', 'Huyện Lắk', '58', '60531', '1', '5');
INSERT INTO `wards` VALUES ('463', 'Huyện Đắk R\'Lấp', '58', '60533', '1', '5');
INSERT INTO `wards` VALUES ('464', 'Huyện Đăk Glong', '64', '60701', '1', '5');
INSERT INTO `wards` VALUES ('466', 'Quận 1', '24', '70101', '1', '24');
INSERT INTO `wards` VALUES ('467', 'Quận 2', '24', '70103', '1', '15');
INSERT INTO `wards` VALUES ('468', 'Quận 3', '24', '70105', '1', '16');
INSERT INTO `wards` VALUES ('469', 'Quận 4', '24', '70107', '1', '17');
INSERT INTO `wards` VALUES ('470', 'Quận 5', '24', '70109', '1', '18');
INSERT INTO `wards` VALUES ('471', 'Quận 6', '24', '70111', '1', '19');
INSERT INTO `wards` VALUES ('472', 'Quận 7', '24', '70113', '1', '20');
INSERT INTO `wards` VALUES ('473', 'Quận 8', '24', '70115', '1', '21');
INSERT INTO `wards` VALUES ('474', 'Quận 9', '24', '70117', '1', '22');
INSERT INTO `wards` VALUES ('475', 'Quận 10', '24', '70119', '1', '1');
INSERT INTO `wards` VALUES ('476', 'Quận 11', '24', '70121', '1', '23');
INSERT INTO `wards` VALUES ('477', 'Quận 12', '24', '70123', '1', '14');
INSERT INTO `wards` VALUES ('478', 'Quận Gò Vấp', '24', '70125', '1', '13');
INSERT INTO `wards` VALUES ('479', 'Quận Tân Bình', '24', '70127', '1', '4');
INSERT INTO `wards` VALUES ('480', 'Quận Bình Thạnh', '24', '70129', '1', '11');
INSERT INTO `wards` VALUES ('481', 'Quận Phú Nhuận', '24', '70131', '1', '9');
INSERT INTO `wards` VALUES ('482', 'Quận Thủ Đức', '24', '70133', '1', '8');
INSERT INTO `wards` VALUES ('483', 'Huyện Củ Chi', '24', '70135', '1', '12');
INSERT INTO `wards` VALUES ('484', 'Huyện Hóc Môn', '24', '70137', '1', '6');
INSERT INTO `wards` VALUES ('485', 'Huyện Bình Chánh', '24', '70139', '1', '5');
INSERT INTO `wards` VALUES ('486', 'Huyện Nhà Bè', '24', '70141', '1', '7');
INSERT INTO `wards` VALUES ('487', 'Huyện Cần Giờ', '24', '70143', '1', '10');
INSERT INTO `wards` VALUES ('489', 'Thành phố Đà Lạt', '32', '70301', '1', '5');
INSERT INTO `wards` VALUES ('490', 'Thị xã Bảo Lộc', '32', '70303', '1', '5');
INSERT INTO `wards` VALUES ('491', 'Huyện Lạc Dương', '32', '70305', '1', '5');
INSERT INTO `wards` VALUES ('492', 'Huyện Đơn Dương', '32', '70307', '1', '5');
INSERT INTO `wards` VALUES ('493', 'Huyện Đức Trọng', '32', '70309', '1', '5');
INSERT INTO `wards` VALUES ('494', 'Huyện Lâm Hà', '32', '70311', '1', '5');
INSERT INTO `wards` VALUES ('495', 'Huyện Bảo Lâm', '32', '70313', '1', '5');
INSERT INTO `wards` VALUES ('496', 'Huyện Di Linh', '32', '70315', '1', '5');
INSERT INTO `wards` VALUES ('497', 'Huyện Đạ Huoai', '32', '70317', '1', '5');
INSERT INTO `wards` VALUES ('498', 'Huyện Đạ Tẻh', '32', '70319', '1', '5');
INSERT INTO `wards` VALUES ('499', 'Huyện Cát Tiên', '32', '70321', '1', '5');
INSERT INTO `wards` VALUES ('501', 'Thị xã Phan Rang-Tháp Chàm', '37', '70501', '1', '5');
INSERT INTO `wards` VALUES ('502', 'Huyện Ninh Sơn', '37', '70503', '1', '5');
INSERT INTO `wards` VALUES ('503', 'Huyện Ninh Hải', '37', '70505', '1', '5');
INSERT INTO `wards` VALUES ('504', 'Huyện Ninh Phước', '37', '70507', '1', '5');
INSERT INTO `wards` VALUES ('506', 'Huyện Đồng Phú', '4', '70701', '1', '5');
INSERT INTO `wards` VALUES ('507', 'Huyện Phước Long', '4', '70703', '1', '5');
INSERT INTO `wards` VALUES ('508', 'Huyện Lộc Ninh', '4', '70705', '1', '5');
INSERT INTO `wards` VALUES ('509', 'Huyện Bù Đăng', '4', '70707', '1', '5');
INSERT INTO `wards` VALUES ('510', 'Huyện Bình Long', '4', '70709', '1', '5');
INSERT INTO `wards` VALUES ('512', 'Thị xã Tây Ninh', '53', '70901', '1', '5');
INSERT INTO `wards` VALUES ('513', 'Huyện Tân Biên', '53', '70903', '1', '5');
INSERT INTO `wards` VALUES ('514', 'Huyện Tân Châu', '53', '70905', '1', '5');
INSERT INTO `wards` VALUES ('515', 'Huyện Dương Minh Châu', '53', '70907', '1', '5');
INSERT INTO `wards` VALUES ('516', 'Huyện Châu Thành', '53', '70909', '1', '5');
INSERT INTO `wards` VALUES ('517', 'Huyện Hòa Thành', '53', '70911', '1', '5');
INSERT INTO `wards` VALUES ('518', 'Huyện Bến Cầu', '53', '70913', '1', '5');
INSERT INTO `wards` VALUES ('519', 'Huyện Gò Dầu', '53', '70915', '1', '5');
INSERT INTO `wards` VALUES ('520', 'Huyện Trảng Bàng', '53', '70917', '1', '5');
INSERT INTO `wards` VALUES ('522', 'Thị xã Thủ Dầu Một', '3', '71101', '1', '5');
INSERT INTO `wards` VALUES ('523', 'Huyện Bến Cát', '3', '71103', '1', '5');
INSERT INTO `wards` VALUES ('524', 'Huyện Tân Uyên', '3', '71105', '1', '5');
INSERT INTO `wards` VALUES ('525', 'Huyện Thuận An', '3', '71107', '1', '5');
INSERT INTO `wards` VALUES ('527', 'Thành phố Biên Hòa', '59', '71301', '1', '5');
INSERT INTO `wards` VALUES ('528', 'Huyện Tân Phú', '59', '71303', '1', '5');
INSERT INTO `wards` VALUES ('529', 'Huyện Định Quán', '59', '71305', '1', '5');
INSERT INTO `wards` VALUES ('530', 'Huyện Vĩnh Cừu', '59', '71307', '1', '5');
INSERT INTO `wards` VALUES ('531', 'Huyện Thống Nhất', '59', '71309', '1', '5');
INSERT INTO `wards` VALUES ('532', 'Huyện Long Khánh', '59', '71311', '1', '5');
INSERT INTO `wards` VALUES ('533', 'Huyện Xuân Lộc', '59', '71313', '1', '5');
INSERT INTO `wards` VALUES ('534', 'Huyện Long Thành', '59', '71315', '1', '5');
INSERT INTO `wards` VALUES ('535', 'Huyện Nhơn Trạch', '59', '71317', '1', '5');
INSERT INTO `wards` VALUES ('537', 'Thị xã Phan Thiết', '5', '71501', '1', '5');
INSERT INTO `wards` VALUES ('538', 'Huyện Tuy Phong', '5', '71503', '1', '5');
INSERT INTO `wards` VALUES ('539', 'Huyện Bắc Bình', '5', '71505', '1', '5');
INSERT INTO `wards` VALUES ('540', 'Huyện Hàm Thuận Bắc', '5', '71507', '1', '5');
INSERT INTO `wards` VALUES ('541', 'Huyện Hàm Thuận Nam', '5', '71509', '1', '5');
INSERT INTO `wards` VALUES ('542', 'Huyện Tánh Linh', '5', '71511', '1', '5');
INSERT INTO `wards` VALUES ('543', 'Huyện Hàm Tân', '5', '71513', '1', '5');
INSERT INTO `wards` VALUES ('544', 'Huyện Đức Linh', '5', '71515', '1', '5');
INSERT INTO `wards` VALUES ('545', 'Huyện Phú Quí', '5', '71517', '1', '5');
INSERT INTO `wards` VALUES ('547', 'Thành phố Vũng Tầu', '2', '71701', '1', '5');
INSERT INTO `wards` VALUES ('548', 'Thị xã Bà Rịa', '2', '71703', '1', '5');
INSERT INTO `wards` VALUES ('549', 'Huyện Châu Đức', '2', '71705', '1', '5');
INSERT INTO `wards` VALUES ('550', 'Huyện Xuyên Mộc', '2', '71707', '1', '5');
INSERT INTO `wards` VALUES ('551', 'Huyện Tân Thành', '2', '71709', '1', '5');
INSERT INTO `wards` VALUES ('552', 'Huyện Long Đất', '2', '71711', '1', '5');
INSERT INTO `wards` VALUES ('553', 'Huyện Côn Đảo', '2', '71713', '1', '5');
INSERT INTO `wards` VALUES ('555', 'Thị xã Tân An', '30', '80101', '1', '5');
INSERT INTO `wards` VALUES ('556', 'Huyện Tân Hưng', '30', '80103', '1', '5');
INSERT INTO `wards` VALUES ('557', 'Huyện Vĩnh Hưng', '30', '80105', '1', '5');
INSERT INTO `wards` VALUES ('558', 'Huyện Mộc Hóa', '30', '80107', '1', '5');
INSERT INTO `wards` VALUES ('559', 'Huyện Tân Thạnh', '30', '80109', '1', '5');
INSERT INTO `wards` VALUES ('560', 'Huyện Thạnh Hóa', '30', '80111', '1', '5');
INSERT INTO `wards` VALUES ('561', 'Huyện Đức Huệ', '30', '80113', '1', '5');
INSERT INTO `wards` VALUES ('562', 'Huyện Đức Hòa', '30', '80115', '1', '5');
INSERT INTO `wards` VALUES ('563', 'Huyện Bến Lức', '30', '80117', '1', '5');
INSERT INTO `wards` VALUES ('564', 'Huyện Thủ Thừa', '30', '80119', '1', '5');
INSERT INTO `wards` VALUES ('565', 'Huyện Châu Thành', '30', '80121', '1', '5');
INSERT INTO `wards` VALUES ('566', 'Huyện Tân Trụ', '30', '80123', '1', '5');
INSERT INTO `wards` VALUES ('567', 'Huyện Cần Đước', '30', '80125', '1', '5');
INSERT INTO `wards` VALUES ('568', 'Huyện Cần Giuộc', '30', '80127', '1', '5');
INSERT INTO `wards` VALUES ('570', 'Thị xã Cao Lãnh', '60', '80301', '1', '5');
INSERT INTO `wards` VALUES ('571', 'Thị xã Sa Đéc', '60', '80303', '1', '5');
INSERT INTO `wards` VALUES ('572', 'Huyện Tân Hồng', '60', '80305', '1', '5');
INSERT INTO `wards` VALUES ('573', 'Huyện Hồng Ngự', '60', '80307', '1', '5');
INSERT INTO `wards` VALUES ('574', 'Huyện Tam Nông', '60', '80309', '1', '5');
INSERT INTO `wards` VALUES ('575', 'Huyện Thanh Bình', '60', '80311', '1', '5');
INSERT INTO `wards` VALUES ('576', 'Huyện Tháp Mười', '60', '80313', '1', '5');
INSERT INTO `wards` VALUES ('577', 'Huyện Cao Lãnh', '60', '80315', '1', '5');
INSERT INTO `wards` VALUES ('578', 'Huyện Lấp Vò', '60', '80317', '1', '5');
INSERT INTO `wards` VALUES ('579', 'Huyện Lai Vung', '60', '80319', '1', '5');
INSERT INTO `wards` VALUES ('580', 'Huyện Châu Thành', '60', '80321', '1', '5');
INSERT INTO `wards` VALUES ('582', 'Thành Phố Long Xuyên', '1', '80501', '1', '5');
INSERT INTO `wards` VALUES ('583', 'Thị xã Châu Đốc', '1', '80503', '1', '5');
INSERT INTO `wards` VALUES ('584', 'Huyện An Phú', '1', '80505', '1', '5');
INSERT INTO `wards` VALUES ('585', 'Huyện Tân Châu', '1', '80507', '1', '5');
INSERT INTO `wards` VALUES ('586', 'Huyện Phú Tân', '1', '80509', '1', '5');
INSERT INTO `wards` VALUES ('587', 'Huyện Châu Phú', '1', '80511', '1', '5');
INSERT INTO `wards` VALUES ('588', 'Huyện Tịnh Biên', '1', '80513', '1', '5');
INSERT INTO `wards` VALUES ('589', 'Huyện Tri Tôn', '1', '80515', '1', '5');
INSERT INTO `wards` VALUES ('590', 'Huyện Chợ Mới', '1', '80517', '1', '5');
INSERT INTO `wards` VALUES ('591', 'Huyện Châu Thành', '1', '80519', '1', '5');
INSERT INTO `wards` VALUES ('592', 'Huyện Thoại Sơn', '1', '80521', '1', '5');
INSERT INTO `wards` VALUES ('594', 'Thành phố Mỹ Tho', '50', '80701', '1', '5');
INSERT INTO `wards` VALUES ('595', 'Thị xã Gò Công', '50', '80703', '1', '5');
INSERT INTO `wards` VALUES ('596', 'Huyện Tân Phước', '50', '80705', '1', '5');
INSERT INTO `wards` VALUES ('597', 'Huyện Châu Thành', '50', '80707', '1', '5');
INSERT INTO `wards` VALUES ('598', 'Huyện Cai Lậy', '50', '80709', '1', '5');
INSERT INTO `wards` VALUES ('599', 'Huyện Chợ Gạo', '50', '80711', '1', '5');
INSERT INTO `wards` VALUES ('600', 'Huyện Cái Bè', '50', '80713', '1', '5');
INSERT INTO `wards` VALUES ('601', 'Huyện Gò Công Tây', '50', '80715', '1', '5');
INSERT INTO `wards` VALUES ('602', 'Huyện Gò Công Đông', '50', '80717', '1', '5');
INSERT INTO `wards` VALUES ('604', 'Thị xã Vĩnh Long', '54', '80901', '1', '5');
INSERT INTO `wards` VALUES ('605', 'Huyện Long Hồ', '54', '80903', '1', '5');
INSERT INTO `wards` VALUES ('606', 'Huyện Mang Thít', '54', '80905', '1', '5');
INSERT INTO `wards` VALUES ('607', 'Huyện Bình Minh', '54', '80907', '1', '5');
INSERT INTO `wards` VALUES ('608', 'Huyện Tam Bình', '54', '80909', '1', '5');
INSERT INTO `wards` VALUES ('609', 'Huyện Trà Ôn', '54', '80911', '1', '5');
INSERT INTO `wards` VALUES ('610', 'Huyện Vũng Liêm', '54', '80913', '1', '5');
INSERT INTO `wards` VALUES ('612', 'Thị xã Bến Tre', '10', '81101', '1', '5');
INSERT INTO `wards` VALUES ('613', 'Huyện Châu Thành', '10', '81103', '1', '5');
INSERT INTO `wards` VALUES ('614', 'Huyện Chợ Lách', '10', '81105', '1', '5');
INSERT INTO `wards` VALUES ('615', 'Huyện Mỏ Cày', '10', '81107', '1', '5');
INSERT INTO `wards` VALUES ('616', 'Huyện Giồng Trôm', '10', '81109', '1', '5');
INSERT INTO `wards` VALUES ('617', 'Huyện Bình Đại', '10', '81111', '1', '5');
INSERT INTO `wards` VALUES ('618', 'Huyện Ba Tri', '10', '81113', '1', '5');
INSERT INTO `wards` VALUES ('619', 'Huyện Thạnh Phú', '10', '81115', '1', '5');
INSERT INTO `wards` VALUES ('621', 'Thị xã Rạch Giá', '27', '81301', '1', '5');
INSERT INTO `wards` VALUES ('622', 'Huyện Hà Tiên', '27', '81303', '1', '5');
INSERT INTO `wards` VALUES ('623', 'Huyện Hòn Đất', '27', '81305', '1', '5');
INSERT INTO `wards` VALUES ('624', 'Huyện Tân Hiệp', '27', '81307', '1', '5');
INSERT INTO `wards` VALUES ('625', 'Huyện Châu Thành', '27', '81309', '1', '5');
INSERT INTO `wards` VALUES ('626', 'Huyện Giồng Giềng', '27', '81311', '1', '5');
INSERT INTO `wards` VALUES ('627', 'Huyện Gò Quao', '27', '81313', '1', '5');
INSERT INTO `wards` VALUES ('628', 'Huyện An Biên', '27', '81315', '1', '5');
INSERT INTO `wards` VALUES ('629', 'Huyện An Minh', '27', '81317', '1', '5');
INSERT INTO `wards` VALUES ('630', 'Huyện Vĩnh Thuận', '27', '81319', '1', '5');
INSERT INTO `wards` VALUES ('631', 'Huyện Phú Quốc', '27', '81321', '1', '5');
INSERT INTO `wards` VALUES ('632', 'Huyện Kiên Hải', '27', '81323', '1', '5');
INSERT INTO `wards` VALUES ('633', 'Thị xã Hà Tiên', '27', '81325', '1', '5');
INSERT INTO `wards` VALUES ('635', 'Thành phố Cần Thơ', '13', '81501', '1', '5');
INSERT INTO `wards` VALUES ('636', 'Thị xã Vị Thanh', '13', '81502', '1', '5');
INSERT INTO `wards` VALUES ('637', 'Huyện Thốt Nốt', '13', '81503', '1', '5');
INSERT INTO `wards` VALUES ('638', 'Huyện Ô Môn', '13', '81505', '1', '5');
INSERT INTO `wards` VALUES ('639', 'Huyện Châu Thành', '13', '81507', '1', '5');
INSERT INTO `wards` VALUES ('640', 'Huyện Phụng Hiệp', '13', '81509', '1', '5');
INSERT INTO `wards` VALUES ('641', 'Huyện Vị Thuỷ', '13', '81511', '1', '5');
INSERT INTO `wards` VALUES ('642', 'Huyện Long Mỹ', '13', '81513', '1', '5');
INSERT INTO `wards` VALUES ('644', 'Thị xã Trà Vinh', '51', '81701', '1', '5');
INSERT INTO `wards` VALUES ('645', 'Huyện Càng Long', '51', '81703', '1', '5');
INSERT INTO `wards` VALUES ('646', 'Huyện Châu Thành', '51', '81705', '1', '5');
INSERT INTO `wards` VALUES ('647', 'Huyện Cầu Kè', '51', '81707', '1', '5');
INSERT INTO `wards` VALUES ('648', 'Huyện Tiểu Cần', '51', '81709', '1', '5');
INSERT INTO `wards` VALUES ('649', 'Huyện Cầu Ngang', '51', '81711', '1', '5');
INSERT INTO `wards` VALUES ('650', 'Huyện Trà Cú', '51', '81713', '1', '5');
INSERT INTO `wards` VALUES ('651', 'Huyện Duyên Hải', '51', '81715', '1', '5');
INSERT INTO `wards` VALUES ('653', 'Thị xã Sóc Trăng', '62', '81901', '1', '5');
INSERT INTO `wards` VALUES ('654', 'Huyện Kế Sách', '62', '81903', '1', '5');
INSERT INTO `wards` VALUES ('655', 'Huyện Long Phú', '62', '81905', '1', '5');
INSERT INTO `wards` VALUES ('656', 'Huyện Mỹ Tú', '62', '81907', '1', '5');
INSERT INTO `wards` VALUES ('657', 'Huyện Mỹ Xuyên', '62', '81909', '1', '5');
INSERT INTO `wards` VALUES ('658', 'Huyện Thạnh Trị', '62', '81911', '1', '5');
INSERT INTO `wards` VALUES ('659', 'Huyện Vĩnh Châu', '62', '81913', '1', '5');
INSERT INTO `wards` VALUES ('661', 'Thị xã Bạc Liêu', '61', '82101', '1', '5');
INSERT INTO `wards` VALUES ('662', 'Huyện Hồng Dân', '61', '82103', '1', '5');
INSERT INTO `wards` VALUES ('663', 'Huyện Vĩnh Lợi', '61', '82105', '1', '5');
INSERT INTO `wards` VALUES ('664', 'Huyện Giá Rai', '61', '82107', '1', '5');
INSERT INTO `wards` VALUES ('666', 'Thị xã Cà Mau', '12', '82301', '1', '5');
INSERT INTO `wards` VALUES ('667', 'Huyện Thới Bình', '12', '82303', '1', '5');
INSERT INTO `wards` VALUES ('668', 'Huyện U Minh', '12', '82305', '1', '5');
INSERT INTO `wards` VALUES ('669', 'Huyện Trần Văn Thời', '12', '82307', '1', '5');
INSERT INTO `wards` VALUES ('670', 'Huyện Cái Nước', '12', '82309', '1', '5');
INSERT INTO `wards` VALUES ('671', 'Huyện Đầm Dơi', '12', '82311', '1', '5');
INSERT INTO `wards` VALUES ('672', 'Huyện Ngọc Hiển', '12', '82313', '1', '5');
INSERT INTO `wards` VALUES ('673', 'Huyện Đắk Song', '64', '60709', '1', '6');
INSERT INTO `wards` VALUES ('674', 'Thị xã Gia Nghĩa', '64', '60713', '1', '1');
INSERT INTO `wards` VALUES ('675', 'Huyện Tuy Đức', '64', '60715', '1', '7');
INSERT INTO `wards` VALUES ('676', 'Huyện Phú Hòa', '39', '50915', '1', '8');
INSERT INTO `wards` VALUES ('677', 'Huyện Tây Hoà', '39', '50917', '1', '9');
INSERT INTO `wards` VALUES ('678', 'Thị xã Đồng Xoài', '4', '70711', '1', '5');
INSERT INTO `wards` VALUES ('679', 'Quận Bình Tân', '24', '70145', '1', '3');
INSERT INTO `wards` VALUES ('680', 'Quận Tân Phú', '24', '70147', '1', '2');
