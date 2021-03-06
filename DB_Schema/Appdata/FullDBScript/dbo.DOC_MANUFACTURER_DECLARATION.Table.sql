USE [appdata]
GO
/****** Object:  Table [dbo].[DOC_MANUFACTURER_DECLARATION]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[DOC_MANUFACTURER_DECLARATION]
GO
/****** Object:  Table [dbo].[DOC_MANUFACTURER_DECLARATION]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DOC_MANUFACTURER_DECLARATION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DOC_MANUFACTURER_DECLARATION](
	[doc_head_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[title] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[lot_no] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[q1] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[q2] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[q3] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[q4] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[q5] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[q6] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[q7a] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[q7b] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[q7c] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[q8] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[q9] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[q10] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[created_date] [datetime] NULL,
	[producer_by] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[address] [varchar](255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[date_issued] [datetime] NULL,
	[line_no] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[cont_num] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[DOC_MANUFACTURER_DECLARATION] TO  SCHEMA OWNER 
GO
