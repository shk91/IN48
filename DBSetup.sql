CREATE TABLE UserData (
 UserId INT PRIMARY KEY IDENTITY (1, 1),
 FirstName VARCHAR(50) NOT NULL,
 LastName VARCHAR(50),
 Phone1 BIGINT NOT NULL,
 Phone2 BIGINT,
 EmailId VARCHAR(100)
);

CREATE TABLE Entity (
 EntityId INT PRIMARY KEY IDENTITY (1, 1),
 EntityName VARCHAR(50),
 EntityAlias VARCHAR(10)
);

CREATE TABLE Account (
 AccId INT PRIMARY KEY IDENTITY (1, 1),
 UserId INT,
 EntityId INT,
 AccType VARCHAR(5),
 AccRef VARCHAR(15),
 FOREIGN KEY (UserId) REFERENCES UserData (UserId),
 FOREIGN KEY (EntityId) REFERENCES Entity (EntityId)
);

CREATE TABLE TxDetails (
 TxId INT PRIMARY KEY IDENTITY (1, 1),
 AccId INT,
 UserId INT,
 EntityId INT,
 TxDate DATE,
 TxType VARCHAR(5),
 TxDetails VARCHAR(50),
 TxAmt DECIMAL(10,2),
 FOREIGN KEY (AccId) REFERENCES Account (AccId),
 FOREIGN KEY (UserId) REFERENCES UserData (UserId),
 FOREIGN KEY (EntityId) REFERENCES Entity (EntityId)
);

CREATE TABLE Events (
 EventId INT PRIMARY KEY IDENTITY (1, 1),
 AccId INT,
 UserId INT,
 EntityId INT,
 EventDate DATE,
 EventDesc VARCHAR(50),
 FOREIGN KEY (AccId) REFERENCES Account (AccId),
 FOREIGN KEY (UserId) REFERENCES UserData (UserId),
 FOREIGN KEY (EntityId) REFERENCES Entity (EntityId)
);