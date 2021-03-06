USE [appdata]
GO
/****** Object:  Table [dbo].[birt_report_master_details]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[birt_report_master_details]
GO
/****** Object:  Table [dbo].[birt_report_master_details]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[birt_report_master_details]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[birt_report_master_details](
	[report_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[Report_id] [int] NULL,
	[parameter_order] [int] NULL,
	[parameter_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[parameter_value] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[birt_report_master_details] TO  SCHEMA OWNER 
GO
