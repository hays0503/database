SELECT 
    `librarydb`.`books`.id_books,
    `librarydb`.`books`.name_book,
    `librarydb`.`books`.index_udc,
    `librarydb`.`books`.index_bbk,
    `librarydb`.`books`.isbn,
    GROUP_CONCAT(DISTINCT `librarydb`.`autor`.autor_record),
    GROUP_CONCAT(DISTINCT `librarydb`.`genre`.genre_record),
    GROUP_CONCAT(DISTINCT `librarydb`.`description`.description_record),
	GROUP_CONCAT(DISTINCT `librarydb`.`book_binding_type`.binding_type)
FROM
    `librarydb`.`books`
        JOIN
    `librarydb`.`autor_join_table` ON `librarydb`.`autor_join_table`.id_books = `librarydb`.`books`.id_books
        JOIN
    `librarydb`.`autor` ON `librarydb`.`autor`.id_autor = `librarydb`.`autor_join_table`.id_autor
        JOIN
    `librarydb`.`genre_join_table` ON `librarydb`.`genre_join_table`.id_books = `librarydb`.`books`.id_books
        JOIN
    `librarydb`.`genre` ON `librarydb`.`genre`.id_genre = `librarydb`.`genre_join_table`.id_genre
        JOIN
    `librarydb`.`description` ON `librarydb`.`description`.id_description = `librarydb`.`books`.id_books
	    JOIN
    `librarydb`.`book_binding_type` ON `librarydb`.`book_binding_type`.id_book_binding_type = `librarydb`.`books`.index_book_binding_type
GROUP BY `librarydb`.`books`.id_books;