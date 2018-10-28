CREATE TABLE [dbo].[Patient]
(
	[FirstResponderID] int identity (1, 1) not null,
	[PatientID] int not null,
	[PatientLastName] nvarchar(50) null,
	[PatientFirstName] nvarchar(50) null,
	[PatientPhoneNumber] int null,
	[PatientAddress] nvarchar(50) null,
	[PatientTriageCat] nvarchar(20) null,
	[Date] datetime null,
	primary key clustered ([FirstResponderID] asc)
)
