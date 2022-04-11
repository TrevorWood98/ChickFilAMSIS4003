Drop Table SubscriptionForm
go

CREATE TABLE SubscriptionForm (
SubscriberID int IDENTITY(1,1) NOT NULL, 
SubscriberName varchar (30) NOT NULL,
SubscriberLast varchar (30) NOT NULL,
SubscriberEmail varchar (50) NOT NULL)

ALTER TABLE [dbo].[SubscriptionForm] ADD CONSTRAINT subscriberpk PRIMARY KEY (SubscriberID);

select * from SubscriptionForm