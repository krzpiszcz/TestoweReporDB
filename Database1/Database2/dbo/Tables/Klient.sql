CREATE TABLE [dbo].[Klient] (
    [CliId]     INT           NOT NULL,
    [CliName]   VARCHAR (100) NULL,
    [CliTaxNum] VARCHAR (12)  NULL,
    PRIMARY KEY CLUSTERED ([CliId] ASC)
);

