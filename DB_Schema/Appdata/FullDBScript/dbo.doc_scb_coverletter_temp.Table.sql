USE [appdata]
GO
/****** Object:  Table [dbo].[doc_scb_coverletter_temp]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[doc_scb_coverletter_temp]
GO
/****** Object:  Table [dbo].[doc_scb_coverletter_temp]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[doc_scb_coverletter_temp]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[doc_scb_coverletter_temp](
	[doc_head_no] [varchar](30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[line_no] [numeric](10, 0) NOT NULL,
	[doc_name] [varchar](150) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[copy1] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[duplicate1] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_doc_scb_coverletter_temp] PRIMARY KEY CLUSTERED 
(
	[doc_head_no] ASC,
	[line_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[doc_scb_coverletter_temp] TO  SCHEMA OWNER 
GO
