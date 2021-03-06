USE [appdata]
GO
/****** Object:  Table [dbo].[email_log_details]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[email_log_details]
GO
/****** Object:  Table [dbo].[email_log_details]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[email_log_details]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[email_log_details](
	[party_type] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ref_no] [numeric](9, 0) NOT NULL,
	[email_to] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[email_cc] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[sent_d] [datetime] NOT NULL,
	[RowId] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
 CONSTRAINT [PK_email_log_details] PRIMARY KEY CLUSTERED 
(
	[RowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[email_log_details] TO  SCHEMA OWNER 
GO
