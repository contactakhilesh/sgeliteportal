USE [appdata]
GO
/****** Object:  Table [dbo].[LC_BALM_REF]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[LC_BALM_REF]
GO
/****** Object:  Table [dbo].[LC_BALM_REF]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LC_BALM_REF]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LC_BALM_REF](
	[export_n] [numeric](9, 0) NOT NULL,
	[cust_ord_no] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[create_d] [datetime] NOT NULL,
	[file_path] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email_flag] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[LC_BALM_REF] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[LC_BALM_REF] TO [public] AS [dbo]
GO
