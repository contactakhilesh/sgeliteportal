USE [appdata]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [carrier_mapping](
	[VEND_SHORT_NAME] [varchar](70) NOT NULL,
	[VENDOR_ID] [varchar](10) NOT NULL,
	[ENVI] [varchar](2) NOT NULL
) ON [PRIMARY]

GO
