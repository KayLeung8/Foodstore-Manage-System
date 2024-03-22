USE food_store_manage_system;
DROP TABLE IF EXISTS sales CASCADE;
DROP TABLE IF EXISTS purchase CASCADE;
DROP TABLE IF EXISTS materials CASCADE;


CREATE TABLE IF NOT EXISTS materials (
  materials_id int(11) NOT NULL AUTO_INCREMENT COMMENT 'sequence,primary key',
  materials_name varchar(100) NOT NULL COMMENT 'The name of the food store materials, the materials includes burgers, hot dogs, Coca-Cola, juice, paper towels, wet wipes, etc',
  size varchar(100) NOT NULL COMMENT 'Size of the food store materials',
  ingredients varchar(255) DEFAULT NULL,
  allergens varchar(255) DEFAULT NULL,
  calories int(11) DEFAULT NULL,
  input_date datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'The input date of the food store materials',
  PRIMARY KEY (materials_id)
) ENGINE=InnoDB;




CREATE TABLE IF NOT EXISTS purchase(
  purchase_id int(11) NOT NULL AUTO_INCREMENT COMMENT 'sequence,primary key',
  materials_id int(11) NOT NULL,
  purchase_date datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  price float(10,2) NOT NULL,
  purchase_number int(11) NOT NULL,  
  CONSTRAINT purchase_price_check CHECK(price>0 and price<10000),
  CONSTRAINT purchase_number_check CHECK(purchase_number>0 and purchase_number<10000),
  PRIMARY KEY (purchase_id),
  KEY fk_materials_purchase (materials_id),
  CONSTRAINT fk_materials_purchase FOREIGN KEY (materials_id) REFERENCES materials (materials_id) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB;





CREATE TABLE IF NOT EXISTS sales (
  sale_id int(11) NOT NULL AUTO_INCREMENT COMMENT 'sequence,primary key',
  materials_id int(11) NOT NULL,
  purchase_id int(11) NOT NULL,
  sale_date datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  price float(10,2) NOT NULL,
  sales_number int(11) NOT NULL,
  CONSTRAINT sales_price_check CHECK(price>0 and price<10000),
  CONSTRAINT sales_number_check CHECK(sales_number>0 and sales_number<1000),
  PRIMARY KEY (sale_id),
  KEY fk_materials_sale (materials_id),
  KEY fk_purchase_sale (purchase_id),
  CONSTRAINT fk_materials_sale FOREIGN KEY (materials_id) REFERENCES materials (materials_id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_purchase_sale FOREIGN KEY (purchase_id) REFERENCES purchase (purchase_id) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB;




