USE food_store_manage_system;

-- Insert the mock data value
INSERT INTO materials VALUES ('7', 'Super Supreme Pizza', '9 inches', 'Shredded onion, diced pineapple, sliced cucumber, mozzarella cheese, gluten flour, pizza sauce, butter or olive oil, yeast, warm water, beef grains, shredded green peppers, corn kernels, black olives, caster sugar, water, tomato sauce, bacon', 'Gluten, crustaceans, dairy products, etc', '361', '2022-10-03 00:00:00');
INSERT INTO materials VALUES ('8', 'Chicken Burger', '4 inches', 'Hamburger blank, chicken, apple, olive oil, black pepper, egg liquid, starch, oil consumption, salt', 'Gluten, crustaceans, dairy products, eggs', '256', '2022-10-03 00:00:00');
INSERT INTO materials VALUES ('9', 'Orange Juice', '500ml', 'orange、water', 'orange', '45', '2022-10-03 00:00:00');
INSERT INTO materials VALUES ('10', 'Coca Cola', '500ml', 'Water, fructose syrup, sugar, food additives (carbon dioxide, caramel color, phosphoric acid, caffeine, flavor)', null, '43', '2022-10-03 00:00:00');
INSERT INTO materials VALUES ('11', 'Paper Towels', '1 pack', null, null, null, '2022-10-03 00:00:00');
INSERT INTO materials VALUES ('12', 'White Bread', '500g', 'High gluten powder, low gluten powder, dry yeast, milk, salt, maltose, egg yolk, caster sugar, butter', 'Gluten, dairy products, eggs', '291', '2022-10-03 00:00:00');
INSERT INTO materials VALUES ('13', 'Strawberry jam bread', '500g', 'High gluten powder, low gluten powder, dry yeast, milk,Strawberries, strawberry jam, salt, maltose, egg yolk, caster sugar, butter', 'Gluten, dairy products, eggs', '295', '2022-10-03 00:00:00');
INSERT INTO materials VALUES ('14', 'Hot dog', '500g', 'Milk, high-gluten flour, low-gluten flour, yeast powder, salt, sugar, butter', 'Gluten, dairy products, eggs', '287', '2022-10-03 00:00:00');
INSERT INTO materials VALUES ('15', 'Fresh milk', '1000ml', 'Milk', 'Milk', '70', '2022-10-03 00:00:00');
INSERT INTO materials VALUES ('16', 'Pecans', '500g', 'Pecans,salt,sugar', 'Pecans', '670', '2022-10-03 00:00:00');
INSERT INTO materials VALUES ('17', 'Shelled cashews', '500g', 'cashews,salt,sugar', 'cashews', '580', '2022-10-03 00:00:00');

INSERT INTO purchase VALUES ('1', '7', '2022-10-06 13:53:49', '6.82', '85');
INSERT INTO purchase VALUES ('2', '8', '2022-10-06 13:53:52', '3.57', '31');
INSERT INTO purchase VALUES ('3', '9', '2022-10-06 13:54:03', '1.09', '68');
INSERT INTO purchase VALUES ('4', '10', '2022-10-06 13:54:13', '1.99', '69');
INSERT INTO purchase VALUES ('5', '11', '2022-10-06 13:54:23', '0.50', '100');
INSERT INTO purchase VALUES ('6', '12', '2022-10-06 13:54:33', '2.48', '66');
INSERT INTO purchase VALUES ('7', '13', '2022-10-06 13:54:36', '2.24', '83');
INSERT INTO purchase VALUES ('8', '14', '2022-10-06 13:54:44', '3.01', '70');
INSERT INTO purchase VALUES ('9', '15', '2022-10-06 13:54:51', '1.76', '63');
INSERT INTO purchase VALUES ('10', '16', '2022-10-06 13:54:59', '7.63', '99');
INSERT INTO purchase VALUES ('11', '17', '2022-10-07 00:00:00', '6.19', '102');
INSERT INTO purchase VALUES ('16', '7', '2022-10-11 00:00:00', '6.82', '36');
INSERT INTO purchase VALUES ('17', '8', '2022-10-08 00:00:00', '3.57', '95');
INSERT INTO purchase VALUES ('18', '9', '2022-10-07 00:00:00', '1.09', '93');
INSERT INTO purchase VALUES ('19', '10', '2022-10-07 00:00:00', '1.99', '12');
INSERT INTO purchase VALUES ('20', '11', '2022-10-07 00:00:00', '0.50', '99');
INSERT INTO purchase VALUES ('21', '12', '2022-10-10 00:00:00', '2.48', '91');
INSERT INTO purchase VALUES ('22', '13', '2022-10-08 00:00:00', '2.24', '44');
INSERT INTO purchase VALUES ('23', '14', '2022-10-09 00:00:00', '3.01', '29');
INSERT INTO purchase VALUES ('24', '15', '2022-10-06 00:00:00', '1.76', '67');
INSERT INTO purchase VALUES ('25', '16', '2022-10-10 00:00:00', '7.63', '17');
INSERT INTO purchase VALUES ('26', '17', '2022-10-06 00:00:00', '6.19', '32');

INSERT INTO sales VALUES ('1', '7', '1', '2022-10-09 13:53:49', '7.29', '76');
INSERT INTO sales VALUES ('2', '8', '2', '2022-10-07 13:53:52', '4.26', '7');
INSERT INTO sales VALUES ('3', '9', '3', '2022-10-07 13:54:03', '1.75', '7');
INSERT INTO sales VALUES ('4', '10', '4', '2022-10-10 13:54:13', '2.25', '51');
INSERT INTO sales VALUES ('5', '11', '5', '2022-10-12 13:54:23', '1.07', '98');
INSERT INTO sales VALUES ('6', '12', '6', '2022-10-08 13:54:33', '2.52', '40');
INSERT INTO sales VALUES ('7', '13', '7', '2022-10-12 13:54:36', '2.99', '83');
INSERT INTO sales VALUES ('8', '14', '8', '2022-10-11 13:54:44', '3.72', '22');
INSERT INTO sales VALUES ('9', '15', '9', '2022-10-09 13:54:51', '2.00', '57');
INSERT INTO sales VALUES ('10', '16', '10', '2022-10-11 13:54:59', '7.92', '5');
INSERT INTO sales VALUES ('11', '17', '11', '2022-10-10 00:00:00', '6.98', '80');
INSERT INTO sales VALUES ('12', '7', '16', '2022-10-15 00:00:00', '7.15', '1');
INSERT INTO sales VALUES ('13', '8', '17', '2022-10-10 00:00:00', '4.33', '29');
INSERT INTO sales VALUES ('14', '9', '18', '2022-10-09 00:00:00', '1.31', '40');
INSERT INTO sales VALUES ('15', '10', '19', '2022-10-10 00:00:00', '2.17', '5');
INSERT INTO sales VALUES ('16', '11', '20', '2022-10-10 00:00:00', '0.56', '95');
INSERT INTO sales VALUES ('17', '12', '21', '2022-10-14 00:00:00', '2.66', '5');
INSERT INTO sales VALUES ('18', '13', '22', '2022-10-13 00:00:00', '2.88', '40');
INSERT INTO sales VALUES ('19', '14', '23', '2022-10-13 00:00:00', '3.28', '17');
INSERT INTO sales VALUES ('20', '15', '24', '2022-10-07 00:00:00', '2.31', '40');
INSERT INTO sales VALUES ('21', '16', '25', '2022-10-13 00:00:00', '8.58', '12');
INSERT INTO sales VALUES ('22', '17', '26', '2022-10-10 00:00:00', '6.29', '19');


