-- list all restaurants
-- getALL
-- () function
SELECT *
FROM restaurantv2;

-- List a single restaurant by ID.
-- getByID
-- ()
SELECT *
FROM restaurantv2
WHERE restaurantv2.id = 2;

-- List all the reviews for a given restaurant given a specific restaurant ID.
SELECT *
FROM review
WHERE restaurantid = 4;

-- List all the reviews for a given restaurant, given a specific restaurant name.
SELECT *
FROM review
    INNER JOIN restaurantv2
    ON review.restaurantid = restaurantv2.id
WHERE restaurantv2.name = 'Asian Chef';

-- List all the reviews for a given reviewer, given a specific author name.

SELECT *
FROM review
    INNER JOIN reviewer
    ON review.reviewerid = reviewer.id
WHERE reviewer.name = 'Patrick';

-- List all the reviews along with the restaurant they were written for.
-- In the query result, select the restaurant name and the review
SELECT
    *
FROM review
    INNER JOIN restaurantv2
    on review.restaurantid = restaurantv2.id;


-- List all the reviews along with the restaurant, and the reviewer's name.
-- The result should have the restaurant name, the review text, and the reviewer name.
-- Hint: you might need to do a three-way join - i.e. joining all three tables together.
SELECT restaurantv2.name, review.title, review.review, reviewer.name
FROM review
    INNER JOIN restaurantv2
    ON review.restaurantid = restaurantv2.id
    INNER JOIN reviewer
    on review.id = reviewer.id;
