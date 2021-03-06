﻿CREATE TABLE [dbo].[Messages]
(
	[ID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [UserID] INT NOT NULL, 
    [Content] NVARCHAR(MAX) NOT NULL, 
    [Date] DATETIME NOT NULL, 
    CONSTRAINT [FK_Messages_Users] FOREIGN KEY ([UserID]) REFERENCES [Users]([ID])
)
