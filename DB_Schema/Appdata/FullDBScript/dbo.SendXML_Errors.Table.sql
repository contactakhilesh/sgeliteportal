USE [appdata]
GO
/****** Object:  Table [dbo].[SendXML_Errors]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[SendXML_Errors]
GO
/****** Object:  Table [dbo].[SendXML_Errors]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SendXML_Errors]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SendXML_Errors](
	[seq_n] [decimal](18, 0) NOT NULL,
	[country_env] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cust_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[export_ref_n] [decimal](10, 0) NULL,
	[export_n] [decimal](10, 0) NULL,
	[ref_1] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[log_d] [datetime] NULL,
	[user_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_SendXML_Errors] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[SendXML_Errors] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[SendXML_Errors] TO [public] AS [dbo]
GO
