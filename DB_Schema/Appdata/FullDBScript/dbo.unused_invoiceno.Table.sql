USE [appdata]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[unused_invoiceno]') AND type in (N'U'))
ALTER TABLE [dbo].[unused_invoiceno] DROP CONSTRAINT IF EXISTS [DF__unused_in__creat__385B0A41]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[unused_invoiceno]') AND type in (N'U'))
ALTER TABLE [dbo].[unused_invoiceno] DROP CONSTRAINT IF EXISTS [DF__unused_in__isuse__3766E608]
GO
/****** Object:  Table [dbo].[unused_invoiceno]    Script Date: 3/14/2018 6:11:59 AM ******/
DROP TABLE IF EXISTS [dbo].[unused_invoiceno]
GO
/****** Object:  Table [dbo].[unused_invoiceno]    Script Date: 3/14/2018 6:12:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[unused_invoiceno]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[unused_invoiceno](
	[row_id] [numeric](10, 0) IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[invoice_no] [numeric](10, 0) NOT NULL,
	[isused] [char](1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[user_id] [varchar](10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[create_dt] [datetime] NOT NULL,
 CONSTRAINT [PK_unused_invoiceno] PRIMARY KEY CLUSTERED 
(
	[row_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
ALTER AUTHORIZATION ON [dbo].[unused_invoiceno] TO  SCHEMA OWNER 
GO
