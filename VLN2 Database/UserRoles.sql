Create TABLE [dbo].[UserRoles]
(
	[ID] int NOT NULL PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(50) NOT NULL,
	[Description] NVARCHAR(MAX) NULL
)
