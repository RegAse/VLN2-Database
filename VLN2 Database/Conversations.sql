CREATE TABLE [dbo].[Conversations]
(
	[ID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ProjectID] INT NOT NULL, 
    CONSTRAINT [FK_Conversations_Projects] FOREIGN KEY ([ProjectID]) REFERENCES [Projects]([ID])
)
