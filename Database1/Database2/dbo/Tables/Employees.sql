CREATE TABLE [dbo].[Employees] (
    [EmployeeKey]                    INT            IDENTITY (1, 1) NOT NULL,
    [EmployeeNationalIDAlternateKey] NVARCHAR (15)  NULL,
    [FirstName]                      NVARCHAR (50)  NOT NULL,
    [LastName]                       NVARCHAR (50)  NOT NULL,
    [HireDate]                       DATE           NULL,
    [BirthDate]                      DATE           NULL,
    [LoginID]                        NVARCHAR (256) NULL,
    [EmailAddress]                   NVARCHAR (50)  NULL,
    [Phone]                          NVARCHAR (25)  NULL,
    [MaritalStatus]                  NCHAR (1)      NULL,
    [DepartmentName]                 NVARCHAR (50)  NULL,
    [StartDate]                      DATE           NULL,
    [EndDate]                        DATE           NULL,
    [Status]                         NVARCHAR (50)  NULL
);

