CREATE TABLE [dbo].[ConversationHasMessage]
(
	[ID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ConversationID] INT NOT NULL, 
    [MessageID] INT NOT NULL, 
    CONSTRAINT [FK_ConversationHasMessage_Conversations] FOREIGN KEY ([ConversationID]) REFERENCES [Conversations]([ID]), 
    CONSTRAINT [FK_ConversationHasMessage_Messages] FOREIGN KEY ([MessageID]) REFERENCES [Messages]([ID])
)
