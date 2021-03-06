IF NOT EXISTS(SELECT * FROM sys.objects WHERE [type] = 'U' AND [name] = 'MyTVO_Car')
BEGIN
CREATE TABLE [dbo].[MyTVO_Car](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NOT NULL,
	[Manufacture] [nvarchar](20) NULL,
	[Model] [nvarchar](20) NULL,
	[VehicleType] [nvarchar](20) NULL,
	[StartYear] [nvarchar](10) NULL,
	[EndYear] [nvarchar](10) NULL,
	[EngineSize] [nvarchar](10) NULL,
	[TrimLevel] [nvarchar](35) NULL,
	[cStVIN] [nvarchar](8) NULL,
	[cEndVIN] [nvarchar](8) NULL,
	[cABIRef] [nvarchar](8) NULL
) ON [PRIMARY]
END
GO
