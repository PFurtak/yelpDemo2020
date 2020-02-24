CREATE TABLE Restuarant
(
    id SERIAL PRIMARY KEY,
    estName VARCHAR,
    distance NUMERIC(10,2),
    rating NUMERIC(1,1),
    category VARCHAR,
    favorites VARCHAR,
    delivery VARCHAR,
    lastVisit DATE
);