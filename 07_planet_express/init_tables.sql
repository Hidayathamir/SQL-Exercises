CREATE TABLE Employee (
  EmployeeID INTEGER PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  Position VARCHAR(255) NOT NULL,
  Salary REAL NOT NULL,
  Remarks VARCHAR(255)
) ENGINE = InnoDB;

CREATE TABLE Planet (
  PlanetID INTEGER PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  Coordinates REAL NOT NULL
) ENGINE = InnoDB;

CREATE TABLE Shipment (
  ShipmentID INTEGER PRIMARY KEY,
  Date DATE,
  Manager INTEGER NOT NULL,
  Planet INTEGER NOT NULL,
  FOREIGN KEY (Manager) REFERENCES Employee(EmployeeID),
  FOREIGN KEY (Planet) REFERENCES Planet(PlanetID)
) ENGINE = InnoDB;

CREATE TABLE Has_Clearance (
  Employee INTEGER NOT NULL,
  Planet INTEGER NOT NULL,
  Level INTEGER NOT NULL,
  PRIMARY KEY(Employee, Planet),
  FOREIGN KEY (Employee) REFERENCES Employee(EmployeeID),
  FOREIGN KEY (Planet) REFERENCES Planet(PlanetID)
) ENGINE = InnoDB;

CREATE TABLE Client (
  AccountNumber INTEGER PRIMARY KEY,
  Name VARCHAR(255) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE Package (
  Shipment INTEGER NOT NULL,
  PackageNumber INTEGER NOT NULL,
  Contents VARCHAR(255) NOT NULL,
  Weight REAL NOT NULL,
  Sender INTEGER NOT NULL,
  Recipient INTEGER NOT NULL,
  PRIMARY KEY(Shipment, PackageNumber),
  FOREIGN KEY (Shipment) REFERENCES Shipment(ShipmentID),
  FOREIGN KEY (Sender) REFERENCES Client(AccountNumber),
  FOREIGN KEY (Recipient) REFERENCES Client(AccountNumber)
) ENGINE = InnoDB;

INSERT INTO
  Client
VALUES
  (1, 'Zapp Brannigan'),
  (2, "Al Gore's Head"),
  (3, 'Barbados Slim'),
  (4, 'Ogden Wernstrom'),
  (5, 'Leo Wong'),
  (6, 'Lrrr'),
  (7, 'John Zoidberg'),
  (8, 'John Zoidfarb'),
  (9, 'Morbo'),
  (10, 'Judge John Whitey'),
  (11, 'Calculon');

INSERT INTO
  Employee
VALUES
  (
    1,
    'Phillip J. Fry',
    'Delivery boy',
    7500.0,
    'Not to be confused with the Philip J. Fry from Hovering Squid World 97a'
  ),
  (2, 'Turanga Leela', 'Captain', 10000.0, NULL),
  (
    3,
    'Bender Bending Rodriguez',
    'Robot',
    7500.0,
    NULL
  ),
  (4, 'Hubert J. Farnsworth', 'CEO', 20000.0, NULL),
  (5, 'John A. Zoidberg', 'Physician', 25.0, NULL),
  (6, 'Amy Wong', 'Intern', 5000.0, NULL),
  (7, 'Hermes Conrad', 'Bureaucrat', 10000.0, NULL),
  (
    8,
    'Scruffy Scruffington',
    'Janitor',
    5000.0,
    NULL
  );

INSERT INTO
  Planet
VALUES
  (1, 'Omicron Persei 8', 89475345.3545),
  (2, 'Decapod X', 65498463216.3466),
  (3, 'Mars', 32435021.65468),
  (4, 'Omega III', 98432121.5464),
  (5, 'Tarantulon VI', 849842198.354654),
  (6, 'Cannibalon', 654321987.21654),
  (7, 'DogDoo VII', 65498721354.688),
  (8, 'Nintenduu 64', 6543219894.1654),
  (9, 'Amazonia', 65432135979.6547);

INSERT INTO
  Has_Clearance
VALUES
  (1, 1, 2),
  (1, 2, 3),
  (2, 3, 2),
  (2, 4, 4),
  (3, 5, 2),
  (3, 6, 4),
  (4, 7, 1);

INSERT INTO
  Shipment
VALUES
  (1, '3004/05/11', 1, 1),
  (2, '3004/05/11', 1, 2),
  (3, NULL, 2, 3),
  (4, NULL, 2, 4),
  (5, NULL, 7, 5);

INSERT INTO
  Package
VALUES
  (1, 1, 'Undeclared', 1.5, 1, 2),
  (2, 1, 'Undeclared', 10.0, 2, 3),
  (2, 2, 'A bucket of krill', 2.0, 8, 7),
  (3, 1, 'Undeclared', 15.0, 3, 4),
  (3, 2, 'Undeclared', 3.0, 5, 1),
  (3, 3, 'Undeclared', 7.0, 2, 3),
  (4, 1, 'Undeclared', 5.0, 4, 5),
  (4, 2, 'Undeclared', 27.0, 1, 2),
  (5, 1, 'Undeclared', 100.0, 5, 1);