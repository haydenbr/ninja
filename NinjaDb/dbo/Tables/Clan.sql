CREATE TABLE [dbo].[Clan] (
	[ClanId] [int] IDENTITY(1,1) NOT NULL,
	[ClanName] [nvarchar](1000) NOT NULL,
	[FoundedOn] [datetime] NOT NULL,

	[CreatedOn] [datetime] NOT NULL DEFAULT GETUTCDATE(),
	[ModifiedOn] [datetime] NOT NULL DEFAULT GETUTCDATE(),
	[Version] [int] NOT NULL DEFAULT 1,
	[UniqueId] [uniqueidentifier] NOT NULL DEFAULT NewID(),
	[ExternalId] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL DEFAULT 0,
	[DeletedOn] [datetime] NULL,
	CONSTRAINT [PK_dbo.Clan] PRIMARY KEY CLUSTERED ([ClanId] ASC)
)
