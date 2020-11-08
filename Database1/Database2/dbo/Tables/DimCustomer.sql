CREATE TABLE [dbo].[DimCustomer] (
    [CustomerNaturalKey] INT            NOT NULL,
    [CustomerLabel]      NVARCHAR (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
    [FirstName]          NVARCHAR (50)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [LastName]           NVARCHAR (50)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [MaritalStatus]      NCHAR (1)      COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [EmailAddress]       NVARCHAR (50)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [Education]          NVARCHAR (40)  COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
    [StartDate]          DATETIME       NULL,
    [EndDate]            DATETIME       NULL,
    [Status]             INT            NULL,
    [CustomerKey]        INT            IDENTITY (1, 1) NOT NULL,
    CONSTRAINT [PK_DimCustomer] PRIMARY KEY CLUSTERED ([CustomerKey] ASC)
);

