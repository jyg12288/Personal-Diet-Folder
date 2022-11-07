-- 추천 페이지 들어갈 음식
# 칼로리별
select * from food_calo_50_100;
select * from food_calo_100_200;
select * from food_calo_200_300;
select * from food_calo_300_400;
select * from food_calo_400_500;
select * from food_calo_500_600;

# 재료별
select * from food_ingr_crustacean;
select * from food_ingr_egg_milk;
select * from food_ingr_fruit;
select * from food_ingr_nut;
select * from food_ingr_seafood;

# 테마별 -> 재료별 견과류 중복
select * from food_theme_low_fat;
SELECT * from food_theme_vegetarian;
select * from food_theme_vegan;
select * from food_theme_high_protein;


-- -----------------------------


CREATE VIEW food_calo_50_100 AS
SELECT *
from food
WHERE id IN('D000085', 'D011089', 'D018338', 'P036246', 'D018359');

CREATE VIEW food_calo_100_200 AS
SELECT *
FROM food
WHERE id IN('D000117', 'D000178', 'D012151', 'D018490', 'P087028');

CREATE VIEW food_calo_200_300 AS
SELECT *
from food
where id IN ('D000012', 'D000017', 'D000038', 'D000076', 'D018512');

CREATE VIEW food_calo_300_400 AS
SELECT * 
FROM food
where id IN ('D000011', 'D018410', 'D018475', 'D000076', 'D018369');

CREATE VIEW food_calo_400_500 AS
SELECT * 
FROM food
where id IN ('D000015', 'D000025', 'D000023', 'D018181', 'D018520');

CREATE VIEW food_calo_500_600 AS
SELECT * 
FROM food
where id IN ('D000147', 'D018041', 'D018170', 'D018180', 'D018523');

CREATE VIEW food_calo_500_600 AS
SELECT * 
FROM food
where id IN ('D000147', 'D018041', 'D018170', 'D018180', 'D018523');

-- ----------------------------

CREATE VIEW food_ingr_crustacean AS
SELECT * 
FROM food
where id IN ('D018470', 'D000225', 'D018036', 'D018420', 'P028338');

CREATE VIEW food_ingr_nut AS
SELECT * 
FROM food
where id IN ('D018261', 'D000378', 'D018612', 'P070609', 'D011162');

CREATE VIEW food_ingr_fruit AS
SELECT * 
FROM food
where id IN ('D018333', 'D015690', 'D011373', 'R002687', 'P049940');

CREATE VIEW food_ingr_egg_milk AS
SELECT * 
FROM food
where id IN ('D018088', 'D018215', 'D018431', 'D018402', 'D000294');

CREATE VIEW food_ingr_meat AS
SELECT * 
FROM food
where id IN ('D000016', 'D000027', 'D000297', 'D000425', 'D018040');

CREATE VIEW food_ingr_seafood AS
SELECT * 
FROM food
where id IN ('D000030', 'D000229', 'D000406', 'D018445', 'D018247');

-- ----------------------------------

CREATE VIEW food_theme_vegetarian AS
SELECT * 
FROM food
where id IN ('D012869', 'D018850', 'D018338', 'D018414', 'D018473');

CREATE VIEW food_theme_vegan AS
SELECT * 
FROM food
where id IN ('D000389', 'D018486', 'P088004', 'R002687', 'D018333');

CREATE VIEW food_theme_row_fat AS
SELECT * 
FROM food
where id IN ('D018101', 'D018486', 'P088004', 'R002687', 'D018333');


CREATE VIEW food_theme_low_fat AS
SELECT * 
FROM fofood_theme_low_fatfood_theme_low_fatod
where id IN ('D018569', 'D018127', 'D000427', 'D018842', 'D018339');


Create view food_theme_high_protein as
select *
from food
where id in ('D000411', 'D018463', 'D018458', 'D018167', 'D018081');


