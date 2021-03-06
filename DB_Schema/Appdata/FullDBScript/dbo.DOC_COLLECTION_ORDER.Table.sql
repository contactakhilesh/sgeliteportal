USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_COLLECTION_ORDER]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_COLLECTION_ORDER] DROP CONSTRAINT IF EXISTS [DF_DOC_COLLECTION_ORDER_foot_sig_ind]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_COLLECTION_ORDER]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_COLLECTION_ORDER] DROP CONSTRAINT IF EXISTS [DF_DOC_COLLECTION_ORDER_title]
GO
/****** Object:  Table [dbo].[DOC_COLLECTION_ORDER]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_COLLECTION_ORDER]
GO
/****** Object:  Table [dbo].[DOC_COLLECTION_ORDER]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_COLLECTION_ORDER]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_COLLECTION_ORDER](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[left_add1] [varchar](600) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[left_add2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[left_add3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[left_add4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[left_add5] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawee_add1] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawee_add2] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawee_add3] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawee_add4] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawee_add5] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawee_add6] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawer_add1] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawer_add2] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawer_add3] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawer_add4] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawer_add5] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[drawer_add6] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[amount] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst1] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst2] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst3] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst4] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst5] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst6] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst7] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst8] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst9] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst10] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst11] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst12] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst13] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst14] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst15] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst16] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inst17] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[create_dt] [datetime] NULL,
	[etd] [datetime] NULL,
	[shipper_ref] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[elite_ref] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[payment_terms] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[foot_shipper] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[foot_sig_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_DOC_COLLECTION_ORDER] PRIMARY KEY NONCLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_COLLECTION_ORDER] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_COLLECTION_ORDER] TO [public] AS [dbo]
GO
