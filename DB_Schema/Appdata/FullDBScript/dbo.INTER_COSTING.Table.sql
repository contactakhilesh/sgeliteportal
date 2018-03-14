USE [appdata]
GO
/****** Object:  Table [dbo].[INTER_COSTING]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[INTER_COSTING]
GO
/****** Object:  Table [dbo].[INTER_COSTING]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[INTER_COSTING]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[INTER_COSTING](
	[REF_N] [numeric](10, 0) NOT NULL,
	[REF_TYPE] [char](2) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[LINE_N] [numeric](5, 0) NOT NULL,
	[CHGCODE_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CURRENCY_ID] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[EX_RATE] [numeric](11, 4) NOT NULL,
	[CHG_A] [numeric](20, 2) NOT NULL,
	[CHG_Q] [numeric](11, 3) NOT NULL,
	[TOT_A] [numeric](20, 2) NOT NULL,
	[TOT_C] [numeric](20, 2) NULL,
	[LOAD_IND] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DISC_IND] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_INTER_COSTING] PRIMARY KEY NONCLUSTERED 
(
	[REF_N] ASC,
	[REF_TYPE] ASC,
	[LINE_N] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[INTER_COSTING] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[INTER_COSTING] TO [public] AS [dbo]
GO
