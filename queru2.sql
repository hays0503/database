SELECT 
    `librarydb`.`books`.id_books,
    `librarydb`.`books`.name_book,
    GROUP_CONCAT(DISTINCT `librarydb`.`book_binding_type`.binding_type),
    `librarydb`.`udc`.udc_record,
    `librarydb`.`bbk`.bbk_record,
    `librarydb`.`books`.isbn,
    `librarydb`.`publisher`.publisher_record,
    GROUP_CONCAT(DISTINCT `librarydb`.`author`.author_record),
    GROUP_CONCAT(DISTINCT `librarydb`.`genre`.genre_record),
    GROUP_CONCAT(DISTINCT `librarydb`.`description`.description_record)
FROM
    `librarydb`.`books`
        JOIN
    `librarydb`.`author_join_table` ON `librarydb`.`author_join_table`.id_books = `librarydb`.`books`.id_books
        JOIN
    `librarydb`.`author` ON `librarydb`.`author`.id_author = `librarydb`.`author_join_table`.id_author
        JOIN
    `librarydb`.`genre_join_table` ON `librarydb`.`genre_join_table`.id_books = `librarydb`.`books`.id_books
        JOIN
    `librarydb`.`genre` ON `librarydb`.`genre`.id_genre = `librarydb`.`genre_join_table`.id_genre
        JOIN
    `librarydb`.`description` ON `librarydb`.`description`.id_books = `librarydb`.`books`.id_books
        JOIN
    `librarydb`.`book_binding_type` ON `librarydb`.`book_binding_type`.id_book_binding_type = `librarydb`.`books`.index_book_binding_type
        JOIN
    `librarydb`.`publisher` ON `librarydb`.`publisher`.id_publisher = `librarydb`.`books`.index_publisher
        JOIN
    `librarydb`.`udc` ON `librarydb`.`udc`.id_udc = `librarydb`.`books`.index_udc
        JOIN
    `librarydb`.`bbk` ON `librarydb`.`bbk`.id_bbk = `librarydb`.`books`.index_bbk
GROUP BY `librarydb`.`books`.id_books;