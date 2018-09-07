CREATE TABLE [dbo].[Equipment] (
	[EquipmentId] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentName] [nvarchar](1000) NOT NULL,
	[EquipmentTypeId] [int] NOT NULL,
	[NinjaId] [int] NOT NULL,

	[CreatedOn] [datetime] NOT NULL DEFAULT GETUTCDATE(),
	[ModifiedOn] [datetime] NOT NULL DEFAULT GETUTCDATE(),
	[Version] [int] NOT NULL DEFAULT 1,
	[UniqueId] [uniqueidentifier] NOT NULL DEFAULT NewID(),
	[ExternalId] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL DEFAULT 0,
	[DeletedOn] [datetime] NULL,
	CONSTRAINT [PK_dbo.Equipment] PRIMARY KEY CLUSTERED ([EquipmentId] ASC)
)
GO

ALTER TABLE [dbo].[Equipment]  ADD  CONSTRAINT [FK_dbo.Equipment_dbo.Ninja_NinjaId] FOREIGN KEY([NinjaId])
REFERENCES [dbo].[Ninja] ([NinjaId])
GO

ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_dbo.Equipment_dbo.Ninja_NinjaId]
GO

ALTER TABLE [dbo].[Equipment]  ADD  CONSTRAINT [FK_dbo.Equipment_dbo.EquipmentType_EquipmentTypeId] FOREIGN KEY([EquipmentTypeId])
REFERENCES [dbo].[EquipmentType] ([EquipmentTypeId])
GO

ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_dbo.Equipment_dbo.EquipmentType_EquipmentTypeId]
GO
