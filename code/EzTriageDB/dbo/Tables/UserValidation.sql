CREATE TABLE [dbo].[UserValidation] (
    [EmployeeID] INT           NOT NULL,
    [Username]   NVARCHAR (50) NULL,
    [Password]   NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([EmployeeID] ASC)
);

