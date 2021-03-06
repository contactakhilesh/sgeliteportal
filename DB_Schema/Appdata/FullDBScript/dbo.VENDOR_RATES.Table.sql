USE [appdata]
GO
/****** Object:  Table [dbo].[VENDOR_RATES]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[VENDOR_RATES]
GO
/****** Object:  Table [dbo].[VENDOR_RATES]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[VENDOR_RATES]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[VENDOR_RATES](
	[VENDOR_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[POL_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[POD_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CHGCODE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CURR__ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHG_UNIT_A] [numeric](11, 2) NOT NULL,
	[REMARKS1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS2] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REMARKS3] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CREATE_D] [datetime] NULL,
	[USER_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EXP_DATE] [datetime] NOT NULL,
	[ACTUAL_IND] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CURR_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SCHEME_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[NEW_USER_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[START_D] [datetime] NOT NULL,
	[SEQ_N] [numeric](11, 0) NULL,
	[NO_OF_SHIPMENT] [numeric](18, 0) NULL,
	[TRANSIT_TIME] [numeric](18, 0) NULL,
	[TRANSIT_FREQ] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PODel_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[original_vendor_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_VRATES] PRIMARY KEY NONCLUSTERED 
(
	[VENDOR_ID] ASC,
	[POL_ID] ASC,
	[POD_ID] ASC,
	[CHGCODE_ID] ASC,
	[EXP_DATE] ASC,
	[START_D] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[VENDOR_RATES] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[VENDOR_RATES] TO [public] AS [dbo]
GO
