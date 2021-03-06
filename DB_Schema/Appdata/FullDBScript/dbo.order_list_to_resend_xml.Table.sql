USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_list_to_resend_xml]') AND type in (N'U'))
ALTER TABLE [dbo].[order_list_to_resend_xml] DROP CONSTRAINT IF EXISTS [DF_order_list_to_resend_xml_job_type]
GO
/****** Object:  Table [dbo].[order_list_to_resend_xml]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[order_list_to_resend_xml]
GO
/****** Object:  Table [dbo].[order_list_to_resend_xml]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_list_to_resend_xml]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[order_list_to_resend_xml](
	[seq_n] [numeric](18, 0) NOT NULL,
	[job_n] [numeric](18, 0) NULL,
	[job_type] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ref_1] [varchar](40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[upload_user_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[upload_date] [datetime] NULL,
	[sent_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[excel_file_name] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[xml_sent_date] [datetime] NULL,
	[xml_file_name] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[delete_ind] [varchar](2) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_order_list_to_resend_xml] PRIMARY KEY CLUSTERED 
(
	[seq_n] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[order_list_to_resend_xml] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[order_list_to_resend_xml] TO [public] AS [dbo]
GO
