select 	`librarydb`.`books`.*,
		`librarydb`.`autor`.autor_record
from `librarydb`.`books`
join `librarydb`.`autor_join_table`
  on `librarydb`.`autor_join_table`.id_books
  =  `librarydb`.`books`.id_books
join `librarydb`.`autor`
  on `librarydb`.`autor`.id_autor
  =  `librarydb`.`autor_join_table`.id_autor

select 	`librarydb`.`books`.*,
		group_concat(`librarydb`.`autor`.autor_record)
from `librarydb`.`books`
join `librarydb`.`autor_join_table`
  on `librarydb`.`autor_join_table`.id_books
  =  `librarydb`.`books`.id_books
join `librarydb`.`autor`
  on `librarydb`.`autor`.id_autor
  =  `librarydb`.`autor_join_table`.id_autor
group by `librarydb`.`books`.id_books
-------------------------------------------------------------------
select 	`librarydb`.`books`.*,
		`librarydb`.`autor`.autor_record,
		`librarydb`.`genre`.genre_record
from `librarydb`.`books`
join `librarydb`.`autor_join_table`
  on `librarydb`.`autor_join_table`.id_books
  =  `librarydb`.`books`.id_books
join `librarydb`.`autor`
  on `librarydb`.`autor`.id_autor
  =  `librarydb`.`autor_join_table`.id_autor
join `librarydb`.`genre_join_table`
  on `librarydb`.`genre_join_table`.id_books
  =  `librarydb`.`books`.id_books
join `librarydb`.`genre`
  on `librarydb`.`genre`.id_genre
  =  `librarydb`.`genre_join_table`.id_genre

select 	`librarydb`.`books`.*,
		group_concat(`librarydb`.`genre`.genre_record)
from `librarydb`.`books`
join `librarydb`.`genre_join_table`
  on `librarydb`.`genre_join_table`.id_books
  =  `librarydb`.`books`.id_books
join `librarydb`.`genre`
  on `librarydb`.`genre`.id_genre
  =  `librarydb`.`genre_join_table`.id_genre
group by `librarydb`.`books`.id_books;  
  
---------------------------------------------------------------------------------------
 
select 	`librarydb`.`books`.*,
		group_concat(DISTINCT `librarydb`.`autor`.autor_record),
		group_concat(DISTINCT `librarydb`.`genre`.genre_record)
from `librarydb`.`books`
join `librarydb`.`autor_join_table`
  on `librarydb`.`autor_join_table`.id_books
  =  `librarydb`.`books`.id_books
join `librarydb`.`autor`
  on `librarydb`.`autor`.id_autor
  =  `librarydb`.`autor_join_table`.id_autor 
  
join `librarydb`.`genre_join_table`
  on `librarydb`.`genre_join_table`.id_books
  =  `librarydb`.`books`.id_books
join `librarydb`.`genre`
  on `librarydb`.`genre`.id_genre
  =  `librarydb`.`genre_join_table`.id_genre
group by `librarydb`.`books`.id_books;

----------------------------------------------------------------------------------------------
SELECT 
    `librarydb`.`books`.id_books,
    `librarydb`.`books`.name_book,
    `librarydb`.`books`.index_udc,
    `librarydb`.`books`.index_bbk,
    `librarydb`.`books`.isbn,
    GROUP_CONCAT(DISTINCT `librarydb`.`autor`.autor_record),
    GROUP_CONCAT(DISTINCT `librarydb`.`genre`.genre_record),
    GROUP_CONCAT(DISTINCT `librarydb`.`description`.description_record)
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
GROUP BY `librarydb`.`books`.id_books;

