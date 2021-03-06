USE [appdata]
GO
/****** Object:  Index [ClusteredIndex_carrier_mapping]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP INDEX IF EXISTS [ClusteredIndex_carrier_mapping] ON [dbo].[carrier_mapping] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[carrier_mapping]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[carrier_mapping]
GO
/****** Object:  Table [dbo].[carrier_mapping]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[carrier_mapping]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[carrier_mapping](
	[VEND_SHORT_NAME] [varchar](70) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[VENDOR_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ENVI] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[carrier_mapping] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ClusteredIndex_carrier_mapping]    Script Date: 3/14/2018 6:12:00 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[carrier_mapping]') AND name = N'ClusteredIndex_carrier_mapping')
CREATE CLUSTERED INDEX [ClusteredIndex_carrier_mapping] ON [dbo].[carrier_mapping]
(
	[VEND_SHORT_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
