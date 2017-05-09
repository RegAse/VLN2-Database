CREATE TABLE [dbo].[UserHasRoles] (
    [UserID] INT NOT NULL,
    [RoleID] INT NOT NULL,
    CONSTRAINT [PK_dbo.UserHasRoles] PRIMARY KEY CLUSTERED ([UserID] ASC, [RoleID] ASC),
    CONSTRAINT [FK_dbo.UserHasRoles_dbo.Roles_RoleID] FOREIGN KEY ([RoleID]) REFERENCES [dbo].[UserRoles] ([ID]) ON DELETE CASCADE,
    CONSTRAINT [FK_dbo.UserHasRoles_dbo.Users_UserID] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([ID]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_UserID]
    ON [dbo].[UserHasRoles]([UserID] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_RoleID]
    ON [dbo].[UserHasRoles]([RoleID] ASC);


