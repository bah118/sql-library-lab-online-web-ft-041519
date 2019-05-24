def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT b.title, b.year
   FROM books AS b
   JOIN series AS s
   ON s.id = b.series_id
   WHERE s.id = 1
   ORDER BY b.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT c.name, c.motto
  FROM characters AS c
  ORDER BY LENGTH(c.motto) DESC
  LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT c.species, COUNT(c.species)
  FROM characters AS c
  GROUP BY c.species
  ORDER BY c.species DESC
  LIMIT 1"
end

def select_name_and_series_subgenres_of_authors
  "SELECT a.name, sub.name
  FROM authors AS a, subgenres AS sub 
  JOIN series AS s 
  WHERE a.id = s.author_id AND sub.id = s.subgenre_id
  GROUP BY a.name;"
end

def select_series_title_with_most_human_characters
  "SELECT s.title
  FROM series AS s
  JOIN characters AS c
  WHERE s.id = c.series_id
  GROUP BY s.title
  ORDER BY c.species DESC
  LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT c.name, COUNT(cb.book_id)
  FROM characters AS c
  JOIN character_books AS cb
  ON c.id = cb.character_id
  GROUP BY cb.character_id
  ORDER BY COUNT(cb.book_id) DESC, c.name;"
end
