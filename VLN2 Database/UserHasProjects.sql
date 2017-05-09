CREATE TABLE [dbo].[UserHasProjects]
(
	[ID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [UserID] INT NOT NULL, 
    [ProjectID] INT NOT NULL, 
    [ProjectRoleID] INT NOT NULL, 
    CONSTRAINT [FK_UserHasProjects_Projects] FOREIGN KEY ([ProjectID]) REFERENCES [Projects]([ID]), 
    CONSTRAINT [FK_UserHasProjects_ProjectRoles] FOREIGN KEY ([ProjectRoleID]) REFERENCES [ProjectRoles]([ID]), 
    CONSTRAINT [FK_UserHasProjects_Users] FOREIGN KEY ([UserID]) REFERENCES [Users]([ID]) 
)
