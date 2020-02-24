CREATE TABLE review
(
    id SERIAL PRIMARY KEY,
    reviewerID INT
        REFERENCES reviewer
    (id),
    stars INT CHECK
(stars < 6 and stars > 0),
    title VARCHAR,
    review VARCHAR,
    restaurantID INT REFERENCES restaurantv2
(id)
);