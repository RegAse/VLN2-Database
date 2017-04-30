CREATE TABLE [dbo].[Templates]
(
	[ID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(MAX) NOT NULL, 
    [Description] NVARCHAR(MAX) NULL, 
    [Code] NVARCHAR(MAX) NOT NULL, 
    [ProgrammingLanguageID] INT NOT NULL
)
