INSERT INTO `librarydb`.`author` VALUES 
 ('Миранда Меган'),
 ('Грегори Дэвид Робертс');

INSERT INTO `librarydb`.`author_join_table` VALUES
	(3, 4),
	(4, 5);

INSERT INTO `librarydb`.`genre` VALUES
 ('Детективы'),
 ('Боевики'),
 ('Детективы'),
 ('Триллеры'),
 ('Художественная литература'),
 ('Проза');

INSERT INTO `librarydb`.`genre_join_table` VALUES
	 (3, 3),
	 (3, 4),
	 (3, 5),
	 (3, 6),
     (4, 7),
     (4, 8);

INSERT INTO `librarydb`.`bbk` VALUES
 ('bbk-abc123'),
 ('bbk-cba321');

INSERT INTO `librarydb`.`udc` VALUES
 ('udc-abc123'),
 ('udc-cba321');

INSERT INTO `librarydb`.`description` VALUES
 ('DESCRIPTION 3: so many DESCRIPTION'),
 ('DESCRIPTION 4: so many DESCRIPTION');

INSERT INTO `librarydb`.`books` VALUES
('Идеальная незнакомка', 320, 1, 2018, 3, 3, 3, '978-5-04-097876-2'),
('Шантарам', 400, 1, 2010, 4, 4, 4, '978-5-389-01095-6');


