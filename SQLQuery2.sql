CREATE TABLE CaterRequest(
CaterRequestID int IDENTITY(1,1) NOT NULL,
FirstName varchar(30) NOT NULL,
LastName varchar(30) NOT NULL,
EmailAddress varchar(50) NOT NULL,
EventDate date NOT NULL,
EventTime time (0) NOT NULL, 
GuestCount int NOT NULL,
LocationAddress1 varchar (50) NOT NULL, 
LocationAddress2 varchar (50) NULL, 
City varchar (50) NOT NULL,
RequestStateID int NOT NULL,
ZipCode char (5) NOT NULL, 
EventDetails varchar (100) NOT NULL);

ALTER TABLE [dbo].[CaterRequest] ADD CONSTRAINT CaterRequestpk PRIMARY KEY (CaterRequestID);
ALTER TABLE [dbo].[CaterRequest] WITH CHECK ADD CONSTRAINT CaterRequestFK FOREIGN KEY ([RequestStateID])
REFERENCES StatesMaster ([StateID]);
GO

