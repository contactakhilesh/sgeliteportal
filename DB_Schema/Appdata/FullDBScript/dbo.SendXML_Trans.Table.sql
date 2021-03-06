USE [appdata]
GO
/****** Object:  Index [_dta_index_SendXML_Trans_7_1354487904__K4]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_SendXML_Trans_7_1354487904__K4] ON [dbo].[SendXML_Trans]
GO
/****** Object:  Index [_dta_index_SendXML_Trans_11_1354487904__K4]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP INDEX IF EXISTS [_dta_index_SendXML_Trans_11_1354487904__K4] ON [dbo].[SendXML_Trans]
GO
/****** Object:  Table [dbo].[SendXML_Trans]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[SendXML_Trans]
GO
/****** Object:  Table [dbo].[SendXML_Trans]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SendXML_Trans]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SendXML_Trans](
	[seq_n] [decimal](18, 0) NOT NULL,
	[country_env] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[export_n] [decimal](10, 0) NULL,
	[ref_1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sendXML_count] [decimal](18, 0) NULL,
	[last_sendXML_user] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[last_sendXML_d] [datetime] NULL,
	[last_xml_filename] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sendPDF_count] [decimal](18, 0) NULL,
	[last_sendPDF_user] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[last_sendPDF_d] [datetime] NULL,
	[last_pdf_filename] [char](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[log_d] [datetime] NULL,
 CONSTRAINT [PK_SendXML_Trans] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[SendXML_Trans] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[SendXML_Trans] TO [public] AS [dbo]
GO
/****** Object:  Index [_dta_index_SendXML_Trans_11_1354487904__K4]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SendXML_Trans]') AND name = N'_dta_index_SendXML_Trans_11_1354487904__K4')
CREATE NONCLUSTERED INDEX [_dta_index_SendXML_Trans_11_1354487904__K4] ON [dbo].[SendXML_Trans]
(
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [_dta_index_SendXML_Trans_7_1354487904__K4]    Script Date: 3/14/2018 6:12:02 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[SendXML_Trans]') AND name = N'_dta_index_SendXML_Trans_7_1354487904__K4')
CREATE NONCLUSTERED INDEX [_dta_index_SendXML_Trans_7_1354487904__K4] ON [dbo].[SendXML_Trans]
(
	[export_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
