USE [appdata]
GO
/****** Object:  Table [dbo].[COSTING]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[COSTING]
GO
/****** Object:  Table [dbo].[COSTING]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[COSTING]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[COSTING](
	[COSTING_ID] [numeric](10, 0) NOT NULL,
	[REF_NO] [numeric](10, 0) NOT NULL,
	[REF_TYPE] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CHG_CODE] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CHG_A] [numeric](11, 3) NOT NULL,
	[CHG_DESC] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[USER_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ENTRY_D] [datetime] NOT NULL,
	[JOB_NO] [numeric](10, 0) NULL,
	[VENDOR_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CHG_QTY] [numeric](11, 3) NULL,
	[CHG_UNIT_A] [numeric](11, 3) NULL,
	[CHG_EX_RATE] [numeric](11, 5) NULL,
	[CHG_CURRENCY] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[REV_IND] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[COSTING] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[COSTING] TO [public] AS [dbo]
GO
