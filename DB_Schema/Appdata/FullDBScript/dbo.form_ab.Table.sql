USE [appdata]
GO
/****** Object:  Index [form_ab_idx]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [form_ab_idx] ON [dbo].[form_ab] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[form_ab]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[form_ab]
GO
/****** Object:  Table [dbo].[form_ab]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[form_ab]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[form_ab](
	[trans_id] [numeric](10, 0) NULL,
	[trans_date] [datetime] NULL,
	[trans_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel_ref_fr] [numeric](10, 0) NULL,
	[vessel_ref_to] [numeric](10, 0) NULL,
	[export_n] [numeric](10, 0) NULL,
	[remarks_from] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks_to] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[note] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[nc_party_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[nc_type_code] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[nc_complaint_desc] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[form_ab] TO  SCHEMA OWNER 
GO
/****** Object:  Index [form_ab_idx]    Script Date: 3/14/2018 6:12:01 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[form_ab]') AND name = N'form_ab_idx')
CREATE UNIQUE CLUSTERED INDEX [form_ab_idx] ON [dbo].[form_ab]
(
	[trans_id] ASC,
	[trans_date] ASC,
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
