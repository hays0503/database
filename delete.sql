SET SQL_SAFE_UPDATES = 0;

DELETE FROM `librarydb`.`author_join_table` 
WHERE
    `librarydb`.`author_join_table`.id_books = '2';

DELETE FROM `librarydb`.`genre_join_table` 
WHERE
    `librarydb`.`genre_join_table`.id_books = '2';

DELETE FROM `librarydb`.`bbk` 
WHERE
    `librarydb`.`bbk`.id_bbk = '2';

DELETE FROM `librarydb`.`udc` 
WHERE
    `librarydb`.`udc`.id_udc = '2';

DELETE FROM `librarydb`.`description` 
WHERE
    `librarydb`.`description`.id_description = '2';

DELETE FROM `librarydb`.`books` 
WHERE
    `librarydb`.`books`.id_books = '2';