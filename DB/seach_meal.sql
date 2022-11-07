use capstone;

# 식단별 식사 메뉴
SELECT m.id, mf.food_id, f.name, mf.size
FROM meal m, meal_food mf, food f
WHERE m.id = mf.meal_id AND mf.food_id=f.id
and mf.meal_id = 'meal_015';

# 식단별 칼로리/탄단지 총량
SELECT 
    m.id,
    SUM((f.calorise / f.serving_size) * mf.size) as calorise,
    SUM((f.carbohydrates / f.serving_size) * mf.size) as carb,
    SUM((f.protein / f.serving_size) * mf.size) as prot,
    SUM((f.fat / f.serving_size) * mf.size) as fat
FROM
    meal m,
    meal_food mf,
    food f
WHERE
    m.id = mf.meal_id AND mf.food_id = f.id
GROUP BY m.id
order by m.id desc;