DROP DATABASE IF EXISTS APP_FOOD ;
CREATE DATABASE APP_FOOD;
use APP_FOOD;
CREATE TABLE `user_` (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(50),
    email VARCHAR(50),
    password VARCHAR(50)
);


-- Tạo bảng food_type
CREATE TABLE `food_type` (
    type_id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(50)
);


-- Tạo bảng restaurant
CREATE TABLE `restaurant` (
    res_id INT AUTO_INCREMENT PRIMARY KEY,
    res_name VARCHAR(50),
    Image VARCHAR(50),
    decs VARCHAR(50)
);


-- Tạo bảng food
CREATE TABLE `food` (
    food_id INT AUTO_INCREMENT PRIMARY KEY,
    food_name VARCHAR(50),
    image VARCHAR(50),
    price FLOAT,
    desc_ VARCHAR(50),
    type_id INT,
    FOREIGN KEY (type_id) REFERENCES food_type(type_id)
);


-- Tạo bảng order
CREATE TABLE `order` (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    food_id INT,
    amount INT,
    code VARCHAR(50),
    arr_sub_id VARCHAR(50),
    FOREIGN KEY (user_id) REFERENCES `user_`(user_id),
    FOREIGN KEY (food_id) REFERENCES `food`(food_id)
);


-- Tạo bảng sub_food
CREATE TABLE `sub_food` (
    sub_id INT AUTO_INCREMENT PRIMARY KEY,
    sub_name VARCHAR(50),
    sub_price FLOAT,
    food_id INT,
    FOREIGN KEY (food_id) REFERENCES `food`(food_id)
);


-- Tạo bảng rate_res
CREATE TABLE `rate_res` (
    user_id INT,
    res_id INT,
    amount INT,
    date_rate DATETIME,
    FOREIGN KEY (user_id) REFERENCES `user_`(user_id),
    FOREIGN KEY (res_id) REFERENCES `restaurant`(res_id)
);

-- Tạo bảng likes_res
CREATE TABLE `likes_res` (
    user_id INT,
    res_id INT,
    date_like DATETIME,
    FOREIGN KEY (user_id) REFERENCES `user_`(user_id),
    FOREIGN KEY (res_id)  REFERENCES `restaurant`(res_id)
);

-- Thêm dữ liệu mẫu vào bảng user_
INSERT INTO `user_` (full_name, email, password)
VALUES 
    ('Nguyễn Văn A', 'nguyenvana@gmail.com', 'password1'),
    ('Nguyễn Văn B', 'nguyenvanb@gmail.com', 'password2'),
    ('Nguyễn Văn C', 'nguyenvanc@gmail.com', 'password3'),
    ('Nguyễn Văn D', 'nguyenvand@gmail.com', 'password4'),
    ('Nguyễn Văn E', 'nguyenvane@gmail.com', 'password5'),
    ('Nguyễn Văn F', 'nguyenvanf@gmail.com', 'password6'),
    ('Nguyễn Văn G', 'nguyenvang@gmail.com', 'password7'),
    ('Nguyễn Văn H', 'nguyenvanh@gmail.com', 'password8'),
    ('Nguyễn Văn I', 'nguyenvani@gmail.com', 'password9'),
    ('Nguyễn Văn K', 'nguyenvank@gmail.com', 'password10'),
    ('Nguyễn Văn L', 'nguyenvanl@gmail.com', 'password11'),
    ('Nguyễn Văn M', 'nguyenvanm@gmail.com', 'password12'),
    ('Nguyễn Văn N', 'nguyenvann@gmail.com', 'password13'),
    ('Nguyễn Văn P', 'nguyenvanp@gmail.com', 'password14'),
    ('Nguyễn Văn Q', 'nguyenvanq@gmail.com', 'password15'),
    ('Nguyễn Văn R', 'nguyenvanr@gmail.com', 'password16'),
    ('Nguyễn Văn S', 'nguyenvans@gmail.com', 'password17'),
    ('Nguyễn Văn T', 'nguyenvant@gmail.com', 'password18'),
    ('Nguyễn VănU', 'nguyenvanu@gmail.com', 'password19'),
    ('Nguyễn Văn V', 'nguyenvanv@gmail.com', 'password20');



-- Thêm dữ liệu mẫu vào bảng food_type
INSERT INTO `food_type` (type_name)
VALUES 
('Món Tráng Miệng'),
('Món Chay'),
('Món Chính'),
('Món Ăn Nhanh'),
('Món Hàn Quốc'),
('Món Nhật Bản'),
('Món Trung Quốc'),
('Món Thái Lan'),
('Món Âu - Mỹ'),
('Món Việt Nam'),
('Món Hải Sản'),
('Món Thịt'),
('Món Gà'),
('Món Bò'),
('Món Heo'),
('Món Cá'),
('Món Rau'),
('Món Nước'),
('Món Chè'),
('Món Trái Cây');

-- Thêm dữ liệu mẫu vào bảng restaurant
INSERT INTO `restaurant` (res_name, Image, decs)
VALUES 
    ('Nhà hàng A', 'image1.jpg', 'Mô tả nhà hàng A'),
    ('Nhà hàng B', 'image2.jpg', 'Mô tả nhà hàng B'),
    ('Nhà hàng C', 'image3.jpg', 'Mô tả nhà hàng C'),
    ('Nhà hàng D', 'image4.jpg', 'Mô tả nhà hàng D'),
    ('Nhà hàng E', 'image5.jpg', 'Mô tả nhà hàng E'),
    ('Nhà hàng F', 'image6.jpg', 'Mô tả nhà hàng F'),
    ('Nhà hàng G', 'image7.jpg', 'Mô tả nhà hàng G'),
    ('Nhà hàng H', 'image8.jpg', 'Mô tả nhà hàng H'),
    ('Nhà hàng I', 'image9.jpg', 'Mô tả nhà hàng I'),
    ('Nhà hàng K', 'image10.jpg', 'Mô tả nhà hàng K'),
    ('Nhà hàng L', 'image11.jpg', 'Mô tả nhà hàng L'),
    ('Nhà hàng M', 'image12.jpg', 'Mô tả nhà hàng M'),
    ('Nhà hàng N', 'image13.jpg', 'Mô tả nhà hàng N'),
    ('Nhà hàng P', 'image14.jpg', 'Mô tả nhà hàng P'),
    ('Nhà hàng Q', 'image15.jpg', 'Mô tả nhà hàng Q'),
    ('Nhà hàng R', 'image16.jpg', 'Mô tả nhà hàng R'),
    ('Nhà hàng S', 'image17.jpg', 'Mô tả nhà hàng S'),
    ('Nhà hàng T', 'image18.jpg', 'Mô tả nhà hàng T'),
    ('Nhà hàng U', 'image19.jpg', 'Mô tả nhà hàng U'),
    ('Nhà hàng V', 'image20.jpg', 'Mô tả nhà hàng V');


-- Thêm dữ liệu mẫu vào bảng food
INSERT INTO food (food_name, image, price, desc_, type_id)
VALUES 
('Cơm gà', 'com-ga.jpg', 50000, 'Món ăn ngon', 1),
('Phở bò', 'pho-bo.jpg', 45000, 'Món ăn truyền thống', 1),
('Bún chả', 'bun-cha.jpg', 40000, 'Món ăn đặc sản', 1),
('Bánh mì', 'banh-mi.jpg', 20000, 'Món ăn nhanh', 1),
('Bún bò Huế', 'bun-bo-hue.jpg', 50000, 'Món ăn đặc sản', 1),
('Bún đậu mắm tôm', 'bun-dau-mam-tom.jpg', 45000, 'Món ăn ngon', 1),
('Bánh xèo', 'banh-xeo.jpg', 35000, 'Món ăn miền Nam', 1),
('Gà nướng', 'ga-nuong.jpg', 80000, 'Món ăn đặc sản', 2),
('Bò kho', 'bo-kho.jpg', 60000, 'Món ăn truyền thống', 2),
('Thịt kho tàu', 'thit-kho-tau.jpg', 70000, 'Món ăn đặc sản', 2),
('Gà chiên nước mắm', 'ga-chien-nuoc-mam.jpg', 75000, 'Món ăn ngon', 2),
('Cá kho tộ', 'ca-kho-to.jpg', 90000, 'Món ăn đặc sản', 3),
('Cá chiên', 'ca-chien.jpg', 80000, 'Món ăn ngon', 3),
('Tôm hùm nướng', 'tom-hum-nuong.jpg', 150000, 'Món ăn đặc sản', 4),
('Súp cua', 'sup-cua.jpg', 50000, 'Món ăn truyền thống', 4),
('Chè trôi nước', 'che-troi-nuoc.jpg', 20000, 'Món ăn tráng miệng', 5),
('Bánh flan', 'banh-flan.jpg', 25000, 'Món ăn tráng miệng', 5),
('Kem', 'kem.jpg', 15000, 'Món ăn tráng miệng', 5),
('Pizza', 'pizza.jpg', 100000, 'Món ăn nhanh', 6),
('Hamburger', 'hamburger.jpg', 80000, 'Món ăn nhanh', 6);

-- Thêm dữ liệu mẫu vào bảng order
INSERT INTO `order` (user_id, food_id, amount, code, arr_sub_id)
VALUES
    (5, 4, 2, 'ABCD123', '1,2,3'),
    (16, 19, 1, 'EFGH456', '4,5'),
    (10, 11, 3, 'IJKL789', '6,7,8'),
    (8, 6, 2, 'MNOP123', '9,10'),
    (19, 9, 1, 'QRST456', '11'),
    (4, 3, 2, 'UVWX789', '12,13'),
    (12, 14, 1, 'YZAB123', '14'),
    (2, 17, 3, 'CDEF456', '15,16,17'),
    (18, 20, 2, 'GHIJ789', '18,19'),
    (9, 2, 1, 'KLMN123', '20'),
    (5, 16, 3, 'OPQR456', '1,2,3'),
    (2, 7, 2, 'STUV789', '4,5'),
    (7, 8, 1, 'WXYZ123', '6'),
    (5, 15, 3, 'BCDE456', '7,8,9'),
    (15, 12, 2, 'FGHI789', '10,11'),
    (6, 5, 1, 'JKLM123', '12'),
    (5, 13, 3, 'NOPQ456', '13,14,15'),
    (18, 1, 2, 'RSTU789', '16,17'),
    (2, 18, 1, 'VWXY123', '18'),
    (14, 10, 3, 'ZABC456', '19,20'),
    (4, 19, 2, 'DEFG789', '1,2,3'),
    (13, 15, 1, 'HIJK123', '4,5'),
    (1, 6, 3, 'LMNO456', '6,7,8'),
    (9, 10, 2, 'PQRS789', '9,10'),
    (11, 3, 1, 'TUVW123', '11'),
    (8, 14, 2, 'XYZA456', '12,13'),
    (5, 17, 1, 'BCDE789', '14'),
    (17, 2, 3, 'FGHI123', '15,16,17'),
    (16, 5, 2, 'JKLM456', '18,19'),
    (7, 1, 1, 'NOPQ789', '20'),
    (2, 11, 3, 'RSTU123', '1,2,3'),
    (10, 9, 2, 'VWXY456', '4,5'),
    (5, 8, 1, 'ZABC789', '6'),
    (6, 14, 3, 'DEFG123', '7,8,9'),
    (12, 4, 2, 'HIJK456', '10,11'),
    (19, 12, 1, 'JKLM123', '12'),
    (15, 10, 3, 'NOPQ456', '13,14,15'),
    (5, 4, 2, 'ABCD123', '1,2,3'),
    (16, 19, 1, 'EFGH456', '4,5'),
    (10, 11, 3, 'IJKL789', '6,7,8'),
    (8, 6, 2, 'MNOP123', '9,10'),
    (19, 9, 1, 'QRST456', '11'),
    (4, 3, 2, 'UVWX789', '12,13'),
    (12, 14, 1, 'YZAB123', '14'),
    (2, 17, 3, 'CDEF456', '15,16,17'),
    (18, 20, 2, 'GHIJ789', '18,19'),
    (9, 2, 1, 'KLMN123', '20'),
    (11, 16, 3, 'OPQR456', '1,2,3'),
    (2, 7, 2, 'STUV789', '4,5'),
    (7, 8, 1, 'WXYZ123', '6'),
    (5, 15, 3, 'BCDE456', '7,8,9'),
    (15, 12, 2, 'FGHI789', '10,11'),
    (6, 5, 1, 'JKLM123', '12'),
    (13, 13, 3, 'NOPQ456', '13,14,15'),
    (18, 1, 2, 'RSTU789', '16,17'),
    (1, 18, 1, 'VWXY123', '18'),
    (14, 10, 3, 'ZABC456', '19,20'),
    (4, 19, 2, 'DEFG789', '1,2,3'),
    (13, 15, 1, 'HIJK123', '4,5'),
    (1, 6, 3, 'LMNO456', '6,7,8'),
    (9, 10, 2, 'PQRS789', '9,10'),
    (11, 3, 1, 'TUVW123', '11'),
    (8, 14, 2, 'XYZA456', '12,13'),
    (5, 17, 1, 'BCDE789', '14'),
    (17, 2, 3, 'FGHI123', '15,16,17'),
    (16, 5, 2, 'JKLM456', '18,19'),
    (7, 1, 1, 'NOPQ789', '20'),
    (2, 11, 3, 'RSTU123', '1,2,3'),
    (10, 9, 2, 'VWXY456', '4,5'),
    (5, 8, 1, 'ZABC789', '6'),
    (6, 14, 3, 'DEFG123', '7,8,9'),
    (12, 4, 2, 'HIJK456', '10,11'),
    (19, 12, 1, 'JKLM123', '12'),
    (15, 10, 3, 'NOPQ456', '13,14,15');



-- Thêm dữ liệu mẫu vào bảng sub_food
INSERT INTO sub_food (sub_name, sub_price, food_id)
VALUES 
('Phô mai que', 15000, 1),
('Khoai tây chiên', 20000, 2),
('Trà sữa', 25000, 3),
('Bánh tráng trộn', 15000, 4),
('Bánh mì nướng', 10000, 5),
('Kem dâu', 20000, 6),
('Bánh flan', 25000, 7),
('Chè đậu đỏ', 15000, 8),
('Bánh bao', 10000, 9),
('Bánh tráng cuốn', 15000, 10),
('Bánh xèo', 20000, 1),
('Gỏi cuốn', 25000, 2),
('Bánh canh', 30000, 3),
('Bánh tráng nướng', 15000, 4),
('Bánh mì chảo', 20000, 5),
('Chè trôi nước', 15000, 6),
('Bánh bột lọc', 10000, 7),
('Bánh mì kẹp thịt', 25000, 8),
('Bánh tráng trứng', 20000, 9),
('Bánh bao chiên', 15000, 10);


-- Thêm dữ liệu mẫu vào bảng rate_res
INSERT INTO `rate_res` (user_id, res_id, amount, date_rate)
VALUES 
    (1, 1, 57, '2023-06-01 10:00:00'),
    (2, 2, 10, '2023-06-01 11:00:00'),
    (3, 1, 0, '2023-06-01 11:00:00'),
    (4, 4, 42, '2023-06-01 13:00:00'),
    (5, 5, 51, '2023-06-01 14:00:00'),
    (6, 6, 23, '2023-06-01 15:00:00'),
    (7, 7, 34, '2023-06-01 16:00:00'),
    (8, 8, 25, '2023-06-01 17:00:00'),
    (9, 9, 43, '2023-06-01 18:00:00'),
    (10, 10, 25, '2023-06-01 19:00:00'),
    (11, 11, 3, '2023-06-01 20:00:00'),
    (12, 12, 4, '2023-06-01 21:00:00'),
    (13, 13, 5, '2023-06-01 22:00:00'),
    (14, 14, 4, '2023-06-01 23:00:00'),
    (15, 15, 3, '2023-06-02 10:00:00'),
    (16, 16, 5, '2023-06-02 11:00:00'),
    (17, 17, 4, '2023-06-02 12:00:00'),
    (18, 18, 5, '2023-06-02 13:00:00'),
    (19, 19, 3, '2023-06-02 14:00:00'),
    (2, 20, 4, '2023-06-02 15:00:00');


-- Thêm dữ liệu mẫu vào bảng likes_res
INSERT INTO `likes_res` (user_id, res_id, date_like)
VALUES 
    (1, 1, '2023-06-01 10:00:00'),
    (2, 2, '2023-06-01 11:00:00'),
    (3, 3, '2023-06-01 12:00:00'),
    (4, 4, '2023-06-01 13:00:00'),
    (5, 5, '2023-06-01 14:00:00'),
    (6, 6, '2023-06-01 15:00:00'),
    (7, 7, '2023-06-01 16:00:00'),
    (8, 8, '2023-06-01 17:00:00'),
    (9, 9, '2023-06-01 18:00:00'),
    (10, 10, '2023-06-01 19:00:00'),
    (11, 11, '2023-06-01 20:00:00'),
    (12, 12, '2023-06-01 21:00:00'),
    (13, 13, '2023-06-01 22:00:00'),
    (14, 14, '2023-06-01 23:00:00'),
    (15, 15, '2023-06-02 10:00:00'),
    (16, 16, '2023-06-02 11:00:00'),
    (17, 17, '2023-06-02 12:00:00'),
    (18, 18, '2023-06-02 13:00:00'),
    (19, 19, '2023-06-02 14:00:00'),
    (2, 20, '2023-06-02 15:00:00');

/* câu 1: tìm 5 người like nhà hàng nhiều nhất */
SELECT u.user_id, u.full_name, amount as like_count  
FROM user_ u
JOIN rate_res r ON r.user_id = u.user_id
ORDER BY amount DESC
LIMIT 5;

-- câu 2- Tìm 2 nhà hàng có lượt like nhiều nhất
select res.res_id, res.res_name, rat.amount as like_count
FROM restaurant res
join rate_res rat on rat.res_id = res.res_id
order BY amount desc
LIMIT 2;

-- Câu 3-Tìm người đã đặt hàng nhiều nhất.
SELECT u.user_id,u.full_name ,u.email, COUNT(o.order_id) AS order_count
FROM `user_` u
JOIN `order` o ON u.user_id = o.user_id
GROUP BY u.user_id
ORDER BY order_count DESC
LIMIT 1;

/*Câu 4: Tìm người dùng không hoạt động trong hệ thống
(không đặt hàng, không like, không đánh giá nhà
hàng). */    
/*==> sẽ tìm ra được thằng có ID 20 KO ĐẶT HÀNG */ 
    -- CÂU TRUY VẤN CHECK
-- SELECT * FROM `order` WHERE user_id = '20';
-- SELECT * FROM `likes_res` WHERE user_id = '20';
-- SELECT * FROM `rate_res` WHERE user_id = '20';

SELECT *
FROM `user_`
WHERE user_id NOT IN (
    SELECT DISTINCT user_id
    FROM `order`
) AND user_id NOT IN (
    SELECT DISTINCT user_id
    FROM `likes_res`
) AND user_id NOT IN (
    SELECT DISTINCT user_id
    FROM `rate_res`
);
 
-- Câu 5: Tính trung bình sub_food của một food.
SELECT AVG(sub_price) AS AVG_SUB_PRICE
FROM sub_food sf
JOIN food f ON sf.food_id = f.food_id
WHERE f.food_id = sf.food_id; 