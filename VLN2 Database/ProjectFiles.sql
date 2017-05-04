CREATE TABLE [dbo].[ProjectFiles]
(
	[ID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(256) NOT NULL, 
    [Content] NVARCHAR(MAX) NULL, 
    [ProjectID] INT NOT NULL, 
    [IsFolder] BIT NOT NULL, 
    [ProjectFileID] INT NULL, 
    CONSTRAINT [FK_ProjectFiles_Projects] FOREIGN KEY ([ProjectID]) REFERENCES [Projects]([ID])
)
