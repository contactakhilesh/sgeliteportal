USE [appdata]
GO
/****** Object:  Table [dbo].[birt_report_master]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[birt_report_master]
GO
/****** Object:  Table [dbo].[birt_report_master]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[birt_report_master]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[birt_report_master](
	[Report_id] [int] IDENTITY(1,1) NOT NULL,
	[egs_report_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[birt_report_design_name] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[parent_acct_id] [int] NULL,
	[visibility_indicator] [int] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[birt_report_master] TO  SCHEMA OWNER 
GO
