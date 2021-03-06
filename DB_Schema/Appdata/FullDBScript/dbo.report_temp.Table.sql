USE [appdata]
GO
/****** Object:  Table [dbo].[report_temp]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[report_temp]
GO
/****** Object:  Table [dbo].[report_temp]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[report_temp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[report_temp](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[unique_ref_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[certificate_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[hs_code] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](15) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_name] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[position] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[pic] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[status] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cert_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[comp_logo] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[comp_footer] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[comp_stamp] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_report_temp] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[report_temp] TO  SCHEMA OWNER 
GO
