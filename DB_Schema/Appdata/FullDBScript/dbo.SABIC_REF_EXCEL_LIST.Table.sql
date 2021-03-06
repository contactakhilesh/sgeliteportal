USE [appdata]
GO
/****** Object:  Table [dbo].[SABIC_REF_EXCEL_LIST]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[SABIC_REF_EXCEL_LIST]
GO
/****** Object:  Table [dbo].[SABIC_REF_EXCEL_LIST]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SABIC_REF_EXCEL_LIST]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SABIC_REF_EXCEL_LIST](
	[excel_filename] [varchar](250) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[extraction_date] [datetime] NULL,
	[ref_ord_no] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[delivery_no] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[error_tag] [char](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[export_n] [numeric](9, 0) NULL,
	[export_ref_n] [numeric](9, 0) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[SABIC_REF_EXCEL_LIST] TO  SCHEMA OWNER 
GO
