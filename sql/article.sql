CREATE TABLE  IF NOT EXISTS articles (
    id INT (11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar (255) not null,
    body text
) ENGINE=InnoDB;

INSERT INTO articles (name, body) VALUES ('Hello', 'Hello world long long page...');
INSERT INTO articles (name, body) VALUES ('World', 'World hello extra long long page...');

CREATE TABLE IF NOT EXISTS PersonalAccounts(
    AccountNumber INT(20) NOT NULL PRIMARY KEY,
    ApartmentArea DECIMAL(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS Meters(
    MeterNumber INT(20) NOT NULL PRIMARY KEY,
    MeterType VARCHAR(255) NOT NULL,
    AccountNumber INT(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS Readings(
    id INT (11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    MeterNumber INT(20) NOT NULL,
    MeterValue DECIMAL(8,2) NOT NULL,
    ReadingDate TIMESTAMP NOT NULL
);

ALTER TABLE Readings ADD CONSTRAINT ReadingsMeterNumber_FOR_KEY
FOREIGN KEY Readings(MeterNumber)
REFERENCES Meters(MeterNumber);

ALTER TABLE Meters ADD CONSTRAINT MetersAccountNumber_FOR_KEY
FOREIGN KEY Meters(AccountNumber)
REFERENCES PersonalAccounts(AccountNumber);