USE [AMERICA]
GO
/****** Object:  Table [dbo].[IMPORT_CONV]    Script Date: 3/14/2018 6:00:03 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMPORT_CONV](
	[ORG_ID] [varchar](10) NOT NULL,
	[CNV_IMPORT_N] [numeric](10, 0) NOT NULL,
	[LINE_N] [numeric](18, 0) NOT NULL,
	[VESSEL] [varchar](30) NULL,
	[VOYAGE] [varchar](20) NULL,
	[ETA] [datetime] NULL,
	[ETD] [datetime] NULL,
	[HBL_N] [varchar](20) NULL,
	[CUST_ID] [varchar](10) NULL,
 CONSTRAINT [SYS_C0052413] PRIMARY KEY NONCLUSTERED 
(
	[ORG_ID] ASC,
	[CNV_IMPORT_N] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER AUTHORIZATION ON [dbo].[IMPORT_CONV] TO  SCHEMA OWNER 
GO
