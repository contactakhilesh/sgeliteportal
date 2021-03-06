USE [AMERICA]
GO
/****** Object:  Table [dbo].[HBL_TEMP]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HBL_TEMP](
	[EXPORT_N] [decimal](18, 0) NULL,
	[LINE_NO] [varchar](10) NULL,
	[MKGS] [varchar](1500) NULL,
	[LINEPKGS] [varchar](20) NULL,
	[LINEDESC] [varchar](6000) NULL,
	[LINE_WT] [numeric](18, 3) NULL,
	[LINE_M3] [numeric](12, 4) NULL
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[HBL_TEMP] TO  SCHEMA OWNER 
GO
