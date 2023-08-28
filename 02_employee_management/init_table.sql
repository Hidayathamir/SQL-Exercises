CREATE TABLE Departments (
  Code INTEGER PRIMARY KEY,
  Name varchar(255) NOT NULL,
  Budget decimal NOT NULL
);

CREATE TABLE Employees (
  SSN INTEGER PRIMARY KEY,
  Name varchar(255) NOT NULL,
  LastName varchar(255) NOT NULL,
  Department INTEGER NOT NULL,
  foreign key (department) references Departments(Code)
) ENGINE = INNODB;

INSERT INTO
  Departments(Code, Name, Budget)
VALUES
  (14, 'IT', 65000),
  (37, 'Accounting', 15000),
  (59, 'Human Resources', 240000),
  (77, 'Research', 55000);

INSERT INTO
  Employees(SSN, Name, LastName, Department)
VALUES
  ('123234877', 'Michael', 'Rogers', 14),
  ('152934485', 'Anand', 'Manikutty', 14),
  ('222364883', 'Carol', 'Smith', 37),
  ('326587417', 'Joe', 'Stevens', 37),
  ('332154719', 'Mary-Anne', 'Foster', 14),
  ('332569843', 'George', 'O''Donnell', 77),
  ('546523478', 'John', 'Doe', 59),
  ('631231482', 'David', 'Smith', 77),
  ('654873219', 'Zacary', 'Efron', 59),
  ('745685214', 'Eric', 'Goldsmith', 59),
  ('845657245', 'Elizabeth', 'Doe', 14),
  ('845657246', 'Kumar', 'Swamy', 14);