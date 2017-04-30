CREATE TABLE [dbo].[ConversationHasMessage]
(
	[ID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ConversationID] INT NOT NULL, 
    [MessageID] INT NOT NULL
)
