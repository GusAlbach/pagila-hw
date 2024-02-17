/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
SELECT category.name, SUM(language_id) FROM category JOIN film_category USING (category_id) jOIN film USING (film_id) JOIN language USING (language_id) WHERE language_id = 1 GROUP BY category.name ORDER BY name;
