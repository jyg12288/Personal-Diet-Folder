create database capstone;

CREATE TABLE `users` (
  `id` varchar(30) PRIMARY KEY,
  `name` varchar(30) NOT NULL,
  `height` int NOT NULL,
  `weight` int NOT NULL,
  `gender` varchar(10) NOT NULL,
  `birth` date not null
) DEFAULT CHARSET=utf8 COMMENT '사용자 정보';

CREATE TABLE `food` (
  `id` varchar(30) NOT NULL COMMENT '식품코드',
  `name` varchar(30) NOT NULL COMMENT '식품명',
  `mfg` varchar(100) DEFAULT NULL COMMENT '제조사/유통사',
  `category` varchar(100) DEFAULT NULL COMMENT '카테고리',
  `unit` varchar(8) DEFAULT NULL COMMENT '내용량 단위 - g, mL',
  `serving_size` int(11) DEFAULT NULL COMMENT '1회 제공량',
  `total_size` int(11) DEFAULT NULL COMMENT '총 내용량',
  `calorise` int(11) DEFAULT NULL COMMENT '열량(kcal)',
  `carbohydrates` float DEFAULT NULL COMMENT '탄수화물(g)',
  `protein` float DEFAULT NULL COMMENT '단백질(g)',
  `fat` float DEFAULT NULL COMMENT '지방(g)',
  `sodium` float DEFAULT NULL COMMENT '나트륨(mg)',
  `sugars` float DEFAULT NULL COMMENT '당류(g)',
  `saturated_fat` float DEFAULT NULL COMMENT '포화지방산(g)',
  `trans_fat` float DEFAULT NULL COMMENT '트랜스지방(g)',
  `cholesterol` float DEFAULT NULL COMMENT '콜레스테롤(mg)',
  `user_id` varchar(30) DEFAULT NULL COMMENT '사용자 직접 입력 데이터의 경우만 입력',
  `saerch` tinyint(1) NOT NULL DEFAULT '1' COMMENT '타사용자 검색 가능 여부',
  PRIMARY KEY (`id`)
) DEFAULT CHARSET=utf8 COMMENT='엑셀 데이터 입력';
ALTER TABLE `food` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);


CREATE TABLE `meal` ( 
  `id` varchar(30) primary key,
  `time` varchar(10) NOT NULL COMMENT '아침, 점심, 저녁 ...',
  `photo` mediumblob
) DEFAULT CHARSET=utf8 COMMENT '식단';


CREATE TABLE `preference` ( 
  `id` varchar(30) PRIMARY KEY,
  `name` varchar(30)
) DEFAULT CHARSET=utf8 COMMENT '알러지, 기피 성분';

CREATE TABLE `community` (
  `id` int PRIMARY KEY COMMENT '글번호',
  `user_id` varchar(30) COMMENT '사용자 아이디',
  `datetime` datetime DEFAULT CURRENT_TIMESTAMP,
  `group_id` int COMMENT '게시판',
  `title` varchar(255) COMMENT '제목',
  `content` varchar(255) COMMENT '내용'
) DEFAULT CHARSET=utf8 COMMENT '커뮤니티';
ALTER TABLE `community` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);


CREATE TABLE `users_preference` (
  `user_id` varchar(30),
  `preference_id` varchar(30)
) DEFAULT CHARSET=utf8 COMMENT '사용자 기피 성분';
ALTER TABLE `users_preference` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
ALTER TABLE `users_preference` ADD FOREIGN KEY (`preference_id`) REFERENCES `preference` (`id`);

CREATE TABLE `food_preference` (
  `food_id` varchar(30),
  `preference_id` varchar(30)
) DEFAULT CHARSET=utf8 COMMENT '음식-기피성분';
ALTER TABLE `food_preference` ADD FOREIGN KEY (`food_id`) references `food` (`id`);
ALTER TABLE `food_preference` ADD foreign key (`preference_id`) references `preference` (`id`);

create table `meal_food` (
   `meal_id` varchar(30) not null,
   `food_id` varchar(30) not null,
   `unit` varchar(8) not null COMMENT 'g, mL',
   `size` int COMMENT '양'
) DEFAULT CHARSET=utf8 COMMENT '식단 당 음식';
ALTER TABLE `meal_food` ADD FOREIGN KEY (`meal_id`) REFERENCES `meal` (`id`);
ALTER TABLE `meal_food` ADD FOREIGN KEY (`food_id`) REFERENCES `food` (`id`);

create table `user_meal` (
	`user_id` varchar(30) not null,
    `meal_id` varchar(30) not null 
)DEFAULT CHARSET=utf8 COMMENT '사용자 식단';
ALTER TABLE `user_meal` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
ALTER TABLE `user_meal` ADD FOREIGN KEY (`meal_id`) REFERENCES `meal` (`id`);