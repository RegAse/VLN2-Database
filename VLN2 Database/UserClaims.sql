CREATE TABLE [dbo].[UserClaims] (
    [ID]         INT            IDENTITY (1, 1) NOT NULL,
    [UserID]     INT            NOT NULL,
    [ClaimType]  NVARCHAR (MAX) NULL,
    [ClaimValue] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_dbo.UserClaims] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_dbo.UserClaims_dbo.Users_UserID] FOREIGN KEY ([UserID]) REFERENCES [dbo].[Users] ([ID]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_UserID]
    ON [dbo].[UserClaims]([UserID] ASC);

