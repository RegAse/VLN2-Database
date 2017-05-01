CREATE TABLE [dbo].[UserLogins] (
    [LoginProvider] NVARCHAR (128) NOT NULL,
    [ProviderKey]   NVARCHAR (128) NOT NULL,
    [UserID]        INT            NOT NULL,
    CONSTRAINT [PK_dbo.UserLogins] PRIMARY KEY CLUSTERED ([LoginProvider] ASC, [ProviderKey] ASC, [UserID] ASC),
    CONSTRAINT [FK_dbo.UserLogins_dbo.Users_UserID] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([ID]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_UserID]
    ON [dbo].[UserLogins]([UserID] ASC);

