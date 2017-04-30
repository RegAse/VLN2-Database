CREATE TABLE [dbo].[Users]
(
	[ID] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Username] NVARCHAR(50) NOT NULL, 
    [DisplayName] NVARCHAR(50) NOT NULL, 
    [AboutMe] NVARCHAR(MAX) NULL, 
    [UserRoleID] INT NOT NULL, 
    CONSTRAINT [FK_Users_UserRoles] FOREIGN KEY ([UserRoleID]) REFERENCES [UserRoles]([ID]) 
)
