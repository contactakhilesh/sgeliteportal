USE [appdata]
GO
/****** Object:  Table [dbo].[xml_doc_cont_2012below]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[xml_doc_cont_2012below]
GO
/****** Object:  Table [dbo].[xml_doc_cont_2012below]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[xml_doc_cont_2012below]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[xml_doc_cont_2012below](
	[msg_seq_n] [numeric](10, 0) NOT NULL,
	[line_n] [numeric](10, 0) NOT NULL,
	[cont_n] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_iso_code] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[seal1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[seal2] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[seal3] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[seal4] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CONT_WT] [decimal](11, 3) NULL,
	[CONT_NET_WT] [decimal](11, 3) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[xml_doc_cont_2012below] TO  SCHEMA OWNER 
GO
