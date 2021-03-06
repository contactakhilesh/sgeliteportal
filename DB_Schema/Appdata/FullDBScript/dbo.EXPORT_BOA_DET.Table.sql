USE [appdata]
GO
/****** Object:  Table [dbo].[EXPORT_BOA_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[EXPORT_BOA_DET]
GO
/****** Object:  Table [dbo].[EXPORT_BOA_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EXPORT_BOA_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EXPORT_BOA_DET](
	[export_n] [numeric](10, 0) NOT NULL,
	[line_n] [numeric](10, 0) NOT NULL,
	[doc_info] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[org_lc] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[org_draft] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[org_bl_neg] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[org_bl_nn] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[org_com_inv] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[org_cust_inv] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[org_coo] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[org_ins] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[org_wt_cert] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[org_pack_list] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[org_ins_cert] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[org_ship_co_cert] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[org_ben_cert] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[issue_bank] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lc_expire_d] [datetime] NULL,
	[bank_ref_n] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_export_boa_det] PRIMARY KEY NONCLUSTERED 
(
	[export_n] ASC,
	[line_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[EXPORT_BOA_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[EXPORT_BOA_DET] TO [public] AS [dbo]
GO
