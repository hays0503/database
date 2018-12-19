DROP database IF EXISTS librarydb;

CREATE DATABASE librarydb;

USE librarydb;

 
CREATE TABLE `librarydb`.`books` (
	`id_books` 					INT NOT NULL AUTO_INCREMENT,
	`name_book` 				VARCHAR(256) DEFAULT NULL,
	`number_of_pages_book`		INT DEFAULT NULL,
	`index_book_binding_type` 	INT DEFAULT NULL,
	`release_date_book` 		YEAR DEFAULT NULL,  
	`index_udc` 				INT DEFAULT NULL,
	`index_bbk` 				INT DEFAULT NULL,	
	`isbn` 						VARCHAR(17) DEFAULT NULL,
	PRIMARY KEY (`id_books`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

INSERT INTO 
`librarydb`.`books`
(`name_book`,`number_of_pages_book`,`index_book_binding_type`,`release_date_book`,
`index_udc`,`index_bbk`,
`isbn`) VALUES
('STALKER', 300, 1, 2005,
 1, 1,
 '111-1-11-111111-1'),
 
('WITCHER', 400, 2, 2015,
 0, 0,
 '222-1-11-111111-1');

CREATE TABLE `librarydb`.`author` (
	`id_author` 		INT NOT NULL AUTO_INCREMENT,
	`author_record` 	VARCHAR(256) NOT NULL,
    UNIQUE(`author_record`),
	PRIMARY KEY (`id_author`)
    
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

INSERT INTO `librarydb`.`author`(`author_record`) VALUES 
 ('Arkady Natragovich Strugatsky')
,('Boris Natragovich Strugatsky')
,('Andrzej Sapkowski');

-- author join table
CREATE TABLE `librarydb`.`author_join_table` (
	`id_books`  INT NOT NULL,
	`id_author` INT NOT NULL,
    FOREIGN KEY (`id_books`) REFERENCES books(`id_books`) ON DELETE CASCADE  
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

INSERT INTO `librarydb`.`author_join_table` VALUES
	(1, 1),
	(1, 2),
	(2, 3);

CREATE TABLE `librarydb`.`genre` (
	`id_genre` 		INT NOT NULL AUTO_INCREMENT,
	`genre_record` 	VARCHAR(256) NOT NULL,
	UNIQUE(`genre_record`),
	PRIMARY KEY (`id_genre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

INSERT INTO `librarydb`.`genre`(`genre_record`) VALUES
 ('fantasy'),
 ('Science fiction');

-- Genre join table
CREATE TABLE `librarydb`.`genre_join_table` (
	`id_books`  INT NOT NULL,
	`id_genre` 	INT NOT NULL,
    FOREIGN KEY (`id_books`) REFERENCES books(id_books) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

INSERT INTO `librarydb`.`genre_join_table` VALUES
	 (1, 1),
	 (1, 2),
	 (2, 1);

CREATE TABLE `librarydb`.`bbk` (
	`id_bbk` 		INT NOT NULL AUTO_INCREMENT,
	`bbk_record` 	VARCHAR(256) NOT NULL,
    UNIQUE(`bbk_record`),
	PRIMARY KEY (`id_bbk`)	   
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

INSERT INTO `librarydb`.`bbk`(`bbk_record`) VALUES
 ('bbk-abc123'),
 ('bbk-cba321');

CREATE TABLE `librarydb`.`udc` (
	`id_udc` 		INT NOT NULL AUTO_INCREMENT,
	`udc_record` 	VARCHAR(256) NOT NULL,
    UNIQUE(`udc_record`),
	PRIMARY KEY (`id_udc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

INSERT INTO `librarydb`.`udc`(`udc_record`) VALUES
 ('udc-abc123'),
 ('udc-cba321');
 
CREATE TABLE `librarydb`.`description` (
	`id_books` 				INT NOT NULL AUTO_INCREMENT,
	`description_record` 	TEXT NOT NULL,
	FOREIGN KEY (`id_books`) REFERENCES books(`id_books`) ON DELETE CASCADE  
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

INSERT INTO `librarydb`.`description`(`description_record`) VALUES
 ('DESCRIPTION 1: so many DESCRIPTION'),
 ('DESCRIPTION 2: so many DESCRIPTION');

CREATE TABLE `librarydb`.`book_binding_type` (
    `id_book_binding_type` INT NOT NULL AUTO_INCREMENT,
    `binding_type` VARCHAR(256) NOT NULL,
    UNIQUE(`binding_type`),
    PRIMARY KEY (`id_book_binding_type`)
)  ENGINE=INNODB DEFAULT CHARSET=UTF32;

INSERT INTO `librarydb`.`book_binding_type`(`binding_type`) VALUES
 ('твердый переплет'),
 ('мягкая обложка'),
 ('переплет из картона'),
 ('интегральный переплет'),
 ('суперобложка'),
 ('коробка'),
 ('футляр'),
 ('папка'),
 ('кожаный переплет'),
 ('швейцарская брошюра'),
 ('на винте (веер)'),
 ('шелк (тканевый)');
