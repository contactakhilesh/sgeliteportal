USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[consolidated_inv_error]') AND type in (N'U'))
ALTER TABLE [dbo].[consolidated_inv_error] DROP CONSTRAINT IF EXISTS [DF__consolida__creat__254835CD]
GO
/****** Object:  Table [dbo].[consolidated_inv_error]    Script Date: 3/14/2018 6:12:00 AM ******/
DROP TABLE IF EXISTS [dbo].[consolidated_inv_error]
GO
/****** Object:  Table [dbo].[consolidated_inv_error]    Script Date: 3/14/2018 6:12:00 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[consolidated_inv_error]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[consolidated_inv_error](
	[row_id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[doc_no] [varchar](20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[error_desc] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[created_dt] [datetime] NOT NULL,
	[created_by] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[source] [varchar](5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[consolidated_inv_error] TO  SCHEMA OWNER 
GO
