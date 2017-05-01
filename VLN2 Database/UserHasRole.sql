CREATE TABLE [dbo].[UserHasRole] (
    [UserID] INT NOT NULL,
    [RoleID] INT NOT NULL,
    CONSTRAINT [PK_dbo.UserHasRole] PRIMARY KEY CLUSTERED ([UserID] ASC, [RoleID] ASC),
    CONSTRAINT [FK_dbo.UserHasRole_dbo.Roles_RoleID] FOREIGN KEY ([RoleID]) REFERENCES [dbo].[Roles] ([ID]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.UserHasRole_dbo.Users_UserID] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([ID]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_UserID]
    ON [dbo].[UserHasRole]([UserID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_RoleID]
    ON [dbo].[UserHasRole]([RoleID] ASC);


