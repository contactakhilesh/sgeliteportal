USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_TRANS_LETTER_DET]') AND type in (N'U'))
ALTER TABLE [dbo].[DOC_TRANS_LETTER_DET] DROP CONSTRAINT IF EXISTS [DF_DOC_TRANS_LETTER_DET_remarks1]
GO
/****** Object:  Index [IX_DocTransLetterDet_DocHeadNo]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [IX_DocTransLetterDet_DocHeadNo] ON [dbo].[DOC_TRANS_LETTER_DET]
GO
/****** Object:  Table [dbo].[DOC_TRANS_LETTER_DET]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_TRANS_LETTER_DET]
GO
/****** Object:  Table [dbo].[DOC_TRANS_LETTER_DET]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_TRANS_LETTER_DET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_TRANS_LETTER_DET](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[header_option] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[title] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[creation_dt] [datetime] NULL,
	[shipper_ref] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[vessel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sailing_dt] [datetime] NULL,
	[prepared_by] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[elite_ref] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[bl_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[eta] [datetime] NULL,
	[remarks1] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks2] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[po_no] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[invoice_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_ref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[payment_inst] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[special_inst] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[comp_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_name] [varchar](80) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_tel] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[shipper_ref1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[comp_desc] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_TRANS_LETTER_DET] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[DOC_TRANS_LETTER_DET] TO [public] AS [dbo]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_DocTransLetterDet_DocHeadNo]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[DOC_TRANS_LETTER_DET]') AND name = N'IX_DocTransLetterDet_DocHeadNo')
CREATE NONCLUSTERED INDEX [IX_DocTransLetterDet_DocHeadNo] ON [dbo].[DOC_TRANS_LETTER_DET]
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
