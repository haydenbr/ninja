CREATE TABLE [dbo].[EquipmentType] (
	[EquipmentTypeId] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentTypeName] [nvarchar](1000) NOT NULL,

	[CreatedOn] [datetime] NOT NULL DEFAULT GETUTCDATE(),
	[ModifiedOn] [datetime] NOT NULL DEFAULT GETUTCDATE(),
	[Version] [int] NOT NULL DEFAULT 1,
	[UniqueId] [uniqueidentifier] NOT NULL DEFAULT NewID(),
	[ExternalId] [nvarchar](max) NULL,
	[Deleted] [bit] NOT NULL DEFAULT 0,
	[DeletedOn] [datetime] NULL,
	CONSTRAINT [PK_dbo.EquipmentType] PRIMARY KEY CLUSTERED ([EquipmentTypeId] ASC)
)
