USE [AMERICA]
GO
/****** Object:  Table [dbo].[carrier_mapping]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carrier_mapping](
	[VEND_SHORT_NAME] [varchar](70) NOT NULL,
	[VENDOR_ID] [varchar](10) NOT NULL,
	[ENVI] [varchar](2) NOT NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[carrier_mapping] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [ClusteredIndex_carrier_mapping]    Script Date: 3/14/2018 6:00:03 AM ******/
CREATE CLUSTERED INDEX [ClusteredIndex_carrier_mapping] ON [dbo].[carrier_mapping]
(
	[VEND_SHORT_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
