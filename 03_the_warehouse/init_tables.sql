CREATE TABLE Warehouses (
   Code INTEGER NOT NULL,
   Location VARCHAR(255) NOT NULL,
   Capacity INTEGER NOT NULL,
   PRIMARY KEY (Code)
);

CREATE TABLE Boxes (
   Code VARCHAR(255) NOT NULL,
   Contents VARCHAR(255) NOT NULL,
   Value REAL NOT NULL,
   Warehouse INTEGER NOT NULL,
   PRIMARY KEY (Code),
   FOREIGN KEY (Warehouse) REFERENCES Warehouses(Code)
) ENGINE = INNODB;

INSERT INTO
   Warehouses(Code, Location, Capacity)
VALUES
   (1, 'Chicago', 3),
   (2, 'Chicago', 4),
   (3, 'New York', 7),
   (4, 'Los Angeles', 2),
   (5, 'San Francisco', 8);

INSERT INTO
   Boxes(Code, Contents, Value, Warehouse)
VALUES
   ('0MN7', 'Rocks', 180, 3),
   ('4H8P', 'Rocks', 250, 1),
   ('4RT3', 'Scissors', 190, 4),
   ('7G3H', 'Rocks', 200, 1),
   ('8JN6', 'Papers', 75, 1),
   ('8Y6U', 'Papers', 50, 3),
   ('9J6F', 'Papers', 175, 2),
   ('LL08', 'Rocks', 140, 4),
   ('P0H6', 'Scissors', 125, 1),
   ('P2T6', 'Scissors', 150, 2),
   ('TU55', 'Papers', 90, 5);