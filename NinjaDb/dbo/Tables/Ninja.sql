CREATE TABLE [dbo].[Ninja] (
	[NinjaId] [int] IDENTITY(1,1) NOT NULL,
	[NinjaName] [nvarchar](1000) NOT NULL,
	[ServedInOniwaban] [bit] NOT NULL,
	[ClanId] [int] NOT NULL,
	[Birthday] [datetime] NOT NULL,

	[CreatedOn] [datetime] NOT NULL DEFAULT GETUTCDATE(),
	[ModifiedOn] [datetime] NOT NULL DEFAULT GETUTCDATE(),
	[Version] [int] NOT NULL DEFAULT 1,
	[UniqueId] [uniqueidentifier] NOT NULL DEFAULT NewID(),
	[ExternalId] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL DEFAULT 0,
	[DeletedOn] [datetime] NULL,
	CONSTRAINT [PK_dbo.Ninja] PRIMARY KEY CLUSTERED ([NinjaId] ASC)
)
GO

ALTER TABLE [dbo].[Ninja]  ADD  CONSTRAINT [FK_dbo.Ninja_dbo.Clan_ClanId] FOREIGN KEY([ClanId])
REFERENCES [dbo].[Clan] ([ClanId])
GO

ALTER TABLE [dbo].[Ninja] CHECK CONSTRAINT [FK_dbo.Ninja_dbo.Clan_ClanId]
GO
