CREATE TABLE [dbo].[UserHasProject]
(
	[ID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [UserID] INT NOT NULL, 
    [ProjectID] INT NOT NULL, 
    [ProjectRoleID] INT NOT NULL, 
    CONSTRAINT [FK_UserHasProject_Projects] FOREIGN KEY ([ProjectID]) REFERENCES [Projects]([ID]) 
)
