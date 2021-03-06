USE [appdata]
GO
/****** Object:  Trigger [trg_post_delete]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_post_delete]
GO
/****** Object:  Trigger [trg_after_insert]    Script Date: 3/14/2018 6:11:58 AM ******/
DROP TRIGGER IF EXISTS [dbo].[trg_after_insert]
GO
/****** Object:  Index [_dta_index_DOC_TRANS_PARTY_DET_7_275532065__K1_4_11_12_13_14]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_DOC_TRANS_PARTY_DET_7_275532065__K1_4_11_12_13_14] ON [dbo].[DOC_TRANS_PARTY_DET]
GO
/****** Object:  Index [_dta_index_DOC_TRANS_PARTY_DET_c_11_275532065__K1]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_DOC_TRANS_PARTY_DET_c_11_275532065__K1] ON [dbo].[DOC_TRANS_PARTY_DET] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[DOC_TRANS_PARTY_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_TRANS_PARTY_DET]
GO
/****** Object:  Table [dbo].[DOC_TRANS_PARTY_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_TRANS_PARTY_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_TRANS_PARTY_DET](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[cust_id] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[line_no] [int] NOT NULL,
	[cust_name] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[add1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[add2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[add3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[add4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[add5] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks1] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[courier_code] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[destination] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[awb_date] [datetime] NULL,
	[dhl_receivers_id] [numeric](18, 0) NULL,
	[party_email] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_TRANS_PARTY_DET] PRIMARY KEY NONCLUSTERED 
(
	[doc_head_no] ASC,
	[cust_id] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_TRANS_PARTY_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_TRANS_PARTY_DET] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_DOC_TRANS_PARTY_DET_c_11_275532065__K1]    Script Date: 3/14/2018 6:12:01 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DOC_TRANS_PARTY_DET]') AND name = N'_dta_index_DOC_TRANS_PARTY_DET_c_11_275532065__K1')
CREATE CLUSTERED INDEX [_dta_index_DOC_TRANS_PARTY_DET_c_11_275532065__K1] ON [dbo].[DOC_TRANS_PARTY_DET]
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [_dta_index_DOC_TRANS_PARTY_DET_7_275532065__K1_4_11_12_13_14]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DOC_TRANS_PARTY_DET]') AND name = N'_dta_index_DOC_TRANS_PARTY_DET_7_275532065__K1_4_11_12_13_14')
CREATE NONCLUSTERED INDEX [_dta_index_DOC_TRANS_PARTY_DET_7_275532065__K1_4_11_12_13_14] ON [dbo].[DOC_TRANS_PARTY_DET]
(
	[doc_head_no] ASC
)
INCLUDE ( 	[cust_name],
	[remarks1],
	[courier_code],
	[destination],
	[awb_date]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
