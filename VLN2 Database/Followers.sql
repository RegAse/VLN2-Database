CREATE TABLE [dbo].[Followers]
(
	[ID] INT NOT NULL PRIMARY KEY, 
    [UserID] INT NOT NULL, 
    [UserFollowID] INT NOT NULL, 
    CONSTRAINT [FK_Followers_Users] FOREIGN KEY ([UserID]) REFERENCES [Users]([ID]), 
    CONSTRAINT [FK_Follow_Users] FOREIGN KEY ([UserID]) REFERENCES [Users]([ID])
)
