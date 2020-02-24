CREATE TABLE reviewer
(
    id SERIAL PRIMARY KEY,
    name VARCHAR,
    email VARCHAR,
    karma int CHECK (karma < 7)
);