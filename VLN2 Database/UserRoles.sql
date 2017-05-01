CREATE TABLE [dbo].[UserRoles] (
    [ID]   INT            IDENTITY (1, 1) NOT NULL,
    [Name] NVARCHAR (256) NOT NULL,
    [Description] NVARCHAR(MAX) NULL, 
    CONSTRAINT [PK_dbo.UserRoles] PRIMARY KEY CLUSTERED ([ID] ASC)
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex]
ON [dbo].[UserRoles]([Name] ASC);