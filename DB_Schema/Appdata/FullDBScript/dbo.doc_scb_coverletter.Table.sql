USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_scb_coverletter]') AND type in (N'U'))
ALTER TABLE [dbo].[doc_scb_coverletter] DROP CONSTRAINT IF EXISTS [DF_doc_scb_coverletter_created_dt]
GO
/****** Object:  Table [dbo].[doc_scb_coverletter]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[doc_scb_coverletter]
GO
/****** Object:  Table [dbo].[doc_scb_coverletter]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_scb_coverletter]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[doc_scb_coverletter](
	[doc_head_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[tenor] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[trans_head_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[issuing_bank] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[tot_amount] [decimal](18, 2) NULL,
	[inv_amount] [decimal](18, 2) NULL,
	[inv_amount_sub] [decimal](18, 2) NULL,
	[split_job] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[split_job_no] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[inv_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[split_inv] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[beneficiary] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_dt] [datetime] NULL,
 CONSTRAINT [PK_doc_scb_coverletter] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[doc_scb_coverletter] TO  SCHEMA OWNER 
GO
