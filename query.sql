-- Join tables and make query
SELECT shoes.id, shoes.name, brand.brand_name
FROM shoes
INNER JOIN brand
ON shoes.brand_id = brand.brand_id;

SELECT shoes.id, shoes.name, color.colors
FROM shoes
INNER JOIN color
ON shoes.color_id = color.color_id;
