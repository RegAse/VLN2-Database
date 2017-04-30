CREATE TABLE [dbo].[ProgrammingLanguages]
(
	[ID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(50) NOT NULL, 
    [FileExtension] NVARCHAR(50) NULL
)
