CREATE TABLE Restuarant
(
    id SERIAL PRIMARY KEY,
    estName VARCHAR,
    distance INT,
    rating INT,
    category VARCHAR,
    favorites VARCHAR,
    delivery VARCHAR,
    lastVisit DATE
);