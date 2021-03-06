USE [appdata]
GO
/****** Object:  Table [dbo].[customs_query]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[customs_query]
GO
/****** Object:  Table [dbo].[customs_query]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customs_query]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[customs_query](
	[export_n] [numeric](10, 0) NULL,
	[job_no] [varchar](14) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[user_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[complete_ind] [varchar](1) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[remarks] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [customs_query_idx] UNIQUE NONCLUSTERED 
(
	[export_n] ASC,
	[job_no] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[customs_query] TO  SCHEMA OWNER 
GO
