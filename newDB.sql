CREATE DATABASE librarydb;

USE librarydb;

CREATE TABLE `librarydb`.`autor` (
	`id_autor` 		INT(11) NOT NULL AUTO_INCREMENT,
	`autor_record` 	VARCHAR(256) NOT NULL, 
	PRIMARY KEY (`id_autor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

INSERT INTO `librarydb`.`autor` VALUES 
 (1, 'Arkady Natragovich Strugatsky')
,(2, 'Boris Natragovich Strugatsky')
,(3, 'Andrzej Sapkowski');

-- Autor join table
CREATE TABLE `librarydb`.`autor_join_table` (
	`id_books`  INT(11) NOT NULL,
	`id_autor` 	INT(11) NOT NULL	 
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

INSERT INTO `librarydb`.`autor_join_table` VALUES
	(1, 1),
	(1, 2),
	(2, 3);

CREATE TABLE `librarydb`.`genre` (
	`id_genre` 		INT(11) NOT NULL AUTO_INCREMENT,
	`genre_record` 	VARCHAR(256) NOT NULL, 
	PRIMARY KEY (`id_genre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

INSERT INTO `librarydb`.`genre` VALUES
 (1, 'fantasy'),
 (2, 'Science fiction');

-- Genre join table
CREATE TABLE `librarydb`.`genre_join_table` (
	`id_books`  INT(11) NOT NULL,
	`id_genre` 	INT(11) NOT NULL	 
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

INSERT INTO `librarydb`.`genre_join_table` VALUES
	 (1, 1),
	 (1, 2),
	 (2, 1);

CREATE TABLE `librarydb`.`bbk` (
	`id_bbk` 		INT(11) NOT NULL AUTO_INCREMENT,
	`bbk_record` 	VARCHAR(256) NOT NULL,
	PRIMARY KEY (`id_bbk`)  
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

INSERT INTO `librarydb`.`bbk` VALUES
 (1, 'bbk-abc123'),
 (2, 'bbk-cba321');

CREATE TABLE `librarydb`.`udc` (
	`id_udc` 		INT(11) NOT NULL AUTO_INCREMENT,
	`udc_record` 	VARCHAR(256) NOT NULL,
	PRIMARY KEY (`id_udc`)  
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

INSERT INTO `librarydb`.`udc` VALUES
 (1, 'udc-abc123'),
 (2, 'udc-cba321');
 
CREATE TABLE `librarydb`.`description` (
	`id_description` 		INT(11) NOT NULL AUTO_INCREMENT,
	`description_record` 	TEXT NOT NULL,
	PRIMARY KEY (`id_description`)  
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

INSERT INTO `librarydb`.`description` VALUES
 (1, 'DESCRIPTION 1: so many DESCRIPTION'),
 (2, 'DESCRIPTION 2: so many DESCRIPTION');

CREATE TABLE `librarydb`.`book_binding_type` (
	`id_book_binding_type` 		INT(11) NOT NULL AUTO_INCREMENT,
	`binding_type` 		TEXT NOT NULL,
	PRIMARY KEY (`id_book_binding_type`)  
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

INSERT INTO `librarydb`.`book_binding_type` VALUES
 (1, 'твердый переплет'),
 (2, 'мягкая обложка'),
 (3, 'переплет из картона'),
 (4, 'интегральный переплет'),
 (5, 'суперобложка'),
 (6, 'коробка'),
 (7, 'футляр'),
 (8, 'папка'),
 (9, 'кожаный переплет'),
 (10, 'швейцарская брошюра'),
 (11, 'на винте (веер)'),
 (12, 'шелк (тканевый)');

 
CREATE TABLE `librarydb`.`books` (
	`id_books` 					INT(11) NOT NULL AUTO_INCREMENT,
	`name_book` 				VARCHAR(256) DEFAULT NULL,
	`number_of_pages_book`		INT DEFAULT NULL,
	`index_book_binding_type` 	INT DEFAULT NULL,
	`release_date_book` 		YEAR DEFAULT NULL,  
	`index_udc` 				INT(11) DEFAULT NULL,
	`index_bbk` 				INT(11) DEFAULT NULL,
	`index_description` 		INT(11) DEFAULT NULL,
	`isbn` 						VARCHAR(17) DEFAULT NULL,
	PRIMARY KEY (`id_books`),
	FOREIGN KEY (index_udc) REFERENCES udc(id_udc),
	FOREIGN KEY (index_bbk) REFERENCES bbk(id_bbk),
	FOREIGN KEY (index_description) REFERENCES description(id_description)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

INSERT INTO `librarydb`.`books` VALUES
(1, 'STALKER', 300, 1, 2005, 1, 1, 1, '111-1-11-111111-1'),
(2, 'WITCHER', 400, 2, 2015, 2, 2, 2, '222-1-11-111111-1');