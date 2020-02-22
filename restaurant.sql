CREATE TABLE Restuarant
(
    id SERIAL PRIMARY KEY,
    estName VARCHAR NOT NULL,
    distance NUMERIC(10,2) DEFAULT 0,
    rating NUMERIC(1,2) DEFAULT 0,
    category VARCHAR NOT NULL,
    favorites VARCHAR NOT NULL,
    delivery VARCHAR NOT NULL,
    lastVisit DATE NOT NULL



)