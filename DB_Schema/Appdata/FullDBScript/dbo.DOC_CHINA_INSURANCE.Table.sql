USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_CHINA_INSURANCE]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_CHINA_INSURANCE]
GO
/****** Object:  Table [dbo].[DOC_CHINA_INSURANCE]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_CHINA_INSURANCE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_CHINA_INSURANCE](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[shipper_ref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[elite_ref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[rep_cover_note] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[insurer] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[amount_fig] [numeric](18, 2) NULL,
	[amount_words] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[voyage] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_load] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[port_disc] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ship_date] [datetime] NULL,
	[special_cond] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[claims_at] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[payable_to] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ins_date] [datetime] NULL,
	[Survey_agent] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[currency] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_CHINA_INSURANCE] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_CHINA_INSURANCE] TO [public] AS [dbo]
GO
